/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Mathlib and Lean imports retain their individual authorship and Apache-2.0 licenses. -/
import GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.Checks.Positive.RoleRelationTable

set_option autoImplicit false

open GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.RoleRelationTable
open GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.RoleRelationTable.Checks.Positive

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.RoleRelationTable.Checks.Negative

/-- Actual membership in role S cannot supply membership in the selected role R. -/
example : RoleId fixture false := ⟨index3, index3_role⟩

end GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.RoleRelationTable.Checks.Negative
