# Complete source: GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.CandidateLaplace.Variant349a4ce43be13dca3589ca4fb45665937f603e554c2747f039b2f091038d194f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ad8fbcae43379047104ac5d7c2415e74830ba2e2` · SHA-256 `bc66971a1f03bea7838e2b840c72598279f59e97f3873f83a3982da036cb9554`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.HarmonicAnalysis.FourierAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.CandidateBoundaryInverseFourier.Variant6c8567b10fb10b26b4a33e7b25bbc76685a6e9419c4a1176dcb21729729d997c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6c8567b10fb10b26b4a33e7b25bbc76685a6e9419c4a1176dcb21729729d997c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.FourierAnalysis.SourceCorpus.CandidateBoundaryInverseFourier.Variant6c8567b10fb10b26b4a33e7b25bbc76685a6e9419c4a1176dcb21729729d997c","mathematical_subject":"Analysis.FourierAnalysis","original_sha256":"6c8567b10fb10b26b4a33e7b25bbc76685a6e9419c4a1176dcb21729729d997c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/controller-realization/CandidateLaplace.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.CandidateInverseAdmission
import Mathlib.Analysis.Fourier.Inversion

/-! Exact Fourier and Laplace identification of the admitted actual controller. -/

namespace GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.CandidateBoundaryInverseFourier.Variant6c8567b10fb10b26b4a33e7b25bbc76685a6e9419c4a1176dcb21729729d997c

set_option autoImplicit false
namespace CandidateLaplaceScratch
open MeasureTheory FourierTransform Filter Complex Set
open scoped Topology
open FormalResearch.RiemannHypothesis.SourceComparison
open CorrectedControllerAnalytic CandidateCausality
open CandidateRealizationScratch CandidateTiltScratch CandidateInverseAdmissionScratch
noncomputable section

/-- Fourier inversion recovers the exact actual candidate on the imaginary axis. -/
theorem candidate_boundaryInverse_fourier (X : ℕ) (hX : 1 ≤ X) (ε h : ℝ)
    (hε : 0 < ε) (hh : 0 < h) (hh1 : h ≤ 1) (τ : ℝ) :
    (∫ x : ℝ, Complex.exp (-(τ : ℂ) * I * (x : ℂ)) *
      boundaryInverse (candidate X ε h) x) = candidate X ε h ((τ : ℂ) * I) := by
  let f := angularFrequency (candidate X ε h)
  have hf : Integrable f := (candidate_frequency_admission X hX ε h hε hh hh1).1
  have hif : Integrable (𝓕⁻ f) := by
    have heq : boundaryInverse (candidate X ε h) = 𝓕⁻ f :=
      funext (boundaryInverse_eq_fourierInv _)
    rw [← heq]
    exact candidate_boundaryInverse_integrable X hX ε h hε hh hh1
  have hff : Integrable (𝓕 f) := by
    simpa only [Real.fourierInv_eq_fourier_neg, neg_neg] using hif.comp_neg
  have hc : Continuous f := by
    apply continuous_iff_continuousAt.mpr
    intro ξ
    exact (candidate_differentiableAt X ε h hε hh.le _ (by simp)).continuousAt.comp
      (by fun_prop)
  have he := hf.fourier_fourierInv_eq hff (hc.continuousAt (x := τ / (2 * Real.pi)))
  have hπ : (2 : ℝ) * Real.pi ≠ 0 := by positivity
  have ha : (2 * Real.pi * (τ / (2 * Real.pi)) : ℝ) = τ := by field_simp
  change (𝓕 (𝓕⁻ f)) (τ / (2 * Real.pi)) = f (τ / (2 * Real.pi)) at he
  simpa only [f, angularFrequency, ha] using
    (show (∫ x : ℝ, Complex.exp (-(τ : ℂ) * I * (x : ℂ)) *
      boundaryInverse (candidate X ε h) x) = f (τ / (2 * Real.pi)) from by
      rw [← he, Real.fourier_real_eq_integral_exp_smul]
      apply integral_congr_ae
      filter_upwards [] with x
      rw [← boundaryInverse_eq_fourierInv]
      congr 1
      simp only [Complex.ofReal_mul, Complex.ofReal_div]
      congr 1
      norm_num only [Complex.ofReal_ofNat, Complex.ofReal_neg]
      field_simp)

/-- The exact real offset shift identifies every exponential time tilt pointwise. -/
theorem candidate_boundaryInverse_tilt (X : ℕ) (hX : 1 ≤ X) (ε h : ℝ)
    (hε : 0 < ε) (hh : 0 < h) (hh1 : h ≤ 1) (σ : ℝ) (hσ : 0 ≤ σ) (x : ℝ) :
    Complex.exp (-(σ : ℂ) * (x : ℂ)) * boundaryInverse (candidate X ε h) x =
      boundaryInverse (candidate X (ε + σ) h) x := by
  rw [candidate_boundaryInverse_shift X hX ε h hε hh hh1 σ hσ x]
  rw [← mul_assoc]
  have he : Complex.exp (-(σ : ℂ) * (x : ℂ)) * (Real.exp (x * σ) : ℂ) = 1 := by
    rw [Complex.ofReal_exp, ← Complex.exp_add]
    have hz : -(σ : ℂ) * (x : ℂ) + (x * σ : ℝ) = 0 := by push_cast; ring
    rw [hz, Complex.exp_zero]
  rw [he, one_mul]

/-- The genuine causal Laplace integral equals the original candidate on the closed right half-plane. -/
theorem candidate_boundaryInverse_laplace (X : ℕ) (hX : 1 ≤ X) (ε h : ℝ)
    (hε : 0 < ε) (hh : 0 < h) (hh1 : h ≤ 1) (z : ℂ) (hz : 0 ≤ z.re) :
    (∫ x : ℝ in Ioi 0, Complex.exp (-z * (x : ℂ)) *
      boundaryInverse (candidate X ε h) x) = candidate X ε h z := by
  rw [setIntegral_eq_integral_of_ae_compl_eq_zero]
  · have he := candidate_boundaryInverse_fourier X hX (ε + z.re) h
      (by linarith) hh hh1 z.im
    have hc : candidate X (ε + z.re) h ((z.im : ℂ) * I) = candidate X ε h z := by
      rw [← candidate_shift]
      congr 1
      exact Complex.re_add_im z
    rw [← hc, ← he]
    apply integral_congr_ae
    filter_upwards [] with x
    rw [← candidate_boundaryInverse_tilt X hX ε h hε hh hh1 z.re hz x]
    rw [← mul_assoc, ← Complex.exp_add]
    congr 2
    calc
      -z * (x : ℂ) = -((z.re : ℂ) + (z.im : ℂ) * I) * (x : ℂ) := by
        rw [Complex.re_add_im]
      _ = _ := by ring
  · filter_upwards [volume.ae_ne (0 : ℝ)] with x hx
    intro hn
    have hxneg : x < 0 := lt_of_le_of_ne (le_of_not_gt hn) hx
    rw [candidate_boundaryInverse_eq_zero X hX ε h hε hh hh1 x hxneg, mul_zero]

end
end CandidateLaplaceScratch
```
