*** Settings ***
Library    Selenium2Library


*** Variables ***
${firstname}    xpath=//input[contains(@name, 'firstname')]
${lastname}    xpath=//input[contains(@name, 'lastname')]
${mobile}    xpath=//input[contains(@name, 'reg_email__')]
${password}    xpath=//input[contains(@data-type, 'password')]

*** Test Cases ***
Go to Facebook 1
    Open Browser    http://facebook.com    chrome
    Maximize browser window
    enter values in facebook page    Cloud    Strife    FF7    ilovetifa4evs
    
Go to Facebook 2
    Open Browser    http://facebook.com    chrome
    Maximize browser window
    Enter values in facebook page    Tifa    Strife    FF7    ilovetifa4evs
    
Go to Facebook 3
    Open Browser    http://facebook.com    chrome
    Maximize browser window
    Enter values in facebook page    Sepiroth    Strife    FF7    ilovetifa4evs
    
*** Keywords ***
Enter values in Facebook Page
    [Arguments]    ${i_firstname}    ${i_lastname}    ${i_mobile}    ${i_password}
    Input Text    ${firstname}    ${i_firstname}
    Input Text    ${lastname}    ${i_lastname}
    Input Text    ${mobile}    ${i_mobile}
    Input Text    ${password}    ${i_password}