/-!
Analytic blueprint foundation boundary.

This marker names foundational analytic blueprint files. It does not import the
files in this directory, because those files may contain unresolved external
imports or theorem obligations.
-/

namespace Formal.Blueprint.Analytic.Foundation

def files : List String :=
  [ "Auxiliary"
  , "Defs"
  ]

theorem files_count : files.length = 2 := by
  rfl

end Formal.Blueprint.Analytic.Foundation
