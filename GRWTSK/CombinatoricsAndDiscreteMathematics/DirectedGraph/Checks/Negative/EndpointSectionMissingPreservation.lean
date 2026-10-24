/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Upstream Mathlib and Lean authorship and Apache-2.0 licensing are preserved. -/
import GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.Checks.Positive.EndpointSection

set_option autoImplicit false

open Quiver
open GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.PathUnfolding
open GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.OccurrencePrefix
open GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.EndpointSection.Checks.Positive
open GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.OrderTheory.OrderEmbeddings.PrefixObstruction

/- The accepted positive module proves the actual right inverse and nonpreservation.
An endpoint right inverse cannot supply the missing reachability-preservation premise. -/
example : ∀ x y : ReachableVertex Diamond.bottom,
    Reachable x.1 y.1 → Reachable (selectedOccurrence x) (selectedOccurrence y) :=
  diamond_selected_right_inverse
