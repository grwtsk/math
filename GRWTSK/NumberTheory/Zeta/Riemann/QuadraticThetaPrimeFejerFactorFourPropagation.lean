/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerOctaveRestriction
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis

def cyclicFejerDistance
    (X : ℕ)
    (r : ZMod (fejerOctavePeriod X)) : ℕ :=
  min r.val (fejerOctavePeriod X - r.val)

theorem cyclicFejerSharpStepL1Error_le_distanceWeightedKernel
    {X N m : ℕ}
    (hreg : NonAliasingFejerCutoffRegime X N)
    (hm0 : 2 * X ≤ m)
    (hm1 : m ≤ 4 * X) :
    cyclicFejerSharpStepL1Error X N m ≤
      ∑ r : ZMod (fejerOctavePeriod X),
        cyclicFejerKernel X N r *
          (2 * cyclicFejerDistance X r : ℕ) := by
  have hconv :=
    cyclicConvolutionL1ByTranslation X N m hreg
  calc
    cyclicFejerSharpStepL1Error X N m
      ≤
      ∑ r : ZMod (fejerOctavePeriod X),
        cyclicFejerKernel X N r *
          cyclicSharpTranslationL1 X m r := hconv
    _ ≤
      ∑ r : ZMod (fejerOctavePeriod X),
        cyclicFejerKernel X N r *
          (2 * cyclicFejerDistance X r : ℕ) := by
            apply Finset.sum_le_sum
            intro r hr
            exact mul_le_mul_of_nonneg_left
              (cyclicSharpTranslationCardinality X m
                (by
                  rcases hreg with ⟨hX, hN, hNL⟩
                  exact hX)
                hm0 hm1 r)
              (cyclicFejerKernel_nonnegative hreg r)

def CyclicDistanceWeightedKernelPairingClaim : Prop :=
  ∀ X N : ℕ,
    NonAliasingFejerCutoffRegime X N →
      (∑ r : ZMod (fejerOctavePeriod X),
        cyclicFejerKernel X N r *
          (2 * cyclicFejerDistance X r : ℕ))
      ≤
      nonAliasingFejerCyclicStepBudget X N

theorem cyclicKernelPairing_to_sharpStepL1FirstMomentFour
    (hpair : CyclicDistanceWeightedKernelPairingClaim) :
    NonAliasingFejerSharpStepL1FirstMomentFourClaim := by
  intro X N m hreg hm0 hm1
  exact
    (octaveL1LeCyclicL1_closed X N m hreg hm0 hm1).trans <|
      (cyclicFejerSharpStepL1Error_le_distanceWeightedKernel
        hreg hm0 hm1).trans
          (hpair X N hreg)

theorem cyclicKernelPairing_to_arithmeticComparisonFactorFour
    (hpair : CyclicDistanceWeightedKernelPairingClaim) :
    NonAliasingPrimePrefixFejerFirstMomentComparisonFactorFour :=
  sharpStepL1FirstMomentFour_to_arithmeticComparison
    (cyclicKernelPairing_to_sharpStepL1FirstMomentFour hpair)

theorem cyclicKernelPairing_to_arithmeticTailShape
    (hpair : CyclicDistanceWeightedKernelPairingClaim)
    {X N m : ℕ}
    (hreg : NonAliasingFejerCutoffRegime X N)
    (hm0 : 2 * X ≤ m)
    (hm1 : m ≤ 4 * X) :
    |nonAliasingPrimePrefixFejerOperator.error X N m| ≤
      4 *
      (1 + Real.log ((4 * X : ℕ) : ℝ)) *
      (((X : ℝ) / (N : ℝ)) *
        (1 + Real.log ((2 * X : ℕ) : ℝ))) := by
  rcases hreg with ⟨hX, hN, hNL⟩
  have hcompare :=
    cyclicKernelPairing_to_arithmeticComparisonFactorFour hpair
      X N m ⟨hX, hN, hNL⟩ hm0 hm1
  exact hcompare.trans
    (correctedFejerArithmeticTail_le_logSquaredShape hX hN)

def CorrectedFejerFinitePairingOnlyFrontier : Prop :=
  CyclicDistanceWeightedKernelPairingClaim

end GRWTSK.RiemannHypothesis
