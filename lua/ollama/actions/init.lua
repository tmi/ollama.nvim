---@type table<string, Ollama.PromptAction>
local actions = {}

local factory = require("ollama.actions.factory")

actions.display = factory.create_action({ display = true, show_prompt = true, append = false })

actions.insert = factory.create_action({ display = false, insert = true, append = false })

actions.replace = factory.create_action({ display = false, replace = true, append = false })

actions.append = factory.create_action({ display = false, replace = false, append = true })

-- basically a merge of display -> replace actions
-- lots of duplicated code
actions.display_replace = factory.create_action({
	replace = true,
	show_prompt = true,
    append = false,
})

actions.display_insert = factory.create_action({ insert = true, show_prompt = true, append = false })

-- TODO: remove this as its not used anymore
-- if you use this in your config, please switch to "display" instead
actions.display_prompt = actions.display

return actions
