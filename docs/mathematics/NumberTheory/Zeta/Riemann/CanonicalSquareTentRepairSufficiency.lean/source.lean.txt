/-
Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. No public root import.
-/
import GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentRepairNecessity
import GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentThreeMomentUniqueDecoder

/-!
# Sufficient extra observations for the actual canonical-tent moment profile

A new observation need not literally be the third coefficient.
It suffices to determine that coefficient ON EACH FIBER of the existing
two genuine Bombieri moment rows. The already-authored three-moment
injection then recovers all three source coefficients.

This remains finite-coefficient algebra, not a Weil transport, analytic
admissibility, positive form, or RH theorem.
-/
set_option autoImplicit false
noncomputable section

universe u v

namespace GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentRepairSufficiency

open GRWTSK.Logic.InformationLoss
open GRWTSK.RiemannHypothesis
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentBombieriMomentInformationLoss
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentThirdCoordinateInformationLoss

/-- Sufficiency of an extra measurement that resolves the third
coefficient whenever the two real source moment rows agree.
The third-coordinate condition is explicit, not assumed globally. -/
theorem augmented_injective_of_third_fiber_detection
    {W : Type u} (extra : Combination 2 → W)
    (hthird : ∀ x y : Combination 2,
      bombieriMomentProfile x = bombieriMomentProfile y →
      extra x = extra y →
      thirdCoordinateReadout x = thirdCoordinateReadout y) :
    Function.Injective (augmentedProfile bombieriMomentProfile extra) := by
  intro x y h
  have hp : bombieriMomentProfile x = bombieriMomentProfile y :=
    congrArg Prod.fst h
  have he : extra x = extra y := congrArg Prod.snd h
  apply augmentedThreeMomentProfile_injective
  exact Prod.ext hp (hthird x y hp he)

/-- Under the same exact fiber-detection hypothesis, any readout
of the finite source coefficient carrier has one and only one
decoder on the image of the augmented observation. -/
theorem existsUnique_decoder_of_third_fiber_detection
    {W : Type u} {Z : Type v}
    (extra : Combination 2 → W)
    (readout : Combination 2 → Z)
    (hthird : ∀ x y : Combination 2,
      bombieriMomentProfile x = bombieriMomentProfile y →
      extra x = extra y →
      thirdCoordinateReadout x = thirdCoordinateReadout y) :
    ∃! decode : Set.range (augmentedProfile bombieriMomentProfile extra) → Z,
      readout = decode ∘
        observedProfile (augmentedProfile bombieriMomentProfile extra) := by
  apply (existsUnique_decoder_observedProfile_iff
    (augmentedProfile bombieriMomentProfile extra) readout).2
  intro x y h
  exact congrArg readout
    (augmented_injective_of_third_fiber_detection extra hthird h)

end GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentRepairSufficiency
