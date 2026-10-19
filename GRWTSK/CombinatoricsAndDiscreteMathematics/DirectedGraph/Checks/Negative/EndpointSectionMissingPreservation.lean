/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone; OpenAI Codex formalization assistance.
Upstream Mathlib and Lean authorship and Apache-2.0 licensing are preserved. -/
import GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.Checks.Positive.EndpointSection

set_option autoImplicit false

open Quiver
open GRWTSK.Combinatorics.DirectedGraph.PathUnfolding
open GRWTSK.Combinatorics.DirectedGraph.OccurrencePrefix
open GRWTSK.Combinatorics.DirectedGraph.EndpointSection.Checks.Positive
open GRWTSK.Order.Embeddings.PrefixObstruction

/- The accepted positive module proves the actual right inverse and nonpreservation.
An endpoint right inverse cannot supply the missing reachability-preservation premise. -/
example : ∀ x y : ReachableVertex Diamond.bottom,
    Reachable x.1 y.1 → Reachable (selectedOccurrence x) (selectedOccurrence y) :=
  diamond_selected_right_inverse
