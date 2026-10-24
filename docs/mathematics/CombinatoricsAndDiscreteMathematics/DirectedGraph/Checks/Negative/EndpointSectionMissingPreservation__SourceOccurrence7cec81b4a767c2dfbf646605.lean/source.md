# Complete source: GRWTSK.Combinatorics.DirectedGraph.Checks.Negative.EndpointSectionMissingPreservation

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3af5ed15139e56ecfe3fa065667f4e41ae989c30` · SHA-256 `3dd7e318ee9961ec6d06d495a9cbe3b76f5e75f18f1b91ac9bc1fced009c8331`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Upstream Mathlib and Lean authorship and Apache-2.0 licensing are preserved. -/
import GRWTSK.Combinatorics.DirectedGraph.Checks.Positive.EndpointSection

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
```
