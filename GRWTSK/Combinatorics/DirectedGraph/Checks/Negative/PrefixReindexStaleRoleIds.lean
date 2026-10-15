/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Imported Lean/Mathlib authorship and Apache-2.0 licensing remain attached to their imports. -/
import GRWTSK.Combinatorics.DirectedGraph.Checks.Positive.PrefixTableReindex

set_option autoImplicit false

open GRWTSK.Combinatorics.DirectedGraph
open PrefixTableReindex.Checks.Positive

/-- Correct role, numeric bounds and stored ranks cannot supply the missing actual root equality. -/
example : EdgeTrace.ValidFrom stale.root [newTag0] := new0.property
