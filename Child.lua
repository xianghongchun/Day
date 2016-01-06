local  Child = dofile("Parent.lua")
function Child:new( o )
	print("Child:new")
	if(not o) then 
		print("o==null")
	end
	o=o or {}
	setmetatable(o,self)
	self.__index=self
	return o
end
function Child:setBalance( o )
	print("Child:setBalance")
	self.balance=o
end
function Child:test1(  )
	print("Child:setBalance")
	print(self.balance)
end
function Child:test(  )
	print("Child:test")
end
return Child