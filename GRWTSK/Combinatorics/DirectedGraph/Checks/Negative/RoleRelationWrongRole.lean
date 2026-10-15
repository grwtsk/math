/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone; OpenAI Codex formalization assistance.
Mathlib and Lean imports retain their individual authorship and Apache-2.0 licenses. -/
import GRWTSK.Combinatorics.DirectedGraph.Checks.Positive.RoleRelationTable

set_option autoImplicit false

open GRWTSK.Combinatorics.DirectedGraph.RoleRelationTable
open GRWTSK.Combinatorics.DirectedGraph.RoleRelationTable.Checks.Positive

namespace GRWTSK.Combinatorics.DirectedGraph.RoleRelationTable.Checks.Negative

/-- Actual membership in role S cannot supply membership in the selected role R. -/
example : RoleId fixture false := ⟨index3, index3_role⟩

end GRWTSK.Combinatorics.DirectedGraph.RoleRelationTable.Checks.Negative
