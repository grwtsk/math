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
open PrimePowerDescent EstimateMertensResidual SourcePairing

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
  rw [hsm, ha, hp, hn]
  simp only [smul_eq_mul]
  rw [← mul_add, ← mul_assoc, translationPhase_half_sum]

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
    rw [hs, hc]
    simp only [smul_eq_mul]
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

end FormalResearch.RiemannHypothesis.SourceMangoldtInteractionFourier
