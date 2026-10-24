# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceStrictEnergyConsumer.Variante9a766237bcd204955cc07db2f16589ddb3407d6957b5bc48ca8b32b94ae7b02

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d54f651a3d823cbf62b6deb03a24b77f2ac4a1e0` · SHA-256 `771001f5294b6ced6515f88a1f73907717a0ac04f7625b6280975cbe7e753a32`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceEndpoint.Variant66e7e992b464e74029b45a6468278cacf1f14fd89f66b3835ec0fa361eb5b3c1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"66e7e992b464e74029b45a6468278cacf1f14fd89f66b3835ec0fa361eb5b3c1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.SourceEndpoint.Variant66e7e992b464e74029b45a6468278cacf1f14fd89f66b3835ec0fa361eb5b3c1","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"66e7e992b464e74029b45a6468278cacf1f14fd89f66b3835ec0fa361eb5b3c1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-hilbert-cycle-20261006/new-root-sources/SourceStrictEnergyConsumer.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceStrictColumnInterior

/-!
Exact complete strict-interior energy and the conservative endpoint-twelve
consumer. This is an unmerged local candidate, with no upper-bound witness.
The two independently weighted arithmetic rows, the physical centered diagonal,
the independently defined main term, and every real scale A >= 1 are retained.
AI attribution: proof construction and source recovery by OpenAI Codex.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceEndpoint.Variant66e7e992b464e74029b45a6468278cacf1f14fd89f66b3835ec0fa361eb5b3c1

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceStrictEnergyConsumer

open ArithmeticFunction MeasureTheory
open scoped InnerProductSpace
open SourceStrictColumnInterior SourceVaughanHankel SourceSamplingLedger
open SourceMangoldtQuotientEndpoint
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateVaughanSource EstimateSourceMobiusKernel EstimatePlainKernel
open EstimateBetaCentering EstimateMertensResidual

noncomputable section

/-- The literal endpoint is independently defined from the unchanged two rows. -/
def sourceEndpoint (A : ℝ) : ℝ :=
  let U := vaughanCutoff A
  let N := sourceKernelCutoff A
  let K := N / (U + 1)
  let B : ℕ → ℝ := fun k => ∑ n ∈ Finset.Ioc U k, centeredBeta U n
  let R : ℕ → ℝ := fun k =>
    ∑ m ∈ longInventory A,
      vonMangoldt m * sourcePlainWeight A ((m * k : ℕ) : ℝ)
  B K * R K

theorem sourceEndpoint_abs_le_twelve (A : ℝ) (hA : 1 ≤ A) :
    |sourceEndpoint A| ≤ 12 :=
  actual_centered_column_endpoint_abs_le_twelve A hA

/-- The full strict interior is the existing finite signed energy minus its endpoint. -/
theorem strictColumnInterior_eq_complete_source_energy (A : ℝ) (hA : 1 ≤ A) :
    strictColumnInterior A = sourceEnergySurplus A / 4 - sourceEndpoint A := by
  have hs := covariance_sub_main_eq_strictColumnInterior_add_endpoint A hA
  have he := sourceEnergySurplus_eq_four_joint_remainder A hA
  change VaughanOperatorReview.covarianceOperatorValue A / 2 - independentMainTerm A =
    strictColumnInterior A + sourceEndpoint A at hs
  linarith

/-- Polarization retains the complete negative sector and both original compensations. -/
theorem strictColumnInterior_eq_complete_hilbert_energy (A : ℝ) (hA : 1 ≤ A) :
    strictColumnInterior A =
      (‖mangoldtL2 A hA + centeredMobiusReflectedL2 A hA‖ ^ 2 -
        ‖mangoldtL2 A hA - centeredMobiusReflectedL2 A hA‖ ^ 2) / 4 -
      centeredDeletedDiagonal A - independentMainTerm A - sourceEndpoint A := by
  rw [strictColumnInterior_eq_complete_source_energy A hA,
    sourceEnergySurplus_eq_l2_difference A hA]
  ring

/-- The endpoint and independently controlled ledger error are paid exactly once. -/
theorem residual_upper_of_strictColumnInterior_upper
    (A D C_F : ℝ) (hA : 1 ≤ A)
    (hS : strictColumnInterior A ≤ D)
    (hF : |EstimateBetaSourceRecombination.betaMainLedger A + independentMainTerm A| ≤ C_F) :
    mertensResidual A ≤ D + 12 + C_F := by
  have ht := (strictColumnInterior_pointwise_upper_transfers A D hA).2 hS
  have hr := actual_residual_decomposition A hA
  have hf := (abs_le.mp hF).2
  linarith

/-- The validity radius is unchanged and the ledger constant is independent of A. -/
theorem residual_tail_of_strictColumnInterior_tail
    (D R : ℝ) (_hD : 0 ≤ D) (hR : 1 ≤ R)
    (hS : ∀ A : ℝ, R ≤ A → strictColumnInterior A ≤ D) :
    ∃ C_F : ℝ, 0 ≤ C_F ∧
      ∀ A : ℝ, R ≤ A → mertensResidual A ≤ D + 12 + C_F := by
  obtain ⟨C_F, hF0, hF⟩ := actual_ledger_uniform_error
  refine ⟨C_F, hF0, ?_⟩
  intro A hRA
  exact residual_upper_of_strictColumnInterior_upper A D C_F
    (hR.trans hRA) (hS A hRA) (hF A (hR.trans hRA))

/-- Compose the existing all-real finite-prefix consumer; no new prefix proof is used. -/
theorem estimate_of_strictColumnInterior_tail
    (D R : ℝ) (hD : 0 ≤ D) (hR : 1 ≤ R)
    (hS : ∀ A : ℝ, R ≤ A → strictColumnInterior A ≤ D) :
    CorrelationAssembly.EstimateObligation := by
  obtain ⟨C_F, hF0, hF⟩ := residual_tail_of_strictColumnInterior_tail D R hD hR hS
  exact estimate_of_mertens_residual_tail
    ⟨D + 12 + C_F, by linarith, R, hR, hF⟩

end
end FormalResearch.RiemannHypothesis.SourceStrictEnergyConsumer
```
