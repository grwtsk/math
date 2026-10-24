# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.SourceExactOverlapSamplingConsumer.Variant754c668143d8ff877e01200cb3c4fa955209dd0d3e99442074d3b79605377892

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d45ab72e4b2bb542252f00584ee8bd297e273e8f` · SHA-256 `2780ca35b69181788d2afe21a598690cf5d6810e13f838c0c027875c841cd2fa`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ExactSamplingLedgerCost.Variant2d0bcaf93a8c59b8d70626c98c2732503884f2977660149a4adaebfbc1712f73","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2d0bcaf93a8c59b8d70626c98c2732503884f2977660149a4adaebfbc1712f73","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.AnalyticNumberTheory.SourceCorpus.ExactSamplingLedgerCost.Variant2d0bcaf93a8c59b8d70626c98c2732503884f2977660149a4adaebfbc1712f73","mathematical_subject":"NumberTheory.AnalyticNumberTheory","original_sha256":"2d0bcaf93a8c59b8d70626c98c2732503884f2977660149a4adaebfbc1712f73","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-balance-overnight-20261007/graph-review/exact-overlap-consumer/SourceExactOverlapSamplingConsumer.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceExactOverlapConsumer
import SourceExactSamplingTail

/-!
A source40-context composition of the exact strip and whole-positive-axis sampling budgets.
Only the unchanged remainingOverlapBalance upper witness is supplied. The independent
actual diagonal error theorem supplies C_D internally. Closed/strict reconstruction and
finite prefix stay at one calibrated radius, with no head or gamma assumptions.
Research direction and conceptual origin: grwtsk contributors.
Native consumer construction and focused verification: OpenAI Codex assistance.
-/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ExactSamplingLedgerCost.Variant2d0bcaf93a8c59b8d70626c98c2732503884f2977660149a4adaebfbc1712f73

set_option autoImplicit false
noncomputable section
namespace RH16ExactOverlapSamplingConsumer
open RH16ExactOverlapConsumer RH16ExactRestrictedStrip RH16ExactTailEnergy RH16ExactSamplingTail
open MeasureTheory
open FormalResearch.RiemannHypothesis
open SourceSamplingLedger SourceRestrictedLowTimeWork SourceActualMixedWorkFubini SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateMertensResidual EstimateTailReduction EstimateBetaSourceRecombination

/-- The full ledger cost after the already proved independent diagonal error. -/
def exactSamplingLedgerCost (C_D Q : ℝ) : ℝ :=
  C_D + 192 * tailEnergyCoefficient Q / Q +
    64 * (Real.log 4 + 4) * tailEnergyCoefficient Q

/-- The complete paid residual cost; only its overlapping signed witness is supplied. -/
def exactOverlapSamplingResidualBudget (D Q C_D : ℝ) : ℝ :=
  max 0 (D + exactStripCost Q + exactSamplingLedgerCost C_D Q)

theorem exactSamplingLedgerCost_nonneg (C_D Q : ℝ) (hD : 0 ≤ C_D) (hQ : 91 ≤ Q) :
    0 ≤ exactSamplingLedgerCost C_D Q := by
  have hdelta := (tailEnergyCoefficient_pos Q).le
  have hlog : 0 ≤ Real.log (4 : ℝ) := Real.log_nonneg (by norm_num)
  have hQp : 0 < Q := by linarith
  unfold exactSamplingLedgerCost
  positivity

theorem exactOverlapSamplingResidualBudget_nonneg (D Q C_D : ℝ) :
    0 ≤ exactOverlapSamplingResidualBudget D Q C_D := le_max_left _ _

/-- Actual tail sampling supplies its own diagonal constant in the original residual. -/
theorem residual_tail_of_overlap_with_exact_sampling (D R : ℝ)
    (hover : ∀ A : ℝ, R ≤ A → remainingOverlapBalance A ≤ D) :
    ∃ C_D : ℝ, 0 ≤ C_D ∧ ∀ A : ℝ, max 91 R ≤ A →
      mertensResidual A ≤ exactOverlapSamplingResidualBudget D (max 91 R) C_D := by
  have hQ : (91 : ℝ) ≤ max 91 R := le_max_left _ _
  have hQ1 : (1 : ℝ) ≤ max 91 R := by linarith
  obtain ⟨C_D, hD0, hledger⟩ := actual_ledger_tail_error hQ1
  refine ⟨C_D, hD0, ?_⟩
  intro A hQA
  have hA1 : (1 : ℝ) ≤ A := hQ1.trans hQA
  have hoverA := hover A ((le_max_right _ _).trans hQA)
  have hstrip := actual_surplus_le_remainingOverlap_add_exact_strip hQ hQA
  have hledgerA := (abs_le.mp (hledger A hQA)).2
  rw [actual_residual_decomposition A hA1]
  have hraw : (VaughanOperatorReview.covarianceOperatorValue A / 2 - independentMainTerm A) +
      (betaMainLedger A + independentMainTerm A) ≤ D + exactStripCost (max 91 R) +
        exactSamplingLedgerCost C_D (max 91 R) := by
    unfold exactStripCost exactSamplingLedgerCost
    linarith
  exact hraw.trans (le_max_right _ _)

/-- The direct exact original observable uses the same strict finite prefix and tail radius. -/
theorem all_real_lower_of_overlap_with_exact_sampling (D R : ℝ)
    (hover : ∀ A : ℝ, R ≤ A → remainingOverlapBalance A ≤ D) :
    ∃ C_D : ℝ, 0 ≤ C_D ∧ ∀ A : ℝ, 1 ≤ A →
      min (archimedeanMultiplier 0 - 2 * ∑ n ∈ primeIndices (max 91 R),
        |ArithmeticFunction.vonMangoldt n / Real.sqrt n|)
        (archimedeanMultiplier 0 -
          2 * exactOverlapSamplingResidualBudget D (max 91 R) C_D) ≤
          sourceQuadraticValue explicitSecondDerivative A := by
  obtain ⟨C_D, hD0, hres⟩ := residual_tail_of_overlap_with_exact_sampling D R hover
  refine ⟨C_D, hD0, ?_⟩
  intro A hA
  by_cases hQA : max 91 R ≤ A
  · exact (min_le_right _ _).trans (quadratic_lower_of_residual_upper _ A hA (hres A hQA))
  · have hprefix := prime_contribution_le_finite_budget A (max 91 R) hA
      (le_of_lt (lt_of_not_ge hQA))
    have harch := SourceCorrectionEstimate.actual_archimedean_lower A hA
    apply (min_le_left _ _).trans
    unfold sourceQuadraticValue
    linarith

/-- This imports no arithmetic head, gamma or mean witness into the original RH obligation. -/
theorem estimate_of_overlap_with_exact_sampling (D R : ℝ)
    (hover : ∀ A : ℝ, R ≤ A → remainingOverlapBalance A ≤ D) :
    CorrelationAssembly.EstimateObligation := by
  obtain ⟨C_D, _, hres⟩ := residual_tail_of_overlap_with_exact_sampling D R hover
  exact estimate_of_mertens_residual_tail
    ⟨exactOverlapSamplingResidualBudget D (max 91 R) C_D,
      exactOverlapSamplingResidualBudget_nonneg _ _ _, max 91 R,
      by linarith [le_max_left (91 : ℝ) R], hres⟩
end RH16ExactOverlapSamplingConsumer
```
