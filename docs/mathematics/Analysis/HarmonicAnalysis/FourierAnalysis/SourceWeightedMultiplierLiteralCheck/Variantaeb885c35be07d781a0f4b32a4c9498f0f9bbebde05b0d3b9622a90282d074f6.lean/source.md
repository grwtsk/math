# Complete source: GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.SourceWeightedMultiplierLiteralCheck.Variantaeb885c35be07d781a0f4b32a4c9498f0f9bbebde05b0d3b9622a90282d074f6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2de3312b9146a34721327d8d2c30e367efbd3d7f` · SHA-256 `76edfaf2b5cf3b092f658583249581d2d7d1887e03618d46a157f0ebe49bcfff`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.HarmonicAnalysis.FourierAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.BoundaryMultiplier.Variant5afa63be4be6882a0c1bbe8a581fd92107e1c1dbefe434e7dea2a776e97dd5db","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5afa63be4be6882a0c1bbe8a581fd92107e1c1dbefe434e7dea2a776e97dd5db","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.FourierAnalysis.SourceCorpus.BoundaryMultiplier.Variant5afa63be4be6882a0c1bbe8a581fd92107e1c1dbefe434e7dea2a776e97dd5db","mathematical_subject":"Analysis.FourierAnalysis","original_sha256":"5afa63be4be6882a0c1bbe8a581fd92107e1c1dbefe434e7dea2a776e97dd5db","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/signed-covariance-core/source-weighted-multiplier-literal-check.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.SourceFilterDeltaConvergence
import FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExtension
import Mathlib.Analysis.Fourier.LpSpace

/-! The exact source-weighted multiplier as a bounded operator on full-line L2. -/

namespace GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.BoundaryMultiplier.Variant5afa63be4be6882a0c1bbe8a581fd92107e1c1dbefe434e7dea2a776e97dd5db

set_option autoImplicit false
namespace SourceWeightedMultiplierScratch
open MeasureTheory FourierTransform Complex
open FormalResearch.RiemannHypothesis.SourceComparison
open SourceFilterDelta SourceFilterHorizontalRatio HalfLineExtension
noncomputable section

/-- The actual boundary multiplier retains the prescribed source filter and linear factor. -/
def boundaryMultiplier (ε h t : ℝ) : ℂ :=
  (1 / 2 + (t : ℂ) * I) * boundaryFilter ε h t

/-- One explicit source-only constant bounds the complete weighted multiplier. -/
theorem boundaryMultiplier_norm_le (ε h t : ℝ) (hε : 0 < ε)
    (hsmall : ε ≤ 1 / 4) (hh : 0 ≤ h) :
    ‖boundaryMultiplier ε h t‖ ≤ (4 / 3 : ℝ) * Real.exp (1 / 4) := by
  let R : ℂ := MobiusSourceFilterQuotient.W ((t : ℂ) * I) /
    MobiusSourceFilterQuotient.W ((ε : ℂ) + (t : ℂ) * I)
  let S : ℂ := (1 + (h : ℂ) * ((ε : ℂ) + (t : ℂ) * I))⁻¹ ^ 6
  let d : ℂ := 1 + (ε : ℂ) + (t : ℂ) * I
  have hR : ‖R‖ ≤ (4 / 3 : ℝ) * Real.exp (1 / 4) :=
    W_horizontal_uniform_bound ε t hε hsmall
  have hre : 1 ≤ (1 + (h : ℂ) * ((ε : ℂ) + (t : ℂ) * I)).re := by
    simp only [Complex.add_re, Complex.one_re, Complex.mul_re, Complex.ofReal_re,
      Complex.ofReal_im, Complex.I_re, Complex.I_im, mul_zero, zero_mul, sub_zero,
      add_zero]
    nlinarith
  have hs : 1 ≤ ‖1 + (h : ℂ) * ((ε : ℂ) + (t : ℂ) * I)‖ :=
    hre.trans (Complex.re_le_norm _)
  have hS : ‖S‖ ≤ 1 := by
    dsimp only [S]
    rw [norm_pow, norm_inv]
    apply pow_le_one₀ (inv_nonneg.mpr (norm_nonneg _))
    simpa using one_div_le_one_div_of_le (by norm_num : (0 : ℝ) < 1) hs
  have hd : 0 < ‖d‖ := by
    have hr := Complex.re_le_norm d
    have hdre : d.re = 1 + ε := by simp [d]
    rw [hdre] at hr
    linarith
  have ha : ‖(1 / 2 : ℂ) + (t : ℂ) * I‖ ≤ ‖d‖ := by
    apply (sq_le_sq₀ (norm_nonneg _) (norm_nonneg _)).mp
    simp only [← Complex.normSq_eq_norm_sq, Complex.normSq_apply, d]
    simp
    nlinarith
  have hrs : ‖R‖ * ‖S‖ ≤ (4 / 3 : ℝ) * Real.exp (1 / 4) := by
    calc
      _ ≤ ((4 / 3 : ℝ) * Real.exp (1 / 4)) * 1 :=
        mul_le_mul hR hS (norm_nonneg _) (by positivity)
      _ = _ := mul_one _
  change ‖((1 / 2 : ℂ) + (t : ℂ) * I) * (R * S / d)‖ ≤ _
  rw [norm_mul, norm_div, norm_mul]
  calc
    _ ≤ ‖(1 / 2 : ℂ) + (t : ℂ) * I‖ *
        (((4 / 3 : ℝ) * Real.exp (1 / 4)) / ‖d‖) := by gcongr
    _ = ((4 / 3 : ℝ) * Real.exp (1 / 4)) *
        (‖(1 / 2 : ℂ) + (t : ℂ) * I‖ / ‖d‖) := by ring
    _ ≤ ((4 / 3 : ℝ) * Real.exp (1 / 4)) * 1 :=
      mul_le_mul_of_nonneg_left ((div_le_one hd).mpr ha) (by positivity)
    _ = _ := mul_one _

private theorem boundaryMultiplier_measurable (ε h : ℝ) : Measurable (boundaryMultiplier ε h) := by
  have hw : Continuous MobiusSourceFilterQuotient.W :=
    (Complex.continuous_exp.comp continuous_neg).mul FixedLaplaceBoundary.V_continuous
  unfold boundaryMultiplier boundaryFilter
  fun_prop

/-- The actual angular multiplier times an L2 representative genuinely belongs to L2. -/
theorem frequencyProduct_memLp (ε h : ℝ) (hε : 0 < ε) (hsmall : ε ≤ 1 / 4)
    (hh : 0 ≤ h) (f : FullH) :
    MemLp (fun ξ : ℝ => boundaryMultiplier ε h (2 * Real.pi * ξ) * f ξ) 2 volume := by
  refine (Lp.memLp f).of_le_mul (c := (4 / 3 : ℝ) * Real.exp (1 / 4)) ?_ ?_
  · exact ((boundaryMultiplier_measurable ε h).comp
      (by fun_prop : Measurable (fun ξ : ℝ => 2 * Real.pi * ξ))).aestronglyMeasurable.mul
      (Lp.aestronglyMeasurable f)
  · filter_upwards [] with ξ
    rw [norm_mul]
    exact mul_le_mul_of_nonneg_right (boundaryMultiplier_norm_le ε h _ hε hsmall hh)
      (norm_nonneg _)

/-- The genuine frequency-space product vector used to construct the source multiplier. -/
private def frequencyVector (ε h : ℝ) (hε : 0 < ε) (hsmall : ε ≤ 1 / 4)
    (hh : 0 ≤ h) (f : FullH) : FullH :=
  (frequencyProduct_memLp ε h hε hsmall hh f).toLp
    (fun ξ : ℝ => boundaryMultiplier ε h (2 * Real.pi * ξ) * f ξ)

private theorem frequencyVector_ae (ε h : ℝ) (hε : 0 < ε) (hsmall : ε ≤ 1 / 4)
    (hh : 0 ≤ h) (f : FullH) :
    frequencyVector ε h hε hsmall hh f =ᵐ[volume]
      (fun ξ : ℝ => boundaryMultiplier ε h (2 * Real.pi * ξ) * f ξ) :=
  (frequencyProduct_memLp ε h hε hsmall hh f).coeFn_toLp

private theorem frequencyVector_norm_le (ε h : ℝ) (hε : 0 < ε) (hsmall : ε ≤ 1 / 4)
    (hh : 0 ≤ h) (f : FullH) :
    ‖frequencyVector ε h hε hsmall hh f‖ ≤ ((4 / 3 : ℝ) * Real.exp (1 / 4)) * ‖f‖ := by
  apply Lp.norm_le_mul_norm_of_ae_le_mul
  filter_upwards [frequencyVector_ae ε h hε hsmall hh f] with ξ hξ
  rw [hξ, norm_mul]
  exact mul_le_mul_of_nonneg_right (boundaryMultiplier_norm_le ε h _ hε hsmall hh)
    (norm_nonneg _)

/-- Multiplication by the actual source boundary weight is a continuous linear map on L2. -/
def frequencyMultiplier (ε h : ℝ) (hε : 0 < ε) (hsmall : ε ≤ 1 / 4)
    (hh : 0 ≤ h) : FullH →L[ℂ] FullH :=
  LinearMap.mkContinuous
    { toFun := frequencyVector ε h hε hsmall hh
      map_add' := by
        intro f g
        apply Lp.ext
        filter_upwards [frequencyVector_ae ε h hε hsmall hh (f + g),
          frequencyVector_ae ε h hε hsmall hh f, frequencyVector_ae ε h hε hsmall hh g,
          Lp.coeFn_add f g,
          Lp.coeFn_add (frequencyVector ε h hε hsmall hh f)
            (frequencyVector ε h hε hsmall hh g)] with ξ hfg hf hg ha ho
        simp only [Pi.add_apply] at ha ho
        rw [hfg, ho, hf, hg, ha]
        exact mul_add _ _ _
      map_smul' := by
        intro c f
        apply Lp.ext
        filter_upwards [frequencyVector_ae ε h hε hsmall hh (c • f),
          frequencyVector_ae ε h hε hsmall hh f, Lp.coeFn_smul c f,
          Lp.coeFn_smul c (frequencyVector ε h hε hsmall hh f)] with ξ hcf hf hi ho
        simp only [Pi.smul_apply] at hi ho
        simp only [RingHom.id_apply]
        rw [hcf, ho, hf, hi]
        simp only [smul_eq_mul]
        ring }
    ((4 / 3 : ℝ) * Real.exp (1 / 4)) (frequencyVector_norm_le ε h hε hsmall hh)

/-- The continuous linear map retains the exact frequency product on AE representatives. -/
theorem frequencyMultiplier_ae (ε h : ℝ) (hε : 0 < ε) (hsmall : ε ≤ 1 / 4)
    (hh : 0 ≤ h) (f : FullH) :
    frequencyMultiplier ε h hε hsmall hh f =ᵐ[volume]
      (fun ξ : ℝ => boundaryMultiplier ε h (2 * Real.pi * ξ) * f ξ) :=
  frequencyVector_ae ε h hε hsmall hh f

/-- The actual source multiplier on full-line vectors, conjugated by the L2 Fourier isometry. -/
def sourceMultiplier (ε h : ℝ) (hε : 0 < ε) (hsmall : ε ≤ 1 / 4)
    (hh : 0 ≤ h) : FullH →L[ℂ] FullH :=
  fourierInvCLM ℂ FullH ∘L frequencyMultiplier ε h hε hsmall hh ∘L fourierCLM ℂ FullH

/-- The actual output's L2 Fourier representative equals the original angular source product. -/
theorem sourceMultiplier_fourier_ae (ε h : ℝ) (hε : 0 < ε) (hsmall : ε ≤ 1 / 4)
    (hh : 0 ≤ h) (f : FullH) :
    (𝓕 (sourceMultiplier ε h hε hsmall hh f) : FullH) =ᵐ[volume]
      (fun ξ : ℝ => boundaryMultiplier ε h (2 * Real.pi * ξ) * (𝓕 f : FullH) ξ) := by
  simp only [sourceMultiplier, ContinuousLinearMap.comp_apply, fourierInvCLM_apply,
    fourierCLM_apply, fourier_fourierInv_eq]
  exact frequencyMultiplier_ae ε h hε hsmall hh (𝓕 f)

/-- The exact source-weighted operator has one parameter-uniform full-line norm bound. -/
theorem sourceMultiplier_norm_le (ε h : ℝ) (hε : 0 < ε) (hsmall : ε ≤ 1 / 4)
    (hh : 0 ≤ h) (f : FullH) :
    ‖sourceMultiplier ε h hε hsmall hh f‖ ≤ ((4 / 3 : ℝ) * Real.exp (1 / 4)) * ‖f‖ := by
  have hn : ‖sourceMultiplier ε h hε hsmall hh f‖ =
      ‖frequencyMultiplier ε h hε hsmall hh (𝓕 f)‖ :=
    (Lp.fourierTransformₗᵢ ℝ ℂ).symm.norm_map _
  rw [hn]
  change ‖frequencyVector ε h hε hsmall hh (𝓕 f)‖ ≤ _
  simpa only [Lp.norm_fourier_eq] using frequencyVector_norm_le ε h hε hsmall hh (𝓕 f)

end
end SourceWeightedMultiplierScratch

noncomputable section
open MeasureTheory FourierTransform Complex
open SourceWeightedMultiplierScratch
open FormalResearch.RiemannHypothesis.SourceComparison
open SourceFilterDelta HalfLineExtension

example (ε h t : ℝ) : boundaryMultiplier ε h t =
    (1 / 2 + (t : ℂ) * I) * boundaryFilter ε h t := rfl

example (ε h t : ℝ) (hε : 0 < ε) (hsmall : ε ≤ 1 / 4) (hh : 0 ≤ h) :
    ‖boundaryMultiplier ε h t‖ ≤ (4 / 3 : ℝ) * Real.exp (1 / 4) :=
  boundaryMultiplier_norm_le ε h t hε hsmall hh

variable (ε h : ℝ) (hε : 0 < ε) (hsmall : ε ≤ 1 / 4) (hh : 0 ≤ h)

example (f : FullH) :
    MemLp (fun ξ : ℝ => boundaryMultiplier ε h (2 * Real.pi * ξ) * f ξ) 2 volume :=
  frequencyProduct_memLp ε h hε hsmall hh f

example : FullH →L[ℂ] FullH := frequencyMultiplier ε h hε hsmall hh

example (f : FullH) : frequencyMultiplier ε h hε hsmall hh f =ᵐ[volume]
    (fun ξ : ℝ => boundaryMultiplier ε h (2 * Real.pi * ξ) * f ξ) :=
  frequencyMultiplier_ae ε h hε hsmall hh f

example : sourceMultiplier ε h hε hsmall hh =
    fourierInvCLM ℂ FullH ∘L frequencyMultiplier ε h hε hsmall hh ∘L fourierCLM ℂ FullH := rfl

example (f : FullH) : (𝓕 (sourceMultiplier ε h hε hsmall hh f) : FullH) =ᵐ[volume]
    (fun ξ : ℝ => boundaryMultiplier ε h (2 * Real.pi * ξ) * (𝓕 f : FullH) ξ) :=
  sourceMultiplier_fourier_ae ε h hε hsmall hh f

example (f : FullH) :
    ‖sourceMultiplier ε h hε hsmall hh f‖ ≤ ((4 / 3 : ℝ) * Real.exp (1 / 4)) * ‖f‖ :=
  sourceMultiplier_norm_le ε h hε hsmall hh f

end
```
