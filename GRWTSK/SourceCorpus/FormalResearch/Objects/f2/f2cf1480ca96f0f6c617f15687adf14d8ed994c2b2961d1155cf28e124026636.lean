/-!
Mathlib algebra patch boundary.

This marker records local algebra-shaped Mathlib patches without importing the
patch corpus.
-/

namespace Formal.Patches.Mathlib.Algebra

def conceptualSubdirectories : List String :=
  [ "Notation"
  , "Order"
  ]

theorem conceptualSubdirectories_count :
    conceptualSubdirectories.length = 2 := by
  rfl

end Formal.Patches.Mathlib.Algebra
