# Complete source: GRWTSK.Analysis.MeasureTheory.Measurable.Variant71bf37d21949cecc6a9111251cceac7e8861104b37e984470dde6698bf09c69a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c942bd9df500ca0115d527597589e87ba8d805fe` · SHA-256 `71bf37d21949cecc6a9111251cceac7e8861104b37e984470dde6698bf09c69a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Gaëtan Serré. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Gaëtan Serré
-/
module

public import Mathlib.Analysis.SpecialFunctions.ContinuousFunctionalCalculus.Rpow.Isometric
public import Mathlib.MeasureTheory.Constructions.BorelSpace.Basic

/-!
# Measurability of `sqrt` over an algebra with an isometric CFC

If `A` is a measurable non-unital normed ring with an isometric continuous functional calculus,
then the square root function `sqrt : A → A` is measurable.
-/

@[expose] public section

variable {A : Type*} [NonUnitalNormedRing A] [StarRing A] [NormedSpace ℝ A]
  [IsScalarTower ℝ A A] [SMulCommClass ℝ A A] [PartialOrder A] [StarOrderedRing A]
  [NonnegSpectrumClass ℝ A] [NonUnitalIsometricContinuousFunctionalCalculus ℝ A IsSelfAdjoint]
  [CompleteSpace A] [ContinuousStar A] [OrderClosedTopology A] [MeasurableSpace A] [BorelSpace A]

namespace CFC

@[fun_prop]
lemma measurable_sqrt : Measurable (sqrt : A → A) := by
  have h_measurable : MeasurableSet {S : A | 0 ≤ S} :=
    (isClosed_le continuous_const continuous_id).measurableSet
  classical
  convert continuousOn_sqrt.measurable_piecewise (continuousOn_const (c := 0)) h_measurable
  ext S
  by_cases hS : 0 ≤ S
  · simp [hS]
  · simp [hS, sqrt_of_not_nonneg]

end CFC
```
