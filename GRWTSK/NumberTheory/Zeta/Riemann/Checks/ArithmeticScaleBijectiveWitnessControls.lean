/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.ArithmeticScaleBijectiveWitness
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Controls for the arithmetic-scale bijective witness

These controls distinguish the all-prime bijection, one local projection, a
regional zero-free threshold, external theorem admission, and the independent
regional-to-critical tightening obligation.

No external theorem, Weil positivity theorem, or RH proof is supplied.
-/

namespace GRWTSK.RiemannHypothesis.Checks.ArithmeticScaleBijectiveWitnessControls

open GRWTSK.ArithmeticScale
open GRWTSK.RiemannHypothesis

/-- Concrete prime labels used by the coordinate controls. -/
def primeTwo : PrimeIndex := ⟨2, by norm_num⟩

def primeThree : PrimeIndex := ⟨3, by norm_num⟩

/-- A local coordinate recovers its own primary exponent. -/
theorem two_coordinate_recovers_two_primary (n : ℤ) :
    pAdicExponent primeTwo (pPrimaryEmbedding primeTwo n) = n :=
  pAdicExponent_pPrimaryEmbedding primeTwo n

/-- A local coordinate annihilates a different prime basis vector. -/
theorem two_coordinate_annihilates_three_primary (n : ℤ) :
    pAdicExponent primeTwo (pPrimaryEmbedding primeThree n) = 0 := by
  apply pAdicExponent_pPrimaryEmbedding_of_ne
  decide

/-- The all-prime coordinate map, rather than one coordinate, is the bijection. -/
theorem all_prime_scale_map_is_bijective :
    Function.Bijective
      (logarithmicToPAdicFamily : ArithmeticLogScale → PAdicScaleFamily) :=
  logarithmicToPAdicFamily_bijective

/-- Toy real zero set used only to test threshold direction. -/
def ToyZeroSet : Set ℝ := {((3 : ℝ) / 5)}

/-- A toy zero set is free in the strict right half-plane above `σ` when no
member lies strictly right of `σ`. -/
def ToyZeroFreeRightHalfPlane (σ : ℝ) : Prop :=
  ∀ x, x ∈ ToyZeroSet → ¬ σ < x

/-- The toy zero at `3/5` is excluded from the strict region right of `7/8`. -/
theorem toy_sevenEighths_zeroFree :
    ToyZeroFreeRightHalfPlane ((7 : ℝ) / 8) := by
  intro x hx hright
  simp [ToyZeroSet] at hx
  subst x
  norm_num at hright

/-- The same toy zero lies strictly right of `1/2`; regional `7/8` information
therefore does not reverse threshold monotonicity in a generic zero model. -/
theorem toy_half_not_zeroFree :
    ¬ ToyZeroFreeRightHalfPlane (1 / 2 : ℝ) := by
  intro hfree
  exact hfree ((3 : ℝ) / 5) (by simp [ToyZeroSet]) (by norm_num)

/-- The currently pinned external review remains non-admission-ready. -/
theorem pinned_sevenEighths_review_remains_blocked :
    ¬ openAISevenEighthsReview.AdmissionReady :=
  openAISevenEighthsReview_not_admissionReady

/-- The tightening interface consumes both a positivity proof and a regional
zero-free theorem; its name or the scale equivalence supplies neither. -/
theorem tightening_consumes_both_inputs
    {σ : ℝ} (tightening : WeilPositiveScrewTightening σ)
    (hpositive : tightening.positiveScrewStatement)
    (hregional : RiemannZetaZeroFreeRightHalfPlane σ) :
    RiemannZetaZeroFreeRightHalfPlane (1 / 2 : ℝ) :=
  tightening.regionalToCritical hpositive hregional

/-- A hypothetical admitted seven-eighths port still records a strict threshold
gap in the resulting regional witness. -/
theorem admitted_sevenEighths_port_stays_regional
    (port : AcceptedExternalRawHalfPlanePort ((7 : ℝ) / 8)) :
    port.toSevenEighthsScaleIndexedRegionalWitness.zeroFree ∧
      port.toSevenEighthsScaleIndexedRegionalWitness.strictRightOfCritical := by
  exact ⟨port.theorem, half_lt_sevenEighths⟩

end GRWTSK.RiemannHypothesis.Checks.ArithmeticScaleBijectiveWitnessControls
