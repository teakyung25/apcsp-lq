# def three_even?(list)
#     count = 0
#     (list.size).times do |i| 
#         if(list[i]%2 == 0)
#             if list[i+1] != nil
#                 if 0 == list[i+1]%2 || 0 == list[i-1]%2
#                     count += 1
#                 end
#             else
#                 if 0 == list[i-1]%2 &&  0 == list[i-2]%2
#                     count += 1
#                 end
#             end
#         end
#     end
#     return (count >= 3 ? true : false)
# end
def three_even?(list)
    count = 0
    (list.size-2).times do |i| 
        if(list[i]%2 == 0 && list[i+1]%2 == 0 && list[i+2]%2 == 0)
            return true
        end
    end
    return false
end
puts three_even?([2,1,3,5])
puts three_even?([2,4,12,5])
puts three_even?([2,1,4,6])
puts three_even?([1,4,6,4])
puts three_even?([])


# def bigger_two(list1,list2)
#     if list1[0]+list1[1] > list2[0]+list2[1]
#         return list1
#     elsif list1[0]+list1[1] < list2[0]+list2[1]
#         return list2
#     end
#     return list1
# end
def bigger_two(list1,list2)
    if list1[0]+list1[1] > list2[0]+list2[1]
        return list1
    elsif list1[0]+list1[1] < list2[0]+list2[1]
        return list2
    end
    return list1
end

print bigger_two([1,2],[3,4])
puts ""
print bigger_two([1,7],[4,4])

def series_up(list_length)
    newlist = []
    list_length.times do |i|
        (i+1).times do |j|
            newlist.push(j+1)
        end
    end
    return newlist
end

puts ""
print series_up(1)
puts ""
print series_up(2)
puts ""
print series_up(3)
puts ""
print series_up(4)