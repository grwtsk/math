# Complete source: GRWTSK.Topology.GeneralTopology.Topology.Variant557bf0190dea894ee2665c2755ea9d0516853b0f2559c8c1cb2ccb4a16bbd317

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cb2d18b18059f8849e6a65ab14d1d9b9758845b7` · SHA-256 `557bf0190dea894ee2665c2755ea9d0516853b0f2559c8c1cb2ccb4a16bbd317`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 David Loeffler. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: David Loeffler
-/
module

public import Mathlib.NumberTheory.Padics.Measure.Basic
public import Mathlib.Analysis.Real.Sqrt
public import Mathlib.Data.EReal.Inv
public import Mathlib.Tactic.ContinuousFunctionalCalculus
public import Mathlib.Topology.Algebra.Module.Spaces.ContinuousLinearMap

/-!
# Topologies on spaces of measures

We define the weak and strong topologies on `D(X, E)`. These are deliberately not declared as
instances in order to avoid favouring one topology over the other.
-/

@[expose] public section

open ContinuousMap

variable {X R E : Type*} [TopologicalSpace X]

namespace AbstractMeasure

section Topology

section Weak

variable [NormedAddCommGroup E] [CommRing R] [Module R E] [TopologicalSpace R]
  [IsTopologicalRing R] [ContinuousSMul R E]

/--
The weak topology on `AbstractMeasure G R E` (the weakest topology such that `μ ↦ μ f` is
continuous for all `f`).
-/
@[reducible] def WeakTopology : TopologicalSpace (AbstractMeasure X R E) :=
  .induced (fun μ f ↦ μ f) inferInstance

end Weak

variable [CompactSpace X] [NontriviallyNormedField R] [NormedAddCommGroup E] [NormedSpace R E]

/-- The strong topology on `AbstractMeasure G R E` (the topology induced by the norm). -/
@[reducible] def StrongTopology : TopologicalSpace (AbstractMeasure X R E) :=
  inferInstanceAs (TopologicalSpace (C(X, R) →L[R] E))

end Topology

end AbstractMeasure

end
```
