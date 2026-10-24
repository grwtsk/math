/-!
Mathlib analysis patch boundary.

This marker records local analysis-shaped Mathlib patches without importing
the patch corpus.
-/

namespace Formal.Patches.Mathlib.Analysis

def conceptualSubdirectories : List String :=
  [ "Asymptotics"
  , "Calculus"
  , "Complex"
  , "SpecialFunctions"
  ]

theorem conceptualSubdirectories_count :
    conceptualSubdirectories.length = 4 := by
  rfl

end Formal.Patches.Mathlib.Analysis
