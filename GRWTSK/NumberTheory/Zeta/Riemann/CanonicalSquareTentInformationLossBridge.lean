/-
Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
The source comparison is logical. Its corrected zero-moment witness and
classical transport premises retain their own independent verification gates.
-/
import GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.InformationLoss.FactorizationFiber
import GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentBombieriMomentInformationLoss

/-!
# The canonical Bombieri two-moment collision as a generic factorization obstruction

The existing module supplies a nonzero, actual stage-two/three/four
coefficient vector with both ordinary and reciprocal moments zero. Here that
same collision is consumed by the type-generic information-loss theorem.
No Weil positivity, all-pairs classical transport, or Riemann Hypothesis
conclusion is imported or constructed.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentInformationLossBridge

open GRWTSK.RiemannHypothesis
open GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.InformationLoss
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentCorrectedArithmeticGram
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentBombieriMomentInformationLoss

/-- The existing Bombieri two-moment factorization definition is exactly
the same typed functional factorization as the generic supplier. -/
theorem bombieriFactorsThrough_iff_generic
    {α : Type*} (readout : Combination 2 → α) :
    FactorsThrough bombieriMomentProfile readout ↔
      FactorsThroughBombieriMoments readout := Iff.rfl

/-- Re-export the actual corrected-vs-zero fiber collision at precisely the
same three-coordinate arithmetic source and both source moments. -/
theorem bombieri_corrected_zero_same_profile :
    bombieriMomentProfile correctedCoordinates =
      bombieriMomentProfile (0 : Combination 2) := by
  rw [bombieriMomentProfile_correctedCoordinates,
    bombieriMomentProfile_zero]

/-- A target that separates the corrected combination from zero cannot
factor through the two actual source moments. Separation is a hypothesis,
not a claim about the classical Guinand--Weil diagonal. -/
theorem bombieri_not_factorsThrough_generic
    {α : Type*} (readout : Combination 2 → α)
    (hseparates : readout correctedCoordinates ≠ readout 0) :
    ¬ FactorsThrough bombieriMomentProfile readout :=
  not_factorsThrough_of_collision bombieriMomentProfile readout
    correctedCoordinates (0 : Combination 2)
    bombieri_corrected_zero_same_profile hseparates

/-- If a third measurement is supplied and distinguishes the corrected
vector from zero, augmenting the two-moment profile distinguishes that pair.
This does not assert injectivity on all coefficient vectors or the existence
of a positive classical Weil diagonal. -/
theorem bombieri_augmented_profile_separates
    {α : Type*} (readout : Combination 2 → α)
    (hseparates : readout correctedCoordinates ≠ readout 0) :
    augmentedProfile bombieriMomentProfile readout correctedCoordinates ≠
      augmentedProfile bombieriMomentProfile readout (0 : Combination 2) :=
  augmentedProfile_separates bombieriMomentProfile readout
    correctedCoordinates (0 : Combination 2) hseparates

end GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentInformationLossBridge
