# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.74426b1563f4ecdbeb3fEstimateCorrelationTranslation.Variantb587efd0a6c3c8ae546e82eaca6c674fe729dbf7181578324cc628d24f397b7e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `225d3a34d6f678c5f74cad27f8b40b76fcdcabd6` · SHA-256 `11fec3502c130ec8f037a34469624e359368911c79f16147ccb2e0b344681a9c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.SourceCorrelationEqOppositeTranslate.Variant74426b1563f4ecdbeb3f2d74dde83246e025e319b161b84fa88978aba584dbca","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"74426b1563f4ecdbeb3f2d74dde83246e025e319b161b84fa88978aba584dbca","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.SourceCorrelationEqOppositeTranslate.Variant74426b1563f4ecdbeb3f2d74dde83246e025e319b161b84fa88978aba584dbca","mathematical_subject":"Analysis.Integration","original_sha256":"74426b1563f4ecdbeb3f2d74dde83246e025e319b161b84fa88978aba584dbca","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-root-01a11259-refocus/selected-source-delta/74426b1563f4ecdbeb3f-EstimateCorrelationTranslation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateWeightedMobiusPairing
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SourcePlancherel

/-!
# Exact finite translation and spectral factorization of the source residual

The normalized source test and its zero extension are unchanged. Opposite
translations produce the sum of logarithmic frequencies. Every interchange
below is a finite sum of independently integrable functions.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.SourceCorrelationEqOppositeTranslate.Variant74426b1563f4ecdbeb3f2d74dde83246e025e319b161b84fa88978aba584dbca

set_option autoImplicit false

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace EstimateCorrelationTranslation

open MeasureTheory
open scoped FourierTransform
open scoped ComplexConjugate
open FormalResearch.RiemannHypothesis.SourcePairing
open Realization CorrelationRegularity EstimateSourceMobiusKernel
open EstimateMobiusSplit EstimateMertensAbel EstimateMertensResidual EstimateWeightedMobiusPairing

noncomputable section

/-- Opposite translates realize the actual sum-frequency correlation. -/
theorem sourceCorrelation_eq_opposite_translate (A s t : ℝ) :
    sourceCorrelation explicitSecondDerivative A (s + t) =
      ∫ u, normalizedTest explicitSecondDerivative A (u - s) *
        normalizedTest explicitSecondDerivative A (u + t) := by
  unfold sourceCorrelation
  have h := integral_sub_right_eq_self (μ := volume)
    (fun x ↦ normalizedTest explicitSecondDerivative A x *
      normalizedTest explicitSecondDerivative A (x - (s + t))) (-t)
  convert h.symm using 1
  apply integral_congr_ae
  filter_upwards [] with u
  have heq : u + t - (s + t) = u - s := by ring
  simp only [sub_neg_eq_add, heq, mul_comm]

/-- Each opposite-translate product has genuine integrability. -/
theorem opposite_translate_product_integrable (A s t : ℝ) (hA : 0 < A) :
    Integrable (fun u ↦ normalizedTest explicitSecondDerivative A (u - s) *
      normalizedTest explicitSecondDerivative A (u + t)) := by
  have h := (correlation_product_integrable A (s + t) hA).comp_sub_right (-t)
  convert h using 1
  ext u
  have heq : u + t - (s + t) = u - s := by ring
  simp only [sub_neg_eq_add, heq, mul_comm]

/-- Finite opposite-shifted source sums have an integrable product. -/
theorem finite_translate_product_integrable (A : ℝ) (hA : 0 < A)
    (S T : Finset ℕ) (a b shiftLeft shiftRight : ℕ → ℝ) :
    Integrable (fun u ↦
      (∑ i ∈ S, a i * normalizedTest explicitSecondDerivative A (u - shiftLeft i)) *
      (∑ j ∈ T, b j * normalizedTest explicitSecondDerivative A (u + shiftRight j))) := by
  have h : Integrable (fun u ↦ ∑ i ∈ S, ∑ j ∈ T,
      (a i * b j) * (normalizedTest explicitSecondDerivative A (u - shiftLeft i) *
        normalizedTest explicitSecondDerivative A (u + shiftRight j))) :=
    integrable_finsetSum S fun i _ ↦ integrable_finsetSum T fun j _ ↦
      (opposite_translate_product_integrable A (shiftLeft i) (shiftRight j) hA).const_mul _
  convert h using 1
  ext u
  simp only [Finset.sum_mul]
  simp only [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro i hi
  apply Finset.sum_congr rfl
  intro j hj
  ring

/-- Exact finite factorization, retaining the signed coefficients. -/
theorem finite_opposite_translate_factorization (A : ℝ) (hA : 0 < A)
    (S T : Finset ℕ) (a b shiftLeft shiftRight : ℕ → ℝ) :
    (∑ i ∈ S, ∑ j ∈ T,
      (a i * b j) * sourceCorrelation explicitSecondDerivative A (shiftLeft i + shiftRight j)) =
      ∫ u,
        (∑ i ∈ S, a i * normalizedTest explicitSecondDerivative A (u - shiftLeft i)) *
        (∑ j ∈ T, b j * normalizedTest explicitSecondDerivative A (u + shiftRight j)) := by
  have hp (i j : ℕ) := opposite_translate_product_integrable A (shiftLeft i) (shiftRight j) hA
  calc
    _ = ∑ i ∈ S, ∑ j ∈ T, ∫ u,
        (a i * b j) * (normalizedTest explicitSecondDerivative A (u - shiftLeft i) *
          normalizedTest explicitSecondDerivative A (u + shiftRight j)) := by
      simp only [sourceCorrelation_eq_opposite_translate, integral_const_mul]
    _ = ∫ u, ∑ i ∈ S, ∑ j ∈ T,
        (a i * b j) * (normalizedTest explicitSecondDerivative A (u - shiftLeft i) *
          normalizedTest explicitSecondDerivative A (u + shiftRight j)) := by
      rw [integral_finsetSum S]
      · apply Finset.sum_congr rfl
        intro i hi
        exact (integral_finsetSum T fun j _ ↦ (hp i j).const_mul _).symm
      · intro i hi
        exact integrable_finsetSum T fun j _ ↦ (hp i j).const_mul _
    _ = _ := by
      apply integral_congr_ae
      filter_upwards [] with u
      simp only [Finset.sum_mul]
      simp only [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro i hi
      apply Finset.sum_congr rfl
      intro j hj
      ring

/-- The exact signed residual is an inner product of opposite translated sums. -/
theorem mertensResidual_eq_translate_product (A : ℝ) (hA : 1 ≤ A) :
    mertensResidual A = ∫ u,
      (∑ d ∈ Finset.Icc 1 (sourceKernelCutoff A),
        (realMoebius d / Real.sqrt (d : ℝ)) *
          normalizedTest explicitSecondDerivative A (u - Real.log (d : ℝ))) *
      (∑ k ∈ Finset.Icc 1 (sourceKernelCutoff A),
        (Real.log (k : ℝ) / Real.sqrt (k : ℝ)) *
          normalizedTest explicitSecondDerivative A (u + Real.log (k : ℝ))) := by
  rw [mertensResidual_eq_signed_bilinear A hA]
  rw [← finite_opposite_translate_factorization A (by linarith)]
  apply Finset.sum_congr rfl
  intro d hd
  apply Finset.sum_congr rfl
  intro k hk
  rw [Real.sqrt_mul (by positivity : 0 ≤ (d : ℝ))]
  ring

/-- The source's standard-frequency spectral weight, without any surrogate test. -/
def spectralWeight (A ξ : ℝ) : ℝ :=
  Complex.normSq (𝓕 (fun x ↦ (normalizedTest explicitSecondDerivative A x : ℂ)) ξ)

/-- The spectral weight is integrable and has exact mass one. -/
theorem spectralWeight_integrable_mass (A : ℝ) (hA : 1 ≤ A) :
    Integrable (spectralWeight A) ∧ (∫ ξ, spectralWeight A ξ) = 1 :=
  ⟨SourcePlancherel.standardFourier_square_integrable A hA,
    SourcePlancherel.actual_standard_fourier_mass A hA⟩

/-- Fourier inversion gives the literal autocorrelation at every displacement.
The phase uses Mathlib frequency: the angular frequency is `2πξ`. -/
theorem sourceCorrelation_eq_spectral_integral (A t : ℝ) (hA : 1 ≤ A) :
    (sourceCorrelation explicitSecondDerivative A t : ℂ) =
      ∫ ξ, Complex.exp (((2 * Real.pi * t * ξ : ℝ) : ℂ) * Complex.I) *
        (spectralWeight A ξ : ℂ) := by
  have hc : Integrable (fun t : ℝ ↦ (sourceCorrelation explicitSecondDerivative A t : ℂ)) :=
    Complex.ofRealCLM.integrable_comp (sourceCorrelation_integrable A (by linarith))
  have hfc : Integrable (𝓕 (fun t : ℝ ↦
      (sourceCorrelation explicitSecondDerivative A t : ℂ))) := by
    have heq : 𝓕 (fun t : ℝ ↦ (sourceCorrelation explicitSecondDerivative A t : ℂ)) =
        fun ξ ↦ (spectralWeight A ξ : ℂ) :=
      funext (SourcePlancherel.fourier_correlation A hA)
    rw [heq]
    exact Complex.ofRealCLM.integrable_comp (spectralWeight_integrable_mass A hA).1
  have hcont : ContinuousAt
      (fun t : ℝ ↦ (sourceCorrelation explicitSecondDerivative A t : ℂ)) t :=
    Complex.continuous_ofReal.continuousAt.comp
      (sourceCorrelation_contDiff A (by linarith)).continuous.continuousAt
  have h := hc.fourierInv_fourier_eq hfc hcont
  rw [Real.fourierInv_eq_fourier_neg, Real.fourier_real_eq_integral_exp_smul] at h
  symm
  convert h using 1
  apply integral_congr_ae
  filter_upwards [] with ξ
  rw [SourcePlancherel.fourier_correlation A hA ξ]
  simp only [smul_eq_mul, spectralWeight]
  congr 2
  push_cast
  ring

/-- The spectral mass stays integrable after a real unit phase. -/
theorem spectral_phase_integrable (A t : ℝ) (hA : 1 ≤ A) :
    Integrable (fun ξ ↦
      Complex.exp (((2 * Real.pi * t * ξ : ℝ) : ℂ) * Complex.I) *
        (spectralWeight A ξ : ℂ)) := by
  have hw := Complex.ofRealCLM.integrable_comp (spectralWeight_integrable_mass A hA).1
  apply hw.bdd_mul (c := 1)
  · exact (by fun_prop : Continuous (fun ξ : ℝ ↦
      Complex.exp (((2 * Real.pi * t * ξ : ℝ) : ℂ) * Complex.I))).aestronglyMeasurable
  · filter_upwards [] with ξ
    exact (Complex.norm_exp_ofReal_mul_I _).le

/-- Finite Dirichlet polynomial with the literal logarithmic frequencies. -/
def dirichletPolynomial (S : Finset ℕ) (a : ℕ → ℝ) (ξ : ℝ) : ℂ :=
  ∑ n ∈ S, (a n : ℂ) *
    Complex.exp (((2 * Real.pi * Real.log (n : ℝ) * ξ : ℝ) : ℂ) * Complex.I)

/-- Finite coefficient mass bounds the polynomial at each frequency. -/
theorem dirichletPolynomial_norm_le (S : Finset ℕ) (a : ℕ → ℝ) (ξ : ℝ) :
    ‖dirichletPolynomial S a ξ‖ ≤ ∑ n ∈ S, |a n| := by
  unfold dirichletPolynomial
  calc
    _ ≤ ∑ n ∈ S, ‖(a n : ℂ) *
        Complex.exp (((2 * Real.pi * Real.log (n : ℝ) * ξ : ℝ) : ℂ) * Complex.I)‖ :=
      norm_sum_le _ _
    _ = _ := by
      simp only [norm_mul, Complex.norm_real, Real.norm_eq_abs,
        Complex.norm_exp_ofReal_mul_I, mul_one]

/-- Weighted finite products are integrable on the actual spectral measure. -/
theorem finite_spectral_product_integrable (A : ℝ) (hA : 1 ≤ A)
    (S T : Finset ℕ) (a b : ℕ → ℝ) :
    Integrable (fun ξ ↦ (spectralWeight A ξ : ℂ) *
      dirichletPolynomial S a ξ * dirichletPolynomial T b ξ) := by
  have hp (S : Finset ℕ) (a : ℕ → ℝ) :
      Continuous (dirichletPolynomial S a) := by
    unfold dirichletPolynomial
    fun_prop
  have hw := Complex.ofRealCLM.integrable_comp (spectralWeight_integrable_mass A hA).1
  exact (hw.mul_bdd (hp S a).aestronglyMeasurable
    (Filter.Eventually.of_forall (dirichletPolynomial_norm_le S a))).mul_bdd
      (hp T b).aestronglyMeasurable
      (Filter.Eventually.of_forall (dirichletPolynomial_norm_le T b))

/-- Finite spectral factorization uses two equal phase signs, with no conjugation. -/
theorem finite_spectral_factorization (A : ℝ) (hA : 1 ≤ A)
    (S T : Finset ℕ) (a b : ℕ → ℝ) :
    ((∑ i ∈ S, ∑ j ∈ T,
      (a i * b j) * sourceCorrelation explicitSecondDerivative A
        (Real.log (i : ℝ) + Real.log (j : ℝ)) : ℝ) : ℂ) =
      ∫ ξ, (spectralWeight A ξ : ℂ) *
        dirichletPolynomial S a ξ * dirichletPolynomial T b ξ := by
  have hp (i j : ℕ) : Integrable (fun ξ ↦
      ((a i * b j : ℝ) : ℂ) *
        (Complex.exp (((2 * Real.pi * (Real.log (i : ℝ) + Real.log (j : ℝ)) * ξ : ℝ) : ℂ) *
          Complex.I) * (spectralWeight A ξ : ℂ))) :=
    (spectral_phase_integrable A _ hA).const_mul _
  calc
    _ = ∑ i ∈ S, ∑ j ∈ T, ∫ ξ,
        ((a i * b j : ℝ) : ℂ) *
          (Complex.exp (((2 * Real.pi * (Real.log (i : ℝ) + Real.log (j : ℝ)) * ξ : ℝ) : ℂ) *
            Complex.I) * (spectralWeight A ξ : ℂ)) := by
      simp only [Complex.ofReal_sum, Complex.ofReal_mul,
        sourceCorrelation_eq_spectral_integral A _ hA, integral_const_mul]
    _ = ∫ ξ, ∑ i ∈ S, ∑ j ∈ T,
        ((a i * b j : ℝ) : ℂ) *
          (Complex.exp (((2 * Real.pi * (Real.log (i : ℝ) + Real.log (j : ℝ)) * ξ : ℝ) : ℂ) *
            Complex.I) * (spectralWeight A ξ : ℂ)) := by
      rw [integral_finsetSum S]
      · apply Finset.sum_congr rfl
        intro i hi
        exact (integral_finsetSum T fun j _ ↦ hp i j).symm
      · intro i hi
        exact integrable_finsetSum T fun j _ ↦ hp i j
    _ = _ := by
      apply integral_congr_ae
      filter_upwards [] with ξ
      unfold dirichletPolynomial
      simp only [Finset.mul_sum, Finset.sum_mul]
      conv_rhs => rw [Finset.sum_comm]
      apply Finset.sum_congr rfl
      intro i hi
      apply Finset.sum_congr rfl
      intro j hj
      have heq : (((2 * Real.pi * (Real.log (i : ℝ) + Real.log (j : ℝ)) * ξ : ℝ) : ℂ) *
          Complex.I) =
        (((2 * Real.pi * Real.log (i : ℝ) * ξ : ℝ) : ℂ) * Complex.I) +
          (((2 * Real.pi * Real.log (j : ℝ) * ξ : ℝ) : ℂ) * Complex.I) := by
        push_cast
        ring
      rw [heq, Complex.exp_add]
      push_cast
      ring

/-- The exact full residual factors spectrally without replacing signed arithmetic. -/
theorem mertensResidual_eq_spectral_product (A : ℝ) (hA : 1 ≤ A) :
    (mertensResidual A : ℂ) =
      ∫ ξ, (spectralWeight A ξ : ℂ) *
        dirichletPolynomial (Finset.Icc 1 (sourceKernelCutoff A))
          (fun d ↦ realMoebius d / Real.sqrt (d : ℝ)) ξ *
        dirichletPolynomial (Finset.Icc 1 (sourceKernelCutoff A))
          (fun k ↦ Real.log (k : ℝ) / Real.sqrt (k : ℝ)) ξ := by
  rw [← finite_spectral_factorization A hA]
  congr 1
  rw [mertensResidual_eq_signed_bilinear A hA]
  apply Finset.sum_congr rfl
  intro d hd
  apply Finset.sum_congr rfl
  intro k hk
  rw [Real.sqrt_mul (by positivity : 0 ≤ (d : ℝ))]
  ring

/-- The actual square expansion has difference frequencies, unlike the residual product. -/
theorem dirichletPolynomial_normSq_eq_sum (S : Finset ℕ) (a : ℕ → ℝ) (ξ : ℝ) :
    (Complex.normSq (dirichletPolynomial S a ξ) : ℂ) =
      ∑ i ∈ S, ∑ j ∈ S, ((a i * a j : ℝ) : ℂ) *
        Complex.exp (((2 * Real.pi *
          (Real.log (i : ℝ) - Real.log (j : ℝ)) * ξ : ℝ) : ℂ) * Complex.I) := by
  rw [← Complex.mul_conj]
  unfold dirichletPolynomial
  simp only [map_sum, map_mul, Complex.conj_ofReal]
  simp only [Finset.sum_mul]
  simp only [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro i hi
  apply Finset.sum_congr rfl
  intro j hj
  have heq : Complex.exp (((2 * Real.pi * Real.log (i : ℝ) * ξ : ℝ) : ℂ) * Complex.I) *
      conj (Complex.exp (((2 * Real.pi * Real.log (j : ℝ) * ξ : ℝ) : ℂ) * Complex.I)) =
      Complex.exp (((2 * Real.pi * (Real.log (i : ℝ) - Real.log (j : ℝ)) * ξ : ℝ) : ℂ) *
        Complex.I) := by
    rw [← Complex.exp_conj]
    simp only [map_mul, Complex.conj_ofReal, Complex.conj_I]
    rw [← Complex.exp_add]
    congr 1
    push_cast
    ring
  calc
    _ = ((a i * a j : ℝ) : ℂ) *
        (Complex.exp (((2 * Real.pi * Real.log (i : ℝ) * ξ : ℝ) : ℂ) * Complex.I) *
          conj (Complex.exp (((2 * Real.pi * Real.log (j : ℝ) * ξ : ℝ) : ℂ) * Complex.I))) := by
      conv_rhs => rw [Complex.ofReal_mul]
      ring
    _ = _ := by rw [heq]

/-- Actual weighted second moments are integrable; finite sums are not used as a default value. -/
theorem finite_spectral_secondMoment_integrable (A : ℝ) (hA : 1 ≤ A)
    (S : Finset ℕ) (a : ℕ → ℝ) :
    Integrable (fun ξ ↦ spectralWeight A ξ *
      Complex.normSq (dirichletPolynomial S a ξ)) := by
  have hp : Continuous (fun ξ ↦ Complex.normSq (dirichletPolynomial S a ξ)) := by
    unfold dirichletPolynomial
    fun_prop
  apply (spectralWeight_integrable_mass A hA).1.mul_bdd (c := (∑ n ∈ S, |a n|) ^ 2)
    hp.aestronglyMeasurable
  filter_upwards [] with ξ
  have hn := dirichletPolynomial_norm_le S a ξ
  have hn0 := norm_nonneg (dirichletPolynomial S a ξ)
  rw [Real.norm_eq_abs, abs_of_nonneg (Complex.normSq_nonneg _), Complex.normSq_eq_norm_sq]
  nlinarith

/-- The exact weighted second moment is the finite difference-frequency correlation sum. -/
theorem finite_spectral_secondMoment (A : ℝ) (hA : 1 ≤ A)
    (S : Finset ℕ) (a : ℕ → ℝ) :
    (∫ ξ, spectralWeight A ξ * Complex.normSq (dirichletPolynomial S a ξ)) =
      ∑ i ∈ S, ∑ j ∈ S, (a i * a j) *
        sourceCorrelation explicitSecondDerivative A (Real.log (i : ℝ) - Real.log (j : ℝ)) := by
  have hp (i j : ℕ) : Integrable (fun ξ ↦
      ((a i * a j : ℝ) : ℂ) *
        (Complex.exp (((2 * Real.pi * (Real.log (i : ℝ) - Real.log (j : ℝ)) * ξ : ℝ) : ℂ) *
          Complex.I) * (spectralWeight A ξ : ℂ))) :=
    (spectral_phase_integrable A _ hA).const_mul _
  have hof := integral_ofReal (𝕜 := ℂ) (μ := volume) (f := fun ξ ↦ spectralWeight A ξ *
    Complex.normSq (dirichletPolynomial S a ξ))
  have hcomplex : (∫ ξ, ((spectralWeight A ξ *
      Complex.normSq (dirichletPolynomial S a ξ) : ℝ) : ℂ)) =
      ((∑ i ∈ S, ∑ j ∈ S, (a i * a j) *
        sourceCorrelation explicitSecondDerivative A
          (Real.log (i : ℝ) - Real.log (j : ℝ)) : ℝ) : ℂ) := by
    calc
      _ = ∫ ξ, ∑ i ∈ S, ∑ j ∈ S,
          ((a i * a j : ℝ) : ℂ) *
            (Complex.exp (((2 * Real.pi * (Real.log (i : ℝ) - Real.log (j : ℝ)) * ξ : ℝ) : ℂ) *
              Complex.I) * (spectralWeight A ξ : ℂ)) := by
        apply integral_congr_ae
        filter_upwards [] with ξ
        rw [Complex.ofReal_mul, dirichletPolynomial_normSq_eq_sum]
        simp only [Finset.mul_sum]
        apply Finset.sum_congr rfl
        intro i hi
        apply Finset.sum_congr rfl
        intro j hj
        ring
      _ = ∑ i ∈ S, ∑ j ∈ S, ∫ ξ,
          ((a i * a j : ℝ) : ℂ) *
            (Complex.exp (((2 * Real.pi * (Real.log (i : ℝ) - Real.log (j : ℝ)) * ξ : ℝ) : ℂ) *
              Complex.I) * (spectralWeight A ξ : ℂ)) := by
        rw [integral_finsetSum S]
        · apply Finset.sum_congr rfl
          intro i hi
          exact integral_finsetSum S fun j _ ↦ hp i j
        · intro i hi
          exact integrable_finsetSum S fun j _ ↦ hp i j
      _ = _ := by
        simp only [Complex.ofReal_sum, Complex.ofReal_mul,
          sourceCorrelation_eq_spectral_integral A _ hA, integral_const_mul]
  exact Complex.ofReal_injective (hof.symm.trans hcomplex)

/-- The finite off-diagonal in the actual spectral second moment. -/
def secondMomentOffDiagonal (A : ℝ) (S : Finset ℕ) (a : ℕ → ℝ) : ℝ :=
  ∑ i ∈ S, ∑ j ∈ S.erase i, (a i * a j) *
    sourceCorrelation explicitSecondDerivative A (Real.log (i : ℝ) - Real.log (j : ℝ))

/-- The complete elementary diagonal is exactly the coefficient square sum. -/
theorem finite_spectral_secondMoment_diagonal_offDiagonal (A : ℝ) (hA : 1 ≤ A)
    (S : Finset ℕ) (a : ℕ → ℝ) :
    (∫ ξ, spectralWeight A ξ * Complex.normSq (dirichletPolynomial S a ξ)) =
      (∑ n ∈ S, (a n) ^ 2) + secondMomentOffDiagonal A S a := by
  rw [finite_spectral_secondMoment A hA]
  unfold secondMomentOffDiagonal
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro i hi
  have h := Finset.add_sum_erase S (fun j ↦ (a i * a j) *
    sourceCorrelation explicitSecondDerivative A (Real.log (i : ℝ) - Real.log (j : ℝ))) hi
  simpa only [sub_self, EstimateCorrelation.actual_correlation_at_zero A hA,
    mul_one, pow_two] using h.symm

end
end EstimateCorrelationTranslation
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
```
