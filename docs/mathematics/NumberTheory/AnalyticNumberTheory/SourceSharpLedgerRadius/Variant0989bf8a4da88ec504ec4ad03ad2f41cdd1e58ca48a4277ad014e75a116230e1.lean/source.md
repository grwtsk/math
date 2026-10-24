# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.SourceSharpLedgerRadius.Variant0989bf8a4da88ec504ec4ad03ad2f41cdd1e58ca48a4277ad014e75a116230e1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b59f5b9d0baa9d54204bfa0dc5895377189c5a8d` · SHA-256 `0989bf8a4da88ec504ec4ad03ad2f41cdd1e58ca48a4277ad014e75a116230e1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceSharpDiagonalRadius

/-! Real-radius propagation of the actual simultaneous source ledger budget.
Direction and conceptual origin: grwtsk contributors.
Source composition and formalization: OpenAI Codex assistance. -/
set_option autoImplicit false
noncomputable section
namespace RH16SharpLedgerRadius
open RH16ExactTailEnergy RH16ProperPowerCell RH16ProperPowerDiagonal
open RH16SharpDiagonalTail RH16SharpDiagonalLedgerConsumer RH16SharpDiagonalRadius
open RH16ExactOverlapSamplingConsumer RH16ExactReadoutConsumer
open FormalResearch.RiemannHypothesis SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateTailReduction

/-- The actual diagonal cost decreases without rounding the admitted real radius. -/
theorem sharpDiagonalCost_antitone {Q A : ℝ} (hQ : 91 ≤ Q) (hQA : Q ≤ A) :
    sharpDiagonalCost A ≤ sharpDiagonalCost Q := by
  have hQ1 : (1 : ℝ) ≤ Q := by linarith
  have hA1 := hQ1.trans hQA
  have hd := tailEnergyCoefficient_antitone (by linarith : 0 < Q) hQA
  have hs := Real.sqrt_le_sqrt hd
  have hproper : powerTailBudget (⌊A ^ 2⌋₊ : ℝ) ≤
      powerTailBudget (⌊Q ^ 2⌋₊ : ℝ) := by
    have hQU : 1 ≤ ⌊Q ^ 2⌋₊ := (Nat.one_le_floor_iff _).mpr (by nlinarith)
    have hAU : 1 ≤ ⌊A ^ 2⌋₊ := (Nat.one_le_floor_iff _).mpr (by nlinarith)
    apply powerTailBudget_antitone
      (by change (1 : ℝ) ≤ ⌊Q ^ 2⌋₊; exact_mod_cast hQU)
      (by change (1 : ℝ) ≤ ⌊A ^ 2⌋₊; exact_mod_cast hAU)
    exact_mod_cast (Nat.floor_mono (by nlinarith : Q ^ 2 ≤ A ^ 2))
  have hprime : (Real.log 4 + 4) * (1 + 2 * Real.sqrt (tailEnergyCoefficient A)) ≤
      (Real.log 4 + 4) * (1 + 2 * Real.sqrt (tailEnergyCoefficient Q)) := by
    gcongr
  have hratio := log_cube_div_square_le hQ hQA
  have hprod := mul_le_mul hd hratio
    (by positivity : 0 ≤ Real.log A ^ 3 / A ^ 2) (tailEnergyCoefficient_pos Q).le
  have hshort : 16 * tailEnergyCoefficient A * Real.log A ^ 3 / (3 * A ^ 2) ≤
      16 * tailEnergyCoefficient Q * Real.log Q ^ 3 / (3 * Q ^ 2) := by
    convert mul_le_mul_of_nonneg_left hprod (by norm_num : (0 : ℝ) ≤ 16 / 3) using 1 <;> ring
  unfold sharpDiagonalCost
  linarith

/-- This is a regional maximum, rather than a sum of alternative radius costs. -/
theorem sharpSamplingLedgerCost_antitone {Q A : ℝ} (hQ : 91 ≤ Q) (hQA : Q ≤ A) :
    exactSamplingLedgerCost (sharpDiagonalCost A) A ≤
      exactSamplingLedgerCost (sharpDiagonalCost Q) Q := by
  have hd := tailEnergyCoefficient_antitone (by linarith : 0 < Q) hQA
  have hc := sharpDiagonalCost_antitone hQ hQA
  have hlog : 192 * tailEnergyCoefficient A / A ≤ 192 * tailEnergyCoefficient Q / Q := by
    calc
      _ ≤ 192 * tailEnergyCoefficient Q / A := by gcongr
      _ ≤ _ := div_le_div_of_nonneg_left (by positivity) (by linarith) hQA
  have hplain : 64 * (Real.log 4 + 4) * tailEnergyCoefficient A ≤
      64 * (Real.log 4 + 4) * tailEnergyCoefficient Q := by gcongr
  unfold exactSamplingLedgerCost
  linarith

theorem sharpSamplingLedgerCost_lt_1729 (Q : ℝ) (hQ : 91 ≤ Q) :
    exactSamplingLedgerCost (sharpDiagonalCost Q) Q < 1729 :=
  (sharpSamplingLedgerCost_antitone (by norm_num : (91 : ℝ) ≤ 91) hQ).trans_lt
    exactSamplingLedgerCost_ninety_one_lt_1729

/-- A later readout radius retains its own original finite prefix. -/
theorem all_real_lower_with_fixed_ledger_cap (D rho Q : ℝ) (hQ : 91 ≤ Q)
    (hreadout : ∀ A : ℝ, Q ≤ A →
      VaughanOperatorReview.covarianceOperatorValue A / 2 - independentMainTerm A ≤ D + rho) :
    ∀ A : ℝ, 1 ≤ A →
      min (archimedeanMultiplier 0 - 2 * ∑ n ∈ primeIndices Q,
        |ArithmeticFunction.vonMangoldt n / Real.sqrt n|)
        (archimedeanMultiplier 0 - 2 * max 0 (D + rho + 1729)) ≤
          sourceQuadraticValue explicitSecondDerivative A := by
  have hc := sharpSamplingLedgerCost_lt_1729 Q hQ
  have hb : exactReadoutResidualBudget D rho Q (sharpDiagonalCost Q) ≤
      max 0 (D + rho + 1729) := by
    unfold exactReadoutResidualBudget
    exact max_le_max le_rfl (by linarith)
  intro A hA
  apply le_trans ?_ (all_real_lower_of_readout D rho Q hQ hreadout A hA)
  apply min_le_min le_rfl
  linarith

end RH16SharpLedgerRadius
```
