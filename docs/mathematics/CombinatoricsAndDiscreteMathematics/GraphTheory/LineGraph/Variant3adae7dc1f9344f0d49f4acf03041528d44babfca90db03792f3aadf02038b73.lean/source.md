# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.LineGraph.Variant3adae7dc1f9344f0d49f4acf03041528d44babfca90db03792f3aadf02038b73

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a1c37b83a30f623cc42418b5460b823e1a1a4a7c` · SHA-256 `3adae7dc1f9344f0d49f4acf03041528d44babfca90db03792f3aadf02038b73`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Bhavik Mehta. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Bhavik Mehta
-/
import Mathlib.Combinatorics.SimpleGraph.Basic

/-!
# LineGraph

## Main definitions

* `SimpleGraph.lineGraph` is the line graph of a simple graph `G`, with vertices as the edges of `G`
  and two vertices of the line graph adjacent if the corresponding edges share a vertex in `G`.

## Tags

line graph
-/

namespace SimpleGraph

variable {V : Type*} {G : SimpleGraph V}

/--
The line graph of a simple graph `G` has its vertex set as the edges of `G`, and two vertices of
the line graph are adjacent if the corresponding edges share a vertex in `G`.
-/
def lineGraph {V : Type*} (G : SimpleGraph V) : SimpleGraph G.edgeSet where
  Adj e₁ e₂ := e₁ ≠ e₂ ∧ (e₁ ∩ e₂ : Set V).Nonempty
  symm e₁ e₂ := by intro h; rwa [ne_comm, Set.inter_comm]

lemma lineGraph_adj_iff_exists {e₁ e₂ : G.edgeSet} :
    (G.lineGraph).Adj e₁ e₂ ↔ e₁ ≠ e₂ ∧ ∃ v, v ∈ (e₁ : Sym2 V) ∧ v ∈ (e₂ : Sym2 V) := by
  simp [Set.Nonempty, lineGraph]

@[simp] lemma lineGraph_bot : (⊥ : SimpleGraph V).lineGraph = ⊥ := by aesop (add simp lineGraph)

end SimpleGraph
```
