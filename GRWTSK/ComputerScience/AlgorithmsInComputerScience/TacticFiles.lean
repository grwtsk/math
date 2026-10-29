/-!
Tactic blueprint boundary.

This marker surfaces experimental tactic material without importing examples,
axioms, or unsafe declarations into checked roots.
-/

namespace Formal.Blueprint.Tactic

def files : List String :=
  [ "AdditiveCombination"
  , "Simprocs"
  ]

theorem files_count : files.length = 2 := by
  rfl

end Formal.Blueprint.Tactic
