/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentBombieriMomentObstruction
import Mathlib.MeasureTheory.Integral.Bochner.Set
import Mathlib.MeasureTheory.Function.LocallyIntegrable
import Mathlib.Tactic

set_option autoImplicit false

open MeasureTheory
open scoped BigOperators ENNReal

/-!
# Two-tent moment-rank obstruction in Bombieri's test class

The preceding source layer rules out sending each canonical arithmetic basis vector
to the same square tent, even after nonzero scalar rescaling.  This module tests the
next nearest candidate: use arbitrary complex linear combinations of exactly the
stage-two and stage-three canonical square tents.

Bombieri's stated criterion imposes two independent moments.  The shared endpoint
`9` separates the reciprocal moments of the two positive tents:

* on the stage-two support `(4,9)`, `1/x > 1/9`;
* on the stage-three support `(9,16)`, `1/x < 1/9`.

Consequently the `2 × 2` moment matrix has nonzero determinant.  Its kernel is zero,
so there is no nonzero moment-corrected vector in the span of the two tents, and no
two-vector corrected basis.  The complete arithmetic coefficient matrix of any
degenerate corrected pair is recomputed and is identically zero; the old diagonal
prime-power matrix is not reused.

This is a bounded test-class obstruction.  It does not rule out corrections using a
third function, a wider tent family, derivatives, distributions, or a different
classical realization.  It defines no classical Weil form, criterion, or RH adapter.
-/

namespace GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentBombieriMomentRankObstruction

open GRWTSK.Analysis.RealAnalysis.TentWeight
open GRWTSK.NumberTheory.Chebyshev.TentSource
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentPolarization
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentBombieriMomentObstruction

/-- Coordinate of the stage-two tent in `Combination 1 = Fin 2 → ℂ`. -/
def stageTwoCoordinate : Fin 2 := ⟨0, by omega⟩

/-- Coordinate of the stage-three tent in `Combination 1 = Fin 2 → ℂ`. -/
def stageThreeCoordinate : Fin 2 := ⟨1, by omega⟩

theorem stageTwoCoordinate_ne_stageThreeCoordinate :
    stageTwoCoordinate ≠ stageThreeCoordinate := by
  norm_num [stageTwoCoordinate, stageThreeCoordinate]

/-- Real ordinary positive-half-line moment. -/
noncomputable def realOrdinaryMoment (i : ℕ) : ℝ :=
  ∫ x in Set.Ioi (0 : ℝ), canonicalTentReal i x

/-- Real multiplicative positive-half-line moment. -/
noncomputable def realMultiplicativeMoment (i : ℕ) : ℝ :=
  ∫ x in Set.Ioi (0 : ℝ), canonicalTentReal i x / x

theorem realOrdinaryMoment_pos (i : ℕ) :
    0 < realOrdinaryMoment i := by
  simpa [realOrdinaryMoment] using canonicalTentReal_ordinaryMoment_pos i

/-- Division by `x` is integrable because the canonical support is compact and
bounded away from zero. -/
theorem canonicalTentReal_div_integrable (i : ℕ) :
    Integrable (fun x : ℝ => canonicalTentReal i x / x) := by
  let n := i + 2
  let a := squareCenter n - squareRadius n
  let b := squareCenter n + squareRadius n
  have hcontinuous :
      ContinuousOn (fun x : ℝ => canonicalTentReal i x / x) (Set.Ioi 0) := by
    exact (canonicalTentReal_continuous i).continuousOn.div continuousOn_id
      (fun x hx => ne_of_gt hx)
  have hlocal :
      LocallyIntegrableOn (fun x : ℝ => canonicalTentReal i x / x) (Set.Ioi 0) :=
    ContinuousOn.locallyIntegrableOn hcontinuous measurableSet_Ioi
  have hwindow : Set.Icc a b ⊆ Set.Ioi (0 : ℝ) := by
    intro x hx
    have ha : 0 < a := by
      dsimp [a, n]
      rw [center_sub_radius]
      positivity
    exact ha.trans_le hx.1
  have hsupp :
      Function.support (fun x : ℝ => canonicalTentReal i x / x) ⊆
        Set.Icc a b := by
    intro x hx
    rw [Function.mem_support] at hx
    have ht : canonicalTentReal i x ≠ 0 := by
      intro hzero
      exact hx (by simp [hzero])
    have htpos : 0 < canonicalTentReal i x := by
      have hnonneg :
          0 ≤ canonicalTentReal i x := by
        simpa [canonicalTentReal, n] using
          (tent_nonneg (squareCenter n) (squareRadius n) x)
      exact lt_of_le_of_ne hnonneg (Ne.symm ht)
    have htpos' :
        0 < tent (squareCenter n) (squareRadius n) x := by
      simpa [canonicalTentReal, n] using htpos
    have hinside :
        squareCenter n - squareRadius n < x ∧
          x < squareCenter n + squareRadius n := by
      exact (tent_pos_iff (squareCenter n) (squareRadius n) x
        (squareRadius_pos n)).mp htpos'
    exact ⟨hinside.1.le, hinside.2.le⟩
  have hcompact :
      IntegrableOn (fun x : ℝ => canonicalTentReal i x / x) (Set.Icc a b) :=
    hlocal.integrableOn_compact_subset hwindow isCompact_Icc
  exact (integrableOn_iff_integrable_of_support_subset hsupp).mp hcompact

theorem canonicalTentReal_div_integrableOn (i : ℕ) :
    IntegrableOn (fun x : ℝ => canonicalTentReal i x / x) (Set.Ioi 0) :=
  (canonicalTentReal_div_integrable i).integrableOn

/-- The shared reciprocal pivot at the square endpoint `9`. -/
noncomputable def reciprocalPivot : ℝ := 1 / 9

/-- Positive gap on the stage-two window. -/
noncomputable def stageTwoReciprocalGap (x : ℝ) : ℝ :=
  canonicalTentReal 0 x / x - reciprocalPivot * canonicalTentReal 0 x

/-- Positive gap on the stage-three window. -/
noncomputable def stageThreeReciprocalGap (x : ℝ) : ℝ :=
  reciprocalPivot * canonicalTentReal 1 x - canonicalTentReal 1 x / x

theorem stageTwoTent_eq_zero_of_nine_le {x : ℝ} (hx : 9 ≤ x) :
    canonicalTentReal 0 x = 0 := by
  unfold canonicalTentReal
  apply tent_eq_zero_of_outside _ _ _ (squareRadius_pos 2)
  intro h
  norm_num [squareCenter, squareRadius] at h
  linarith

theorem stageTwoTent_eq_zero_of_nonpos {x : ℝ} (hx : x ≤ 0) :
    canonicalTentReal 0 x = 0 := by
  unfold canonicalTentReal
  apply tent_eq_zero_of_outside _ _ _ (squareRadius_pos 2)
  intro h
  norm_num [squareCenter, squareRadius] at h
  linarith

theorem stageThreeTent_eq_zero_of_le_nine {x : ℝ} (hx : x ≤ 9) :
    canonicalTentReal 1 x = 0 := by
  unfold canonicalTentReal
  apply tent_eq_zero_of_outside _ _ _ (squareRadius_pos 3)
  intro h
  norm_num [squareCenter, squareRadius] at h
  linarith

theorem stageThreeTent_eq_zero_of_nonpos {x : ℝ} (hx : x ≤ 0) :
    canonicalTentReal 1 x = 0 :=
  stageThreeTent_eq_zero_of_le_nine (hx.trans (by norm_num))

theorem stageTwoReciprocalGap_nonnegative
    {x : ℝ} (hx : x ∈ Set.Ioi (0 : ℝ)) :
    0 ≤ stageTwoReciprocalGap x := by
  by_cases hx9 : x < 9
  · have hrec : reciprocalPivot ≤ 1 / x := by
      unfold reciprocalPivot
      exact one_div_le_one_div_of_le hx (le_of_lt hx9)
    calc
      stageTwoReciprocalGap x =
          canonicalTentReal 0 x * (1 / x - reciprocalPivot) := by
        unfold stageTwoReciprocalGap
        ring
      _ ≥ 0 := mul_nonneg
        (tent_nonneg (squareCenter 2) (squareRadius 2) x)
        (sub_nonneg.mpr hrec)
  · have hz := stageTwoTent_eq_zero_of_nine_le (le_of_not_gt hx9)
    simp [stageTwoReciprocalGap, hz]

set_option linter.unusedVariables false in
theorem stageThreeReciprocalGap_nonnegative
    {x : ℝ} (hx : x ∈ Set.Ioi (0 : ℝ)) :
    0 ≤ stageThreeReciprocalGap x := by
  by_cases hx9 : 9 < x
  · have hrec : 1 / x ≤ reciprocalPivot := by
      unfold reciprocalPivot
      exact one_div_le_one_div_of_le (by norm_num : (0 : ℝ) < 9) hx9.le
    calc
      stageThreeReciprocalGap x =
          canonicalTentReal 1 x * (reciprocalPivot - 1 / x) := by
        unfold stageThreeReciprocalGap
        ring
      _ ≥ 0 := mul_nonneg
        (tent_nonneg (squareCenter 3) (squareRadius 3) x)
        (sub_nonneg.mpr hrec)
  · have hz := stageThreeTent_eq_zero_of_le_nine (le_of_not_gt hx9)
    simp [stageThreeReciprocalGap, hz]

theorem stageTwoReciprocalGap_pos
    {x : ℝ} (hx : x ∈ Set.Ioo (4 : ℝ) 9) :
    0 < stageTwoReciprocalGap x := by
  have ht : 0 < canonicalTentReal 0 x := by
    unfold canonicalTentReal
    apply (tent_pos_iff (squareCenter 2) (squareRadius 2) x
      (squareRadius_pos 2)).2
    norm_num [squareCenter, squareRadius] at hx ⊢
    exact hx
  have hrec : reciprocalPivot < 1 / x := by
    unfold reciprocalPivot
    exact one_div_lt_one_div_of_lt (by linarith [hx.1]) hx.2
  calc
    stageTwoReciprocalGap x =
        canonicalTentReal 0 x * (1 / x - reciprocalPivot) := by
      unfold stageTwoReciprocalGap
      ring
    _ > 0 := mul_pos ht (sub_pos.mpr hrec)

theorem stageThreeReciprocalGap_pos
    {x : ℝ} (hx : x ∈ Set.Ioo (9 : ℝ) 16) :
    0 < stageThreeReciprocalGap x := by
  have ht : 0 < canonicalTentReal 1 x := by
    unfold canonicalTentReal
    apply (tent_pos_iff (squareCenter 3) (squareRadius 3) x
      (squareRadius_pos 3)).2
    norm_num [squareCenter, squareRadius] at hx ⊢
    exact hx
  have hrec : 1 / x < reciprocalPivot := by
    unfold reciprocalPivot
    exact one_div_lt_one_div_of_lt (by norm_num : (0 : ℝ) < 9) hx.1
  calc
    stageThreeReciprocalGap x =
        canonicalTentReal 1 x * (reciprocalPivot - 1 / x) := by
      unfold stageThreeReciprocalGap
      ring
    _ > 0 := mul_pos ht (sub_pos.mpr hrec)

theorem stageTwoReciprocalGap_integrableOn :
    IntegrableOn stageTwoReciprocalGap (Set.Ioi (0 : ℝ)) := by
  unfold stageTwoReciprocalGap
  exact (canonicalTentReal_div_integrableOn 0).sub
    ((canonicalTentReal_integrable 0).integrableOn.const_mul reciprocalPivot)

theorem stageThreeReciprocalGap_integrableOn :
    IntegrableOn stageThreeReciprocalGap (Set.Ioi (0 : ℝ)) := by
  unfold stageThreeReciprocalGap
  exact ((canonicalTentReal_integrable 1).integrableOn.const_mul reciprocalPivot).sub
    (canonicalTentReal_div_integrableOn 1)

theorem stageTwoReciprocalGap_integral_pos :
    0 < ∫ x in Set.Ioi (0 : ℝ), stageTwoReciprocalGap x := by
  refine (setIntegral_pos_iff_support_of_nonneg_ae ?_
    stageTwoReciprocalGap_integrableOn).2 ?_
  · filter_upwards [self_mem_ae_restrict measurableSet_Ioi] with x hx
    exact stageTwoReciprocalGap_nonnegative hx
  · have hsub :
        Set.Ioo (4 : ℝ) 9 ⊆
          Function.support stageTwoReciprocalGap ∩ Set.Ioi (0 : ℝ) := by
      intro x hx
      constructor
      · rw [Function.mem_support]
        exact ne_of_gt (stageTwoReciprocalGap_pos hx)
      · exact lt_trans (by norm_num) hx.1
    have hvol : 0 < volume (Set.Ioo (4 : ℝ) 9) := by
      rw [Real.volume_Ioo]
      exact ENNReal.ofReal_pos.mpr (by norm_num)
    exact hvol.trans_le (measure_mono hsub)

theorem stageThreeReciprocalGap_integral_pos :
    0 < ∫ x in Set.Ioi (0 : ℝ), stageThreeReciprocalGap x := by
  refine (setIntegral_pos_iff_support_of_nonneg_ae ?_
    stageThreeReciprocalGap_integrableOn).2 ?_
  · filter_upwards [self_mem_ae_restrict measurableSet_Ioi] with x hx
    exact stageThreeReciprocalGap_nonnegative hx
  · have hsub :
        Set.Ioo (9 : ℝ) 16 ⊆
          Function.support stageThreeReciprocalGap ∩ Set.Ioi (0 : ℝ) := by
      intro x hx
      constructor
      · rw [Function.mem_support]
        exact ne_of_gt (stageThreeReciprocalGap_pos hx)
      · exact lt_trans (by norm_num) hx.1
    have hvol : 0 < volume (Set.Ioo (9 : ℝ) 16) := by
      rw [Real.volume_Ioo]
      exact ENNReal.ofReal_pos.mpr (by norm_num)
    exact hvol.trans_le (measure_mono hsub)

/-- The reciprocal average of the stage-two tent lies strictly above `1/9`. -/
theorem stageTwo_multiplicative_gt_pivot_ordinary :
    reciprocalPivot * realOrdinaryMoment 0 <
      realMultiplicativeMoment 0 := by
  have hpos := stageTwoReciprocalGap_integral_pos
  have hdiv := canonicalTentReal_div_integrableOn 0
  have htent : IntegrableOn (canonicalTentReal 0) (Set.Ioi (0 : ℝ)) :=
    (canonicalTentReal_integrable 0).integrableOn
  have heq :
      (∫ x in Set.Ioi (0 : ℝ), stageTwoReciprocalGap x) =
        realMultiplicativeMoment 0 -
          reciprocalPivot * realOrdinaryMoment 0 := by
    unfold stageTwoReciprocalGap realMultiplicativeMoment realOrdinaryMoment
    rw [integral_sub hdiv (htent.const_mul reciprocalPivot),
      integral_const_mul]
  rw [heq] at hpos
  exact sub_pos.mp hpos

/-- The reciprocal average of the stage-three tent lies strictly below `1/9`. -/
theorem stageThree_multiplicative_lt_pivot_ordinary :
    realMultiplicativeMoment 1 <
      reciprocalPivot * realOrdinaryMoment 1 := by
  have hpos := stageThreeReciprocalGap_integral_pos
  have hdiv := canonicalTentReal_div_integrableOn 1
  have htent : IntegrableOn (canonicalTentReal 1) (Set.Ioi (0 : ℝ)) :=
    (canonicalTentReal_integrable 1).integrableOn
  have heq :
      (∫ x in Set.Ioi (0 : ℝ), stageThreeReciprocalGap x) =
        reciprocalPivot * realOrdinaryMoment 1 -
          realMultiplicativeMoment 1 := by
    unfold stageThreeReciprocalGap realMultiplicativeMoment realOrdinaryMoment
    rw [integral_sub (htent.const_mul reciprocalPivot) hdiv,
      integral_const_mul]
  rw [heq] at hpos
  exact sub_pos.mp hpos

/-- Determinant of the two moment functionals on the stage-two/stage-three span. -/
noncomputable def twoTentMomentDeterminant : ℝ :=
  realOrdinaryMoment 1 * realMultiplicativeMoment 0 -
    realOrdinaryMoment 0 * realMultiplicativeMoment 1

/-- The two source moments are independent on the two-tent span. -/
theorem twoTentMomentDeterminant_pos :
    0 < twoTentMomentDeterminant := by
  have hA0 := realOrdinaryMoment_pos 0
  have hA1 := realOrdinaryMoment_pos 1
  have hleft :
      realOrdinaryMoment 0 * realMultiplicativeMoment 1 <
        realOrdinaryMoment 0 *
          (reciprocalPivot * realOrdinaryMoment 1) :=
    mul_lt_mul_of_pos_left stageThree_multiplicative_lt_pivot_ordinary hA0
  have hright :
      realOrdinaryMoment 1 *
          (reciprocalPivot * realOrdinaryMoment 0) <
        realOrdinaryMoment 1 * realMultiplicativeMoment 0 :=
    mul_lt_mul_of_pos_left stageTwo_multiplicative_gt_pivot_ordinary hA1
  have hmiddle :
      realOrdinaryMoment 0 *
          (reciprocalPivot * realOrdinaryMoment 1) =
        realOrdinaryMoment 1 *
          (reciprocalPivot * realOrdinaryMoment 0) := by
    ring
  have hcross :
      realOrdinaryMoment 0 * realMultiplicativeMoment 1 <
        realOrdinaryMoment 1 * realMultiplicativeMoment 0 :=
    hleft.trans (hmiddle.trans_lt hright)
  unfold twoTentMomentDeterminant
  exact sub_pos.mpr hcross

/-- Actual complex-valued linear combination of the two literal tents. -/
noncomputable def twoTentFunction (u : Combination 1) : ℝ → ℂ :=
  fun x =>
    u stageTwoCoordinate * canonicalTentComplex 0 x +
      u stageThreeCoordinate * canonicalTentComplex 1 x

/-- Ordinary moment written in coefficient coordinates. -/
noncomputable def ordinaryMomentMap (u : Combination 1) : ℂ :=
  u stageTwoCoordinate * (realOrdinaryMoment 0 : ℂ) +
    u stageThreeCoordinate * (realOrdinaryMoment 1 : ℂ)

/-- Multiplicative moment written in coefficient coordinates. -/
noncomputable def multiplicativeMomentMap (u : Combination 1) : ℂ :=
  u stageTwoCoordinate * (realMultiplicativeMoment 0 : ℂ) +
    u stageThreeCoordinate * (realMultiplicativeMoment 1 : ℂ)

/-- Complex multiplicative moment from Bombieri's source condition. -/
noncomputable def bombieriMultiplicativeMoment (g : ℝ → ℂ) : ℂ :=
  ∫ x in Set.Ioi (0 : ℝ), g x / (x : ℂ)

theorem canonicalTentComplex_integrableOn (i : ℕ) :
    IntegrableOn (canonicalTentComplex i) (Set.Ioi (0 : ℝ)) := by
  have h : Integrable (canonicalTentReal i) (volume.restrict (Set.Ioi (0 : ℝ))) :=
    (canonicalTentReal_integrable i).integrableOn
  exact Integrable.ofReal (𝕜 := ℂ) h

theorem canonicalTentComplex_div_integrableOn (i : ℕ) :
    IntegrableOn (fun x : ℝ => canonicalTentComplex i x / (x : ℂ))
      (Set.Ioi (0 : ℝ)) := by
  have hreal :
      IntegrableOn
        (fun x : ℝ => ((canonicalTentReal i x / x : ℝ) : ℂ))
        (Set.Ioi (0 : ℝ)) :=
    Integrable.ofReal (canonicalTentReal_div_integrableOn i)
  simpa [canonicalTentComplex, Complex.ofReal_div] using hreal

theorem bombieriMultiplicativeMoment_canonicalTent_eq (i : ℕ) :
    bombieriMultiplicativeMoment (canonicalTentComplex i) =
      (realMultiplicativeMoment i : ℂ) := by
  unfold bombieriMultiplicativeMoment realMultiplicativeMoment
  calc
    (∫ x in Set.Ioi (0 : ℝ), canonicalTentComplex i x / (x : ℂ)) =
        ∫ x in Set.Ioi (0 : ℝ), ((canonicalTentReal i x / x : ℝ) : ℂ) := by
      apply integral_congr_ae
      exact Filter.Eventually.of_forall fun x => (Complex.ofReal_div _ _).symm
    _ = _ := integral_ofReal (f := fun x : ℝ => canonicalTentReal i x / x)
      (μ := volume.restrict (Set.Ioi (0 : ℝ))) (𝕜 := ℂ)

theorem bombieriOrdinaryMoment_twoTent_eq (u : Combination 1) :
    bombieriOrdinaryMoment (twoTentFunction u) =
      ordinaryMomentMap u := by
  have h0 :=
    (canonicalTentComplex_integrableOn 0).const_mul (u stageTwoCoordinate)
  have h1 :=
    (canonicalTentComplex_integrableOn 1).const_mul (u stageThreeCoordinate)
  unfold bombieriOrdinaryMoment twoTentFunction ordinaryMomentMap
  rw [integral_add h0 h1, integral_const_mul, integral_const_mul]
  change u stageTwoCoordinate * bombieriOrdinaryMoment (canonicalTentComplex 0) +
    u stageThreeCoordinate * bombieriOrdinaryMoment (canonicalTentComplex 1) = _
  rw [bombieriOrdinaryMoment_canonicalTent_eq, bombieriOrdinaryMoment_canonicalTent_eq]
  rfl

theorem bombieriMultiplicativeMoment_twoTent_eq (u : Combination 1) :
    bombieriMultiplicativeMoment (twoTentFunction u) =
      multiplicativeMomentMap u := by
  have h0 :=
    (canonicalTentComplex_div_integrableOn 0).const_mul (u stageTwoCoordinate)
  have h1 :=
    (canonicalTentComplex_div_integrableOn 1).const_mul (u stageThreeCoordinate)
  unfold bombieriMultiplicativeMoment twoTentFunction multiplicativeMomentMap
  simp_rw [add_div, mul_div_assoc]
  rw [integral_add h0 h1, integral_const_mul, integral_const_mul]
  change u stageTwoCoordinate * bombieriMultiplicativeMoment (canonicalTentComplex 0) +
    u stageThreeCoordinate * bombieriMultiplicativeMoment (canonicalTentComplex 1) = _
  rw [bombieriMultiplicativeMoment_canonicalTent_eq, bombieriMultiplicativeMoment_canonicalTent_eq]

/-- The two-moment coordinate map has trivial kernel. -/
theorem combination_eq_zero_of_momentMaps_zero
    (u : Combination 1)
    (hordinary : ordinaryMomentMap u = 0)
    (hmultiplicative : multiplicativeMomentMap u = 0) :
    u = 0 := by
  have hdet : twoTentMomentDeterminant ≠ 0 :=
    ne_of_gt twoTentMomentDeterminant_pos
  have hdetC : (twoTentMomentDeterminant : ℂ) ≠ 0 :=
    Complex.ofReal_ne_zero.mpr hdet
  have hordinary' :
      u stageTwoCoordinate * (realOrdinaryMoment 0 : ℂ) +
        u stageThreeCoordinate * (realOrdinaryMoment 1 : ℂ) = 0 := by
    simpa [ordinaryMomentMap] using hordinary
  have hmultiplicative' :
      u stageTwoCoordinate * (realMultiplicativeMoment 0 : ℂ) +
        u stageThreeCoordinate * (realMultiplicativeMoment 1 : ℂ) = 0 := by
    simpa [multiplicativeMomentMap] using hmultiplicative
  have hfirstProduct :
      u stageTwoCoordinate * (twoTentMomentDeterminant : ℂ) = 0 := by
    calc
      u stageTwoCoordinate * (twoTentMomentDeterminant : ℂ) =
          (realOrdinaryMoment 1 : ℂ) *
              (u stageTwoCoordinate * (realMultiplicativeMoment 0 : ℂ) +
                u stageThreeCoordinate * (realMultiplicativeMoment 1 : ℂ)) -
            (realMultiplicativeMoment 1 : ℂ) *
              (u stageTwoCoordinate * (realOrdinaryMoment 0 : ℂ) +
                u stageThreeCoordinate * (realOrdinaryMoment 1 : ℂ)) := by
        unfold twoTentMomentDeterminant
        push_cast
        ring
      _ = 0 := by
        rw [hmultiplicative', hordinary']
        ring
  have hfirst : u stageTwoCoordinate = 0 :=
    (mul_eq_zero.mp hfirstProduct).resolve_right hdetC
  have hA1C : (realOrdinaryMoment 1 : ℂ) ≠ 0 :=
    Complex.ofReal_ne_zero.mpr (ne_of_gt (realOrdinaryMoment_pos 1))
  have hsecondProduct :
      u stageThreeCoordinate * (realOrdinaryMoment 1 : ℂ) = 0 := by
    simpa [hfirst] using hordinary'
  have hsecond : u stageThreeCoordinate = 0 :=
    (mul_eq_zero.mp hsecondProduct).resolve_right hA1C
  funext k
  fin_cases k
  · simpa [stageTwoCoordinate] using hfirst
  · simpa [stageThreeCoordinate] using hsecond

/-- Any two-tent vector satisfying Bombieri's two displayed moment conditions is
the zero vector. -/
theorem combination_eq_zero_of_bombieriMoments
    (u : Combination 1)
    (h : BombieriZeroMomentConditions (twoTentFunction u)) :
    u = 0 := by
  apply combination_eq_zero_of_momentMaps_zero u
  · rw [← bombieriOrdinaryMoment_twoTent_eq]
    exact h.ordinaryMoment_zero
  · rw [← bombieriMultiplicativeMoment_twoTent_eq]
    exact h.multiplicativeMoment_zero

/-- Two proposed moment-corrected vectors in the two-tent coefficient space.
No nondegeneracy is built into this record, so its arithmetic matrix can be
recomputed before the impossibility of an injective pair is asserted. -/
structure TwoTentMomentCorrectedPair where
  vector : Fin 2 → Combination 1
  moments :
    ∀ k : Fin 2, BombieriZeroMomentConditions (twoTentFunction (vector k))

namespace TwoTentMomentCorrectedPair

theorem vector_eq_zero
    (candidate : TwoTentMomentCorrectedPair) (k : Fin 2) :
    candidate.vector k = 0 :=
  combination_eq_zero_of_bombieriMoments
    (candidate.vector k) (candidate.moments k)

/-- Complete recomputed arithmetic coefficient matrix after imposing both moments. -/
noncomputable def arithmeticMatrix
    (candidate : TwoTentMomentCorrectedPair) (i j : Fin 2) : ℂ :=
  sourcePolarizedForm (candidate.vector i) (candidate.vector j)

theorem arithmeticMatrix_entry_eq_zero
    (candidate : TwoTentMomentCorrectedPair) (i j : Fin 2) :
    candidate.arithmeticMatrix i j = 0 := by
  unfold arithmeticMatrix
  rw [candidate.vector_eq_zero i, candidate.vector_eq_zero j]
  simp [sourcePolarizedForm]

theorem arithmeticMatrix_eq_zero
    (candidate : TwoTentMomentCorrectedPair) :
    candidate.arithmeticMatrix = 0 := by
  funext i j
  exact candidate.arithmeticMatrix_entry_eq_zero i j

end TwoTentMomentCorrectedPair

/-- A genuine two-vector corrected realization would at minimum be injective on
the two labels. -/
structure NondegenerateTwoTentMomentCorrectedPair where
  vector : Fin 2 → Combination 1
  moments :
    ∀ k : Fin 2, BombieriZeroMomentConditions (twoTentFunction (vector k))
  injective : Function.Injective vector

/-- No nondegenerate two-vector Bombieri correction exists inside the span of the
stage-two and stage-three tents. -/
theorem no_nondegenerateTwoTentMomentCorrectedPair :
    ¬ Nonempty NondegenerateTwoTentMomentCorrectedPair := by
  rintro ⟨candidate⟩
  have htwo :
      candidate.vector stageTwoCoordinate = 0 :=
    combination_eq_zero_of_bombieriMoments
      (candidate.vector stageTwoCoordinate)
      (candidate.moments stageTwoCoordinate)
  have hthree :
      candidate.vector stageThreeCoordinate = 0 :=
    combination_eq_zero_of_bombieriMoments
      (candidate.vector stageThreeCoordinate)
      (candidate.moments stageThreeCoordinate)
  have heq :
      candidate.vector stageTwoCoordinate =
        candidate.vector stageThreeCoordinate := by
    rw [htwo, hthree]
  exact stageTwoCoordinate_ne_stageThreeCoordinate
    (candidate.injective heq)

/-- Source-bound packet recording the exact negative result and its scope. -/
structure TwoTentMomentRankObstructionPacket where
  sourcePublication : String
  sourceStatement : String
  sourcePublication_eq :
    sourcePublication = bombieriSourcePublication
  sourceStatement_eq :
    sourceStatement = bombieriSourceStatement
  determinant : ℝ
  determinant_eq : determinant = twoTentMomentDeterminant
  determinant_positive : 0 < determinant
  no_nondegenerate_pair :
    ¬ Nonempty NondegenerateTwoTentMomentCorrectedPair

noncomputable def twoTentMomentRankObstructionPacket :
    TwoTentMomentRankObstructionPacket where
  sourcePublication := bombieriSourcePublication
  sourceStatement := bombieriSourceStatement
  sourcePublication_eq := rfl
  sourceStatement_eq := rfl
  determinant := twoTentMomentDeterminant
  determinant_eq := rfl
  determinant_positive := twoTentMomentDeterminant_pos
  no_nondegenerate_pair := no_nondegenerateTwoTentMomentCorrectedPair

end GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentBombieriMomentRankObstruction
