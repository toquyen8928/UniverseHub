Script_Hub = "" -- Mukuro, Banana, WAzure, Maru
Script_Type = "" -- Kaitun, AutoBounty 

BananaHub_Key = ""
WAzure_Key = ""
Maru_Key = ""
Maru_DiscordID = ""

Mukuro_JoinTeam = "Pirates" --Marines
WAzure_JoinTeam = "Pirates" --Marines

if ScriptHub == "Mukuro" then
    getgenv().JoinTeam = Mukuro_JoinTeam
    loadstring(game:HttpGet"https://raw.githubusercontent.com/xQuartyx/DonateMe/main/ScriptLoader")()

elseif ScriptHub == "Banana" then
    getgenv().Key = BananaHub_Key
    loadstring(game:HttpGet("https://raw.githubusercontent.com/obiiyeuem/vthangsitink/main/BananaHub.lua"))()

elseif ScriptHub == "Banana" and Script_Type == "AutoBounty" then
    -- MTY

elseif ScriptHub == "WAzure" then
    getgenv().Team = WAzure_JoinTeam
    script_key = WAzure_Key
    delay(DelayTime or 300,function()
        local CG = game:GetService("CoreGui")
        if not CG:FindFirstChild("W-azure") then
           game:GetService("TeleportService"):Teleport(game.PlaceId, game.Players.LocalPlayer)
        end
    end)
    loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/ce762807ecd5fef5e05a7f6a9f8566c9.lua"))()

elseif ScriptHub == "WAzure" and Script_Type == "Kaitun" then
    loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/672c831bbd091d87a04b5fe7dec3c49c.lua"))()

elseif ScriptHub == "WAzure" and Script_Type == "AutoBounty" then
    -- MTY

elseif ScriptHub == "Maru" then
    getgenv().key = Maru_Key
    getgenv().id = Maru_DiscordID
    loadstring(game:HttpGet("https://raw.githubusercontent.com/xshiba/MaruComkak/main/PCBit.lua"))()
end