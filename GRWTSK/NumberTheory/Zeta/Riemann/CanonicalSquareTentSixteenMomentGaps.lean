/-
Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. No public root import.
-/
import GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentSixteenGapIntegralPositive
import GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentStrictRatioBridge

/-!
# Strict stage-three/four moment inequalities at pivot sixteen

The positive integrals of the actual reciprocal gaps are rewritten as
strict inequalities between the original ordinary and reciprocal
Lebesgue moments. These feed the already isolated cofactor-sign reduction.

No classical Weil form, positivity criterion, admissibility, or RH.
-/
set_option autoImplicit false
noncomputable section
open MeasureTheory

namespace GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentSixteenMomentGaps

open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentSixteenPivot
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentSixteenGapIntegrability
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentSixteenGapIntegralPositive
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentStrictRatioBridge
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentBombieriMomentRankObstruction
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentCofactorZeroSign

theorem stageThree_multiplicative_gt_sixteen_pivot :
    sixteenPivot * realOrdinaryMoment 1 <
      realMultiplicativeMoment 1 := by
  have hpos := stageThreeSixteenGap_integral_pos
  have hdiv := canonicalTentReal_div_integrableOn 1
  have ht : IntegrableOn (canonicalTentReal 1) (Set.Ioi (0 : ℝ)) :=
    (canonicalTentReal_integrable 1).integrableOn
  have heq :
      (∫ x in Set.Ioi (0 : ℝ), stageThreeSixteenGap x) =
        realMultiplicativeMoment 1 -
          sixteenPivot * realOrdinaryMoment 1 := by
    unfold stageThreeSixteenGap realMultiplicativeMoment realOrdinaryMoment
    rw [integral_sub hdiv (ht.const_mul sixteenPivot), integral_const_mul]
  rw [heq] at hpos
  exact sub_pos.mp hpos

theorem stageFour_multiplicative_lt_sixteen_pivot :
    realMultiplicativeMoment 2 <
      sixteenPivot * realOrdinaryMoment 2 := by
  have hpos := stageFourSixteenGap_integral_pos
  have hdiv := canonicalTentReal_div_integrableOn 2
  have ht : IntegrableOn (canonicalTentReal 2) (Set.Ioi (0 : ℝ)) :=
    (canonicalTentReal_integrable 2).integrableOn
  have heq :
      (∫ x in Set.Ioi (0 : ℝ), stageFourSixteenGap x) =
        sixteenPivot * realOrdinaryMoment 2 -
          realMultiplicativeMoment 2 := by
    unfold stageFourSixteenGap realMultiplicativeMoment realOrdinaryMoment
    rw [integral_sub (ht.const_mul sixteenPivot) hdiv, integral_const_mul]
  rw [heq] at hpos
  exact sub_pos.mp hpos

/-- Eliminate the former strict-ratio premise using source-specific
positive-integral suppliers. Still requires actual Lean acceptance. -/
theorem cofactorZero_ne_zero_from_sixteen_support :
    cofactorZero ≠ 0 :=
  cofactorZero_ne_zero_of_stage_pivot_gaps sixteenPivot
    stageFour_multiplicative_lt_sixteen_pivot
    stageThree_multiplicative_gt_sixteen_pivot

end GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentSixteenMomentGaps
