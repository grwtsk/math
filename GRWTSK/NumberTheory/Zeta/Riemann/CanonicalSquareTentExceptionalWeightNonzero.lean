/-
Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. Not imported by GRWTSK.lean.
-/
import GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentActualExceptionalWeight

/-!
# The exceptional mixed weight is not zero

The nonzero stage-two/three determinant gives cofactorTwo ≠ 0.
The stage-three/four pivot-16 chain supplies cofactorZero ≠ 0.
Together they show the unique exceptional weight is nonzero.
In particular the literal third-coordinate measurement (weight zero)
remains injective together with the two actual moments.

These are finite coefficient results. No classical Weil test-class
admissibility, analytic spectral observation or RH follows.
-/
set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentExceptionalWeightNonzero

open GRWTSK.Logic.InformationLoss
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentCorrectedArithmeticGram
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentBombieriMomentInformationLoss
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentMixedCoordinateRepair
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentActualExceptionalWeight
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentSixteenMomentGaps
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentThreeTentMomentCorrection

/-- The actual exceptional weight cannot equal zero. -/
theorem exceptionalWeight_ne_zero : exceptionalWeight ≠ 0 := by
  unfold exceptionalWeight
  exact div_ne_zero (neg_ne_zero.mpr cofactorTwo_ne_zero)
    cofactorZero_ne_zero_from_sixteen_support

/-- Zero mixing means the literal third coordinate and is not
the exceptional weight, hence the augmented source is injective. -/
theorem unmixed_third_coordinate_injective :
    Function.Injective
      (augmentedProfile bombieriMomentProfile (mixedCoordinate 0)) := by
  by_contra h
  have heq := (actual_mixed_weight_not_injective_iff 0).mp h
  exact exceptionalWeight_ne_zero heq.symm

end GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentExceptionalWeightNonzero
