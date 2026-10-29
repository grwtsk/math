import FormalResearch.RiemannHypothesis.SourceMangoldtInteraction
import FormalResearch.RiemannHypothesis.SourceL2FourierCompatibility

/-!
# Fourier multiplier of the literal Mangoldt interaction

The actual finite translation interaction is transported to its real cosine
symbol under Mathlib's standard Fourier convention. No uniform arithmetic
bound, reflected-row identification or RH witness follows.

AI attribution: developed with OpenAI Codex; checked by Lean.
-/

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceMangoldtInteractionFourier
open MeasureTheory Filter
open scoped FourierTransform InnerProductSpace
open SourceReflectionDuality SourceMangoldtInteraction SourceScaleL2Continuity
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open PrimePowerDescent EstimateMertensResidual EstimatePrimeSmoothDefect SourcePairing

/-- Frequency-side average of the two existing standard right-shift phases. -/
def symmetricPhaseMultiplier (s : ℝ) : ComplexL2 →L[ℂ] ComplexL2 :=
  (1 / 2 : ℂ) • ((translationPhaseMultiplier s).toContinuousLinearMap +
    (translationPhaseMultiplier (-s)).toContinuousLinearMap)

/-- The frequency average retains the literal coefficient one half. -/
theorem symmetricPhaseMultiplier_apply (s : ℝ) (f : ComplexL2) :
    symmetricPhaseMultiplier s f =
      (1 / 2 : ℂ) • (translationPhaseMultiplier s f + translationPhaseMultiplier (-s) f) := rfl

/-- Exact Fourier transport of the existing spatial shift average. -/
theorem fourier_symmetricTranslation (s : ℝ) (f : ComplexL2) :
    𝓕 (symmetricTranslation s f) = symmetricPhaseMultiplier s (𝓕 f) := by
  rw [symmetricTranslation_apply, FourierTransform.fourier_smul,
    FourierTransform.fourier_add, fourier_translation, fourier_translation]
  rfl

/-- The opposite standard phases average to a real cosine with standard frequency. -/
theorem translationPhase_half_sum (s ξ : ℝ) :
    (1 / 2 : ℂ) * (translationPhase s ξ + translationPhase (-s) ξ) =
      (Real.cos (2 * Real.pi * ξ * s) : ℂ) := by
  have hn : 2 * Real.pi * (-s * ξ) = -(2 * Real.pi * ξ * s) := by ring
  have hp : 2 * Real.pi * (-(-s) * ξ) = 2 * Real.pi * ξ * s := by ring
  simp only [translationPhase, Real.fourierChar_apply, hn, hp, Complex.ofReal_neg]
  rw [add_comm, ← Complex.two_cos, ← Complex.ofReal_cos]
  ring

/-- The actual frequency CLM acts almost everywhere by its real cosine. -/
theorem symmetricPhaseMultiplier_coe_ae (s : ℝ) (f : ComplexL2) :
    symmetricPhaseMultiplier s f =ᵐ[volume]
      fun ξ => (Real.cos (2 * Real.pi * ξ * s) : ℂ) * f ξ := by
  filter_upwards [Lp.coeFn_smul (1 / 2 : ℂ)
      (translationPhaseMultiplier s f + translationPhaseMultiplier (-s) f),
    Lp.coeFn_add (translationPhaseMultiplier s f) (translationPhaseMultiplier (-s) f),
    translationPhaseMultiplier_coe_ae s f, translationPhaseMultiplier_coe_ae (-s) f]
    with ξ hsm ha hp hn
  change ((1 / 2 : ℂ) •
    (translationPhaseMultiplier s f + translationPhaseMultiplier (-s) f)) ξ = _
  simp only [Pi.smul_apply, Pi.add_apply, smul_eq_mul] at hsm ha
  rw [hsm, ha, hp, hn]
  rw [← add_mul, ← mul_assoc, translationPhase_half_sum]

/-- Independently defined finite real symbol, with the literal closed arithmetic inventory. -/
def mangoldtFourierSymbol (A ξ : ℝ) : ℝ :=
  ∑ n ∈ primePowerInventory (2 * A),
    mangoldtCoefficient n * Real.cos (2 * Real.pi * ξ * Real.log n)

/-- The actual frequency operator is a finite sum of existing phase-average CLMs. -/
def mangoldtFourierMultiplier (A : ℝ) : ComplexL2 →L[ℂ] ComplexL2 :=
  ∑ n ∈ primePowerInventory (2 * A), (mangoldtCoefficient n : ℂ) •
    symmetricPhaseMultiplier (Real.log n)

/-- Frequency application retains every arithmetic coefficient and index. -/
theorem mangoldtFourierMultiplier_apply (A : ℝ) (f : ComplexL2) :
    mangoldtFourierMultiplier A f = ∑ n ∈ primePowerInventory (2 * A),
      (mangoldtCoefficient n : ℂ) • symmetricPhaseMultiplier (Real.log n) f := by
  simp only [mangoldtFourierMultiplier, sum_apply, _root_.smul_apply]

/-- The unchanged spatial Mangoldt operator is exactly Fourier-intertwined. -/
theorem fourier_mangoldtInteraction (A : ℝ) (f : ComplexL2) :
    𝓕 (mangoldtInteraction A f) = mangoldtFourierMultiplier A (𝓕 f) := by
  simp only [mangoldtInteraction_apply, FourierTransform.fourier_sum,
    FourierTransform.fourier_smul, fourier_symmetricTranslation,
    mangoldtFourierMultiplier_apply]

/-- The complete frequency CLM acts almost everywhere by the independently defined symbol. -/
theorem mangoldtFourierMultiplier_coe_ae (A : ℝ) (f : ComplexL2) :
    mangoldtFourierMultiplier A f =ᵐ[volume]
      fun ξ => (mangoldtFourierSymbol A ξ : ℂ) * f ξ := by
  let S := primePowerInventory (2 * A)
  have hterms : ∀ᵐ ξ ∂volume, ∀ n ∈ S,
      ((mangoldtCoefficient n : ℂ) • symmetricPhaseMultiplier (Real.log n) f) ξ =
        (mangoldtCoefficient n : ℂ) *
          (Real.cos (2 * Real.pi * ξ * Real.log n) : ℂ) * f ξ := by
    apply (Filter.eventually_all_finset S).mpr
    intro n _
    filter_upwards [Lp.coeFn_smul (mangoldtCoefficient n : ℂ)
      (symmetricPhaseMultiplier (Real.log n) f),
      symmetricPhaseMultiplier_coe_ae (Real.log n) f] with ξ hs hc
    simp only [Pi.smul_apply, smul_eq_mul] at hs
    rw [hs, hc]
    ring
  filter_upwards [Lp.coeFn_fun_finsetSum S (fun n =>
    (mangoldtCoefficient n : ℂ) • symmetricPhaseMultiplier (Real.log n) f), hterms]
    with ξ hs ht
  rw [mangoldtFourierMultiplier_apply]
  change (∑ n ∈ S, (mangoldtCoefficient n : ℂ) •
    symmetricPhaseMultiplier (Real.log n) f) ξ = _
  rw [hs]
  simp only [mangoldtFourierSymbol, Complex.ofReal_sum, Complex.ofReal_mul, Finset.sum_mul]
  exact Finset.sum_congr rfl ht

/-- The exact transport is an identity between composed bounded continuous linear maps. -/
theorem mangoldtInteraction_fourier_intertwining (A : ℝ) :
    (Lp.fourierTransformₗᵢ ℝ ℂ).toLinearIsometry.toContinuousLinearMap.comp
      (mangoldtInteraction A) =
    (mangoldtFourierMultiplier A).comp
      (Lp.fourierTransformₗᵢ ℝ ℂ).toLinearIsometry.toContinuousLinearMap := by
  apply ContinuousLinearMap.ext
  intro f
  exact fourier_mangoldtInteraction A f

/-- At each fixed scale the literal finite real symbol is continuous. -/
theorem mangoldtFourierSymbol_continuous (A : ℝ) :
    Continuous (mangoldtFourierSymbol A) := by
  unfold mangoldtFourierSymbol
  fun_prop

/-- The elementary bound is finite at each scale; it is not uniform in scale. -/
theorem mangoldtFourierSymbol_abs_le (A ξ : ℝ) :
    |mangoldtFourierSymbol A ξ| ≤
      ∑ n ∈ primePowerInventory (2 * A), |mangoldtCoefficient n| := by
  unfold mangoldtFourierSymbol
  refine (Finset.abs_sum_le_sum_abs _ _).trans ?_
  apply Finset.sum_le_sum
  intro n _
  rw [abs_mul]
  exact mul_le_of_le_one_right (abs_nonneg _) (Real.abs_cos_le_one _)

private theorem inner_real_multiplier (a : ℝ) (z : ℂ) :
    (⟪z, (a : ℂ) * z⟫_ℂ).re = a * Complex.normSq z := by
  rw [RCLike.inner_apply']
  have he : starRingEnd ℂ z * ((a : ℂ) * z) =
      (a : ℂ) * (Complex.normSq z : ℂ) := by
    rw [Complex.normSq_eq_conj_mul_self]
    ring
  rw [he, ← Complex.ofReal_mul, Complex.ofReal_re]

/-- The finite symbol times any actual L² square density is integrable. -/
theorem mangoldtFourierDensity_integrable (A : ℝ) (f : ComplexL2) :
    Integrable (fun ξ => mangoldtFourierSymbol A ξ * Complex.normSq (f ξ)) := by
  apply ((L2.integrable_inner (𝕜 := ℂ) f (mangoldtFourierMultiplier A f)).re).congr
  filter_upwards [mangoldtFourierMultiplier_coe_ae A f] with ξ hξ
  rw [hξ, inner_real_multiplier]

/-- The frequency-side quadratic coefficient is its genuinely integrable density. -/
theorem mangoldtFourierMultiplier_quadratic_integral (A : ℝ) (f : ComplexL2) :
    (⟪f, mangoldtFourierMultiplier A f⟫_ℂ).re =
      ∫ ξ : ℝ, mangoldtFourierSymbol A ξ * Complex.normSq (f ξ) := by
  rw [L2.inner_def, ← integral_re
    (L2.integrable_inner (𝕜 := ℂ) f (mangoldtFourierMultiplier A f))]
  apply integral_congr_ae
  filter_upwards [mangoldtFourierMultiplier_coe_ae A f] with ξ hξ
  rw [hξ, inner_real_multiplier]

/-- Pointed Parseval for the actual arithmetic operator has no standard-frequency prefactor. -/
theorem mangoldtInteraction_pointed_parseval (A : ℝ) (f : ComplexL2) :
    (⟪f, mangoldtInteraction A f⟫_ℂ).re =
      ∫ ξ : ℝ, mangoldtFourierSymbol A ξ * Complex.normSq ((𝓕 f : ComplexL2) ξ) := by
  rw [← Lp.inner_fourier_eq, fourier_mangoldtInteraction]
  exact mangoldtFourierMultiplier_quadratic_integral A (𝓕 f)

/-- The literal closed prime moment is the standard-frequency pointed density. -/
theorem closedPrimeMoment_eq_fourier_integral {A : ℝ} (hA : 0 < A) :
    closedPrimeMoment A = ∫ ξ : ℝ,
      mangoldtFourierSymbol A ξ *
        Complex.normSq ((𝓕 (originalSourceState A) : ComplexL2) ξ) := by
  rw [closedPrimeMoment_eq_quadratic hA, mangoldtInteraction_pointed_parseval]

/-- The unchanged residual is this density only under its existing scale hypothesis. -/
theorem mertensResidual_eq_fourier_integral {A : ℝ} (hA : 1 ≤ A) :
    mertensResidual A = ∫ ξ : ℝ,
      mangoldtFourierSymbol A ξ *
        Complex.normSq ((𝓕 (originalSourceState A) : ComplexL2) ξ) := by
  rw [mertensResidual_eq_quadratic hA, mangoldtInteraction_pointed_parseval]

/-- Compatibility with the Bochner transform requires the actual representative to be integrable. -/
theorem mangoldtInteraction_pointed_bochner (A : ℝ) (f : ComplexL2)
    (hf : Integrable (f : ℝ → ℂ)) :
    (⟪f, mangoldtInteraction A f⟫_ℂ).re =
      ∫ ξ : ℝ, mangoldtFourierSymbol A ξ * Complex.normSq (𝓕 (f : ℝ → ℂ) ξ) := by
  rw [mangoldtInteraction_pointed_parseval]
  apply integral_congr_ae
  filter_upwards [SourceL2FourierCompatibility.fourier_coe_ae f hf] with ξ hξ
  rw [hξ]

end FormalResearch.RiemannHypothesis.SourceMangoldtInteractionFourier
