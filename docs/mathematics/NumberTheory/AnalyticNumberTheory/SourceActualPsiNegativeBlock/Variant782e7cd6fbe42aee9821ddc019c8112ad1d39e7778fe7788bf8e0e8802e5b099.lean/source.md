# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.SourceActualPsiNegativeBlock.Variant782e7cd6fbe42aee9821ddc019c8112ad1d39e7778fe7788bf8e0e8802e5b099

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `663f62ff65817f44a2afc18ba2b681245f88b7bc` · SHA-256 `782e7cd6fbe42aee9821ddc019c8112ad1d39e7778fe7788bf8e0e8802e5b099`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.NumberTheory.Chebyshev
import Mathlib.NumberTheory.Harmonic.EulerMascheroni

/-!
An actual closed Chebyshev-discrepancy negative block. The prime-power four
contribution and closed prime-seven endpoint are retained. This defeats one
global positivity shortcut, not the actual signed arithmetic/RH target.
Research direction: grwtsk contributors. AI construction: OpenAI Codex.
-/

set_option autoImplicit false

noncomputable section
namespace RH16ActualPsiNegativeBlock

open ArithmeticFunction

/-- The actual complete closed Mangoldt sum with the independent gamma correction. -/
def shiftedActualChebyshev (y : ℝ) : ℝ :=
  Chebyshev.psi y - y + 2 * (Real.eulerMascheroniConstant + 1 - Real.log 2)

/-- Prime power four contributes log two, independently of the prime-only inventory. -/
theorem actual_prime_power_four_contribution :
    vonMangoldt 4 = Real.log (2 : ℝ) := by
  rw [show (4 : ℕ) = 2 ^ 2 by norm_num,
    vonMangoldt_apply_pow (by norm_num : (2 : ℕ) ≠ 0),
    vonMangoldt_apply_prime Nat.prime_two]
  norm_num

/-- The entire real interval retains exactly the closed atoms through six. -/
theorem actual_psi_on_negative_block (y : ℝ) (hy : (13 / 2 : ℝ) ≤ y) (hy7 : y < 7) :
    Chebyshev.psi y = Real.log (60 : ℝ) := by
  have hf : ⌊y⌋₊ = 6 := by
    apply Nat.floor_eq_iff (by linarith : 0 ≤ y) |>.mpr
    constructor <;> norm_num <;> linarith
  have hpsi : Chebyshev.psi y = Chebyshev.psi (6 : ℝ) := by
    unfold Chebyshev.psi
    rw [hf]
    norm_num
  rw [hpsi]
  have hlcm : Nat.lcmUpto 6 = 60 := by decide
  simpa only [hlcm, Nat.cast_ofNat] using Chebyshev.psi_eq_log_lcmUpto 6

private theorem log_fifteen_lt_three : Real.log (15 : ℝ) < 3 := by
  have he1 := Real.quadratic_le_exp_of_nonneg (by norm_num : (0 : ℝ) ≤ 1)
  have he1b : (5 / 2 : ℝ) ≤ Real.exp 1 := by nlinarith
  have hcube : (5 / 2 : ℝ) ^ 3 ≤ (Real.exp 1) ^ 3 := by gcongr
  have he3 : Real.exp (3 : ℝ) = (Real.exp 1) ^ 3 := by
    rw [show (3 : ℝ) = 1 + 1 + 1 by norm_num, Real.exp_add, Real.exp_add]
    ring
  have he15 : (15 : ℝ) < Real.exp 3 := by rw [he3]; nlinarith
  exact (Real.log_lt_iff_lt_exp (by norm_num : (0 : ℝ) < 15)).mpr he15

/-- The actual discrepancy is uniformly negative before, but not including, prime seven. -/
theorem shiftedActualChebyshev_negative_on_block (y : ℝ)
    (hy : (13 / 2 : ℝ) ≤ y) (hy7 : y < 7) :
    shiftedActualChebyshev y ≤ -(1 / 6 : ℝ) := by
  have hlog : Real.log (60 : ℝ) = 2 * Real.log 2 + Real.log 15 := by
    rw [show (60 : ℝ) = 2 ^ 2 * 15 by norm_num,
      Real.log_mul (by positivity) (by norm_num), Real.log_pow]
    ring
  have hgamma := Real.eulerMascheroniConstant_lt_two_thirds
  unfold shiftedActualChebyshev
  rw [actual_psi_on_negative_block y hy hy7, hlog]
  linarith [log_fifteen_lt_three]

/-- The assigned closed prime-seven value includes its new log-seven atom. -/
theorem actual_psi_at_closed_seven : Chebyshev.psi (7 : ℝ) = Real.log (420 : ℝ) := by
  have hlcm : Nat.lcmUpto 7 = 420 := by decide
  simpa only [hlcm, Nat.cast_ofNat] using Chebyshev.psi_eq_log_lcmUpto 7

/-- One actual real point disproves global nonnegativity of the shifted discrepancy. -/
theorem shiftedActualChebyshev_not_nonnegative_everywhere :
    ¬ ∀ y : ℝ, 2 ≤ y → 0 ≤ shiftedActualChebyshev y := by
  intro h
  have hlo := h (13 / 2) (by norm_num)
  have hhi := shiftedActualChebyshev_negative_on_block (13 / 2) le_rfl (by norm_num)
  linarith

end RH16ActualPsiNegativeBlock
```
