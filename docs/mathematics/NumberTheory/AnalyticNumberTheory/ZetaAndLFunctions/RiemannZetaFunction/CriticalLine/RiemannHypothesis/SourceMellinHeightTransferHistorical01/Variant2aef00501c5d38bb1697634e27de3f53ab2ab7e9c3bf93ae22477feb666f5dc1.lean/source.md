# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceMellinHeightTransferHistorical01.Variant2aef00501c5d38bb1697634e27de3f53ab2ab7e9c3bf93ae22477feb666f5dc1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ecfd1ef2d1ed2cdc2fd02f5d1aa4c8019c2ede63` · SHA-256 `2aef00501c5d38bb1697634e27de3f53ab2ab7e9c3bf93ae22477feb666f5dc1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Analysis.SpecialFunctions.Exp
import Mathlib.NumberTheory.ArithmeticFunction.VonMangoldt
import Mathlib.Tactic

/-!
Scalar growing-height transfer for the source-exact initial right Mellin line.
This module DOES NOT establish a Mellin inversion, contour estimate or convergence
of the independently specified Dirichlet majorant. The analytic tail contract is
an explicit premise. Source convention: combined -zeta'/zeta, including the exact
-Zcal_B'/Zcal_B + m_B'/m_B correction, angular Fourier frequency and all prime powers.
AI attribution: OpenAI Codex. Local Lean candidate; no accepted-source claim.
-/

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceMellinHeightTransfer
open Filter Set
noncomputable section

/-- The paper's n>=2 Mangoldt Dirichlet majorant, with all prime powers. No convergence claimed. -/
def rightLineMajorant (c : ℝ) : ℝ :=
  ∑' n : ℕ, ArithmeticFunction.vonMangoldt (n + 2) / ((n + 2 : ℕ) : ℝ) ^ c

/-- The actual source's zero-inverse-scale normalization coefficient. -/
def sourceNormalizationFloor : ℝ := 4096 / 109395

/-- Literal #383 K_c, with the Z_A lower bound already accounted for. -/
def rightLineTailConstant (c : ℝ) : ℝ :=
  rightLineMajorant c * (204288 : ℝ) ^ 2 * (1 + c ^ 2) * (1 + (c - 1) ^ 2) /
    (5 * Real.pi * sourceNormalizationFloor)

/-- The growing height is defined for every real scale, with no integer-scale restriction. -/
def movingHeight (c A : ℝ) : ℝ := Real.exp ((2 * c - 1) * A / 5)

/-- On exactly the analytic source's initial-right-line domain, every real admissible scale is legal. -/
theorem movingHeight_ge_one {c A : ℝ} (hc : c ∈ Ioo 1 5) (hA : 1 ≤ A) :
    1 ≤ movingHeight c A := by
  unfold movingHeight
  apply Real.one_le_exp_iff.mpr
  have hp : 0 ≤ 2 * c - 1 := by linarith [hc.1]
  exact div_nonneg (mul_nonneg hp (by linarith)) (by norm_num)

/-- Exact exponential cancellation, valid for any nonzero real scale. -/
theorem movingHeight_tail_factor_eq {c A : ℝ} (hA : A ≠ 0) (K : ℝ) :
    K * Real.exp ((2 * c - 1) * A) / (A ^ 9 * movingHeight c A ^ 5) = K / A ^ 9 := by
  have hp : movingHeight c A ^ 5 = Real.exp ((2 * c - 1) * A) := by
    unfold movingHeight
    rw [← Real.exp_nat_mul]
    congr 1
    norm_num
    ring
  rw [hp]
  field_simp

/-- The paper contour-tail premise transfers to K_c/A^9; no analytic premise is discharged here. -/
theorem tail_at_movingHeight_of_rightLine_contract
    (tail : ℝ → ℝ → ℝ) {c : ℝ} (hc : c ∈ Ioo 1 5)
    (hcontract : ∀ A : ℝ, 1 ≤ A → ∀ T : ℝ, 1 ≤ T →
      |tail A T| ≤ rightLineTailConstant c * Real.exp ((2 * c - 1) * A) /
        (A ^ 9 * T ^ 5)) :
    ∀ A : ℝ, 1 ≤ A → |tail A (movingHeight c A)| ≤ rightLineTailConstant c / A ^ 9 := by
  intro A hA
  have h := hcontract A hA (movingHeight c A) (movingHeight_ge_one hc hA)
  rw [movingHeight_tail_factor_eq (show A ≠ 0 by linarith)] at h
  exact h

/-- A signed head upper certificate transfers with the exact tail loss and the same real radius. -/
theorem full_readout_upper_of_head_and_tail
    (full : ℝ → ℝ) (head : ℝ → ℝ → ℝ) {c Khead R : ℝ}
    (hc : c ∈ Ioo 1 5) (hR : 1 ≤ R) (hK : 0 ≤ rightLineTailConstant c)
    (hcontract : ∀ A : ℝ, 1 ≤ A → ∀ T : ℝ, 1 ≤ T →
      |full A - head A T| ≤ rightLineTailConstant c * Real.exp ((2 * c - 1) * A) /
        (A ^ 9 * T ^ 5))
    (hhead : ∀ A : ℝ, R ≤ A → head A (movingHeight c A) ≤ Khead) :
    ∀ A : ℝ, R ≤ A → full A ≤ Khead + rightLineTailConstant c / R ^ 9 := by
  intro A hRA
  have hA := hR.trans hRA
  have ht := tail_at_movingHeight_of_rightLine_contract
    (fun A T => full A - head A T) hc hcontract A hA
  have hpow : R ^ 9 ≤ A ^ 9 := pow_le_pow_left₀ (by linarith) hRA 9
  have hmon : rightLineTailConstant c / A ^ 9 ≤ rightLineTailConstant c / R ^ 9 :=
    div_le_div_of_nonneg_left hK (by positivity) hpow
  have htail := (abs_le.mp ht).2
  have hheadA := hhead A hRA
  linarith

#print axioms movingHeight_ge_one
#print axioms movingHeight_tail_factor_eq
#print axioms tail_at_movingHeight_of_rightLine_contract
#print axioms full_readout_upper_of_head_and_tail
end
end FormalResearch.RiemannHypothesis.SourceMellinHeightTransfer
```
