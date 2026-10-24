/-!
Analytic blueprint geometry boundary.

This marker names finite geometric scaffolding for analytic blueprints without
importing unresolved theorem files.
-/

namespace Formal.Blueprint.Analytic.Geometry

def files : List String :=
  [ "Rectangle"
  ]

theorem files_count : files.length = 1 := by
  rfl

end Formal.Blueprint.Analytic.Geometry
