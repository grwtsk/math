# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.BetaPrefixPeriodFixtures.Variant12ced34f7fbb5d0d7e3f65ae51131ec4a96ba15402f0e5b7842dfecb5fb8ff99

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2a8b0620a781f4fb289907daa35c4262cad78e22` · SHA-256 `c4198fd9765c80a97dfb8922b94d14e8920623928b66fe8e0d37cfa866b92111`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.CoefficientPeriodZeroDoesNotMakePrefixPeriodZero.Variante62f19d9bf679497c5431ce35e9a4966ec0e8cd810d9d0d4f13e90081265c75d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e62f19d9bf679497c5431ce35e9a4966ec0e8cd810d9d0d4f13e90081265c75d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.CoefficientPeriodZeroDoesNotMakePrefixPeriodZero.Variante62f19d9bf679497c5431ce35e9a4966ec0e8cd810d9d0d4f13e90081265c75d","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"e62f19d9bf679497c5431ce35e9a4966ec0e8cd810d9d0d4f13e90081265c75d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/confluence/cycle27/regent-restricted-mixed-source-v1/signed-storage-certificate-investigation-v1/BetaPrefixPeriodFixtures.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceBetaPrefixPeriodObstruction

/-! UNCOMPILED hostile fixtures: coefficient periods, prefix periods, and prefix signs differ. -/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.CoefficientPeriodZeroDoesNotMakePrefixPeriodZero.Variante62f19d9bf679497c5431ce35e9a4966ec0e8cd810d9d0d4f13e90081265c75d

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.BetaPrefixPeriodFixtures

open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateBetaCentering SourceBetaPrefixPeriodObstruction

noncomputable section

theorem coefficient_period_zero_does_not_make_prefix_period_zero :
    (∑ n ∈ Finset.Ioc 2 4, centeredBeta 2 n) = 0 ∧
      (∑ k ∈ Finset.Icc 3 4, ∑ n ∈ Finset.Ioc 2 k, centeredBeta 2 n) ≠ 0 := by
  refine ⟨coefficient_period_two_zero, ?_⟩
  rw [prefix_period_two_nonzero_sum]
  norm_num

theorem actual_prefixes_are_not_all_nonnegative :
    ¬ ∀ k : ℕ, 4 < k → 0 ≤ (∑ n ∈ Finset.Ioc 4 k, centeredBeta 4 n) := by
  intro h
  have h5 := h 5 (by norm_num)
  rw [prefix_four_five] at h5
  norm_num at h5

theorem actual_prefixes_are_not_all_nonpositive :
    ¬ ∀ k : ℕ, 4 < k → (∑ n ∈ Finset.Ioc 4 k, centeredBeta 4 n) ≤ 0 := by
  intro h
  have h6 := h 6 (by norm_num)
  rw [prefix_four_six] at h6
  norm_num at h6

end
end FormalResearch.RiemannHypothesis.BetaPrefixPeriodFixtures
```
