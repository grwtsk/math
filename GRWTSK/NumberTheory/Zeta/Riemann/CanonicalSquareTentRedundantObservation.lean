/-
Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. Not root imported.
-/
import GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentThreeMomentUniqueDecoder
import GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.InformationLoss.AugmentedRepairCriterion

/-!
# Redundant Bombieri observables cannot replace the third coordinate

An auxiliary readout obtained by postprocessing the two original
Bombieri moments cannot recover the actual third coefficient. This is
a source-specific obstruction, in contrast with the independently
authored three-coordinate injectivity theorem.

No assertion is made about classical Weil forms, analytic positivity,
continuity, or RH.
-/
set_option autoImplicit false
noncomputable section

universe u

namespace GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentRedundantObservation

open GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.InformationLoss
open GRWTSK.RiemannHypothesis
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentBombieriMomentInformationLoss
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentThirdCoordinateInformationLoss
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentInformationLossBridge

/-- A postprocessing of the original two moment rows cannot repair the
third-coefficient information loss, even when retained alongside both
original moments. -/
theorem redundant_extra_cannot_recover_third
    {W : Type u} (extra : Combination 2 → W)
    (hextra : FactorsThrough bombieriMomentProfile extra) :
    ¬ FactorsThrough
      (augmentedProfile bombieriMomentProfile extra)
      thirdCoordinateReadout := by
  intro hrecover
  have hconst :
      ∀ x y : Combination 2,
        bombieriMomentProfile x = bombieriMomentProfile y →
        thirdCoordinateReadout x = thirdCoordinateReadout y :=
    (augmented_redundant_fiber_iff
      bombieriMomentProfile extra thirdCoordinateReadout hextra).1
      (fun x y hp =>
        eq_of_factorsThrough
          (augmentedProfile bombieriMomentProfile extra)
          thirdCoordinateReadout hrecover
          (Prod.ext hp (eq_of_factorsThrough
            bombieriMomentProfile extra hextra hp)))
  exact thirdCoordinateReadout_separates
    (hconst correctedCoordinates 0 bombieri_corrected_zero_same_profile)

end GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentRedundantObservation
