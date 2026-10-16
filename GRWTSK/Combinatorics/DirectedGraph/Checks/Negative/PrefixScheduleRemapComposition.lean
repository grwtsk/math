/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone; OpenAI Codex formalization assistance.
Imported Lean/Mathlib authorship and Apache-2.0 licensing remain attached to their imports. -/
import GRWTSK.Combinatorics.DirectedGraph.Checks.Positive.PrefixTableSchedule

set_option autoImplicit false

open GRWTSK.Combinatorics.DirectedGraph.PrefixTableSchedule.Checks.Positive

/-- Actual direct final lookup cannot supply the image lost by partial remap composition. -/
example : composedLookup = some 2 := direct_lookup_some
