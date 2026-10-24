/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Upstream Mathlib and Lean authorship and Apache-2.0 licensing are preserved. -/
import GRWTSK.Combinatorics.DirectedGraph.Checks.Positive.PathUnfolding

set_option autoImplicit false

open Quiver
open GRWTSK.Combinatorics.DirectedGraph.PathUnfolding
open GRWTSK.Combinatorics.DirectedGraph.PathUnfolding.Checks.Positive

/- The imported accepted positive module proves the actual one-loop counterexample.
Outgoing-star bijectivity does not supply the missing incoming-star obligation. -/
example : (projection (SingleObj.star Unit)).IsCovering := single_loop_outgoing_bijective
