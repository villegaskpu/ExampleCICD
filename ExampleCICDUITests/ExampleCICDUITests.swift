//
//  ExampleCICDUITests.swift
//  ExampleCICDUITests
//
//  Created by David Villegas Santana on 21/08/23.
//

import XCTest

final class ExampleCICDUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        
        
        XCTContext.runActivity(named: "screenshot") { (activity) in
            let app = XCUIApplication()
            app.textFields["Monthly investments"].tap()
            
            let key1 = app/*@START_MENU_TOKEN@*/.keys["1"]/*[[".keyboards.keys[\"1\"]",".keys[\"1\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
            key1.tap()
            
            let key0 = app/*@START_MENU_TOKEN@*/.keys["0"]/*[[".keyboards.keys[\"0\"]",".keys[\"0\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
            key0.tap()
            key0.tap()
            
            app.textFields["Your current age"].tap()
            
            let key3 = app/*@START_MENU_TOKEN@*/.keys["3"]/*[[".keyboards.keys[\"3\"]",".keys[\"3\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
            key3.tap()
            key0.tap()
            
            app.textFields["Your planned retirement age"].tap()
            
            let key6 = app/*@START_MENU_TOKEN@*/.keys["6"]/*[[".keyboards.keys[\"6\"]",".keys[\"6\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
            key6.tap()
            
            let key5 = app/*@START_MENU_TOKEN@*/.keys["5"]/*[[".keyboards.keys[\"5\"]",".keys[\"5\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
            key5.tap()
            
            app.textFields["Average interest rate of investments"].tap()
            key3.tap()
            
            app.textFields["Current savings"].tap()
            key1.tap()
            key0.tap()
            key0.tap()
            key0.tap()
            
            app.buttons["Calculate retirement amount"].tap()
            
            let resultText = app.staticTexts.element(matching: .any, identifier: "resultadoDeTexto")
            let result = "If you save $100.0 every month for 35 years, and invest that money plus your current investment of $1000.0 at a 3.0% anual interest rate, you will have $246467878.4603446 by the time you are 65"
            XCTAssertEqual(resultText.label, result)
        }
        
    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
