local httpService = game:GetService("HttpService")
local url = "https://discord.com/api/webhooks/YOURWEBHOOkHRERE!!"

game.Players.PlayerAdded:Connect(function(plr)
	local data = {
		['embeds'] = {{
			['title'] = "**New Player Entered The Game**",
			['description'] = plr.DisplayName.." (@"..plr.Name ..") Joined The Game",
			['color'] =  1376000,
			['url'] = "https://www.roblox.com/users/".. plr.UserId .."/profile",

		}}
	}

	local finaldata = httpService:JSONEncode(data)
	httpService:PostAsync(url, finaldata)
end)

game.Players.PlayerRemoving:Connect(function(plr)
	local data = {
		['embeds'] = {{
			['title'] = "**Player Left The Experience**",
			['description'] = plr.DisplayName.." (@"..plr.Name ..") Left The Game",
			['color'] =  16711680,
			['url'] = "https://www.roblox.com/users/".. plr.UserId .."/profile"
		}}
	}

	local finaldata = httpService:JSONEncode(data)
	httpService:PostAsync(url, finaldata)
end)


