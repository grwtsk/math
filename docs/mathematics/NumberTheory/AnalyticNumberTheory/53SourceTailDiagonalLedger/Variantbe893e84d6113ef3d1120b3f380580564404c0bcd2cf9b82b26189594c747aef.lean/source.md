# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.53SourceTailDiagonalLedger.Variantbe893e84d6113ef3d1120b3f380580564404c0bcd2cf9b82b26189594c747aef

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d2138b47f9dd0d31e8c677dc5b2a727b4a42a702` · SHA-256 `be893e84d6113ef3d1120b3f380580564404c0bcd2cf9b82b26189594c747aef`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceExactReadoutConsumer

/-!
The actual original ledger consumes a diagonal estimate on the same real tail.
Its constant is supplied at its genuine scope, so a sharper source diagonal
bound need not be extended to small radii or routed through the old global cost.
Direction and conceptual origin: grwtsk contributors.
Source consumer construction and native formalization: OpenAI Codex assistance.
-/
set_option autoImplicit false
noncomputable section
namespace RH16TailDiagonalLedger
open RH16ExactSamplingTail RH16ExactTailEnergy RH16ExactReadoutConsumer
open RH16ExactOverlapConsumer RH16ExactOverlapSamplingConsumer
open FormalResearch.RiemannHypothesis
open SourceSamplingLedger SourcePairing SourceDiagonalMainTerm
open SourceShortSamplingInventory SourceSamplingCoefficients
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateMertensResidual EstimateTailReduction EstimateBetaSourceRecombination
open EstimateVaughanSource EstimateVaughanTranslationGate

/-- A real-tail diagonal witness replaces only the diagonal leaf in the exact ledger. -/
theorem actual_ledger_error_of_diagonal_tail (C_D Q : ℝ) (hQ : 1 ≤ Q)
    (hdiag : ∀ A : ℝ, Q ≤ A →
      |typeTwoDiagonal A + diagonalMainCoefficient A * A -
        Real.log (vaughanCutoff A : ℝ)| ≤ C_D) :
    ∀ A : ℝ, Q ≤ A → |betaMainLedger A + independentMainTerm A| ≤
      exactSamplingLedgerCost C_D Q := by
  have hδ := tailEnergyCoefficient_pos Q
  intro A hQA
  have hlog := actual_shortLog_error_tail hQ hQA
  have hplain := actual_shortPlain_error_tail hQ hQA
  have hmon : 192 * tailEnergyCoefficient Q / A ≤
      192 * tailEnergyCoefficient Q / Q :=
    div_le_div_of_nonneg_left (by positivity) (by linarith) hQA
  rw [independentMainTerm, ledger_plus_coefficientMainTerm]
  have hd := hdiag A hQA
  have hlog' : |shortLogSource A -
      shortLogMainTerm A (logLinearMain A samplingAlpha1 samplingAlpha2)| ≤
        192 * tailEnergyCoefficient Q / Q := hlog.trans hmon
  have hplain' : |shortPlainSource A -
      shortPlainMainTerm A (plainLinearMain A samplingAlpha0 samplingAlpha1)| ≤
        64 * (Real.log 4 + 4) * tailEnergyCoefficient Q := hplain
  have h₁ := abs_add_le
    (typeTwoDiagonal A + diagonalMainCoefficient A * A -
      Real.log (vaughanCutoff A : ℝ))
    (shortLogSource A - shortLogMainTerm A (logLinearMain A samplingAlpha1 samplingAlpha2))
  have h₂ := abs_sub
    ((typeTwoDiagonal A + diagonalMainCoefficient A * A -
      Real.log (vaughanCutoff A : ℝ)) +
      (shortLogSource A - shortLogMainTerm A (logLinearMain A samplingAlpha1 samplingAlpha2)))
    (shortPlainSource A - shortPlainMainTerm A (plainLinearMain A samplingAlpha0 samplingAlpha1))
  unfold exactSamplingLedgerCost
  linarith

theorem residual_tail_of_diagonal_and_readout (D rho C_D Q : ℝ) (hQ : 91 ≤ Q)
    (hdiag : ∀ A : ℝ, Q ≤ A →
      |typeTwoDiagonal A + diagonalMainCoefficient A * A -
        Real.log (vaughanCutoff A : ℝ)| ≤ C_D)
    (hreadout : ∀ A : ℝ, Q ≤ A →
      VaughanOperatorReview.covarianceOperatorValue A / 2 - independentMainTerm A ≤ D + rho) :
    ∀ A : ℝ, Q ≤ A →
      mertensResidual A ≤ exactReadoutResidualBudget D rho Q C_D := by
  have hQ1 : (1 : ℝ) ≤ Q := by linarith
  intro A hQA
  have hr := hreadout A hQA
  have hl := (abs_le.mp (actual_ledger_error_of_diagonal_tail C_D Q hQ1 hdiag A hQA)).2
  rw [actual_residual_decomposition A (hQ1.trans hQA)]
  apply le_trans ?_ (le_max_right _ _)
  linarith

theorem all_real_lower_of_diagonal_and_readout (D rho C_D Q : ℝ) (hQ : 91 ≤ Q)
    (hdiag : ∀ A : ℝ, Q ≤ A →
      |typeTwoDiagonal A + diagonalMainCoefficient A * A -
        Real.log (vaughanCutoff A : ℝ)| ≤ C_D)
    (hreadout : ∀ A : ℝ, Q ≤ A →
      VaughanOperatorReview.covarianceOperatorValue A / 2 - independentMainTerm A ≤ D + rho) :
    ∀ A : ℝ, 1 ≤ A →
      min (archimedeanMultiplier 0 - 2 * ∑ n ∈ primeIndices Q,
        |ArithmeticFunction.vonMangoldt n / Real.sqrt n|)
        (archimedeanMultiplier 0 - 2 * exactReadoutResidualBudget D rho Q C_D) ≤
          sourceQuadraticValue explicitSecondDerivative A := by
  intro A hA
  by_cases hQA : Q ≤ A
  · exact (min_le_right _ _).trans (quadratic_lower_of_residual_upper _ A hA
      (residual_tail_of_diagonal_and_readout D rho C_D Q hQ hdiag hreadout A hQA))
  · have hprefix := prime_contribution_le_finite_budget A Q hA
      (le_of_lt (lt_of_not_ge hQA))
    have harch := SourceCorrectionEstimate.actual_archimedean_lower A hA
    apply (min_le_left _ _).trans
    unfold sourceQuadraticValue
    linarith

theorem estimate_of_diagonal_and_readout (D rho C_D Q : ℝ) (hQ : 91 ≤ Q)
    (hdiag : ∀ A : ℝ, Q ≤ A →
      |typeTwoDiagonal A + diagonalMainCoefficient A * A -
        Real.log (vaughanCutoff A : ℝ)| ≤ C_D)
    (hreadout : ∀ A : ℝ, Q ≤ A →
      VaughanOperatorReview.covarianceOperatorValue A / 2 - independentMainTerm A ≤ D + rho) :
    CorrelationAssembly.EstimateObligation :=
  estimate_of_mertens_residual_tail
    ⟨exactReadoutResidualBudget D rho Q C_D,
      exactReadoutResidualBudget_nonneg _ _ _ _, Q, by linarith,
      residual_tail_of_diagonal_and_readout D rho C_D Q hQ hdiag hreadout⟩

end RH16TailDiagonalLedger
```
