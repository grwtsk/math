# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Complex.Variant22d12155b66dba279ff04689393e8b26e33347609db2aac85affdad6d20f567c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6fe6f3d6fe5cbba10f0ec6ec2881284c70cb95ea` · SHA-256 `22d12155b66dba279ff04689393e8b26e33347609db2aac85affdad6d20f567c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
import Mathlib.MeasureTheory.Constructions.BorelSpace.Complex
import Mathlib.MeasureTheory.Measure.Lebesgue.Basic
import Mathlib.MeasureTheory.Measure.Haar.OfBasis

#align_import measure_theory.measure.lebesgue.complex from "leanprover-community/mathlib"@"fd5edc43dc4f10b85abfe544b88f82cf13c5f844"

/-!
# Lebesgue measure on `ℂ`

In this file we define Lebesgue measure on `ℂ`. Since `ℂ` is defined as a `structure` as the
push-forward of the volume on `ℝ²` under the natural isomorphism. There are (at least) two
frequently used ways to represent `ℝ²` in `mathlib`: `ℝ × ℝ` and `Fin 2 → ℝ`. We define measurable
equivalences (`MeasurableEquiv`) to both types and prove that both of them are volume preserving
(in the sense of `MeasureTheory.measurePreserving`).
-/


open MeasureTheory

noncomputable section

namespace Complex

/-- Lebesgue measure on `ℂ`. -/
instance measureSpace : MeasureSpace ℂ :=
  ⟨Measure.map basisOneI.equivFun.symm volume⟩
#align complex.measure_space Complex.measureSpace

/-- Measurable equivalence between `ℂ` and `ℝ² = Fin 2 → ℝ`. -/
def measurableEquivPi : ℂ ≃ᵐ (Fin 2 → ℝ) :=
  basisOneI.equivFun.toContinuousLinearEquiv.toHomeomorph.toMeasurableEquiv
#align complex.measurable_equiv_pi Complex.measurableEquivPi

/-- Measurable equivalence between `ℂ` and `ℝ × ℝ`. -/
def measurableEquivRealProd : ℂ ≃ᵐ ℝ × ℝ :=
  equivRealProdClm.toHomeomorph.toMeasurableEquiv
#align complex.measurable_equiv_real_prod Complex.measurableEquivRealProd

theorem volume_preserving_equiv_pi : MeasurePreserving measurableEquivPi :=
  (measurableEquivPi.symm.measurable.measurePreserving _).symm _
#align complex.volume_preserving_equiv_pi Complex.volume_preserving_equiv_pi

theorem volume_preserving_equiv_real_prod : MeasurePreserving measurableEquivRealProd :=
  (volume_preserving_finTwoArrow ℝ).comp volume_preserving_equiv_pi
#align complex.volume_preserving_equiv_real_prod Complex.volume_preserving_equiv_real_prod

end Complex
```
