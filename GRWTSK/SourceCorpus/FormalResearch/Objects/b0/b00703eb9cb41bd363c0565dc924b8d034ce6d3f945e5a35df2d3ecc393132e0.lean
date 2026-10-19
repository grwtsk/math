/-!
Mathlib measure-theory patch boundary.

This marker records local measure-theory patches without importing the patch
corpus.
-/

namespace Formal.Patches.Mathlib.MeasureTheory

def conceptualSubdirectories : List String :=
  [ "Integral"
  ]

theorem conceptualSubdirectories_count :
    conceptualSubdirectories.length = 1 := by
  rfl

end Formal.Patches.Mathlib.MeasureTheory
