# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.StronglyRegular.Variant23da245e344ea841583e68e20201de24850654a187dcaaa536e2751904ab8d04

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b4275981c3d91c4c4d876a01a8018e6d5cb06368` · SHA-256 `23da245e344ea841583e68e20201de24850654a187dcaaa536e2751904ab8d04`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Tristan Figueroa-Reid. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Tristan Figueroa-Reid
-/
module

public import Mathlib.Combinatorics.SimpleGraph.StronglyRegular

namespace SimpleGraph

/-- **Conway's 99-graph problem** (from https://oeis.org/A248380/a248380.pdf)
can be reformulated as the existence of a strongly regular graph with params (99, 14, 1, 2).
This is an open problem, and has no known proof of existence. -/
proof_wanted conway_99 : ∃ (α : Type) (_ : Fintype α) (G : SimpleGraph α) (_ : DecidableRel G.Adj),
    IsSRGWith G 99 14 1 2

end SimpleGraph
```
