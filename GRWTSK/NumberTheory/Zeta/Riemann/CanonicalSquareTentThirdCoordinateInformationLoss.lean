/-
Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
This standalone module is intentionally not imported by GRWTSK.lean pending
warning-clean compilation, fresh kernel replay, and full transitive axiom audit.
-/
import GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentInformationLossBridge

/-!
# An actual arithmetic third-coordinate separator for the Bombieri moment fiber

The already-defined corrected stage-2/3/4 canonical-tent coefficient vector
has both Bombieri moments zero but a nonzero third coefficient. Extracting
that exact coefficient supplies a concrete arithmetic readout separating
the corrected vector from zero, rather than leaving separation as an
uninstantiated hypothesis.

This is a source-coordinate observable, not the classical Guinand--Weil
diagonal. It does not prove that the entire three-coordinate augmented map
is injective, and it proves no analytic positivity or Riemann Hypothesis.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentThirdCoordinateInformationLoss

open GRWTSK.RiemannHypothesis
open GRWTSK.Logic.InformationLoss
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentThreeTentMomentCorrection
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentCorrectedArithmeticGram
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentBombieriMomentInformationLoss
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentInformationLossBridge

/-- The stage-four coefficient in the same stage-2/3/4 source coordinate
carrier used to define the ordinary and reciprocal Bombieri moments. -/
def thirdCoordinateReadout (u : Combination 2) : ℂ :=
  u (2 : Fin 3)

/-- The third coordinate of the actual source moment correction is precisely
the nonzero two-tent moment determinant cofactor. -/
theorem thirdCoordinateReadout_corrected :
    thirdCoordinateReadout correctedCoordinates = cofactorTwo := by
  simp [thirdCoordinateReadout, correctedCoordinates]

@[simp] theorem thirdCoordinateReadout_zero :
    thirdCoordinateReadout (0 : Combination 2) = 0 := by
  simp [thirdCoordinateReadout]

/-- Unlike an arbitrary separating readout, the source's exact third
coefficient is now proved (in this source candidate) to distinguish the
corrected zero-moment vector from the zero vector. -/
theorem thirdCoordinateReadout_separates :
    thirdCoordinateReadout correctedCoordinates ≠
      thirdCoordinateReadout (0 : Combination 2) := by
  rw [thirdCoordinateReadout_corrected, thirdCoordinateReadout_zero]
  exact cofactorTwo_ne_zero

/-- The actual third arithmetic coordinate cannot be reconstructed solely
from the ordered pair of Bombieri ordinary and reciprocal moments. -/
theorem thirdCoordinateReadout_not_factorsThrough :
    ¬ FactorsThrough bombieriMomentProfile thirdCoordinateReadout :=
  bombieri_not_factorsThrough_generic
    thirdCoordinateReadout thirdCoordinateReadout_separates

/-- Adding this exact arithmetic coordinate to the two-moment profile
separates the corrected witness and zero. This is *not* global injectivity. -/
theorem thirdCoordinateReadout_augmented_separates :
    augmentedProfile bombieriMomentProfile thirdCoordinateReadout
        correctedCoordinates ≠
      augmentedProfile bombieriMomentProfile thirdCoordinateReadout
        (0 : Combination 2) :=
  bombieri_augmented_profile_separates
    thirdCoordinateReadout thirdCoordinateReadout_separates

end GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentThirdCoordinateInformationLoss
