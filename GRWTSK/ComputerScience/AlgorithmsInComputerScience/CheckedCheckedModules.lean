import Formal.Checked

/-!
Checked first-party surface.

Only the checked source band imported here may flow into `Formal.Kernel`.
-/

namespace Formal.Surface.Checked

def checkedModules : List String :=
  [ "Formal.Checked.Geometry"
  , "Formal.Checked.BoundaryMatriciant"
  , "Formal.Checked.Projection.Balance"
  , "Formal.Checked.Projection.Flatten"
  ]

theorem checkedModules_count : checkedModules.length = 4 := by
  rfl

end Formal.Surface.Checked
