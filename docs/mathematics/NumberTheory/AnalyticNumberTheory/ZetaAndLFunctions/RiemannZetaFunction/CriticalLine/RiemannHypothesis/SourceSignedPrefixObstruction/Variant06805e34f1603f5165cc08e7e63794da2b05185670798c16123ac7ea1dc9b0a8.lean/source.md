# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceSignedPrefixObstruction.Variant06805e34f1603f5165cc08e7e63794da2b05185670798c16123ac7ea1dc9b0a8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b57a3d0a5febd3fcca6aefb37591681e21be1da9` · SHA-256 `8c99cf842255b7a7963f759cb94b6d3485f708bb35e7026f9c65807ceaf9741a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.CenteredPrefix.Variant36a2f1cd6f605de139fde7153667804e98a8ee1c9a8f74ac507719d751791b0f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"36a2f1cd6f605de139fde7153667804e98a8ee1c9a8f74ac507719d751791b0f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.CenteredPrefix.Variant36a2f1cd6f605de139fde7153667804e98a8ee1c9a8f74ac507719d751791b0f","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"36a2f1cd6f605de139fde7153667804e98a8ee1c9a8f74ac507719d751791b0f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/packet-followup-lamzouri-unit/source/36a2f1cd6f605de139fde7153667804e98a8ee1c9a8f74ac507719d751791b0f/SourceSignedPrefixObstruction.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceAdaptiveTriangularConsumer
import Mathlib.Tactic

/-!
An actual signed-row obstruction to a one-sided Abel attempt.
The attempted inequality was that centering forces every long prefix nonpositive.
At the unchanged real source scale A = 7/4, U = floor(A^2) = 3, its prefixes
already have both signs. No statement about the compensated target is inferred.
Research direction: grwtsk contributors. Formal construction: OpenAI Codex.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.CenteredPrefix.Variant36a2f1cd6f605de139fde7153667804e98a8ee1c9a8f74ac507719d751791b0f

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceSignedPrefixObstruction
open ArithmeticFunction
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateVaughanSource EstimateVaughanIdentity EstimateBetaCentering
noncomputable section

def centeredPrefix (A : ℝ) (k : ℕ) : ℝ :=
  ∑ n ∈ Finset.Ioc (vaughanCutoff A) k, centeredBeta (vaughanCutoff A) n

theorem actual_cutoff : vaughanCutoff (7 / 4 : ℝ) = 3 := by
  norm_num [vaughanCutoff]

theorem actual_alpha : alpha 3 = (1 / 6 : ℝ) := by
  norm_num [alpha, Finset.sum_Icc_succ_top]

theorem actual_prefix_values :
    centeredPrefix (7 / 4 : ℝ) 4 = 1 / 6 ∧
    centeredPrefix (7 / 4 : ℝ) 5 = -2 / 3 ∧
    centeredPrefix (7 / 4 : ℝ) 6 = 1 / 2 := by
  norm_num [centeredPrefix, actual_cutoff, centeredBeta, beta, alpha,
    Finset.sum_Ioc_succ_top, Finset.sum_Icc_succ_top]

theorem centering_does_not_force_nonpositive_prefix :
    ¬ (∀ A : ℝ, 1 ≤ A → ∀ k : ℕ, vaughanCutoff A ≤ k → centeredPrefix A k ≤ 0) := by
  intro h
  have hv := h (7 / 4) (by norm_num) 4 (by rw [actual_cutoff]; norm_num)
  rw [actual_prefix_values.1] at hv
  norm_num at hv

theorem centering_does_not_force_nonnegative_prefix :
    ¬ (∀ A : ℝ, 1 ≤ A → ∀ k : ℕ, vaughanCutoff A ≤ k → 0 ≤ centeredPrefix A k) := by
  intro h
  have hv := h (7 / 4) (by norm_num) 5 (by rw [actual_cutoff]; norm_num)
  rw [actual_prefix_values.2.1] at hv
  norm_num at hv

end
end FormalResearch.RiemannHypothesis.SourceSignedPrefixObstruction
```
