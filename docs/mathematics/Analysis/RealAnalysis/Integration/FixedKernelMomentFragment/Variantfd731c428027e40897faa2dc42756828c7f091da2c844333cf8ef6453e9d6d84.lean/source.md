# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.FixedKernelMomentFragment.Variantfd731c428027e40897faa2dc42756828c7f091da2c844333cf8ef6453e9d6d84

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0a19fcaa916f6c3a1f91ccc1531047ea815e3267` · SHA-256 `e244a4d78497d076a882581178ef386b789d52d6f70a312d198051bf4ed0b7cb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.WeightedTranslate.Variant70c0fa5592d48b3106173362cf51556967b553fb3a53466d419578b339847ad9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"70c0fa5592d48b3106173362cf51556967b553fb3a53466d419578b339847ad9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.WeightedTranslate.Variant70c0fa5592d48b3106173362cf51556967b553fb3a53466d419578b339847ad9","mathematical_subject":"Analysis.Integration","original_sha256":"70c0fa5592d48b3106173362cf51556967b553fb3a53466d419578b339847ad9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/spectral-zero-energy/FixedKernelMomentFragment.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}


namespace GRWTSK.Analysis.RealAnalysis.Integration.WeightedTranslate.Variant70c0fa5592d48b3106173362cf51556967b553fb3a53466d419578b339847ad9

namespace FixedKernelMomentScratch

open MeasureTheory Set Real Filter
open scoped Topology
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity CorrelationMoment FixedSourceKernelScratch

noncomputable section
local notation "v" => normalizedTest explicitSecondDerivative 1

private theorem weighted_translate (t r : ℝ) :
    Real.exp (r / 2) * v (t - 1 - r) =
      Real.exp ((t - 1) / 2) *
        (Real.exp ((-1 / 2 : ℝ) * (t - 1 - r)) * v (t - 1 - r)) := by
  rw [← mul_assoc, ← Real.exp_add]
  congr 2
  ring

/-- The full logarithmic Jacobian expression has genuine integrability. -/
theorem weighted_translated_integrable (t : ℝ) :
    Integrable (fun r : ℝ => Real.exp (r / 2) * v (t - 1 - r)) := by
  have hi := ((weighted_normalizedTest_integrable 1 (-1 / 2) le_rfl).comp_sub_left
    (t - 1)).const_mul (Real.exp ((t - 1) / 2))
  simpa only [weighted_translate] using hi

/-- The original negative half-exponential source moment cancels after translation. -/
theorem weighted_translated_integral_zero (t : ℝ) :
    (∫ r : ℝ, Real.exp (r / 2) * v (t - 1 - r)) = 0 := by
  simp_rw [weighted_translate]
  rw [integral_const_mul, integral_sub_left_eq_self
    (fun y : ℝ => Real.exp ((-1 / 2 : ℝ) * y) * v y) volume (t - 1),
    weighted_normalizedTest_integral_zero 1 (-1 / 2) le_rfl (by norm_num), mul_zero]

/-- For t≥2 the positive sampling integral is exactly zero, with its endpoint retained. -/
theorem logSample_integral_zero (t : ℝ) (ht : 2 ≤ t) :
    (∫ x in Ioi (1 : ℝ), logSample t x) = 0 := by
  have hchange := integral_comp_exp_Ioi (logSample t) 0
  simp only [smul_eq_mul, Real.exp_zero] at hchange
  rw [← hchange]
  simp_rw [logSample_exp]
  rw [setIntegral_eq_integral_of_forall_compl_eq_zero]
  · exact weighted_translated_integral_zero t
  · intro r hr
    have hrle : r ≤ 0 := le_of_not_gt hr
    have hy : 1 ≤ |t - 1 - r| := (by linarith : 1 ≤ t - 1 - r).trans (le_abs_self _)
    rw [normalizedTest_zero_of_le_abs 1 (t - 1 - r) (by norm_num) hy, mul_zero]

/-- Both convergence and the cancellation hold for the unchanged source sample. -/
theorem logSample_integrableOn_and_integral_zero (t : ℝ) (ht : 2 ≤ t) :
    IntegrableOn (logSample t) (Ioi 1) ∧
      (∫ x in Ioi (1 : ℝ), logSample t x) = 0 :=
  ⟨logSample_integrableOn t, logSample_integral_zero t ht⟩

end
end FixedKernelMomentScratch
```
