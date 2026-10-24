/-
Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. Not root imported.
-/
import GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentSixteenPivot
import Mathlib.Tactic

/-!
# Nonnegative reciprocal gaps and integrability at the sixteen pivot

The pointwise strict certificates on the two tent interiors are extended
to nonnegativity on the positive half-line. Integrability is inherited
from the actual tent and reciprocal-weighted tent integrability lemmas.
Strict positivity of the INTEGRALS is a separate next obligation.
-/
set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentSixteenGapIntegrability

open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentSixteenPivot
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentBombieriMomentRankObstruction
open GRWTSK.Analysis.Real.TentWeight
open GRWTSK.NumberTheory.Chebyshev.TentSource

theorem stageThreeSixteenGap_nonnegative
    {x : ℝ} (hx : x ∈ Set.Ioi (0 : ℝ)) :
    0 ≤ stageThreeSixteenGap x := by
  by_cases h : x < 16
  · have hrec : sixteenPivot ≤ 1 / x := by
      unfold sixteenPivot
      exact one_div_le_one_div_of_le hx h.le
    calc
      stageThreeSixteenGap x =
          canonicalTentReal 1 x * (1 / x - sixteenPivot) := by
            unfold stageThreeSixteenGap
            ring
      _ ≥ 0 := mul_nonneg
        (tent_nonneg (squareCenter 3) (squareRadius 3) x)
        (sub_nonneg.mpr hrec)
  · have hz : canonicalTentReal 1 x = 0 := by
      unfold canonicalTentReal
      apply tent_eq_zero_of_outside _ _ _ (squareRadius_pos 3)
      intro hi
      norm_num [squareCenter, squareRadius] at hi
      linarith
    simp [stageThreeSixteenGap, hz]

theorem stageFourSixteenGap_nonnegative
    {x : ℝ} (hx : x ∈ Set.Ioi (0 : ℝ)) :
    0 ≤ stageFourSixteenGap x := by
  by_cases h : 16 < x
  · have hrec : 1 / x ≤ sixteenPivot := by
      unfold sixteenPivot
      exact one_div_le_one_div_of_le (by norm_num : (0 : ℝ) < 16) h.le
    calc
      stageFourSixteenGap x =
          canonicalTentReal 2 x * (sixteenPivot - 1 / x) := by
            unfold stageFourSixteenGap
            ring
      _ ≥ 0 := mul_nonneg
        (tent_nonneg (squareCenter 4) (squareRadius 4) x)
        (sub_nonneg.mpr hrec)
  · have hz : canonicalTentReal 2 x = 0 := by
      unfold canonicalTentReal
      apply tent_eq_zero_of_outside _ _ _ (squareRadius_pos 4)
      intro hi
      norm_num [squareCenter, squareRadius] at hi
      linarith
    simp [stageFourSixteenGap, hz]

theorem stageThreeSixteenGap_integrableOn :
    IntegrableOn stageThreeSixteenGap (Set.Ioi (0 : ℝ)) := by
  unfold stageThreeSixteenGap
  exact (canonicalTentReal_div_integrableOn 1).sub
    ((canonicalTentReal_integrable 1).integrableOn.const_mul sixteenPivot)

theorem stageFourSixteenGap_integrableOn :
    IntegrableOn stageFourSixteenGap (Set.Ioi (0 : ℝ)) := by
  unfold stageFourSixteenGap
  exact ((canonicalTentReal_integrable 2).integrableOn.const_mul sixteenPivot).sub
    (canonicalTentReal_div_integrableOn 2)

end GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentSixteenGapIntegrability
