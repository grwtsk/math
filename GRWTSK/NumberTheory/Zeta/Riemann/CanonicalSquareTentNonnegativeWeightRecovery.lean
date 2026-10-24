/-
Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. No root import.
-/
import GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentExceptionalWeightRealAxis

/-!
# A safe half-line of mixed coefficient measurements

In the finite three-tent coefficient model, the single exceptional
complex weight has strictly negative real part. Consequently every
complex mixing coefficient in the closed right half-plane is injective
when adjoined to the two arithmetic moment rows.

This is a source-level consequence, not independent analytic evidence.
-/
set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentNonnegativeWeightRecovery

open GRWTSK.Logic.InformationLoss
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentBombieriMomentInformationLoss
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentMixedCoordinateRepair
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentActualExceptionalWeight
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentExceptionalWeightRealAxis

/-- The closed right half-plane excludes the unique noninjective weight. -/
theorem right_half_plane_injective (weight : ℂ) (h : 0 ≤ weight.re) :
    Function.Injective
      (augmentedProfile bombieriMomentProfile (mixedCoordinate weight)) := by
  by_contra hinj
  have heq : weight = exceptionalWeight :=
    (actual_mixed_weight_not_injective_iff weight).mp hinj
  have hneg : exceptionalWeight.re < 0 := exceptionalWeight_re_neg
  rw [heq] at h
  exact (not_le_of_gt hneg) h

/-- In particular all nonnegative real mixing coefficients work. -/
theorem nonnegative_real_weight_injective (weight : ℝ) (h : 0 ≤ weight) :
    Function.Injective
      (augmentedProfile bombieriMomentProfile (mixedCoordinate (weight : ℂ))) := by
  apply right_half_plane_injective
  simpa using h

end GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentNonnegativeWeightRecovery
