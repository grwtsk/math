# Complete source: GRWTSK.Topology.GeneralTopology.SourceFilterDeltaConvergence.Variant7f5f443bbb4428aa9803d75ef85afa8353c5950660ceb279c9d624487bcb2f08

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `782953b3bfe64b11b9cf37b7799f701a588b97f7` · SHA-256 `67f57b2c9f0573d93ae74fd34948ea0f085d30d0fafb441fe3716defe01a9f75`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.WContinuous.Variantad95932e2fcf9b5734b4fd371f3039a08e3779bbe57f15e2d44c49ac4a6c9089","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ad95932e2fcf9b5734b4fd371f3039a08e3779bbe57f15e2d44c49ac4a6c9089","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.WContinuous.Variantad95932e2fcf9b5734b4fd371f3039a08e3779bbe57f15e2d44c49ac4a6c9089","mathematical_subject":"Topology.GeneralTopology","original_sha256":"ad95932e2fcf9b5734b4fd371f3039a08e3779bbe57f15e2d44c49ac4a6c9089","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/source-filter-global/SourceFilterDeltaConvergence.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.SourceFilterDelta
import FormalResearch.RiemannHypothesis.SourceComparison.FixedLaplaceBoundary
import FormalResearch.RiemannHypothesis.SourceComparison.SourceFilterHorizontalRatio
import Mathlib.Analysis.SpecialFunctions.ImproperIntegrals
/-! Dominated convergence of the actual source-only boundary distortion. -/

namespace GRWTSK.Topology.GeneralTopology.WContinuous.Variantad95932e2fcf9b5734b4fd371f3039a08e3779bbe57f15e2d44c49ac4a6c9089

set_option autoImplicit false
namespace SourceFilterDeltaConvergenceScratch
open MeasureTheory Set Filter
open scoped Topology
open FormalResearch.RiemannHypothesis.SourceComparison
open FixedSourceFilter MobiusSourceFilterQuotient SourceFilterDelta FixedLaplaceBoundary
open SourceFilterHorizontalRatio
noncomputable section

private theorem W_continuous : Continuous W :=
  (Complex.continuous_exp.comp continuous_neg).mul V_continuous

private theorem boundary_denominator_ne_zero (t : ℝ) : (1 + (t : ℂ) * Complex.I) ≠ 0 := by
  intro h
  have hr := congrArg Complex.re h
  norm_num at hr

private theorem boundary_denominator_norm_sq (t : ℝ) :
    ‖1 + (t : ℂ) * Complex.I‖ ^ 2 = 1 + t ^ 2 := by
  rw [← Complex.normSq_eq_norm_sq]
  simp [Complex.normSq_apply, pow_two]

/-- The actual boundary source filter has a fixed reciprocal-frequency bound on the small shifts. -/
theorem boundaryFilter_norm_le (ε h t : ℝ) (hε : 0 < ε) (hsmall : ε ≤ 1 / 4)
    (hh : 0 ≤ h) :
    ‖boundaryFilter ε h t‖ ≤ 2 * Real.exp 1 / ‖1 + (t : ℂ) * Complex.I‖ := by
  have hε1 : ε ≤ 1 := by linarith
  have hd : (1 / 2 : ℝ) ≤ 1 - 4 * ε ^ 2 := by nlinarith [sq_nonneg ε]
  have hratio := W_horizontal_ratio_bound ε t hε hsmall
  have hc : Real.exp ε / (1 - 4 * ε ^ 2) ≤ 2 * Real.exp 1 := by
    have h := div_le_div₀ (Real.exp_pos 1).le (Real.exp_le_exp.mpr hε1)
      (by norm_num : (0 : ℝ) < 1 / 2) hd
    simpa [div_div, div_eq_mul_inv, mul_comm] using h
  have hsreal : 1 ≤ (1 + (h : ℂ) * ((ε : ℂ) + (t : ℂ) * Complex.I)).re := by
    simp only [Complex.add_re, Complex.one_re, Complex.mul_re, Complex.ofReal_re,
      Complex.ofReal_im, Complex.I_re, Complex.I_im, mul_zero, sub_zero, add_zero,
      zero_mul]
    nlinarith
  have hs : 1 ≤ ‖1 + (h : ℂ) * ((ε : ℂ) + (t : ℂ) * Complex.I)‖ :=
    hsreal.trans (Complex.re_le_norm _)
  have hsinv : ‖(1 + (h : ℂ) * ((ε : ℂ) + (t : ℂ) * Complex.I))⁻¹ ^ 6‖ ≤ 1 := by
    rw [norm_pow, norm_inv]
    apply pow_le_one₀ (inv_nonneg.mpr (norm_nonneg _))
    simpa using one_div_le_one_div_of_le (by norm_num : (0 : ℝ) < 1) hs
  have hdpos : 0 < ‖1 + (t : ℂ) * Complex.I‖ :=
    norm_pos_iff.mpr (boundary_denominator_ne_zero t)
  have hden : ‖1 + (t : ℂ) * Complex.I‖ ≤
      ‖1 + (ε : ℂ) + (t : ℂ) * Complex.I‖ := by
    apply (sq_le_sq₀ (norm_nonneg _) (norm_nonneg _)).mp
    rw [boundary_denominator_norm_sq, ← Complex.normSq_eq_norm_sq]
    simp only [Complex.normSq_apply, Complex.add_re, Complex.one_re, Complex.mul_re,
      Complex.ofReal_re, Complex.ofReal_im, Complex.I_re, Complex.I_im,
      mul_zero, sub_zero, add_zero, Complex.add_im, Complex.one_im,
      Complex.mul_im, mul_one, zero_add]
    nlinarith
  rw [boundaryFilter, norm_div, norm_mul]
  apply div_le_div₀ (by positivity : (0 : ℝ) ≤ 2 * Real.exp 1) _ hdpos hden
  calc
    _ ≤ (2 * Real.exp 1) * 1 :=
      mul_le_mul (hratio.trans hc) hsinv (norm_nonneg _) (by positivity)
    _ = _ := mul_one _

/-- The squared full boundary error is bounded by one integrable Cauchy weight. -/
theorem boundaryFilter_error_sq_le (ε h t : ℝ) (hε : 0 < ε) (hsmall : ε ≤ 1 / 4)
    (hh : 0 ≤ h) :
    ‖(1 + (t : ℂ) * Complex.I)⁻¹ - boundaryFilter ε h t‖ ^ 2 ≤
      (1 + 2 * Real.exp 1) ^ 2 * (1 + t ^ 2)⁻¹ := by
  have hn := boundaryFilter_norm_le ε h t hε hsmall hh
  have hdp : 0 < ‖1 + (t : ℂ) * Complex.I‖ :=
    norm_pos_iff.mpr (boundary_denominator_ne_zero t)
  have hbound : ‖(1 + (t : ℂ) * Complex.I)⁻¹ - boundaryFilter ε h t‖ ≤
      (1 + 2 * Real.exp 1) / ‖1 + (t : ℂ) * Complex.I‖ := by
    calc
      _ ≤ ‖(1 + (t : ℂ) * Complex.I)⁻¹‖ + ‖boundaryFilter ε h t‖ := norm_sub_le _ _
      _ ≤ ‖1 + (t : ℂ) * Complex.I‖⁻¹ +
          2 * Real.exp 1 / ‖1 + (t : ℂ) * Complex.I‖ := by
        rw [norm_inv]
        exact add_le_add le_rfl hn
      _ = _ := by ring
  have hs := (sq_le_sq₀ (norm_nonneg _) (by positivity)).mpr hbound
  simpa only [div_eq_mul_inv, mul_pow, inv_pow, boundary_denominator_norm_sq] using hs

/-- Every full squared boundary error is genuinely integrable before defining its distortion. -/
theorem boundaryFilter_error_integrable (ε h : ℝ) (hε : 0 < ε) (hsmall : ε ≤ 1 / 4)
    (hh : 0 ≤ h) :
    Integrable (fun t : ℝ =>
      ‖(1 + (t : ℂ) * Complex.I)⁻¹ - boundaryFilter ε h t‖ ^ 2) := by
  have hm : Measurable (fun t : ℝ =>
      ‖(1 + (t : ℂ) * Complex.I)⁻¹ - boundaryFilter ε h t‖ ^ 2) := by
    unfold boundaryFilter
    have hw := W_continuous.measurable
    fun_prop
  apply (integrable_inv_one_add_sq.const_mul ((1 + 2 * Real.exp 1) ^ 2)).mono'
    hm.aestronglyMeasurable
  filter_upwards [] with t
  simpa only [Real.norm_eq_abs, abs_sq] using
    boundaryFilter_error_sq_le ε h t hε hsmall hh

/-- The prescribed normalized full-axis squared boundary distortion. -/
def deltaSq (ε h : ℝ) : ℝ :=
  (1 / (2 * Real.pi)) * (∫ t : ℝ,
    ‖(1 + (t : ℂ) * Complex.I)⁻¹ - boundaryFilter ε h t‖ ^ 2)

/-- The actual source-only distortion is the square root of its normalized squared integral. -/
def delta (ε h : ℝ) : ℝ := Real.sqrt (deltaSq ε h)

/-- At every nonzero boundary source value, the full shifted and smoothed filter has its true
limit. -/
theorem boundaryFilter_tendsto (ε h : ℕ → ℝ)
    (hε : Tendsto ε atTop (nhds 0)) (hh : Tendsto h atTop (nhds 0))
    (t : ℝ) (ht : W ((t : ℂ) * Complex.I) ≠ 0) :
    Tendsto (fun j => boundaryFilter (ε j) (h j) t) atTop
      (nhds ((1 + (t : ℂ) * Complex.I)⁻¹)) := by
  have hec : Tendsto (fun j => (ε j : ℂ)) atTop (nhds 0) :=
    Complex.continuous_ofReal.tendsto 0 |>.comp hε
  have hhc : Tendsto (fun j => (h j : ℂ)) atTop (nhds 0) :=
    Complex.continuous_ofReal.tendsto 0 |>.comp hh
  have hz : Tendsto (fun j => (ε j : ℂ) + (t : ℂ) * Complex.I) atTop
      (nhds ((t : ℂ) * Complex.I)) := by
    simpa using hec.add tendsto_const_nhds
  have hw := W_continuous.continuousAt.tendsto.comp hz
  have hr := (tendsto_const_nhds : Tendsto (fun _ : ℕ => W ((t : ℂ) * Complex.I))
    atTop (nhds (W ((t : ℂ) * Complex.I)))).div hw ht
  have hs : Tendsto (fun j => 1 + (h j : ℂ) * ((ε j : ℂ) + (t : ℂ) * Complex.I))
      atTop (nhds (1 : ℂ)) := by
    simpa using (tendsto_const_nhds : Tendsto (fun _ : ℕ => (1 : ℂ))
      atTop (nhds 1)).add (hhc.mul hz)
  have hd : Tendsto (fun j => 1 + (ε j : ℂ) + (t : ℂ) * Complex.I) atTop
      (nhds (1 + (t : ℂ) * Complex.I)) := by
    simpa [add_assoc] using (tendsto_const_nhds : Tendsto (fun _ : ℕ => (1 : ℂ))
      atTop (nhds 1)).add hz
  have hall := (hr.mul ((hs.inv₀ one_ne_zero).pow 6)).div hd
    (boundary_denominator_ne_zero t)
  simp only [div_self ht, inv_one, one_pow, mul_one, one_div] at hall
  exact hall.congr' (Eventually.of_forall (fun _ => rfl))

/-- Arbitrary vanishing positive shifts and nonnegative smoothing give vanishing squared
distortion. -/
theorem deltaSq_tendsto_zero (ε h : ℕ → ℝ)
    (hεpos : ∀ j, 0 < ε j) (hεsmall : ∀ j, ε j ≤ 1 / 4) (hhpos : ∀ j, 0 ≤ h j)
    (hε : Tendsto ε atTop (nhds 0)) (hh : Tendsto h atTop (nhds 0)) :
    Tendsto (fun j => deltaSq (ε j) (h j)) atTop (nhds 0) := by
  have hint : Tendsto (fun j => ∫ t : ℝ,
      ‖(1 + (t : ℂ) * Complex.I)⁻¹ - boundaryFilter (ε j) (h j) t‖ ^ 2)
      atTop (nhds (∫ _t : ℝ, (0 : ℝ))) := by
    apply tendsto_integral_filter_of_dominated_convergence
      (fun t : ℝ => (1 + 2 * Real.exp 1) ^ 2 * (1 + t ^ 2)⁻¹)
    · exact Eventually.of_forall (fun j => (boundaryFilter_error_integrable
        (ε j) (h j) (hεpos j) (hεsmall j) (hhpos j)).aestronglyMeasurable)
    · filter_upwards [] with j
      filter_upwards [] with t
      simpa only [Real.norm_eq_abs, abs_sq] using
        boundaryFilter_error_sq_le (ε j) (h j) t (hεpos j) (hεsmall j) (hhpos j)
    · exact integrable_inv_one_add_sq.const_mul _
    · filter_upwards [boundaryW_ae_ne_zero] with t ht
      have hc : Tendsto (fun _ : ℕ => (1 + (t : ℂ) * Complex.I)⁻¹) atTop
          (nhds ((1 + (t : ℂ) * Complex.I)⁻¹)) := tendsto_const_nhds
      have hlim := (hc.sub (boundaryFilter_tendsto ε h hε hh t ht)).norm.pow 2
      simpa using hlim
  have hscaled := hint.const_mul (1 / (2 * Real.pi))
  simpa only [deltaSq, integral_zero, mul_zero] using hscaled

/-- The actual source-only distortion tends to zero along every admitted pair of vanishing
sequences. -/
theorem delta_tendsto_zero (ε h : ℕ → ℝ)
    (hεpos : ∀ j, 0 < ε j) (hεsmall : ∀ j, ε j ≤ 1 / 4) (hhpos : ∀ j, 0 ≤ h j)
    (hε : Tendsto ε atTop (nhds 0)) (hh : Tendsto h atTop (nhds 0)) :
    Tendsto (fun j => delta (ε j) (h j)) atTop (nhds 0) := by
  simpa only [delta, Real.sqrt_zero, Function.comp_def] using
    (Real.continuous_sqrt.tendsto 0).comp
      (deltaSq_tendsto_zero ε h hεpos hεsmall hhpos hε hh)

end
end SourceFilterDeltaConvergenceScratch
```
