/-!
Arithmetic-constant analytic blueprint boundary.

This marker records numeric-constant blueprint material without importing
unresolved theorem files.
-/

namespace Formal.Blueprint.Analytic.ArithmeticConstants

def files : List String :=
  [ "EulerMascheroniBounds"
  ]

theorem files_count : files.length = 1 := by
  rfl

end Formal.Blueprint.Analytic.ArithmeticConstants
