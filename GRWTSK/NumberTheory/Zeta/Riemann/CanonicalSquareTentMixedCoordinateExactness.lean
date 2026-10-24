/-
Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. Not imported by public root.
-/
import GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentMixedCoordinateRepair

/-!
# Exact exceptional weights for the mixed canonical-tent observation

The original two-moment profile has the corrected cofactor vector in its
kernel. A mixed observation u₂ + w*u₀ detects that line exactly when
cofactorTwo + w*cofactorZero is nonzero. At a degenerate weight, the
actual corrected vector and zero provide a distinct collision.

This concerns the finite three-coefficient source only, not an analytic
Weil test class, spectral identification, positivity, or RH.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentMixedCoordinateExactness

open GRWTSK.RiemannHypothesis
open GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.InformationLoss
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentMixedCoordinateRepair
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentThreeTentMomentCorrection
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentCorrectedArithmeticGram
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentThirdCoordinateInformationLoss
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentInformationLossBridge
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentBombieriMomentInformationLoss

/-- If a weight annihilates the cofactor line, the actual corrected
coefficient vector collides with zero under all three readings. -/
theorem mixedCoordinate_degenerate_collision
    (weight : ℂ) (hdeg : cofactorTwo + weight * cofactorZero = 0) :
    augmentedProfile bombieriMomentProfile (mixedCoordinate weight)
        correctedCoordinates =
      augmentedProfile bombieriMomentProfile (mixedCoordinate weight)
        (0 : Combination 2) := by
  apply Prod.ext
  · exact bombieri_corrected_zero_same_profile
  · simpa [mixedCoordinate, correctedCoordinates] using hdeg

/-- An exceptional weight fails global source reconstruction; the two
colliding coefficient vectors are genuinely different. -/
theorem mixedCoordinate_not_injective_of_degenerate
    (weight : ℂ) (hdeg : cofactorTwo + weight * cofactorZero = 0) :
    ¬ Function.Injective
      (augmentedProfile bombieriMomentProfile (mixedCoordinate weight)) := by
  intro hinj
  have heq := hinj (mixedCoordinate_degenerate_collision weight hdeg)
  exact thirdCoordinateReadout_separates (congrArg thirdCoordinateReadout heq)

/-- Exact criterion: the mixed observation and two moment rows identify
all three source coefficients iff the mixed observable does not vanish
on the actual one-dimensional cofactor kernel. -/
theorem mixedCoordinate_injective_iff
    (weight : ℂ) :
    Function.Injective
      (augmentedProfile bombieriMomentProfile (mixedCoordinate weight)) ↔
      cofactorTwo + weight * cofactorZero ≠ 0 := by
  constructor
  · intro hinj hzero
    exact mixedCoordinate_not_injective_of_degenerate weight hzero hinj
  · intro hnonzero u v hpair
    exact mixedCoordinate_detects_moment_fibers weight hnonzero u v
      (congrArg Prod.fst hpair) (congrArg Prod.snd hpair)

end GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentMixedCoordinateExactness
