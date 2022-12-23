Feature: To validate Login Functionality

@wip
Scenario: To validate Login using valid credentials

Given user opens "chrome" browser
And user launch app using url "https://adactinhotelapp.com/"
When user enters text "reyaz0617" in textbox using xpath "//input[@name='username']"
And user enters text "reyaz123" in textbox using xpath "//input[@name='password']"
And user clicks on button using xpath "//input[@name='login']"
Then user validates title to be "Adactin.com - Search Hotel"

Scenario Outline: To validate Login using Invalid credentials

Given user opens "chrome" browser
And user launch app using url "https://adactinhotelapp.com/"
When user enters text '<username>' in textbox using xpath "//input[@name='username']"
And user enters text '<password>' in textbox using xpath "//input[@name='password']"
And user clicks on button using xpath "//input[@name='login']"
Then user validates title to be '<expectedTitle>'

Examples: 
| username | password | expectedTitle |
|reyaz0617|reyaz456|Adactin.com - Hotel Reservation System|
|reyaz1212|reyaz123|Adactin.com - Hotel Reservation System|
|reyaz1212|reyaz456|Adactin.com - Hotel Reservation System|

