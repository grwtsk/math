# Complete source: GRWTSK.Analysis.TriangularPulseRealP.Varianta67405d5479a0e6ef16d74a72fe14e99bd86dcc5ad04360204c2a29fad68ee7e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4aadfc12e320f78067356d22d2b1733c25a7be1f` · SHA-256 `a67405d5479a0e6ef16d74a72fe14e99bd86dcc5ad04360204c2a29fad68ee7e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.TriangularPulseDebt
import Mathlib.Analysis.SpecialFunctions.Pow.Real

/-!
# The full native pulse price retains every fixed real exponent

The complete source debt and width imply exactly
D^p/U^(p-1) >= a^p/(16^p*3^(p-1))*M^(p-2), for every real p>=1.
Finite aggregation retains every selected individual pulse price. At p=2
this is the fixed a^2/768 consumer. The growth choice and disjoint infinite
counting-system/regulator reconstruction are separate; no actual-prime
arithmetic estimate follows from these changed-weight comparisons.
Human fixed-p and full-inventory direction: grwtsk contributors. Local real-power
consumer: OpenAI Codex. Mathlib real powers retain upstream identity.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.TriangularPulseRealP
open TriangularPulseDebt
open scoped BigOperators
noncomputable section

def price (M : ℕ) (a p : ℝ) : ℝ := (debt M a) ^ p / (width M) ^ (p - 1)

private theorem exact_source_power_ratio {m a : ℝ} (hm : 0 < m) (ha : 0 ≤ a) (p : ℝ) :
    (a / (16 * m)) ^ p / (3 / m ^ 2) ^ (p - 1) =
      a ^ p / ((16 : ℝ) ^ p * (3 : ℝ) ^ (p - 1)) * m ^ (p - 2) := by
  have hmp : (m ^ (2 : ℕ)) ^ (p - 1) = m ^ (2 * (p - 1)) := by
    rw [← Real.rpow_natCast m 2, ← Real.rpow_mul hm.le]
    norm_num
  rw [Real.div_rpow ha (by positivity), Real.mul_rpow (by norm_num) hm.le,
    Real.div_rpow (by norm_num : (0 : ℝ) ≤ 3) (sq_nonneg m), hmp]
  rw [show (2 : ℝ) * (p - 1) = (p - 2) + p by ring, Real.rpow_add hm]
  field_simp [(Real.rpow_pos_of_pos hm p).ne',
    (Real.rpow_pos_of_pos hm (p - 2)).ne',
    (Real.rpow_pos_of_pos (by norm_num : (0 : ℝ) < 16) p).ne',
    (Real.rpow_pos_of_pos (by norm_num : (0 : ℝ) < 3) (p - 1)).ne']

theorem full_real_pulse_price_lower {M : ℕ} (hM : 2 ≤ M) {a p : ℝ}
    (ha : 0 ≤ a) (hp : 1 ≤ p) :
    a ^ p / ((16 : ℝ) ^ p * (3 : ℝ) ^ (p - 1)) * (M : ℝ) ^ (p - 2) ≤ price M a p := by
  have hM0 : (0 : ℝ) < M := by exact_mod_cast (show 0 < M by omega)
  have hD := complete_pulse_debt_lower hM ha
  have hU := complete_pulse_width_upper hM
  have hDp := Real.rpow_le_rpow (by positivity : 0 ≤ a / (16 * M)) hD (by linarith : 0 ≤ p)
  have hUp := Real.rpow_le_rpow (complete_pulse_width_positive hM).le hU
    (sub_nonneg.mpr hp)
  rw [← exact_source_power_ratio hM0 ha p]
  exact div_le_div₀ (Real.rpow_nonneg ((by positivity : 0 ≤ a / (16 * M)).trans hD) p)
    hDp (Real.rpow_pos_of_pos (complete_pulse_width_positive hM) _) hUp

theorem complete_finite_real_pulse_payment (s : Finset ℕ) (M : ℕ → ℕ)
    (hM : ∀ j ∈ s, 2 ≤ M j) {a p : ℝ} (ha : 0 ≤ a) (hp : 1 ≤ p) :
    (a ^ p / ((16 : ℝ) ^ p * (3 : ℝ) ^ (p - 1))) *
      (∑ j ∈ s, (M j : ℝ) ^ (p - 2)) ≤ ∑ j ∈ s, price (M j) a p := by
  rw [Finset.mul_sum]
  exact Finset.sum_le_sum (fun j hj ↦ full_real_pulse_price_lower (hM j hj) ha hp)

theorem exact_square_price (M : ℕ) (a : ℝ) : price M a 2 = (debt M a) ^ 2 / width M := by
  norm_num [price, Real.rpow_natCast]

end
end GRWTSK.RiemannHypothesis.Conversation.TriangularPulseRealP
```
