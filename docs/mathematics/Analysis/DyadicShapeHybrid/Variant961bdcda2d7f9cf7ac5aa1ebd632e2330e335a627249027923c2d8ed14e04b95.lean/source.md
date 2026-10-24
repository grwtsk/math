# Complete source: GRWTSK.Analysis.DyadicShapeHybrid.Variant961bdcda2d7f9cf7ac5aa1ebd632e2330e335a627249027923c2d8ed14e04b95

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c3e8943dfd2754df0fa6b6d22a743f976a534db6` · SHA-256 `961bdcda2d7f9cf7ac5aa1ebd632e2330e335a627249027923c2d8ed14e04b95`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.PositiveSubdivision
import Mathlib.Analysis.SpecificLimits.Normed

/-!
# The stated height-length-shape exponent gives a summable dyadic budget

Batch 05 AA05-02 keeps all three factors H, native width W, and normalized
shape delta. Their finite product bound has exponent theta+lambda-sigma-3/2.
Every polynomial factor in the dyadic index is summable when that exponent
is negative. The seven-eighths specialization retains its epsilon loss.
The actual prime-panel bounds and count estimate remain hypotheses, not
provided arithmetic estimates or a new RH theorem.

Human combined-factor direction: grwtsk contributors. Local exact exponent
and summability consumer: OpenAI Codex. Mathlib's geometric-series theorem
retains its upstream identity.
-/

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Conversation.DyadicShapeHybrid

open scoped BigOperators
noncomputable section

/-- The hybrid exponent in this module, with the following exact parameterization.

def hybridExponent (theta lambda sigma : ℝ) : ℝ := theta + lambda - sigma - 3 / 2
-/
def hybridExponent (theta lambda sigma : ℝ) : ℝ := theta + lambda - sigma - 3 / 2

theorem height_width_shape_product {X theta lambda sigma H W delta Ch Cw Cd : ℝ}
    (hX : 0 < X) (_hH : 0 ≤ H) (hW : 0 ≤ W) (hd : 0 ≤ delta)
    (hCh : 0 ≤ Ch) (hCw : 0 ≤ Cw) (_hCd : 0 ≤ Cd)
    (hh : H ≤ Ch * X ^ theta) (hw : W ≤ Cw * X ^ (lambda - 3 / 2))
    (hs : delta ≤ Cd * X ^ (-sigma)) :
    H * W * delta ≤ (Ch * Cw * Cd) * X ^ hybridExponent theta lambda sigma := by
  have hhw := mul_le_mul hh hw hW (mul_nonneg hCh (Real.rpow_nonneg hX.le _))
  have htotal := mul_le_mul hhw hs hd
    (mul_nonneg (mul_nonneg hCh (Real.rpow_nonneg hX.le _))
      (mul_nonneg hCw (Real.rpow_nonneg hX.le _)))
  have he : theta + (lambda - 3 / 2) + -sigma = hybridExponent theta lambda sigma := by
    unfold hybridExponent
    ring
  calc
    _ ≤ (Ch * X ^ theta) * (Cw * X ^ (lambda - 3 / 2)) * (Cd * X ^ (-sigma)) := htotal
    _ = (Ch * Cw * Cd) * (X ^ theta * X ^ (lambda - 3 / 2) * X ^ (-sigma)) := by ring
    _ = _ := by rw [← Real.rpow_add hX, ← Real.rpow_add hX, he]

set_option maxHeartbeats 800000 in
-- The geometric-series adapter normalizes nested real powers and shifted exponents.
theorem dyadic_polylog_budget_summable {theta lambda sigma : ℝ}
    (hgap : theta + lambda - sigma < 3 / 2) (k : ℕ) (C : ℝ) :
    Summable (fun n : ℕ => C * ((n + 1 : ℕ) : ℝ) ^ k *
      ((2 : ℝ) ^ n) ^ hybridExponent theta lambda sigma) := by
  let r : ℝ := (2 : ℝ) ^ hybridExponent theta lambda sigma
  have hr0 : 0 < r := Real.rpow_pos_of_pos (by norm_num) _
  have hr1 : r < 1 := Real.rpow_lt_one_of_one_lt_of_neg (by norm_num)
    (by unfold hybridExponent; linarith)
  have hseries := summable_pow_mul_geometric_of_norm_lt_one k
    (by simpa only [Real.norm_eq_abs, abs_of_pos hr0] using hr1 : ‖r‖ < 1)
  have hshift := (hseries.comp_injective Nat.succ_injective).mul_right r⁻¹
  change Summable (fun n : ℕ => (↑(n + 1) ^ k * r ^ (n + 1)) * r⁻¹) at hshift
  have heq : (fun n : ℕ => (↑(n + 1) ^ k * r ^ (n + 1)) * r⁻¹) =
      fun n : ℕ => ↑(n + 1) ^ k * r ^ n := by
    funext n
    rw [pow_succ]
    simp only [mul_assoc, mul_inv_cancel₀ hr0.ne', mul_one]
  rw [heq] at hshift
  have h := hshift.mul_left C
  apply h.congr
  intro n
  dsimp [r]
  rw [← Real.rpow_natCast_mul (by norm_num : (0 : ℝ) ≤ 2) n,
    mul_comm (n : ℝ), Real.rpow_mul_natCast (by norm_num : (0 : ℝ) ≤ 2)]
  ring

theorem positive_block_debts_summable {theta lambda sigma C : ℝ} {k : ℕ} {D : ℕ → ℝ}
    (hgap : theta + lambda - sigma < 3 / 2) (hD : ∀ n, 0 ≤ D n)
    (hbound : ∀ n, D n ≤ C * ((n + 1 : ℕ) : ℝ) ^ k *
      ((2 : ℝ) ^ n) ^ hybridExponent theta lambda sigma) : Summable D :=
  Summable.of_nonneg_of_le hD hbound (dyadic_polylog_budget_summable hgap k C)

theorem seven_eighths_threshold (epsilon lambda sigma : ℝ) :
    (7 / 8 + epsilon) + lambda - sigma < 3 / 2 ↔
      lambda - sigma < 5 / 8 - epsilon := by constructor <;> intro h <;> linarith

end
end GRWTSK.RiemannHypothesis.Conversation.DyadicShapeHybrid
```
