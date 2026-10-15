/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Mathlib and Lean imports retain their individual authorship and Apache-2.0 licenses. -/
import GRWTSK.Combinatorics.DirectedGraph.Checks.Positive.RoleRelationReindex

set_option autoImplicit false

open GRWTSK.Combinatorics.DirectedGraph.RoleRelationReindex
open GRWTSK.Combinatorics.DirectedGraph.RoleRelationReindex.Checks.Positive

namespace GRWTSK.Combinatorics.DirectedGraph.RoleRelationReindex.Checks.Negative

/-- Equal source vertices cannot replace the required injectivity of actual relation identities. -/
example : Function.Injective (qualified collapse false) :=
  qualified_injective collapse false collapse.source

end GRWTSK.Combinatorics.DirectedGraph.RoleRelationReindex.Checks.Negative
