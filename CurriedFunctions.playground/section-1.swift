// Playground - noun: a place where people can play

import UIKit

// simple function
func ageDescrOf(name : String, age : Int) -> String {
    
    return "\(name) is \(age) year old"
}
let ad = ageDescrOf("Carlo", 18)

// curried
func ageDescrOf2(name : String)(age : Int) -> String {
    
    return "\(name) is \(age) year old"
}
let ad2 = ageDescrOf2("Carlo")(age: 18)    // want external parameter "age" (bug?)

// or
let ageOfCarlo = ageDescrOf2("Carlo")
let ad3 = ageOfCarlo(age: 18)

// instance method are type methods curried
class MyClass {
    
    func doIt(a : Int) {
        
    }
}
let a = MyClass()
MyClass.doIt(a)(3)  // equal to a.doIt(3)
