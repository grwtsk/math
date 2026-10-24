/-
Copyright (c) 2026 grwtsk contributors. MIT.
Local attribution: grwtsk contributors.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. No public root import.
-/
import GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentExceptionalWeightNonzero
import GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentSixteenMomentGaps

/-!
# Strict sign of the real exceptional mixed-coordinate weight

The existing stage-two/three determinant is positive, while the
stage-three/four strict pivot-integral chain supplies positivity
of the first real cofactor determinant. Thus the *real* exceptional
weight formed from these two real determinants is strictly negative.

This source-only algebra does not provide a new analytic observable,
classical Weil positivity, admissibility, density, or RH.
-/
set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentExceptionalWeightSign

open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentBombieriMomentRankObstruction
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentCofactorZeroSign
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentSixteenMomentGaps
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentStrictRatioBridge
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentSixteenPivot

/-- The genuine real first cofactor, made from the actual tent moments. -/
noncomputable def realFirstCofactor : ℝ :=
  realOrdinaryMoment 2 * realMultiplicativeMoment 1 -
    realOrdinaryMoment 1 * realMultiplicativeMoment 2

/-- The strict pivot-16 integral inequalities force a positive first
cofactor determinant. -/
theorem realFirstCofactor_pos : 0 < realFirstCofactor := by
  have hratio :=
    strict_ratio_of_pivot_gaps
      (realOrdinaryMoment 1) (realOrdinaryMoment 2)
      (realMultiplicativeMoment 1) (realMultiplicativeMoment 2)
      sixteenPivot
      (realOrdinaryMoment_pos 1) (realOrdinaryMoment_pos 2)
      stageFour_multiplicative_lt_sixteen_pivot
      stageThree_multiplicative_gt_sixteen_pivot
  exact cofactorZero_pos_of_ratio_order
    ⟨realOrdinaryMoment_pos 1, realOrdinaryMoment_pos 2⟩ hratio

/-- This is the real-number representation of the previously
constructed exceptional weight, not a new independent measurement. -/
noncomputable def realExceptionalWeight : ℝ :=
  -(twoTentMomentDeterminant / realFirstCofactor)

/-- The real exceptional weight is strictly negative. -/
theorem realExceptionalWeight_neg : realExceptionalWeight < 0 := by
  unfold realExceptionalWeight
  have hpositive : 0 < twoTentMomentDeterminant / realFirstCofactor :=
    div_pos twoTentMomentDeterminant_pos realFirstCofactor_pos
  linarith

end GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentExceptionalWeightSign
