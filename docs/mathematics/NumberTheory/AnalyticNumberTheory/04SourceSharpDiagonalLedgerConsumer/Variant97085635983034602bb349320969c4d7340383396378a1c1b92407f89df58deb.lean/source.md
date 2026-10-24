# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.04SourceSharpDiagonalLedgerConsumer.Variant97085635983034602bb349320969c4d7340383396378a1c1b92407f89df58deb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `70d9f17d7c7078289b5f23e0ca58f6283b5804e1` · SHA-256 `97085635983034602bb349320969c4d7340383396378a1c1b92407f89df58deb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
set_option autoImplicit false
noncomputable section
namespace RH16SharpDiagonalLedgerConsumer
open RH16ExactTailEnergy RH16ExactSamplingTail RH16ExactReadoutConsumer
open RH16TailDiagonalLedger RH16SharpDiagonalTail RH16ProperPowerDiagonal
open RH16ProperPowerCell
open RH16ExactOverlapConsumer RH16ExactOverlapSamplingConsumer
open FormalResearch.RiemannHypothesis
open SourcePairing SourceDiagonalMainTerm SourceSamplingLedger
open SourceShortSamplingInventory SourceSamplingCoefficients
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateVaughanTranslationGate EstimateMertensResidual
open EstimateVaughanSource EstimateBetaSourceRecombination EstimateTailReduction

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
