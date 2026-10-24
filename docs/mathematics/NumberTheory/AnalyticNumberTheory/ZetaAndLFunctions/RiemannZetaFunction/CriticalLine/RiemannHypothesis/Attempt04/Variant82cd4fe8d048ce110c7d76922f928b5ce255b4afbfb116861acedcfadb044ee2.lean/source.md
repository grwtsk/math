# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Attempt04.Variant82cd4fe8d048ce110c7d76922f928b5ce255b4afbfb116861acedcfadb044ee2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f2c8f77ae13589eb90a0aa581e38d2c8c5749faf` · SHA-256 `6ca334873c9da0696ab647204878a13f14fde43964ba39f75bc68b4ec97c29a6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.EdgeCoordinateBounds.Variant91b27bc548bb1da8a4757d5a27c452307030d03fe231ebf2213660ed70c7111c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"91b27bc548bb1da8a4757d5a27c452307030d03fe231ebf2213660ed70c7111c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.EdgeCoordinateBounds.Variant91b27bc548bb1da8a4757d5a27c452307030d03fe231ebf2213660ed70c7111c","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"91b27bc548bb1da8a4757d5a27c452307030d03fe231ebf2213660ed70c7111c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/rh16-continuation-20261006-signed-next/actual-critical-upper-edge-sector/attempt04.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualMovingCriticalIncrement
import SourceActualEdgeCorrelationDerivative

/-!
The literal signed upper-edge kernel retains its zeroth and first source jets.
This local negative kernel exposes the positive actual Mangoldt jump correction
to the continuous drift. No claim of a bound for the complete signed covariance
or of divergence of that covariance follows from this finite sector.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.EdgeCoordinateBounds.Variant91b27bc548bb1da8a4757d5a27c452307030d03fe231ebf2213660ed70c7111c

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceActualCriticalEdgeSector

open MeasureTheory Set
open scoped Interval BigOperators
open SourceActualMovingCriticalIncrement SourceActualEdgeCorrelationDerivative SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateSourceEdgeProfile EstimateSourceEdgeCorrelation

noncomputable section

private theorem edge_coordinate_bounds {A r : ℝ} (hA : 91 ≤ A)
    (hr : 0 ≤ r) (hr1 : r ≤ 1) :
    0 ≤ r / A ∧ r / A ≤ 1 / 10 := by
  have hp : 0 < A := by linarith
  constructor
  · exact div_nonneg hr hp.le
  · apply (div_le_iff₀ hp).2
    linarith

/-- The actual signed endpoint numerator is positive on this full fixed edge. -/
theorem actualEndpointPolynomial_edge_lower {A r : ℝ} (hA : 91 ≤ A)
    (hr : 0 ≤ r) (hr1 : r ≤ 1) :
    100 * r ^ 2 ≤ endpointPolynomial A r := by
  obtain ⟨hq0, hq1⟩ := edge_coordinate_bounds hA hr hr1
  have hs0 : 9 / 10 ≤ 1 - r / A := by linarith
  have hs1 : 1 - r / A ≤ 1 := by linarith
  have hv0 : 19 / 10 ≤ 2 - r / A := by linarith
  have hv1 : 2 - r / A ≤ 2 := by linarith
  have hs2 : 81 / 100 ≤ (1 - r / A) ^ 2 := by nlinarith
  have hv2 : 361 / 100 ≤ (2 - r / A) ^ 2 := by nlinarith
  have hv4 : (2 - r / A) ^ 2 ≤ 4 := by nlinarith
  have hr2 : r ^ 2 ≤ 1 := by nlinarith
  have hg : r ^ 2 * (2 - r / A) ^ 2 ≤ 4 := by nlinarith
  have hb : 36 ≤ 8 * (7 * (1 - r / A) ^ 2 - 1) -
      r ^ 2 * (2 - r / A) ^ 2 / 4 := by nlinarith
  have hm := mul_le_mul hv2 hb (by norm_num : (0 : ℝ) ≤ 36)
    (sq_nonneg (2 - r / A))
  have hh : 100 ≤ (2 - r / A) ^ 2 *
      (8 * (7 * (1 - r / A) ^ 2 - 1) - r ^ 2 * (2 - r / A) ^ 2 / 4) := by
    nlinarith
  have hf := mul_le_mul_of_nonneg_left hh (sq_nonneg r)
  unfold endpointPolynomial
  nlinarith

/-- The ordinary endpoint derivative has its genuine positive edge slope. -/
theorem actualEndpointDerivative_edge_lower {A r : ℝ} (hA : 91 ≤ A)
    (hr : 0 ≤ r) (hr1 : r ≤ 1) :
    200 * r ≤ endpointDerivativePolynomial A r := by
  obtain ⟨hq0, hq1⟩ := edge_coordinate_bounds hA hr hr1
  have hp : 0 < A := by linarith
  have hs0 : 9 / 10 ≤ 1 - r / A := by linarith
  have hs1 : 1 - r / A ≤ 1 := by linarith
  have hv0 : 19 / 10 ≤ 2 - r / A := by linarith
  have hv1 : 2 - r / A ≤ 2 := by linarith
  have hs2 : 81 / 100 ≤ (1 - r / A) ^ 2 := by nlinarith
  have hv4 : (2 - r / A) ^ 2 ≤ 4 := by nlinarith
  have hr2 : r ^ 2 ≤ r := by nlinarith
  have hg0 : 0 ≤ r ^ 2 * (2 - r / A) ^ 2 := by positivity
  have hg4 : r ^ 2 * (2 - r / A) ^ 2 ≤ 4 * r ^ 2 := by nlinarith
  have hbr : 36 ≤ 8 * (7 * (1 - r / A) ^ 2 - 1) -
      r ^ 2 * (2 - r / A) ^ 2 / 4 := by nlinarith
  have hvs0 : 171 / 100 ≤ (2 - r / A) * (1 - r / A) := by
    nlinarith [mul_le_mul hv0 hs0 (by norm_num : (0 : ℝ) ≤ 9 / 10)
      (by linarith : 0 ≤ 2 - r / A)]
  have hvs2 : (2 - r / A) * (1 - r / A) ≤ 2 := by
    nlinarith [mul_le_mul hv1 hs1 (by linarith : 0 ≤ 1 - r / A)
      (by norm_num : (0 : ℝ) ≤ 2)]
  have hfirst : (171 / 100 : ℝ) * 36 ≤ (2 - r / A) * (1 - r / A) *
      (8 * (7 * (1 - r / A) ^ 2 - 1) - r ^ 2 * (2 - r / A) ^ 2 / 4) :=
    mul_le_mul hvs0 hbr (by norm_num) (by positivity)
  have hfirst2 := mul_le_mul_of_nonneg_left hfirst (show 0 ≤ 4 * r by positivity)
  have hdiv : 112 * (1 - r / A) / A ≤ 2 := by
    apply (div_le_iff₀ hp).2
    nlinarith
  have hrvs : r * (2 - r / A) * (1 - r / A) ≤ 2 := by
    nlinarith [mul_le_mul_of_nonneg_left hvs2 hr]
  have hl : -4 ≤ -112 * (1 - r / A) / A -
      r * (2 - r / A) * (1 - r / A) := by
    rw [show -112 * (1 - r / A) / A = -(112 * (1 - r / A) / A) by ring]
    linarith
  have hlast := mul_le_mul_of_nonneg_left hl hg0
  unfold endpointDerivativePolynomial
  nlinarith

/-- Both actual source jets give a strictly negative critical numerator away from the seam. -/
theorem actualEndpointCritical_edge_upper {A r : ℝ} (hA : 91 ≤ A)
    (hr : 0 ≤ r) (hr1 : r ≤ 1) :
    endpointPolynomial A r / 4 - endpointDerivativePolynomial A r / 2 ≤ -50 * r := by
  have hd := actualEndpointDerivative_edge_lower hA hr hr1
  have hp := endpointPolynomial_abs_le A r (by linarith) hr (by linarith)
  have hr2 : r ^ 2 ≤ r := by nlinarith
  have hr4 : r ^ 4 ≤ r ^ 2 := by nlinarith [sq_nonneg (r ^ 2)]
  have hh := (le_abs_self (endpointPolynomial A r)).trans hp
  nlinarith

private theorem overlap_moment (h : ℝ) :
    (∫ r in 0..h, r * (h - r) ^ 2) = h ^ 4 / 12 := by
  have hd (r : ℝ) : HasDerivAt
      (fun r : ℝ => h ^ 2 * r ^ 2 / 2 - 2 * h * r ^ 3 / 3 + r ^ 4 / 4)
      (r * (h - r) ^ 2) r := by
    have hd := (((((hasDerivAt_id r).pow 2).const_mul (h ^ 2)).div_const 2).sub
      ((((hasDerivAt_id r).pow 3).const_mul (2 * h)).div_const 3)).add
        (((hasDerivAt_id r).pow 4).div_const 4)
    exact hd.congr_deriv (by dsimp only [id_eq]; ring)
  rw [intervalIntegral.integral_eq_sub_of_hasDerivAt (fun r _ => hd r)
    ((by fun_prop : Continuous (fun r : ℝ => r * (h - r) ^ 2)).intervalIntegrable _ _)]
  ring

/-- The actual critical coefficient is quantitatively negative in the fixed true support edge. -/
theorem actualCriticalKernel_edge_upper {A h : ℝ} (hA : 91 ≤ A)
    (hh : 0 ≤ h) (hh1 : h ≤ 1) :
    sourceCorrelation explicitSecondDerivative A (2 * A - h) / 4 +
      deriv (sourceCorrelation explicitSecondDerivative A) (2 * A - h) / 2 ≤
        -400 * h ^ 4 / (A ^ 9 * sourceNormalization A) := by
  have h1 : 1 ≤ A := by linarith
  have hhA : h ≤ 2 * A := by linarith
  have hZ := source_normalization_pos A h1
  have hd : 0 < A ^ 9 * sourceNormalization A := by positivity
  have he : sourceCorrelation explicitSecondDerivative A (2 * A - h) / 4 +
      deriv (sourceCorrelation explicitSecondDerivative A) (2 * A - h) / 2 =
      1 / (A ^ 9 * sourceNormalization A) *
        ∫ r in 0..h, (endpointPolynomial A r / 4 - endpointDerivativePolynomial A r / 2) *
          endpointPolynomial A (h - r) := by
    have hs : (∫ r in 0..h,
        (endpointPolynomial A r / 4 - endpointDerivativePolynomial A r / 2) *
          endpointPolynomial A (h - r)) =
        (∫ r in 0..h, endpointPolynomial A r * endpointPolynomial A (h - r)) / 4 -
          (∫ r in 0..h,
            endpointDerivativePolynomial A r * endpointPolynomial A (h - r)) / 2 := by
      have hf : (fun r : ℝ =>
          (endpointPolynomial A r / 4 - endpointDerivativePolynomial A r / 2) *
            endpointPolynomial A (h - r)) =
          fun r => endpointPolynomial A r * endpointPolynomial A (h - r) / 4 -
            endpointDerivativePolynomial A r * endpointPolynomial A (h - r) / 2 := by
        funext r
        ring
      rw [hf, intervalIntegral.integral_sub
        ((endpointProduct_intervalIntegrable A h).div_const 4)
        ((endpointDerivativeProduct_intervalIntegrable A h).div_const 2)]
      rw [intervalIntegral.integral_div, intervalIntegral.integral_div]
    rw [sourceCorrelation_upper_edge A h h1 hh hhA,
      actual_correlation_deriv_upper_edge A h h1 hh hhA, hs]
    ring
  have hm : (∫ r in 0..h,
      (endpointPolynomial A r / 4 - endpointDerivativePolynomial A r / 2) *
        endpointPolynomial A (h - r)) ≤
      ∫ r in 0..h, -5000 * (r * (h - r) ^ 2) := by
    apply intervalIntegral.integral_mono_on hh
      (by
        apply Continuous.intervalIntegrable
        unfold endpointPolynomial endpointDerivativePolynomial
        fun_prop)
      (by apply Continuous.intervalIntegrable; fun_prop)
    intro r hr
    have hq := actualEndpointCritical_edge_upper hA hr.1 (hr.2.trans hh1)
    have hp := actualEndpointPolynomial_edge_lower (r := h - r) hA (by linarith [hr.2])
      (by linarith [hr.1])
    have hs : 0 ≤ endpointPolynomial A (h - r) := by nlinarith [sq_nonneg (h - r)]
    have hx := mul_le_mul_of_nonneg_right hq hs
    have hy := mul_le_mul_of_nonpos_left hp (by linarith [hr.1] : -50 * r ≤ 0)
    nlinarith
  rw [intervalIntegral.integral_const_mul, overlap_moment] at hm
  rw [he]
  have hg := mul_le_mul_of_nonneg_left hm (by positivity : 0 ≤ 1 / (A ^ 9 * sourceNormalization A))
  calc
    _ ≤ 1 / (A ^ 9 * sourceNormalization A) * (-5000 * (h ^ 4 / 12)) := hg
    _ ≤ _ := by
      apply (le_div_iff₀ hd).2
      field_simp
      nlinarith [pow_nonneg hh 4]

end
end FormalResearch.RiemannHypothesis.SourceActualCriticalEdgeSector
```
