# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.ThetaVariation.Variantb4bb57b998a7100ab4657be24a60cee99378514ed927a2b1235ddb89ec63372b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d53a2c43c1827ea04aad4b3940771d1767928b39` · SHA-256 `13d5d65b8cf5b0bacd94589e99df9a6d63d907e76b698cab9ce6966e0868de49`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.MajorantPrimitiveHasDerivAt.Variant78d317ac40eb5dd99d2f06109806e7fe1d3ed2d8fe0218ad983cb4db40bfdf0f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"78d317ac40eb5dd99d2f06109806e7fe1d3ed2d8fe0218ad983cb4db40bfdf0f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.MajorantPrimitiveHasDerivAt.Variant78d317ac40eb5dd99d2f06109806e7fe1d3ed2d8fe0218ad983cb4db40bfdf0f","mathematical_subject":"Analysis.Integration","original_sha256":"78d317ac40eb5dd99d2f06109806e7fe1d3ed2d8fe0218ad983cb4db40bfdf0f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/arithmetic-routes/ThetaVariation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.ThetaSamplingError


namespace GRWTSK.Analysis.RealAnalysis.Integration.MajorantPrimitiveHasDerivAt.Variant78d317ac40eb5dd99d2f06109806e7fe1d3ed2d8fe0218ad983cb4db40bfdf0f

set_option autoImplicit false

namespace ThetaVariationScratch

open MeasureTheory
open FormalResearch.RiemannHypothesis.SourceComparison
open SourceSampling SourceSamplingDerivative ThetaSamplingError ThetaKernelTransport

noncomputable section

private theorem majorant_primitive_hasDerivAt (q C x : ℝ) (hq : 0 < q) (hx : 0 < x) :
    HasDerivAt (fun t : ℝ ↦ -2 * C / Real.sqrt (q * t))
      (q * (C / (q * x * Real.sqrt (q * x)))) x := by
  have hprod : q * x ≠ 0 := (mul_pos hq hx).ne'
  have hsqrt : Real.sqrt (q * x) ≠ 0 := (Real.sqrt_pos.mpr (mul_pos hq hx)).ne'
  have hm : HasDerivAt (fun t : ℝ ↦ q * t) q x := by
    simpa only [id_eq, mul_one] using (hasDerivAt_id x).const_mul q
  apply ((hasDerivAt_const x (-2 * C)).div (hm.sqrt hprod) hsqrt).congr_deriv
  field_simp [hq.ne', hx.ne', hsqrt]
  ring_nf
  rw [Real.sq_sqrt (mul_pos hx hq).le]

private theorem majorant_integrableOn (q C : ℝ) (N : ℕ) (hq : 0 < q) :
    IntegrableOn (fun t : ℝ ↦ q * (C / (q * t * Real.sqrt (q * t))))
      (Set.Icc 1 (N : ℝ)) := by
  apply ContinuousOn.integrableOn_Icc
  apply continuousOn_const.mul
  apply continuousOn_const.div
  · exact (continuousOn_const.mul continuousOn_id).mul
      ((continuousOn_const.mul continuousOn_id).sqrt)
  · intro t ht
    have hqt : 0 < q * t := mul_pos hq (lt_of_lt_of_le zero_lt_one ht.1)
    exact mul_ne_zero hqt.ne' (Real.sqrt_pos.mpr hqt).ne'

private theorem majorant_integral_le (q C : ℝ) (N : ℕ) (hq : 0 < q) (hC : 0 ≤ C)
    (hN : 1 ≤ N) :
    (∫ t in (1 : ℝ)..(N : ℝ), q * (C / (q * t * Real.sqrt (q * t)))) ≤
      2 * C / Real.sqrt q := by
  have hNr : (1 : ℝ) ≤ N := by exact_mod_cast hN
  have hi := (intervalIntegrable_iff_integrableOn_Icc_of_le hNr).mpr
    (majorant_integrableOn q C N hq)
  have he := intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun t ht ↦ majorant_primitive_hasDerivAt q C t hq
      (lt_of_lt_of_le zero_lt_one ((Set.uIcc_of_le hNr ▸ ht).1))) hi
  rw [he]
  simp only [mul_one, neg_mul, neg_div]
  have hnonneg : 0 ≤ 2 * C / Real.sqrt (q * (N : ℝ)) := by positivity
  linarith

theorem scaledSampling_variation_le (A q : ℝ) (N : ℕ)
    (hA : 1 ≤ A) (hq : 0 < q) (hN : 1 ≤ N) :
    (∫ t in (1 : ℝ)..(N : ℝ),
      |deriv (fun t : ℝ ↦ sourceSamplingKernel A (q * t)) t|) ≤
      2 * (4 + 10 * Real.sqrt (65 / 3) / A + 4 * (65 / (3 * A ^ 2))) / Real.sqrt q := by
  let C : ℝ := 4 + 10 * Real.sqrt (65 / 3) / A + 4 * (65 / (3 * A ^ 2))
  have hA0 : 0 < A := by linarith
  have hC : 0 ≤ C := by dsimp [C]; positivity
  have hNr : (1 : ℝ) ≤ N := by exact_mod_cast hN
  have hd := (intervalIntegrable_iff_integrableOn_Icc_of_le hNr).mpr
    (scaledSampling_derivative_integrableOn A q N hA hq)
  have hm := (intervalIntegrable_iff_integrableOn_Icc_of_le hNr).mpr
    (majorant_integrableOn q C N hq)
  calc
    _ ≤ ∫ t in (1 : ℝ)..(N : ℝ), q * (C / (q * t * Real.sqrt (q * t))) := by
      apply intervalIntegral.integral_mono_on hNr hd.abs hm
      intro t ht
      have ht0 : 0 < t := lt_of_lt_of_le zero_lt_one ht.1
      rw [(scaledSampling_hasDerivAt A q t hA hq ht0).deriv, abs_mul, abs_of_pos hq]
      exact mul_le_mul_of_nonneg_left
        (sourceSamplingKernel_derivative_abs_le A (q * t) hA (mul_pos hq ht0)) hq.le
    _ ≤ _ := majorant_integral_le q C N hq hC hN

theorem thetaKernel_sub_integral_abs_le_explicit (A : ℝ) (q : ℕ)
    (hA : 1 ≤ A) (hq : 1 ≤ q) :
    |thetaKernel A q -
      (∫ t in (1 : ℝ)..(⌊Real.exp (2 * A)⌋₊ + 1 : ℕ),
        sourceSamplingKernel A ((q : ℝ) * t))| ≤
      2 * (4 + 10 * Real.sqrt (65 / 3) / A + 4 * (65 / (3 * A ^ 2))) /
        Real.sqrt (q : ℝ) := by
  have hq0 : (0 : ℝ) < q := by exact_mod_cast (show 0 < q by omega)
  let N := ⌊Real.exp (2 * A)⌋₊ + 1
  have hN : 1 ≤ N := by dsimp [N]; omega
  rw [thetaKernel_eq_padded_sum A q hq]
  have he := SamplingError.abs_sum_sub_integral_le
    (fun t : ℝ ↦ sourceSamplingKernel A ((q : ℝ) * t)) N hN
    (fun t ht ↦ (scaledSampling_hasDerivAt A q t hA hq0
      (lt_of_lt_of_le zero_lt_one ht.1)).differentiableAt)
    (scaledSampling_derivative_integrableOn A q N hA hq0)
    (scaledSampling_endpoint_zero A q hq)
  exact he.trans (scaledSampling_variation_le A q N hA hq0 hN)

end
end ThetaVariationScratch
```
