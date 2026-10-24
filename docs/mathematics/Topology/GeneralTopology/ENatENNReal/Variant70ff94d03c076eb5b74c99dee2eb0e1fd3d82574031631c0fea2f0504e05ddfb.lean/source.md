# Complete source: GRWTSK.Topology.GeneralTopology.ENatENNReal.Variant70ff94d03c076eb5b74c99dee2eb0e1fd3d82574031631c0fea2f0504e05ddfb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fd28a08ca6b9751dc79a3b104003b6d2f05594a2` · SHA-256 `70ff94d03c076eb5b74c99dee2eb0e1fd3d82574031631c0fea2f0504e05ddfb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Weiyi Wang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Weiyi Wang
-/
module

public import Mathlib.Basic.Real.ENatENNReal
public import Mathlib.Topology.Instances.ENat
import Mathlib.Algebra.Order.Floor.Extended
public import Mathlib.Algebra.Order.Module.Field
public import Mathlib.Data.EReal.Operations
public import Mathlib.Topology.Algebra.InfiniteSum.Order
public import Mathlib.Topology.MetricSpace.Bounded
public import Mathlib.Topology.Order.Real

/-!
# Topology lemma for `ENat.toENNReal`

This file shows `ENat.toENNReal` is a closed embedding.
-/

public section

namespace ENat

@[continuity]
theorem continuous_toENNReal : Continuous toENNReal := by
  refine OrderTopology.continuous_iff.mpr fun a ↦ ⟨?_, ?_⟩
  · simpa using isOpen_Ioi
  · simpa using isOpen_Iio

theorem isClosedEmbedding_toENNReal : Topology.IsClosedEmbedding toENNReal :=
  continuous_toENNReal.isClosedEmbedding toENNReal_strictMono.injective

end ENat
```
