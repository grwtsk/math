# Complete source: GRWTSK.Analysis.MeasureTheory.WeightedSourceFrequencyCutoff.Variant2565eefb1c7217e603bf0a8238bfb4e7462f888ad5ed8cac4555bd08d0d47bf1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c32a6a8c244ef48517e13107784089fb0db67484` · SHA-256 `2565eefb1c7217e603bf0a8238bfb4e7462f888ad5ed8cac4555bd08d0d47bf1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.WeightedSourceEnergy
import FormalResearch.RiemannHypothesis.Conversation.WeightedSourcePickupIdentity
import FormalResearch.RiemannHypothesis.SourceL2FourierCompatibility
import Mathlib.MeasureTheory.Function.L2Space

/-!
# Concrete complex L² frequency cutoff for the weighted source

Written continuation 2026-10-09: grwtsk contributors. Local realization adapter:
OpenAI Codex. Mathlib's actual Fourier isometry and L² classes retain upstream
identity. Angular negative-exponential frequencies are explicit. This consumer
pays the actual discarded source energy, not a zero-height truncation.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.WeightedSourceFrequencyCutoff
open WeightedSourcePickup WeightedSourceMass WeightedSourceEnergy
open FormalResearch.RiemannHypothesis.Conversation.OriginalSignedSupplier
open FormalResearch.RiemannHypothesis.SourceL2FourierCompatibility
open MeasureTheory Set FourierTransform
open scoped FourierTransform InnerProductSpace
noncomputable section

abbrev ComplexSourceL2 := Lp ℂ 2 (volume : Measure ℝ)

def frequencyBand (H : ℝ) : Set ℝ := Icc (-H / (2 * Real.pi)) (H / (2 * Real.pi))

theorem frequencyBand_measurable (H : ℝ) : MeasurableSet (frequencyBand H) := measurableSet_Icc

def frequencyClip (s : Set ℝ) (hs : MeasurableSet s) (f : ComplexSourceL2) : ComplexSourceL2 :=
  ((Lp.memLp f).indicator hs).toLp (s.indicator (f : ℝ → ℂ))

def sourceCutoff (H : ℝ) (f : ComplexSourceL2) : ComplexSourceL2 :=
  𝓕⁻ (frequencyClip (frequencyBand H) (frequencyBand_measurable H) (𝓕 f))

theorem frequencyClip_coe_ae (s : Set ℝ) (hs : MeasurableSet s) (f : ComplexSourceL2) :
    frequencyClip s hs f =ᵐ[volume] s.indicator (f : ℝ → ℂ) :=
  ((Lp.memLp f).indicator hs).coeFn_toLp

theorem frequencyClip_complement (s : Set ℝ) (hs : MeasurableSet s) (f : ComplexSourceL2) :
    f - frequencyClip s hs f = frequencyClip sᶜ hs.compl f := by
  apply Lp.ext
  filter_upwards [Lp.coeFn_sub f (frequencyClip s hs f),
    frequencyClip_coe_ae s hs f, frequencyClip_coe_ae sᶜ hs.compl f] with ξ hsub hclip hcomp
  rw [hsub]
  simp only [Pi.sub_apply]
  rw [hclip, hcomp]
  by_cases hξ : ξ ∈ s <;> simp [hξ]

theorem cutoff_fourier (H : ℝ) (f : ComplexSourceL2) :
    𝓕 (sourceCutoff H f) = frequencyClip (frequencyBand H) (frequencyBand_measurable H) (𝓕 f) := by
  exact fourier_fourierInv_eq _

theorem discarded_fourier (H : ℝ) (f : ComplexSourceL2) :
    𝓕 (f - sourceCutoff H f) =
      frequencyClip (frequencyBand H)ᶜ (frequencyBand_measurable H).compl (𝓕 f) := by
  change (Lp.fourierTransformₗᵢ ℝ ℂ) (f - sourceCutoff H f) = _
  rw [map_sub]
  change 𝓕 f - 𝓕 (sourceCutoff H f) = _
  rw [cutoff_fourier, frequencyClip_complement]


theorem norm_squared_integral (f : ComplexSourceL2) :
    ‖f‖ ^ 2 = ∫ x : ℝ, ‖f x‖ ^ 2 := by
  rw [norm_sq_eq_re_inner (𝕜 := ℂ), L2.inner_def,
    ← integral_re (L2.integrable_inner (𝕜 := ℂ) f f)]
  apply integral_congr_ae
  filter_upwards [] with x
  simp only [inner_self_eq_norm_sq_to_K]
  norm_cast

/-- Exact standard-frequency tail; the cutoff and full norm are concrete. -/
theorem discarded_standard_energy (H : ℝ) (f : ComplexSourceL2) :
    ‖f - sourceCutoff H f‖ ^ 2 =
      ∫ ξ in (frequencyBand H)ᶜ, ‖(𝓕 f : ComplexSourceL2) ξ‖ ^ 2 := by
  rw [← Lp.norm_fourier_eq (f - sourceCutoff H f), discarded_fourier, norm_squared_integral,
    ← integral_indicator (frequencyBand_measurable H).compl]
  apply integral_congr_ae
  filter_upwards [frequencyClip_coe_ae (frequencyBand H)ᶜ (frequencyBand_measurable H).compl (𝓕 f)] with ξ hξ
  rw [hξ]
  by_cases hm : ξ ∈ (frequencyBand H)ᶜ <;> simp [hm]

theorem sourceVector_complex_memLp {A : ℝ} (hA : 1 ≤ A) (t : ℝ) :
    MemLp (fun x : ℝ ↦ (sourceVector A t x : ℂ)) 2 volume :=
  (Complex.continuous_ofReal.comp (sourceVector_continuous hA t)).memLp_of_hasCompactSupport
    ((sourceVector_compact hA t).comp_left rfl)

def weightedSourceState (A t : ℝ) (hA : 1 ≤ A) : ComplexSourceL2 :=
  (sourceVector_complex_memLp hA t).toLp (fun x ↦ (sourceVector A t x : ℂ))

theorem weightedSourceState_coe_ae {A : ℝ} (hA : 1 ≤ A) (t : ℝ) :
    weightedSourceState A t hA =ᵐ[volume] fun x ↦ (sourceVector A t x : ℂ) :=
  (sourceVector_complex_memLp hA t).coeFn_toLp

theorem weightedSourceState_norm_squared {A : ℝ} (hA : 1 ≤ A) (t : ℝ) :
    ‖weightedSourceState A t hA‖ ^ 2 = physicalEnergy A t := by
  rw [norm_squared_integral]
  apply integral_congr_ae
  filter_upwards [weightedSourceState_coe_ae hA t] with x hx
  rw [hx, Complex.norm_real, Real.norm_eq_abs, sq_abs]

theorem weightedSourceState_integrable {A : ℝ} (hA : 1 ≤ A) (t : ℝ) :
    Integrable (weightedSourceState A t hA : ℝ → ℂ) volume :=
  (Complex.ofRealCLM.integrable_comp (sourceVector_integrable hA t)).congr
    (weightedSourceState_coe_ae hA t).symm

/-- The literal source representative agrees with the concrete Fourier class. -/
theorem weightedSourceState_fourier_ae {A : ℝ} (hA : 1 ≤ A) (t : ℝ) :
    ((𝓕 (weightedSourceState A t hA) : ComplexSourceL2) : ℝ → ℂ) =ᵐ[volume]
      𝓕 (fun x : ℝ ↦ (sourceVector A t x : ℂ)) := by
  have hc := fourier_coe_ae _ (weightedSourceState_integrable hA t)
  have he : 𝓕 (weightedSourceState A t hA : ℝ → ℂ) =
      𝓕 (fun x : ℝ ↦ (sourceVector A t x : ℂ)) := by
    funext ξ
    rw [Real.fourier_real_eq_integral_exp_smul, Real.fourier_real_eq_integral_exp_smul]
    apply integral_congr_ae
    filter_upwards [weightedSourceState_coe_ae hA t] with x hx
    rw [hx]
  exact hc.trans (ae_of_all _ fun ξ ↦ congrFun he ξ)

def windowTest (A : ℝ) : ComplexSourceL2 :=
  indicatorConstLp 2 (s := Icc (-A) (3 * A)) measurableSet_Icc (by rw [Real.volume_Icc]; exact ENNReal.ofReal_ne_top) (1 : ℂ)

def classReading (A : ℝ) (f : ComplexSourceL2) : ℝ :=
  (⟪windowTest A, f⟫_ℂ).re / (∫ x : ℝ, prescribedSource A x)

theorem windowTest_norm_squared {A : ℝ} (hA : 1 ≤ A) : ‖windowTest A‖ ^ 2 = 4 * A := by
  have hv : volume.real (Icc (-A) (3 * A)) = 4 * A := by
    rw [measureReal_def, Real.volume_Icc, ENNReal.toReal_ofReal (by linarith)]
    ring
  rw [norm_sq_eq_re_inner (𝕜 := ℂ)]
  unfold windowTest
  rw [L2.inner_indicatorConstLp_indicatorConstLp (hμs := by rw [Real.volume_Icc]; exact ENNReal.ofReal_ne_top)
    (hμt := by rw [Real.volume_Icc]; exact ENNReal.ofReal_ne_top)]
  simp only [inter_self]
  rw [hv]
  simp [Complex.real_smul]

/-- Any L² retained fit pays its actual full discarded norm. -/
theorem classReading_error_bound {A : ℝ} (hA : 1 ≤ A) (f g : ComplexSourceL2) :
    |classReading A f - classReading A g| ≤ massDecoder * ‖f - g‖ := by
  have hi : |(⟪windowTest A, f - g⟫_ℂ).re| ≤ ‖windowTest A‖ * ‖f - g‖ :=
    (Complex.abs_re_le_norm _).trans (norm_inner_le_norm _ _)
  have hs := pow_le_pow_left₀ (abs_nonneg _) hi 2
  rw [mul_pow, windowTest_norm_squared hA] at hs
  have hc := mass_decoder_of_square_bound hA (sq_nonneg ‖f - g‖) hs
  rw [Real.sqrt_sq (norm_nonneg _)] at hc
  simpa only [classReading, inner_sub_right, Complex.sub_re, sub_div] using hc


/-- The concrete frequency multiplier is an idempotent orthogonal projection. -/
theorem frequencyClip_idempotent (s : Set ℝ) (hs : MeasurableSet s) (f : ComplexSourceL2) :
    frequencyClip s hs (frequencyClip s hs f) = frequencyClip s hs f := by
  apply Lp.ext
  filter_upwards [frequencyClip_coe_ae s hs (frequencyClip s hs f),
    frequencyClip_coe_ae s hs f] with ξ hh hf
  rw [hh]
  by_cases hξ : ξ ∈ s <;> simp [hξ, hf]

theorem frequencyClip_orthogonal (s : Set ℝ) (hs : MeasurableSet s) (f : ComplexSourceL2) :
    ⟪frequencyClip s hs f, frequencyClip sᶜ hs.compl f⟫_ℂ = 0 := by
  rw [L2.inner_def]
  have he : (fun ξ : ℝ ↦ ⟪frequencyClip s hs f ξ,
      frequencyClip sᶜ hs.compl f ξ⟫_ℂ) =ᵐ[volume] fun _ ↦ (0 : ℂ) := by
    filter_upwards [frequencyClip_coe_ae s hs f,
      frequencyClip_coe_ae sᶜ hs.compl f] with ξ hξ hc
    rw [hξ, hc]
    by_cases hm : ξ ∈ s <;> simp [hm]
  rw [integral_congr_ae he, integral_zero]

theorem sourceCutoff_idempotent (H : ℝ) (f : ComplexSourceL2) :
    sourceCutoff H (sourceCutoff H f) = sourceCutoff H f := by
  unfold sourceCutoff
  rw [fourier_fourierInv_eq, frequencyClip_idempotent]

theorem sourceCutoff_orthogonal (H : ℝ) (f : ComplexSourceL2) :
    ⟪sourceCutoff H f, f - sourceCutoff H f⟫_ℂ = 0 := by
  rw [← Lp.inner_fourier_eq, cutoff_fourier, discarded_fourier]
  exact frequencyClip_orthogonal _ _ _

/-- The fixed finite window decodes the actual weighted source class. -/
theorem classReading_weightedSourceState {A : ℝ} (hA : 1 ≤ A) (t : ℝ) :
    classReading A (weightedSourceState A t hA) = weightedRecording A t := by
  have hi : (Icc (-A) (3 * A)).indicator (weightedSourceState A t hA : ℝ → ℂ) =ᵐ[volume]
      fun x ↦ (sourceVector A t x : ℂ) := by
    filter_upwards [weightedSourceState_coe_ae hA t] with x hx
    by_cases hm : x ∈ Icc (-A) (3 * A)
    · simp [hm, hx]
    · have hz : sourceVector A t x = 0 := by
        by_contra hn
        have hs := sourceVector_support hA t hn
        exact hm ⟨hs.1.le, hs.2⟩
      simp [hm, hz]
  unfold classReading windowTest
  rw [L2.inner_indicatorConstLp_one, ← integral_indicator measurableSet_Icc,
    integral_congr_ae hi, integral_complex_ofReal, Complex.ofReal_re]
  exact (weightedRecording_mass_decoder hA t).symm

/-- Its value agrees with the untouched signed meter's original pickup. -/
theorem classReading_original_pickup {A t : ℝ} (hA : 1 ≤ A) (ht : t ∈ readingWindow A) :
    classReading A (weightedSourceState A t hA) = centeredPickup A t := by
  rw [classReading_weightedSourceState hA,
    WeightedSourcePickupIdentity.centeredPickup_exact hA ht]

/-- Exact retained reading of the concrete cutoff; the window stays fixed. -/
def retainedCutoffReading (A t H : ℝ) (hA : 1 ≤ A) : ℝ :=
  classReading A (sourceCutoff H (weightedSourceState A t hA))

theorem original_pickup_cutoff_payment {A t : ℝ} (hA : 1 ≤ A)
    (ht : t ∈ readingWindow A) (H : ℝ) :
    |centeredPickup A t - retainedCutoffReading A t H hA| ≤
      massDecoder * ‖weightedSourceState A t hA - sourceCutoff H (weightedSourceState A t hA)‖ := by
  rw [← classReading_original_pickup hA ht]
  exact classReading_error_bound hA _ _

end
end GRWTSK.RiemannHypothesis.Conversation.WeightedSourceFrequencyCutoff
```
