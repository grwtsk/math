import FormalResearch.RiemannHypothesis.Conversation.WeightedSourceFrequencyCutoff
import FormalResearch.RiemannHypothesis.Conversation.WeightedSourceSpectrum

/-!
# Exact angular-frequency discarded energy

Written continuation 2026-10-09: grwtsk contributors. Local Fourier normalization
and consumer adapter: OpenAI Codex. Mathlib's Fourier isometry, measure scaling
and integrability laws are used by qualified imports. No source cancellation,
zero-height adapter, or arithmetic polynomial tail estimate is supplied.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.WeightedSourceAngularTail
open WeightedSourcePickup WeightedSourceMass WeightedSourceEnergy
open WeightedSourceSpectrum WeightedSourceFrequencyCutoff
open FormalResearch.RiemannHypothesis.Conversation.OriginalSignedSupplier
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open MeasureTheory Set
open scoped FourierTransform
noncomputable section

def angularTailSet (H : ℝ) : Set ℝ := {ξ | H < |ξ|}

theorem angularTailSet_measurable (H : ℝ) : MeasurableSet (angularTailSet H) :=
  (isOpen_lt continuous_const continuous_abs).measurableSet

theorem standard_to_negative_angular (f : ℝ → ℝ) (η : ℝ) :
    𝓕 (fun x ↦ (f x : ℂ)) η = negativeAngularTransform f (2 * Real.pi * η) := by
  rw [negativeAngularTransform, BridgeFourier.sourceFourier_eq_fourier]
  field_simp

theorem frequencyBand_angular (H η : ℝ) :
    η ∈ frequencyBand H ↔ |2 * Real.pi * η| ≤ H := by
  have hp : 0 < 2 * Real.pi := by positivity
  simp only [frequencyBand, mem_Icc]
  rw [div_le_iff₀ hp, le_div_iff₀ hp, abs_le]
  simp only [mul_comm]

def sourceSpectralSquare (A t ξ : ℝ) : ℝ :=
  Complex.normSq (negativeAngularTransform (sourceVector A t) ξ)

theorem sourceSpectralSquare_scaled {A : ℝ} (hA : 1 ≤ A) (t : ℝ) :
    (fun η ↦ sourceSpectralSquare A t (2 * Real.pi * η)) =ᵐ[volume]
      fun η ↦ ‖(𝓕 (weightedSourceState A t hA) : ComplexSourceL2) η‖ ^ 2 := by
  filter_upwards [weightedSourceState_fourier_ae hA t] with η hη
  rw [hη, standard_to_negative_angular]
  exact Complex.normSq_eq_norm_sq _

/-- Genuine integrability accompanies the exact angular density. -/
theorem sourceSpectralSquare_integrable {A : ℝ} (hA : 1 ≤ A) (t : ℝ) :
    Integrable (sourceSpectralSquare A t) volume := by
  have hLp := Lp.memLp (𝓕 (weightedSourceState A t hA) : ComplexSourceL2)
  have hi := (memLp_two_iff_integrable_sq_norm hLp.1).mp hLp
  have hs : Integrable (fun η ↦ sourceSpectralSquare A t (2 * Real.pi * η)) volume :=
    hi.congr (sourceSpectralSquare_scaled hA t).symm
  exact (integrable_comp_mul_left_iff _ (by positivity : 2 * Real.pi ≠ 0)).mp hs

/-- The full literal arithmetic density is genuinely integrable. -/
theorem weighted_arithmetic_density_integrable {A : ℝ} (hA : 1 ≤ A) (t : ℝ) :
    Integrable (fun ξ ↦ Complex.normSq (negativeAngularTransform (prescribedSource A) ξ) *
      Complex.normSq (arithmeticSpectrum A t ξ)) volume := by
  apply (sourceSpectralSquare_integrable hA t).congr
  exact ae_of_all _ fun ξ ↦ exact_weighted_spectral_square hA t ξ

/-- Exact tail energy, including the angular-frequency Jacobian 1/(2π). -/
theorem discarded_angular_energy {A : ℝ} (hA : 1 ≤ A) (t H : ℝ) :
    ‖weightedSourceState A t hA - sourceCutoff H (weightedSourceState A t hA)‖ ^ 2 =
      (2 * Real.pi)⁻¹ * ∫ ξ in angularTailSet H, sourceSpectralSquare A t ξ := by
  have he : (frequencyBand H)ᶜ.indicator
      (fun η ↦ ‖(𝓕 (weightedSourceState A t hA) : ComplexSourceL2) η‖ ^ 2) =ᵐ[volume]
      fun η ↦ (angularTailSet H).indicator (sourceSpectralSquare A t) (2 * Real.pi * η) := by
    filter_upwards [sourceSpectralSquare_scaled hA t] with η hη
    by_cases hm : η ∈ frequencyBand H
    · have ha : ¬ 2 * Real.pi * η ∈ angularTailSet H :=
        not_lt.mpr ((frequencyBand_angular H η).mp hm)
      simp [hm, ha]
    · have ha : 2 * Real.pi * η ∈ angularTailSet H :=
        lt_of_not_ge (fun h ↦ hm ((frequencyBand_angular H η).mpr h))
      simp [hm, ha, hη]
  rw [discarded_standard_energy, ← integral_indicator (frequencyBand_measurable H).compl,
    integral_congr_ae he, Measure.integral_comp_mul_left]
  rw [abs_of_pos (by positivity : 0 < (2 * Real.pi)⁻¹), smul_eq_mul,
    integral_indicator (angularTailSet_measurable H)]

/-- The tail contains the exact Möbius/pickup arithmetic row with every integer. -/
theorem discarded_weighted_arithmetic_tail {A : ℝ} (hA : 1 ≤ A) (t H : ℝ) :
    ‖weightedSourceState A t hA - sourceCutoff H (weightedSourceState A t hA)‖ ^ 2 =
      (2 * Real.pi)⁻¹ * ∫ ξ in angularTailSet H,
        Complex.normSq (negativeAngularTransform (prescribedSource A) ξ) *
          Complex.normSq (arithmeticSpectrum A t ξ) := by
  rw [discarded_angular_energy hA]
  congr 1
  apply setIntegral_congr_fun (angularTailSet_measurable H)
  intro ξ _
  exact exact_weighted_spectral_square hA t ξ

/-- Any supplied bound on this actual tail pays the discarded scalar signal. -/
theorem original_pickup_of_retained_and_arithmetic_tail {A t T B : ℝ} (hA : 1 ≤ A)
    (ht : t ∈ readingWindow A) (H : ℝ)
    (hret : |retainedCutoffReading A t H hA| ≤ B)
    (htail : (2 * Real.pi)⁻¹ * ∫ ξ in angularTailSet H,
      Complex.normSq (negativeAngularTransform (prescribedSource A) ξ) *
        Complex.normSq (arithmeticSpectrum A t ξ) ≤ T) :
    |centeredPickup A t| ≤ B + massDecoder * Real.sqrt T := by
  have he := discarded_weighted_arithmetic_tail hA t H
  have hn : ‖weightedSourceState A t hA - sourceCutoff H (weightedSourceState A t hA)‖ ≤
      Real.sqrt T := by
    have hs := Real.sqrt_le_sqrt (he.trans_le htail)
    rw [Real.sqrt_sq (norm_nonneg _)] at hs
    exact hs
  have hp := original_pickup_cutoff_payment hA ht H
  calc
    _ ≤ |centeredPickup A t - retainedCutoffReading A t H hA| +
        |retainedCutoffReading A t H hA| := by
      simpa only [sub_add_cancel] using abs_add_le
        (centeredPickup A t - retainedCutoffReading A t H hA) (retainedCutoffReading A t H hA)
    _ ≤ _ := add_le_add hp hret
    _ ≤ _ := by
      have hm := mul_le_mul_of_nonneg_left hn decoder_nonneg
      linarith

end
end GRWTSK.RiemannHypothesis.Conversation.WeightedSourceAngularTail
