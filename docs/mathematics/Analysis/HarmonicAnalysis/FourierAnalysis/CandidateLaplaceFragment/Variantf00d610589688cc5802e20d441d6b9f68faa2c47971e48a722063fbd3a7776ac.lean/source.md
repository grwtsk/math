# Complete source: GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.CandidateLaplaceFragment.Variantf00d610589688cc5802e20d441d6b9f68faa2c47971e48a722063fbd3a7776ac

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dbe55d9c1f2ada79652cd541db8e17584d05e995` · SHA-256 `583da2d0a16c7e1d4a0c1585ab6c5f7a009a3d8947b03a70d7a6bcaf5a7406ab`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.HarmonicAnalysis.FourierAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.CandidateBoundaryInverseFourier.Variant1a8b09fc6159f8c8d65a4521626c2318ca636b144473665195e48858b3b0ec4d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1a8b09fc6159f8c8d65a4521626c2318ca636b144473665195e48858b3b0ec4d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.FourierAnalysis.SourceCorpus.CandidateBoundaryInverseFourier.Variant1a8b09fc6159f8c8d65a4521626c2318ca636b144473665195e48858b3b0ec4d","mathematical_subject":"Analysis.FourierAnalysis","original_sha256":"1a8b09fc6159f8c8d65a4521626c2318ca636b144473665195e48858b3b0ec4d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/controller-realization/CandidateLaplaceFragment.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-! Exact Fourier and Laplace identification of the admitted actual controller. -/

namespace GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.CandidateBoundaryInverseFourier.Variant1a8b09fc6159f8c8d65a4521626c2318ca636b144473665195e48858b3b0ec4d

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
