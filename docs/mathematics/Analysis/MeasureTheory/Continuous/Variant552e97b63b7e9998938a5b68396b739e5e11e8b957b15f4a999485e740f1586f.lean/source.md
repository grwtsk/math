# Complete source: GRWTSK.Analysis.MeasureTheory.Continuous.Variant552e97b63b7e9998938a5b68396b739e5e11e8b957b15f4a999485e740f1586f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3a9b91acac9f108b16e8cb6546b5d5a506a6d03c` · SHA-256 `552e97b63b7e9998938a5b68396b739e5e11e8b957b15f4a999485e740f1586f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
import Mathlib.MeasureTheory.Function.LpSpace.DomAct.Basic
import Mathlib.MeasureTheory.Function.LpSpace.ContinuousCompMeasurePreserving
import Mathlib.Topology.Algebra.Constructions.DomMulAct

/-!
# Continuity of the action of `Mᵈᵐᵃ` on `MeasureSpace.Lp E p μ`

In this file we prove that under certain conditions,
the action of `Mᵈᵐᵃ` on `MeasureTheory.Lp E p μ` is continuous in both variables.

Recall that `Mᵈᵐᵃ` acts on `MeasureTheory.Lp E p μ`
by `mk c • f = MeasureTheory.Lp.compMeasurePreserving (c • ·) _ f`.
This action is defined, if `M` acts on `X` by mesaure preserving maps.

If `M` acts on `X` by continuous maps
preserving a locally finite measure
which is inner regular for finite measure sets with respect to compact sets,
then the action of `Mᵈᵐᵃ` on `Lp E p μ` described above, `1 ≤ p < ∞`,
is continuous in both arguments.

In particular, it applies to the case when `X = M` is a locally compact topological group,
and `μ` is the Haar measure.

## Tags

measure theory, group action, domain action, continuous action, Lp space
-/

open scoped ENNReal
open DomMulAct

namespace MeasureTheory

variable {X M E : Type*}
  [TopologicalSpace X] [R1Space X] [MeasurableSpace X] [BorelSpace X]
  [Monoid M] [TopologicalSpace M] [MeasurableSpace M] [OpensMeasurableSpace M]
  [SMul M X] [ContinuousSMul M X]
  [NormedAddCommGroup E]
  {μ : Measure X} [IsLocallyFiniteMeasure μ] [μ.InnerRegularCompactLTTop]
  [SMulInvariantMeasure M X μ]
  {p : ℝ≥0∞} [Fact (1 ≤ p)] [hp : Fact (p ≠ ∞)]

@[to_additive]
instance Lp.instContinuousSMulDomMulAct : ContinuousSMul Mᵈᵐᵃ (Lp E p μ) where
  continuous_smul :=
    let g : C(Mᵈᵐᵃ × Lp E p μ, C(X, X)) :=
      (ContinuousMap.mk (fun a : M × X ↦ a.1 • a.2) continuous_smul).curry.comp <|
        .comp (.mk DomMulAct.mk.symm) ContinuousMap.fst
    continuous_snd.compMeasurePreservingLp g.continuous _ Fact.out

end MeasureTheory
```
