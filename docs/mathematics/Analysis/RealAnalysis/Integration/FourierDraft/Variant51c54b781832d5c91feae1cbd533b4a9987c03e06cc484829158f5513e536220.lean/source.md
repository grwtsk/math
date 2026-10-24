# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.FourierDraft.Variant51c54b781832d5c91feae1cbd533b4a9987c03e06cc484829158f5513e536220

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `185928316d7dbaac63a9a31712d3902a6589e2e0` · SHA-256 `668b7b03ab5164fac4cb0ab962a5b3de5623c48f7955675913aa4afc4263bd21`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.SourceFourierSquare.Variantca717292568268f01f086e799291e2117f6ae8b8f619ec959ab253f722970178","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ca717292568268f01f086e799291e2117f6ae8b8f619ec959ab253f722970178","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.SourceFourierSquare.Variantca717292568268f01f086e799291e2117f6ae8b8f619ec959ab253f722970178","mathematical_subject":"Analysis.Integration","original_sha256":"ca717292568268f01f086e799291e2117f6ae8b8f619ec959ab253f722970178","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/hankel-reflection/parent/FourierDraft.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SourcePlancherel
import Mathlib.Data.Complex.BigOperators
import FormalResearch.RiemannHypothesis.SourceHankelReflection


namespace GRWTSK.Analysis.RealAnalysis.Integration.SourceFourierSquare.Variantca717292568268f01f086e799291e2117f6ae8b8f619ec959ab253f722970178

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceHankelFourier

open MeasureTheory
open scoped FourierTransform
open SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity BridgeFourier SourcePlancherel

noncomputable section

def sourceFourierSquare (A ξ : ℝ) : ℝ :=
  Complex.normSq (sourceFourier (normalizedTest explicitSecondDerivative A) ξ)

theorem sourceFourierSquare_integrable {A : ℝ} (hA : 1 ≤ A) :
    Integrable (sourceFourierSquare A) := actual_fourier_square_integrable A hA

theorem sourceFourierSquare_nonneg (A ξ : ℝ) : 0 ≤ sourceFourierSquare A ξ :=
  Complex.normSq_nonneg _

theorem sourceFourierSquare_integral {A : ℝ} (hA : 1 ≤ A) :
    (∫ ξ, sourceFourierSquare A ξ) = 2 * Real.pi := actual_source_fourier_mass A hA

theorem standard_correlation_cosine_integral {A : ℝ} (hA : 1 ≤ A) (t : ℝ) :
    (∫ ξ : ℝ, Real.cos (2 * Real.pi * ξ * t) * Complex.normSq
      (𝓕 (fun x : ℝ ↦ (normalizedTest explicitSecondDerivative A x : ℂ)) ξ)) =
      sourceCorrelation explicitSecondDerivative A t := by
  have hc : Integrable (fun t : ℝ ↦ (sourceCorrelation explicitSecondDerivative A t : ℂ)) :=
    Complex.ofRealCLM.integrable_comp (sourceCorrelation_integrable A (by linarith))
  have hfc : Integrable (𝓕 (fun t : ℝ ↦ (sourceCorrelation explicitSecondDerivative A t : ℂ))) := by
    have heq : 𝓕 (fun t : ℝ ↦ (sourceCorrelation explicitSecondDerivative A t : ℂ)) =
        fun ξ ↦ (Complex.normSq
          (𝓕 (fun x : ℝ ↦ (normalizedTest explicitSecondDerivative A x : ℂ)) ξ) : ℂ) :=
      funext (fourier_correlation A hA)
    rw [heq]
    exact Complex.ofRealCLM.integrable_comp (standardFourier_square_integrable A hA)
  have hcont : ContinuousAt
      (fun t : ℝ ↦ (sourceCorrelation explicitSecondDerivative A t : ℂ)) t :=
    Complex.continuous_ofReal.continuousAt.comp
      (sourceCorrelation_contDiff A (by linarith)).continuous.continuousAt
  have h := hc.fourierInv_fourier_eq hfc hcont
  rw [Real.fourierInv_eq_fourier_neg, Real.fourier_real_eq_integral_exp_smul] at h
  simp_rw [fourier_correlation A hA, smul_eq_mul] at h
  let S : ℝ → ℝ := fun ξ ↦ Complex.normSq
    (𝓕 (fun x : ℝ ↦ (normalizedTest explicitSecondDerivative A x : ℂ)) ξ)
  have hint : Integrable (fun ξ : ℝ ↦
      Complex.exp (((2 * Real.pi * ξ * t : ℝ) : ℂ) * Complex.I) * (S ξ : ℂ)) := by
    apply (Complex.ofRealCLM.integrable_comp (standardFourier_square_integrable A hA)).bdd_mul
      (c := 1)
    · exact (show Continuous (fun ξ : ℝ ↦
        Complex.exp (((2 * Real.pi * ξ * t : ℝ) : ℂ) * Complex.I)) by fun_prop).aestronglyMeasurable
    · filter_upwards [] with ξ
      simp only [Complex.norm_exp_ofReal_mul_I, le_refl]
  have heq : (∫ ξ : ℝ,
      Complex.exp (((2 * Real.pi * ξ * t : ℝ) : ℂ) * Complex.I) * (S ξ : ℂ)) =
      (sourceCorrelation explicitSecondDerivative A t : ℂ) := by
    convert h using 1
    congr 1
    funext ξ
    congr 2
    push_cast
    ring
  have hre := congrArg Complex.re heq
  have hi : (∫ ξ : ℝ,
      (Complex.exp (((2 * Real.pi * ξ * t : ℝ) : ℂ) * Complex.I) * (S ξ : ℂ)).re) =
      (∫ ξ : ℝ,
      Complex.exp (((2 * Real.pi * ξ * t : ℝ) : ℂ) * Complex.I) * (S ξ : ℂ)).re :=
    integral_re hint
  rw [← hi] at hre
  simpa only [Complex.mul_re, Complex.ofReal_re, Complex.ofReal_im, mul_zero,
    sub_zero, Complex.exp_ofReal_mul_I_re, S] using hre

theorem source_cosine_product_integrable {A : ℝ} (hA : 1 ≤ A) (t : ℝ) :
    Integrable (fun ξ : ℝ ↦ Real.cos (ξ * t) * sourceFourierSquare A ξ) := by
  apply (sourceFourierSquare_integrable hA).bdd_mul (c := 1)
  · exact (show Continuous (fun ξ : ℝ ↦ Real.cos (ξ * t)) by fun_prop).aestronglyMeasurable
  · filter_upwards [] with ξ
    exact Real.abs_cos_le_one (ξ * t)

theorem source_correlation_fourier {A : ℝ} (hA : 1 ≤ A) (t : ℝ) :
    sourceCorrelation explicitSecondDerivative A t =
      (1 / (2 * Real.pi)) *
        ∫ ξ : ℝ, Real.cos (ξ * t) * sourceFourierSquare A ξ := by
  have h := standard_correlation_cosine_integral hA t
  simp_rw [standardFourier_eq_sourceFourier] at h
  calc
    sourceCorrelation explicitSecondDerivative A t =
        ∫ ξ : ℝ, Real.cos (2 * Real.pi * ξ * t) *
          sourceFourierSquare A (-(2 * Real.pi) * ξ) := h.symm
    _ = ∫ ξ : ℝ, Real.cos ((-(2 * Real.pi) * ξ) * t) *
          sourceFourierSquare A (-(2 * Real.pi) * ξ) := by
      apply integral_congr_ae
      filter_upwards [] with ξ
      have he : (-(2 * Real.pi) * ξ) * t = -(2 * Real.pi * ξ * t) := by ring
      rw [he, Real.cos_neg]
    _ = (1 / (2 * Real.pi)) *
        ∫ ξ : ℝ, Real.cos (ξ * t) * sourceFourierSquare A ξ := by
      rw [Measure.integral_comp_mul_left
        (fun ξ : ℝ ↦ Real.cos (ξ * t) * sourceFourierSquare A ξ) (-(2 * Real.pi))]
      simp only [smul_eq_mul, abs_inv, abs_neg, abs_of_pos (by positivity : 0 < 2 * Real.pi),
        one_div]

def arithmeticPolynomial (s : Finset ℕ) (c : ℕ → ℝ) (ξ : ℝ) : ℂ :=
  ∑ n ∈ s, (c n : ℂ) * Complex.exp (Complex.I * (ξ : ℂ) * (Real.log n : ℂ))

theorem arithmeticPolynomial_real_product (s t : Finset ℕ) (c d : ℕ → ℝ) (ξ : ℝ) :
    (arithmeticPolynomial s c ξ * arithmeticPolynomial t d ξ).re =
      ∑ m ∈ s, ∑ n ∈ t, c m * d n * Real.cos (ξ * (Real.log m + Real.log n)) := by
  classical
  unfold arithmeticPolynomial
  rw [Finset.sum_mul]
  simp only [Complex.re_sum]
  apply Finset.sum_congr rfl
  intro m hm
  rw [Finset.mul_sum]
  simp only [Complex.re_sum]
  apply Finset.sum_congr rfl
  intro n hn
  have he : (c m : ℂ) * Complex.exp (Complex.I * (ξ : ℂ) * (Real.log m : ℂ)) *
      ((d n : ℂ) * Complex.exp (Complex.I * (ξ : ℂ) * (Real.log n : ℂ))) =
      ((c m * d n : ℝ) : ℂ) *
        Complex.exp (((ξ * (Real.log m + Real.log n) : ℝ) : ℂ) * Complex.I) := by
    rw [Complex.ofReal_mul]
    rw [show (((ξ * (Real.log m + Real.log n) : ℝ) : ℂ) * Complex.I) =
      Complex.I * (ξ : ℂ) * (Real.log m : ℂ) +
      Complex.I * (ξ : ℂ) * (Real.log n : ℂ) by push_cast; ring,
      Complex.exp_add]
    ring
  rw [he]
  simp only [Complex.mul_re, Complex.ofReal_re, Complex.ofReal_im, zero_mul, sub_zero,
    Complex.exp_ofReal_mul_I_re]

def jointFourierIntegrand (A : ℝ) (s t : Finset ℕ) (c d : ℕ → ℝ) (ξ : ℝ) : ℝ :=
  (arithmeticPolynomial s c ξ * arithmeticPolynomial t d ξ).re * sourceFourierSquare A ξ

theorem jointFourierIntegrand_eq (A : ℝ) (s t : Finset ℕ) (c d : ℕ → ℝ) (ξ : ℝ) :
    jointFourierIntegrand A s t c d ξ =
      ∑ m ∈ s, ∑ n ∈ t, c m * d n *
        (Real.cos (ξ * (Real.log m + Real.log n)) * sourceFourierSquare A ξ) := by
  unfold jointFourierIntegrand
  rw [arithmeticPolynomial_real_product, Finset.sum_mul]
  apply Finset.sum_congr rfl
  intro m hm
  rw [Finset.sum_mul]
  apply Finset.sum_congr rfl
  intro n hn
  ring

theorem jointFourierIntegrand_integrable {A : ℝ} (hA : 1 ≤ A)
    (s t : Finset ℕ) (c d : ℕ → ℝ) :
    Integrable (jointFourierIntegrand A s t c d) := by
  simp_rw [show jointFourierIntegrand A s t c d =
    (fun ξ ↦ ∑ m ∈ s, ∑ n ∈ t, c m * d n *
      (Real.cos (ξ * (Real.log m + Real.log n)) * sourceFourierSquare A ξ)) from
    funext (jointFourierIntegrand_eq A s t c d)]
  exact integrable_finsetSum s (fun m hm ↦ integrable_finsetSum t (fun n hn ↦
    (source_cosine_product_integrable hA (Real.log m + Real.log n)).const_mul (c m * d n)))

theorem jointFourierIntegrand_integral {A : ℝ} (hA : 1 ≤ A)
    (s t : Finset ℕ) (c d : ℕ → ℝ) :
    (∫ ξ, jointFourierIntegrand A s t c d ξ) =
      ∑ m ∈ s, ∑ n ∈ t, c m * d n *
        ∫ ξ : ℝ, Real.cos (ξ * (Real.log m + Real.log n)) * sourceFourierSquare A ξ := by
  simp_rw [jointFourierIntegrand_eq]
  rw [integral_finsetSum s]
  · apply Finset.sum_congr rfl
    intro m hm
    rw [integral_finsetSum t]
    · apply Finset.sum_congr rfl
      intro n hn
      exact integral_const_mul (c m * d n) _
    · intro n hn
      exact (source_cosine_product_integrable hA (Real.log m + Real.log n)).const_mul (c m * d n)
  · intro m hm
    exact integrable_finsetSum t (fun n hn ↦
      (source_cosine_product_integrable hA (Real.log m + Real.log n)).const_mul (c m * d n))

theorem finite_correlation_fourier {A : ℝ} (hA : 1 ≤ A)
    (s t : Finset ℕ) (c d : ℕ → ℝ) :
    (∑ m ∈ s, ∑ n ∈ t, c m * d n *
      sourceCorrelation explicitSecondDerivative A (Real.log m + Real.log n)) =
      (1 / (2 * Real.pi)) * ∫ ξ, jointFourierIntegrand A s t c d ξ := by
  rw [jointFourierIntegrand_integral hA]
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro m hm
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro n hn
  rw [source_correlation_fourier hA]
  ring

theorem finite_hankel_fourier {A : ℝ} (hA : 1 ≤ A)
    (s t : Finset ℕ) (c d : ℕ → ℝ)
    (hs : ∀ m ∈ s, 0 < m) (ht : ∀ n ∈ t, 0 < n) :
    (∫ x, SourceHankelReflection.forwardProfile A s c x *
      SourceHankelReflection.reflectedProfile A t d x) =
      (1 / (2 * Real.pi)) * ∫ ξ, jointFourierIntegrand A s t c d ξ := by
  rw [SourceHankelReflection.finite_hankel_pairing
    (lt_of_lt_of_le (by norm_num) hA) s t c d hs ht]
  have he : (∑ m ∈ s, ∑ n ∈ t, c m * d n *
      sourceCorrelation explicitSecondDerivative A (Real.log ((m : ℝ) * (n : ℝ)))) =
      ∑ m ∈ s, ∑ n ∈ t, c m * d n *
        sourceCorrelation explicitSecondDerivative A (Real.log m + Real.log n) := by
    apply Finset.sum_congr rfl
    intro m hm
    apply Finset.sum_congr rfl
    intro n hn
    rw [Real.log_mul (by exact_mod_cast (hs m hm).ne') (by exact_mod_cast (ht n hn).ne')]
  rw [he]
  exact finite_correlation_fourier hA s t c d

theorem joint_phase_is_not_conjugate_phase :
    ∃ ξ : ℝ, (arithmeticPolynomial {2} (fun _ ↦ 1) ξ *
      arithmeticPolynomial {2} (fun _ ↦ 1) ξ).re = -1 ∧
      (arithmeticPolynomial {2} (fun _ ↦ 1) ξ *
        star (arithmeticPolynomial {2} (fun _ ↦ 1) ξ)).re = 1 := by
  let ξ : ℝ := Real.pi / (2 * Real.log 2)
  have hlog : Real.log 2 ≠ 0 := ne_of_gt (Real.log_pos (by norm_num))
  have hphase : ξ * Real.log 2 = Real.pi / 2 := by
    dsimp [ξ]
    field_simp
  have hP : arithmeticPolynomial {2} (fun _ ↦ 1) ξ = Complex.I := by
    simp only [arithmeticPolynomial, Finset.sum_singleton, Complex.ofReal_one, one_mul]
    have he : Complex.I * (ξ : ℂ) * (Real.log (2 : ℕ) : ℂ) =
        ((Real.pi / 2 : ℝ) : ℂ) * Complex.I := by
      calc
        _ = ((ξ * Real.log 2 : ℝ) : ℂ) * Complex.I := by push_cast; ring
        _ = _ := by rw [hphase]
    rw [he, Complex.exp_ofReal_mul_I]
    simp
  refine ⟨ξ, ?_, ?_⟩
  · simp only [hP, Complex.I_mul_I, Complex.neg_re, Complex.one_re]
  · simp [hP]

end
end FormalResearch.RiemannHypothesis.SourceHankelFourier
```
