import UIKit

//Question 2
func rank(array: [Int], target: Int) -> Int
{
    var left = 0;
    var right = array.count - 1;
    
    while(true)
    {
        let mid = (left + right) / 2;
        let value = array[mid];
        
        if(value == target)
        {
            return value;
        }
        
        if(value < target)
        {
            left = mid + 1;
        }
        if(value > target)
        {
            right = mid - 1;
        }
        if(!array.contains(target))
        {
            return -1;
        }
        
        
    }
}

//Test Arrays
let thisArray = [1,2,3,4,5,6,7,8,9,10];
let searchArray_0 = rank(thisArray, target: 5);
let searchArray_1 = rank(thisArray, target: 9);
let searchArray_2 = rank(thisArray, target: 10);
let searchArray_3 = rank(thisArray, target: 3);
let searchArray_4 = rank(thisArray, target: 12);


if searchArray_0 != -1
{
    print("Element found on index: \(searchArray_0)")
}

if searchArray_1 != -1
{
    print("Element found on index: \(searchArray_1)")
}

if searchArray_2 != -1
{
    print("Element found on index: \(searchArray_2)")
}

if searchArray_3 != -1
{
    print("Element found on index: \(searchArray_3)")
}

if searchArray_4 != -1
{
    print("Element found on index: \(searchArray_4)")
}
else
{
    print("Element not found")
}