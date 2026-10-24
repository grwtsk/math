# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceStrictColumnInterior.Variant3d29eb4b7f0aeedb252facc44866ca7b5db4940fccb98bb0c4c3773cc650514a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2ddd49e81ada0f3daaefc2fe0de709ee20f3bf2f` · SHA-256 `3d1e46bfb1952d3ec49ae65c5ce44c948cc9c54ae2e463536fbd6f38b538ad38`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.StrictColumnInterior.Variantf2e7d7a0bcd7174e70fb28d302bc102c1f3ffca498492f57df7df12be6e94508","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f2e7d7a0bcd7174e70fb28d302bc102c1f3ffca498492f57df7df12be6e94508","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.StrictColumnInterior.Variantf2e7d7a0bcd7174e70fb28d302bc102c1f3ffca498492f57df7df12be6e94508","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"f2e7d7a0bcd7174e70fb28d302bc102c1f3ffca498492f57df7df12be6e94508","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/confluence/cycle26/principal-strict-column-interior-v1/prepared-v1/SourceStrictColumnInterior.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceMangoldtQuotientEndpoint

/-!
# The remaining literal strict column interior

Private preparation only: UNCOMPILED. The private32 prerequisite has an author
packet; its independent gate remains pending. This module keeps the original
centered diagonal and independently specified main term. It transports a missing
upper-bound witness and supplies none.

AI attribution: prepared with OpenAI Codex; no native33 invocation has occurred.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.StrictColumnInterior.Variantf2e7d7a0bcd7174e70fb28d302bc102c1f3ffca498492f57df7df12be6e94508

namespace FormalResearch.RiemannHypothesis.SourceStrictColumnInterior

open SourceVaughanHankel SourceMangoldtQuotientEndpoint
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateVaughanSource EstimateSourceMobiusKernel EstimatePlainKernel EstimateBetaCentering

noncomputable section

/-- The raw strict column sum with the complete original compensation subtracted. -/
def strictColumnInterior (A : ℝ) : ℝ :=
  let U := vaughanCutoff A
  let N := sourceKernelCutoff A
  let K := N / (U + 1)
  let B : ℕ → ℝ := fun k => ∑ n ∈ Finset.Ioc U k, centeredBeta U n
  let R : ℕ → ℝ := fun k =>
    ∑ m ∈ longInventory A, vonMangoldt m * sourcePlainWeight A ((m * k : ℕ) : ℝ)
  (∑ k ∈ Finset.Ico (U + 1) K, B k * (R k - R (k + 1))) -
    centeredDeletedDiagonal A - SourceSamplingLedger.independentMainTerm A

/-- The unchanged signed target equals the raw compensated interior plus its endpoint. -/
theorem covariance_sub_main_eq_strictColumnInterior_add_endpoint
    (A : ℝ) (hA : 1 ≤ A) :
    VaughanOperatorReview.covarianceOperatorValue A / 2 -
        SourceSamplingLedger.independentMainTerm A =
      strictColumnInterior A +
        (let U := vaughanCutoff A
         let N := sourceKernelCutoff A
         let K := N / (U + 1)
         let B : ℕ → ℝ := fun k => ∑ n ∈ Finset.Ioc U k, centeredBeta U n
         let R : ℕ → ℝ := fun k =>
           ∑ m ∈ longInventory A,
             vonMangoldt m * sourcePlainWeight A ((m * k : ℕ) : ℝ)
         B K * R K) := by
  classical
  have hs := covariance_sub_main_eq_strict_quotient_increments_with_endpoint A hA
  dsimp only at hs
  dsimp only [strictColumnInterior]
  linarith

/-- Each pointwise upper bound transfers with an additive twelve, for either endpoint sign. -/
theorem strictColumnInterior_pointwise_upper_transfers (A D : ℝ) (hA : 1 ≤ A) :
    (VaughanOperatorReview.covarianceOperatorValue A / 2 -
        SourceSamplingLedger.independentMainTerm A ≤ D → strictColumnInterior A ≤ D + 12) ∧
      (strictColumnInterior A ≤ D →
        VaughanOperatorReview.covarianceOperatorValue A / 2 -
          SourceSamplingLedger.independentMainTerm A ≤ D + 12) := by
  have hs := covariance_sub_main_eq_strictColumnInterior_add_endpoint A hA
  have hb := actual_centered_column_endpoint_abs_le_twelve A hA
  dsimp only at hs hb
  have he := abs_le.mp hb
  constructor
  · intro h
    linarith [he.1]
  · intro h
    linarith [he.2]

/-- The existing joint tail target is equivalent to the remaining raw strict interior target. -/
theorem jointMainTermTail_iff_strictColumnInteriorTail :
    VaughanOperatorReview.JointMainTermTailUpperBound SourceSamplingLedger.independentMainTerm ↔
      ∃ D : ℝ, 0 ≤ D ∧ ∃ R : ℝ, 1 ≤ R ∧
        ∀ A : ℝ, R ≤ A → strictColumnInterior A ≤ D := by
  unfold VaughanOperatorReview.JointMainTermTailUpperBound
  constructor
  · rintro ⟨D, hD, R, hR, h⟩
    refine ⟨D + 12, by linarith, R, hR, ?_⟩
    intro A hRA
    exact (strictColumnInterior_pointwise_upper_transfers A D (hR.trans hRA)).1 (h A hRA)
  · rintro ⟨D, hD, R, hR, h⟩
    refine ⟨D + 12, by linarith, R, hR, ?_⟩
    intro A hRA
    exact (strictColumnInterior_pointwise_upper_transfers A D (hR.trans hRA)).2 (h A hRA)

end
end FormalResearch.RiemannHypothesis.SourceStrictColumnInterior
```
