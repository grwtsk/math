/-!
Mathlib number-theory patch boundary.

This marker records local number-theory and sieve patches without importing
the patch corpus.
-/

namespace Formal.Patches.Mathlib.NumberTheory

def conceptualSubdirectories : List String :=
  [ "AbelSummation"
  , "Chebyshev"
  , "Sieve"
  ]

theorem conceptualSubdirectories_count :
    conceptualSubdirectories.length = 3 := by
  rfl

end Formal.Patches.Mathlib.NumberTheory
