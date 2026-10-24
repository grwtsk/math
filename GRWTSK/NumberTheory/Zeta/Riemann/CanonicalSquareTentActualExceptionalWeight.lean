/-
Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. No root import.
-/
import GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentSixteenMomentGaps
import GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentMixedWeightClassification

/-!
# The unique exceptional weight for the actual three-tent moment source

The stage-three/four pivot-16 integral suppliers yield cofactorZero ≠ 0
at the SOURCE level. Substituting this into the earlier exact conditional
classification removes the cofactor nonvanishing hypothesis from the
final theorem statement. Its full transitive Lean/kernel acceptance
is not yet established; no classical Weil/RH conclusion follows.
-/
set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentActualExceptionalWeight

open GRWTSK.Logic.InformationLoss
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentCorrectedArithmeticGram
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentBombieriMomentInformationLoss
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentMixedCoordinateRepair
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentMixedWeightClassification
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentSixteenMomentGaps

/-- The actual source's unique degenerate mixed-coordinate weight. -/
noncomputable def exceptionalWeight : ℂ :=
  -cofactorTwo / cofactorZero

/-- Unconditional in its *statement*, dependent on the source-level
pivot integral chain: a mixed weight fails exactly at exceptionalWeight. -/
theorem actual_mixed_weight_not_injective_iff (weight : ℂ) :
    (¬ Function.Injective
      (augmentedProfile bombieriMomentProfile (mixedCoordinate weight))) ↔
      weight = exceptionalWeight := by
  simpa only [exceptionalWeight] using
    (exceptional_weight_iff cofactorZero_ne_zero_from_sixteen_support weight)

end GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentActualExceptionalWeight
