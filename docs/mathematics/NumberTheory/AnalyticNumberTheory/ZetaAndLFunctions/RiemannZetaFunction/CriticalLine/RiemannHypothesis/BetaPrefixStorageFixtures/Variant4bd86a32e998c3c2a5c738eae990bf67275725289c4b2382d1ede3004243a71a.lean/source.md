# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.BetaPrefixStorageFixtures.Variant4bd86a32e998c3c2a5c738eae990bf67275725289c4b2382d1ede3004243a71a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `793e5ec2b850dd3175c50a64ec4ed7ddeeea544b` · SHA-256 `8f0da42cda1fe83a3b3c6632897f4ab9a335a35c840e95126115b00b67462bc3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.WraparoundDifferenceIsNotZero.Variantd94f32d465acac424a43bd2c5b79cdad326547c87a73e2659f1ff418580b6411","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d94f32d465acac424a43bd2c5b79cdad326547c87a73e2659f1ff418580b6411","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.WraparoundDifferenceIsNotZero.Variantd94f32d465acac424a43bd2c5b79cdad326547c87a73e2659f1ff418580b6411","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"d94f32d465acac424a43bd2c5b79cdad326547c87a73e2659f1ff418580b6411","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/confluence/cycle27/regent-restricted-mixed-source-v1/actual-prefix-discrete-storage-v1/BetaPrefixStorageFixtures.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceBetaPrefixStorage

/-! UNCOMPILED hostile fixtures: cyclic wrap, nonzero mean, and necessary lower endpoint. -/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.WraparoundDifferenceIsNotZero.Variantd94f32d465acac424a43bd2c5b79cdad326547c87a73e2659f1ff418580b6411

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.BetaPrefixStorageFixtures

open ArithmeticFunction SourceBetaPrefixStorage

noncomputable section

theorem wraparound_difference_is_not_zero :
    divisorStorage 2 2 - divisorStorage 2 1 = (1 / 4 : ℝ) := by
  norm_num [divisorStorage]

theorem actual_signed_prefix_mean_two_nonzero :
    centeredPrefixMean 2 = -(1 / 4 : ℝ) := by
  norm_num [centeredPrefixMean, divisorMean,
    show Finset.Icc 1 2 = {1, 2} by decide, moebius_apply_prime Nat.prime_two]

theorem mean_cannot_be_erased_from_divisor_prefix :
    divisorPrefix 2 2 3 ≠ divisorStorage 2 4 - divisorStorage 2 3 := by
  norm_num [divisorPrefix, divisorStorage]

theorem lower_abel_endpoint_cannot_be_erased :
    (∑ k ∈ Finset.Ico 3 4, divisorPrefix 2 2 k * (1 : ℝ)) ≠
      divisorMean 2 2 * (∑ k ∈ Finset.Ico 3 4, (1 : ℝ)) +
        divisorStorage 2 4 * (1 : ℝ) -
        ∑ k ∈ Finset.Ico 3 4, divisorStorage 2 (k + 1) * ((1 : ℝ) - 1) := by
  norm_num [show Finset.Ico 3 4 = {3} by decide,
    divisorPrefix, divisorMean, divisorStorage]

end
end FormalResearch.RiemannHypothesis.BetaPrefixStorageFixtures
```
