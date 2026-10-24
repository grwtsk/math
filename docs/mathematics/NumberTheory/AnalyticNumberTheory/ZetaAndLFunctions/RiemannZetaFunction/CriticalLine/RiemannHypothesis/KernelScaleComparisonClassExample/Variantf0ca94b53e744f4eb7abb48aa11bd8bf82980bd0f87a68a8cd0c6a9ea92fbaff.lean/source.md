# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.KernelScaleComparisonClassExample.Variantf0ca94b53e744f4eb7abb48aa11bd8bf82980bd0f87a68a8cd0c6a9ea92fbaff

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c429e698c4c48e90b14ac1a32bd47966b2807ff1` · SHA-256 `84585721eb4f8f88707900bc84ece31d32a1429883dec01159c22b6eb18ee6ba`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.KernelScaleComparison.Variant2bdf9eabde59c7cdd170077f6aade3a05cefb9fd5f35988404b8a254e61b466f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2bdf9eabde59c7cdd170077f6aade3a05cefb9fd5f35988404b8a254e61b466f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.KernelScaleComparison.Variant2bdf9eabde59c7cdd170077f6aade3a05cefb9fd5f35988404b8a254e61b466f","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"2bdf9eabde59c7cdd170077f6aade3a05cefb9fd5f35988404b8a254e61b466f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/mertens/KernelScaleComparisonClassExample.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.KernelScaleComparison


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.KernelScaleComparison.Variant2bdf9eabde59c7cdd170077f6aade3a05cefb9fd5f35988404b8a254e61b466f

set_option autoImplicit false
namespace KernelScaleComparisonClassExample
open FormalResearch.RiemannHypothesis.SourceComparison
open KernelScaleComparison
noncomputable section

example (A : ℝ) (h g : ℕ) (hA : 1 ≤ A) (hh : 1 ≤ h) (hg : 1 ≤ g) :
    |ThetaRemainder.thetaRemainder A (h * g ^ 2) -
      Real.sqrt 2 * ThetaRemainder.thetaRemainder A (2 * (h * g ^ 2))| ≤
      scaleComparisonCoefficient A * Real.log 2 / (Real.sqrt (h : ℝ) * (g : ℝ)) := by
  have hq : 1 ≤ h * g ^ 2 := by nlinarith
  have hbound := theta_remainder_scale_comparison A (h * g ^ 2) 2 hA hq (by norm_num)
  have hroot : Real.sqrt ((h * g ^ 2 : ℕ) : ℝ) = Real.sqrt (h : ℝ) * (g : ℝ) := by
    push_cast
    rw [Real.sqrt_mul (Nat.cast_nonneg h), Real.sqrt_sq (Nat.cast_nonneg g)]
  simpa only [Nat.cast_ofNat, hroot, abs_sub_comm] using hbound

end
end KernelScaleComparisonClassExample
```
