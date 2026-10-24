# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.Checks.Negative.EndpointSectionMissingPreservation

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a2951f974ec834a10b240926d4ec6aa69bd65cbe` · SHA-256 `23f778ed7ac4655b8747206a7790662f92c2e7fb3aee8eeb37a542c0472e6d86`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
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
```
