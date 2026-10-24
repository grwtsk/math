# Complete source: GRWTSK.Topology.MetricTopology.Pi.Variant284787fb2a4785d23fc183ef623711532dfa88c976c3c3b406f51ad85b5e2a3f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c7beb4249a190a7a01123a089fc147efcd4449aa` · SHA-256 `284787fb2a4785d23fc183ef623711532dfa88c976c3c3b406f51ad85b5e2a3f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Yakov Pechersky. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yakov Pechersky
-/
import Mathlib.Topology.MetricSpace.Pseudo.Pi
import Mathlib.Topology.MetricSpace.Ultra.Basic

/-!
# Ultrametric distances on pi types

This file contains results on the behavior of ultrametrics in products of ultrametric spaces.

## Main results

* `Pi.instIsUltrametricDist`: a product of ultrametric spaces is ultrametric.


ultrametric, nonarchimedean
-/

instance Pi.instIsUltrametricDist {ι : Type*} {X : ι → Type*} [Fintype ι]
    [(i : ι) → PseudoMetricSpace (X i)] [(i : ι) → IsUltrametricDist (X i)] :
    IsUltrametricDist ((i : ι) → X i) := by
  constructor
  intro f g h
  simp only [dist_pi_def, ← NNReal.coe_max, NNReal.coe_le_coe, ← Finset.sup_sup]
  exact Finset.sup_mono_fun fun i _ ↦ IsUltrametricDist.dist_triangle_max (f i) (g i) (h i)
```
