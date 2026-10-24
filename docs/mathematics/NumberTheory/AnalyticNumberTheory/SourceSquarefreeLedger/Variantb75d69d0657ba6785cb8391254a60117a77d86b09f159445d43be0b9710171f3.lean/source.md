# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.SourceSquarefreeLedger.Variantb75d69d0657ba6785cb8391254a60117a77d86b09f159445d43be0b9710171f3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `71c5c8e92c9db53b6af172bbdcaf4f0edcf259f5` · SHA-256 `b75d69d0657ba6785cb8391254a60117a77d86b09f159445d43be0b9710171f3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceSquarefreeSamplingConsumer
import SourceSharpDiagonalLedgerConsumer

/-!
The new actual finite-support sampling costs reach the original source ledger.
Direction: grwtsk contributors. Composition/formalization: Codex root.
The supplied full signed readout remains open; all original source terms stay.
-/
set_option autoImplicit false
noncomputable section
namespace RH16SquarefreeLedger
open RH16SquarefreeSamplingConsumer RH16ExactSamplingTail RH16ExactTailEnergy
open RH16SharpDiagonalLedgerConsumer
open FormalResearch.RiemannHypothesis
open SourceSamplingLedger SourceSamplingCoefficients SourceSamplingPointwise
open SourcePairing SourceShortSamplingInventory SourceDiagonalMainTerm
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateMertensResidual EstimateTailReduction
open EstimateBetaSourceRecombination EstimateVaughanTranslationGate EstimateVaughanSource

def squarefreeLedgerCost (Q : Real) : Real :=
  sharpDiagonalCost Q + tailEnergyCoefficient Q *
    (144 / Q + 48 * (Real.log 4 + 4))

theorem actual_ledger_error_tail_squarefree (Q : Real) (hQ : 91 <= Q) :
    forall A : Real, Q <= A -> abs (betaMainLedger A + independentMainTerm A) <=
      squarefreeLedgerCost Q := by
  intro A hQA
  have hQ1 : (1 : Real) <= Q := by linarith
  have hdelta := tailEnergyCoefficient_pos Q
  have hA : 1 <= A := hQ1.trans hQA
  have hd := actual_diagonal_error_tail Q A hQ hQA
  have hl := actual_shortLog_error_tail_squarefree hQ1 hQA
  have hp := actual_shortPlain_error_tail_squarefree hQ1 hQA
  have hm : 144 * tailEnergyCoefficient Q / A <=
      144 * tailEnergyCoefficient Q / Q :=
    div_le_div_of_nonneg_left (by positivity) (by linarith) hQA
  rw [independentMainTerm, ledger_plus_coefficientMainTerm]
  have hd' : abs (typeTwoDiagonal A + diagonalMainCoefficient A * A -
      Real.log (vaughanCutoff A : Real)) <= sharpDiagonalCost Q := hd
  have hl' : abs (shortLogSource A - shortLogMainTerm A
      (logLinearMain A samplingAlpha1 samplingAlpha2)) <=
      144 * tailEnergyCoefficient Q / Q := hl.trans hm
  have hp' : abs (shortPlainSource A - shortPlainMainTerm A
      (plainLinearMain A samplingAlpha0 samplingAlpha1)) <=
      48 * (Real.log 4 + 4) * tailEnergyCoefficient Q := hp
  unfold squarefreeLedgerCost
  rw [show sharpDiagonalCost Q + tailEnergyCoefficient Q *
    (144 / Q + 48 * (Real.log 4 + 4)) =
      sharpDiagonalCost Q + 144 * tailEnergyCoefficient Q / Q +
        48 * (Real.log 4 + 4) * tailEnergyCoefficient Q by ring]
  apply abs_le.mpr
  constructor <;> linarith only [(abs_le.mp hd').1, (abs_le.mp hd').2,
    (abs_le.mp hl').1, (abs_le.mp hl').2, (abs_le.mp hp').1, (abs_le.mp hp').2]

def squarefreeResidualBudget (D rho Q : Real) : Real :=
  max 0 (D + rho + squarefreeLedgerCost Q)

theorem squarefreeResidualBudget_nonneg (D rho Q : Real) :
    0 <= squarefreeResidualBudget D rho Q := le_max_left _ _

theorem residual_tail_of_readout_squarefree (D rho Q : Real) (hQ : 91 <= Q)
    (hreadout : forall A : Real, Q <= A ->
      VaughanOperatorReview.covarianceOperatorValue A / 2 - independentMainTerm A <= D + rho) :
    forall A : Real, Q <= A -> mertensResidual A <= squarefreeResidualBudget D rho Q := by
  intro A hQA
  have hA : (1 : Real) <= A := by linarith
  have hr := hreadout A hQA
  have hl := (abs_le.mp (actual_ledger_error_tail_squarefree Q hQ A hQA)).2
  rw [actual_residual_decomposition A hA]
  apply le_trans ?_ (le_max_right _ _)
  change _ <= D + rho + squarefreeLedgerCost Q
  linarith

theorem estimate_of_readout_squarefree (D rho Q : Real) (hQ : 91 <= Q)
    (hreadout : forall A : Real, Q <= A ->
      VaughanOperatorReview.covarianceOperatorValue A / 2 - independentMainTerm A <= D + rho) :
    CorrelationAssembly.EstimateObligation := by
  exact estimate_of_mertens_residual_tail
    (by refine ⟨squarefreeResidualBudget D rho Q,
      squarefreeResidualBudget_nonneg D rho Q, Q, ?_,
      residual_tail_of_readout_squarefree D rho Q hQ hreadout⟩; linarith)

end RH16SquarefreeLedger
```
