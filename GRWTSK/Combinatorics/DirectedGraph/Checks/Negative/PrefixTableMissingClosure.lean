/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Imported Lean/Mathlib authorship and Apache-2.0 licensing remain attached to their imports. -/
import GRWTSK.Combinatorics.DirectedGraph.Checks.Positive.PrefixTableState

set_option autoImplicit false

open GRWTSK.Combinatorics.DirectedGraph.PrefixTableState
open GRWTSK.Combinatorics.DirectedGraph.PrefixTableState.Checks.Positive

namespace GRWTSK.Combinatorics.DirectedGraph.PrefixTableState.Checks.Negative

/-- The valid full payloads do not supply the missing required prefix-closure field. -/
example : WellFormed missingParent where
  nodup := missingParent_nodup
  closed := missingParent_rooted
  rooted := missingParent_rooted
  cells := missingParent_cells
  references := missingParent_references

end GRWTSK.Combinatorics.DirectedGraph.PrefixTableState.Checks.Negative
