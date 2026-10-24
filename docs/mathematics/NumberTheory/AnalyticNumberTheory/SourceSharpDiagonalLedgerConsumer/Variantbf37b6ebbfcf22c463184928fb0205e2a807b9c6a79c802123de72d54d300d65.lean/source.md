# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.SourceSharpDiagonalLedgerConsumer.Variantbf37b6ebbfcf22c463184928fb0205e2a807b9c6a79c802123de72d54d300d65

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a9993b092b9f2cea443611f12e0ca79776c3f20a` · SHA-256 `018ac2ee0458ff7a44ff92c6ddea2b6c878abc8efa8404bab21f4d9bb66d3143`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.SharpDiagonalCost.Variant3d1b595d754f7aadbe00fcf6a825126489cde698c97722cdcdc7176d9dc7fef2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3d1b595d754f7aadbe00fcf6a825126489cde698c97722cdcdc7176d9dc7fef2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.AnalyticNumberTheory.SourceCorpus.SharpDiagonalCost.Variant3d1b595d754f7aadbe00fcf6a825126489cde698c97722cdcdc7176d9dc7fef2","mathematical_subject":"NumberTheory.AnalyticNumberTheory","original_sha256":"3d1b595d754f7aadbe00fcf6a825126489cde698c97722cdcdc7176d9dc7fef2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-balance-overnight-20261007/graph-review/independent-sharp-diagonal-ledger/author-evidence/author-replay/SourceSharpDiagonalLedgerConsumer.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceTailDiagonalLedger
import SourceSharpDiagonalTail
import SourceProperPowerDiagonal

/-!
The finite all-prime-power tail and fixed prime-log constant remove the supplied
diagonal premise from the actual source ledger. The independent signed readout
bound remains the sole supplied arithmetic witness in this consumer.
Direction and conceptual origin: grwtsk contributors.
Source composition and native formalization: OpenAI Codex assistance.
-/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.SharpDiagonalCost.Variant3d1b595d754f7aadbe00fcf6a825126489cde698c97722cdcdc7176d9dc7fef2

set_option autoImplicit false
noncomputable section
namespace RH16SharpDiagonalLedgerConsumer
open RH16ExactTailEnergy RH16ExactSamplingTail RH16ExactReadoutConsumer
open RH16TailDiagonalLedger RH16SharpDiagonalTail RH16ProperPowerDiagonal
open RH16ProperPowerCell
open FormalResearch.RiemannHypothesis
open SourcePairing SourceDiagonalMainTerm SourceSamplingLedger
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateVaughanTranslationGate EstimateMertensResidual

/-- All physical diagonal contributions are charged once at the genuine tail radius. -/
def sharpDiagonalCost (Q : ℝ) : ℝ :=
  powerTailBudget (⌊Q ^ 2⌋₊ : ℝ) +
    (Real.log 4 + 4) * (1 + 2 * Real.sqrt (tailEnergyCoefficient Q)) +
    16 * tailEnergyCoefficient Q * Real.log Q ^ 3 / (3 * Q ^ 2)

/-- No diagonal or prime-log witness is supplied: both are source theorems. -/
theorem actual_diagonal_error_tail (Q A : ℝ) (hQ : 91 ≤ Q) (hQA : Q ≤ A) :
    |typeTwoDiagonal A + diagonalMainCoefficient A * A -
      Real.log (vaughanCutoff A : ℝ)| ≤ sharpDiagonalCost Q := by
  have hQ1 : (1 : ℝ) ≤ Q := by linarith
  exact typeTwoDiagonal_tail_error_of_proper_bound (Real.log 4 + 4)
    (by positivity) actual_primeLogError_fixed hQ hQA _
    (actual_diagonal_minus_prime_tail Q A hQ1 hQA)

theorem actual_ledger_error_tail (Q : ℝ) (hQ : 91 ≤ Q) :
    ∀ A : ℝ, Q ≤ A → |betaMainLedger A + independentMainTerm A| ≤
      exactSamplingLedgerCost (sharpDiagonalCost Q) Q :=
  actual_ledger_error_of_diagonal_tail _ Q (by linarith)
    (fun A hQA => actual_diagonal_error_tail Q A hQ hQA)

theorem residual_tail_of_readout (D rho Q : ℝ) (hQ : 91 ≤ Q)
    (hreadout : ∀ A : ℝ, Q ≤ A →
      VaughanOperatorReview.covarianceOperatorValue A / 2 - independentMainTerm A ≤ D + rho) :
    ∀ A : ℝ, Q ≤ A →
      mertensResidual A ≤ exactReadoutResidualBudget D rho Q (sharpDiagonalCost Q) :=
  residual_tail_of_diagonal_and_readout D rho _ Q hQ
    (fun A hQA => actual_diagonal_error_tail Q A hQ hQA) hreadout

theorem all_real_lower_of_readout (D rho Q : ℝ) (hQ : 91 ≤ Q)
    (hreadout : ∀ A : ℝ, Q ≤ A →
      VaughanOperatorReview.covarianceOperatorValue A / 2 - independentMainTerm A ≤ D + rho) :
    ∀ A : ℝ, 1 ≤ A →
      min (archimedeanMultiplier 0 - 2 * ∑ n ∈ primeIndices Q,
        |ArithmeticFunction.vonMangoldt n / Real.sqrt n|)
        (archimedeanMultiplier 0 -
          2 * exactReadoutResidualBudget D rho Q (sharpDiagonalCost Q)) ≤
            sourceQuadraticValue explicitSecondDerivative A :=
  all_real_lower_of_diagonal_and_readout D rho _ Q hQ
    (fun A hQA => actual_diagonal_error_tail Q A hQ hQA) hreadout

/-- The original prescribed family and literal EstimateObligation are preserved. -/
theorem estimate_of_readout (D rho Q : ℝ) (hQ : 91 ≤ Q)
    (hreadout : ∀ A : ℝ, Q ≤ A →
      VaughanOperatorReview.covarianceOperatorValue A / 2 - independentMainTerm A ≤ D + rho) :
    CorrelationAssembly.EstimateObligation :=
  estimate_of_diagonal_and_readout D rho _ Q hQ
    (fun A hQA => actual_diagonal_error_tail Q A hQ hQA) hreadout

end RH16SharpDiagonalLedgerConsumer
```
