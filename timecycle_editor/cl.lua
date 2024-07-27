
local timecycleEditorActive = false

local function toggleTimecycleEditor()
    if timecycleEditorActive then
        ActivateTimecycleEditor(false)
        timecycleEditorActive = false
    else
        ActivateTimecycleEditor(true)
        timecycleEditorActive = true
    end
end

RegisterCommand('timecycle', function(source, args, rawCommand)
    toggleTimecycleEditor()
end, false)

Citizen.CreateThread(function()
    
    local timecycleEditorActive = true 

    if timecycleEditorActive then
        ActivateTimecycleEditor(true)
    end
end)