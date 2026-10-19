/-!
Mellin/Perron analytic blueprint boundary.

This marker groups Mellin calculus, Perron formula, and residue-calculus
blueprints while keeping them outside checked authority imports.
-/

namespace Formal.Blueprint.Analytic.MellinPerron

def files : List String :=
  [ "MellinCalculus"
  , "PerronFormula"
  , "ResidueCalcOnRectangles"
  ]

theorem files_count : files.length = 3 := by
  rfl

end Formal.Blueprint.Analytic.MellinPerron
