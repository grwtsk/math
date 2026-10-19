import FormalResearch.RiemannHypothesis.Conversation.WeightedSourceAngularTail
import FormalResearch.RiemannHypothesis.Conversation.WeightedSourceTriangleAllowance

/-!
# The actual weighted arithmetic tail pays its full triangle coefficient mass

Written continuation 2026-10-09: grwtsk contributors. Local tail consumer:
OpenAI Codex. The exact negative angular transform, original source and every
integer coefficient are retained. A profile tail estimate is not silently
turned into an arithmetic cancellation estimate or a complex zero cutoff.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.WeightedProfileTailAllowance
open WeightedSourcePickup WeightedSourceMass WeightedSourceEnergy WeightedSourceSpectrum
open WeightedSourceFrequencyCutoff WeightedSourceAngularTail WeightedSourceTriangleAllowance
open FormalResearch.RiemannHypothesis.Conversation.OriginalSignedSupplier
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open MeasureTheory Set
open scoped BigOperators
noncomputable section

def profileSquare (A ξ : ℝ) : ℝ :=
  Complex.normSq (negativeAngularTransform (prescribedSource A) ξ)

def profileTailEnergy (A H : ℝ) : ℝ :=
  (2 * Real.pi)⁻¹ * ∫ ξ in angularTailSet H, profileSquare A ξ

def coefficientMass (A t : ℝ) : ℝ := ∑ n ∈ integerInventory A, |coefficient A t n|

theorem profileSquare_integrable {A : ℝ} (hA : 1 ≤ A) : Integrable (profileSquare A) volume := by
  unfold profileSquare negativeAngularTransform
  rw [prescribedSource_eq A hA]
  exact (BridgeFourier.actual_fourier_square_integrable A hA).comp_neg

theorem profileTailEnergy_nonnegative (A H : ℝ) : 0 ≤ profileTailEnergy A H :=
  mul_nonneg (by positivity) (integral_nonneg (fun _ => Complex.normSq_nonneg _))

theorem arithmeticSpectrum_triangle (A t ξ : ℝ) :
    ‖arithmeticSpectrum A t ξ‖ ≤ coefficientMass A t := by
  unfold arithmeticSpectrum coefficientMass
  calc
    _ ≤ ∑ n ∈ integerInventory A, ‖(coefficient A t n : ℂ) *
      Complex.exp (-Complex.I * (ξ : ℂ) * (Real.log n : ℂ))‖ := norm_sum_le _ _
    _ = _ := by
      apply Finset.sum_congr rfl
      intro n _
      rw [norm_mul, Complex.norm_real, Real.norm_eq_abs]
      have he : ‖Complex.exp (-Complex.I * (ξ : ℂ) * (Real.log n : ℂ))‖ = 1 := by
        rw [Complex.norm_exp]
        have hr : (-Complex.I * (ξ : ℂ) * (Real.log n : ℂ)).re = 0 := by
          simp only [Complex.mul_re, Complex.mul_im, Complex.neg_re, Complex.neg_im,
            Complex.I_re, Complex.I_im, Complex.ofReal_re, Complex.ofReal_im]
          ring
        rw [hr, Real.exp_zero]
      rw [he, mul_one]

theorem discarded_energy_triangle {A : ℝ} (hA : 1 ≤ A) (t H : ℝ) :
    ‖weightedSourceState A t hA - sourceCutoff H (weightedSourceState A t hA)‖ ^ 2 ≤
      coefficientMass A t ^ 2 * profileTailEnergy A H := by
  rw [discarded_weighted_arithmetic_tail hA]
  have hi := (weighted_arithmetic_density_integrable hA t).integrableOn
    (s := angularTailSet H)
  have hj := ((profileSquare_integrable hA).const_mul (coefficientMass A t ^ 2)).integrableOn
    (s := angularTailSet H)
  have hb : (∫ ξ in angularTailSet H,
      Complex.normSq (negativeAngularTransform (prescribedSource A) ξ) *
        Complex.normSq (arithmeticSpectrum A t ξ)) ≤
      ∫ ξ in angularTailSet H, coefficientMass A t ^ 2 * profileSquare A ξ := by
    apply integral_mono hi hj
    intro ξ
    have hs := pow_le_pow_left₀ (norm_nonneg _) (arithmeticSpectrum_triangle A t ξ) 2
    rw [← Complex.normSq_eq_norm_sq] at hs
    exact (mul_le_mul_of_nonneg_left hs (Complex.normSq_nonneg _)).trans_eq
      (by unfold profileSquare; ring)
  have h := mul_le_mul_of_nonneg_left hb (by positivity : 0 ≤ (2 * Real.pi)⁻¹)
  rw [integral_const_mul] at h
  exact h.trans_eq (by unfold profileTailEnergy; ring)

theorem discarded_norm_triangle {A : ℝ} (hA : 1 ≤ A) (t H : ℝ) :
    ‖weightedSourceState A t hA - sourceCutoff H (weightedSourceState A t hA)‖ ≤
      coefficientMass A t * Real.sqrt (profileTailEnergy A H) := by
  have h := Real.sqrt_le_sqrt (discarded_energy_triangle hA t H)
  rw [Real.sqrt_sq (norm_nonneg _), Real.sqrt_mul (sq_nonneg _),
    Real.sqrt_sq (show 0 ≤ coefficientMass A t from
      Finset.sum_nonneg (fun n _ => abs_nonneg (coefficient A t n)))] at h
  exact h

/-- The full prescribed pickup row costs 4 sqrt(N_A); it is not polynomial in A. -/
theorem actual_weighted_profile_tail_allowance {A t : ℝ} (hA : 1 ≤ A)
    (ht : 2 * Real.log A ≤ t) (H : ℝ) :
    ‖weightedSourceState A t hA - sourceCutoff H (weightedSourceState A t hA)‖ ≤
      4 * Real.sqrt (integerCutoff A) * Real.sqrt (profileTailEnergy A H) := by
  exact (discarded_norm_triangle hA t H).trans
    (mul_le_mul_of_nonneg_right (weighted_absolute_mass hA ht) (Real.sqrt_nonneg _))

theorem original_pickup_of_retained_and_profile_tail {A t B : ℝ} (hA : 1 ≤ A)
    (ht : t ∈ readingWindow A) (H : ℝ)
    (hret : |retainedCutoffReading A t H hA| ≤ B) :
    |centeredPickup A t| ≤ B + massDecoder *
      (4 * Real.sqrt (integerCutoff A) * Real.sqrt (profileTailEnergy A H)) := by
  have hp := original_pickup_cutoff_payment hA ht H
  have htbound := actual_weighted_profile_tail_allowance hA ht.1 H
  have hsignal := abs_add_le (centeredPickup A t - retainedCutoffReading A t H hA)
    (retainedCutoffReading A t H hA)
  rw [sub_add_cancel] at hsignal
  have hm := mul_le_mul_of_nonneg_left htbound decoder_nonneg
  linarith

end
end GRWTSK.RiemannHypothesis.Conversation.WeightedProfileTailAllowance
