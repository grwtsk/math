/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Imported Lean/Mathlib authorship and Apache-2.0 licensing remain attached to their imports. -/
import GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.Checks.Positive.PrefixTableCheckpoint

set_option autoImplicit false

open GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph
open PrefixTableCheckpoint.Checks.Positive

/-- Actual numeric bounds cannot supply exact full-history agreement after compaction. -/
example : PrefixTableState.decode stalePost = PrefixTableState.decode post := stalePost_bounds
