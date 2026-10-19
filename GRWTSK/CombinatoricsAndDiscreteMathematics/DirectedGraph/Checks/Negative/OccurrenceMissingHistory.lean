/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Upstream Mathlib and Lean authorship and Apache-2.0 licensing are preserved. -/
import GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.Checks.Positive.OccurrencePrefix

set_option autoImplicit false

open Quiver
open GRWTSK.Combinatorics.DirectedGraph.OccurrencePrefix.Checks.Positive

/- The accepted positive module proves this base reachability and the failure
of the proposed occurrence reachability. Full history cannot be omitted. -/
example : Reachable falseOccurrence emptyOccurrence := base_reachable_to_empty
