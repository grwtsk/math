# Complete source: GRWTSK.Topology.GeneralTopology.Real.Variant853476daf48294ac91190c4739c529642ebeb559c8fd15065a6c5feab96833cb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `160ff95bcac995f96c9f9802182eb9b25f6d7db8` · SHA-256 `853476daf48294ac91190c4739c529642ebeb559c8fd15065a6c5feab96833cb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2017 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Mario Carneiro
-/
module

public import Mathlib.Basic.NNReal.Star
public import Mathlib.Topology.Algebra.Star
public import Mathlib.Topology.MetricSpace.Pseudo.Constructions

/-!
# Topological properties of conjugation on ℝ
-/

public section

assert_not_exists IsTopologicalRing UniformContinuousConstSMul UniformOnFun

noncomputable section

instance : ContinuousStar ℝ := ⟨continuous_id⟩

namespace NNReal

instance : ContinuousStar ℝ≥0 where
  continuous_star := continuous_id

end NNReal
```
