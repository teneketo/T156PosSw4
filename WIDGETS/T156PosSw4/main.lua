-- main.lua

local name = "T156PosSw4"
local libGUI

function loadGUI()
  if not libGUI then
    libGUI = loadScript("/WIDGETS/" .. name .. "/libgui.lua")
  end
  return libGUI()
end

local function create(zone, options)
  widget = loadScript("/WIDGETS/" .. name .. "/loadable.lua")(zone, options)
  widget.create(zone, options)
  return widget
end

local function refresh(widget, event, touchState)
  widget.refresh(event, touchState)
end

local function background(widget)
  widget.background()
end

local options = {
  { "Source", SOURCE, 1 },
  { "Sw1", STRING , "Profile 1" },
  { "Sw2", STRING , "Profile 2" },
  { "Sw5", STRING , "Profile 3" },
  { "Sw6", STRING , "Profile 4" },
  
}

local function update(widget, options)
  widget.update(options)
end

return {
  name = name,
  create = create,
  refresh = refresh,
  background = background,
  options = options,
  update = update
}
