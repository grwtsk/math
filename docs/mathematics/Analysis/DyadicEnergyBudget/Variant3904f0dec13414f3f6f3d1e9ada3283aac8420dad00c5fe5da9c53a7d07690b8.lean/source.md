# Complete source: GRWTSK.Analysis.DyadicEnergyBudget.Variant3904f0dec13414f3f6f3d1e9ada3283aac8420dad00c5fe5da9c53a7d07690b8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9ea087f3fa738fde8cdd1d6f02da1ce56d908400` · SHA-256 `3904f0dec13414f3f6f3d1e9ada3283aac8420dad00c5fe5da9c53a7d07690b8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.NativeAccordionFold
import FormalResearch.RiemannHypothesis.Conversation.EnergySupplierHierarchy
import FormalResearch.RiemannHypothesis.Conversation.DyadicShapeHybrid
import Mathlib.Analysis.PSeries

/-!
# Actual positive native block debt consumes complete dyadic energy

Batch 06 HC11 keeps the full weighted profile energy, including its root.
On the literal ordinary-prime storage, positive native block debt satisfies
its exact Cauchy bound by native width times complete positive-cell energy.
Power and logarithmic normalized energy budgets yield summable block debts.
The budgets are explicitly supplied premises; this module does not prove a
prime energy estimate or omit a harmonic root from the Hodge decomposition.

Human dyadic-energy direction: grwtsk contributors. Local actual-source Cauchy
adapter and summability consumers: OpenAI Codex. Mathlib Holder, real powers
and geometric/p-series summability retain upstream source identity.
-/

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Conversation.DyadicEnergyBudget

open ArithmeticPrimitive NativeRecordConsumer NativeSuperlevelConsumer
open NativeAccordionFold FinitePanelCompression EnergySupplierHierarchy
open scoped BigOperators
noncomputable section

/-- The positive debt in this module, with the following exact parameterization.

def positiveDebt (N K : ℕ) : ℝ := ∑ j ∈ Finset.range K, cellClock (N + j) (N + j + 1 : ℕ) *
max (storage N j) 0
-/
def positiveDebt (N K : ℕ) : ℝ :=
  ∑ j ∈ Finset.range K, cellClock (N + j) (N + j + 1 : ℕ) * max (storage N j) 0

theorem positive_debt_nonneg {N : ℕ} (hN : 1 ≤ N) (K : ℕ) : 0 ≤ positiveDebt N K :=
  Finset.sum_nonneg (fun j _ => mul_nonneg (cellClock_pos (by omega : 1 ≤ N + j)).le
    (le_max_right _ _))

theorem actual_positive_block_square_bound {N K : ℕ} (hN : 1 ≤ N) (hK : 0 < K) :
    (positiveDebt N K) ^ 2 ≤ width N K * positiveCellPEnergy N K 2 := by
  let w : ℕ → ℝ := fun j => cellClock (N + j) (N + j + 1 : ℕ)
  let B : ℕ → ℝ := fun j => max (storage N j) 0
  have hw : ∀ j, 0 < w j := fun j => cellClock_pos (by omega : 1 ≤ N + j)
  have h : rootEnergy (Finset.range K) w B (2 : ℝ) ≤ moment (Finset.range K) w B 2 :=
    positive_panel_root_le_moment (Finset.nonempty_range_iff.mpr hK.ne') hw
      (fun j => le_max_right (storage N j) 0) (by norm_num : (1 : ℝ) ≤ 2)
  rw [rootEnergy, Real.rpow_two, show (2 : ℝ) - 1 = 1 by norm_num, Real.rpow_one] at h
  have hm : mass (Finset.range K) w = width N K := native_width_telescope N K
  have he : moment (Finset.range K) w B 2 = positiveCellPEnergy N K 2 := by
    simp only [moment, positiveCellPEnergy, w, B, storage, Real.rpow_two, mul_comm]
  rw [hm, he] at h
  have h := (div_le_iff₀ (width_pos hN hK)).mp h
  simpa only [load, positiveDebt, w, B, mul_comm] using h

theorem work_from_power_energy {X L W E Cw Ce eta : ℝ}
    (hX : 0 < X) (_hL : 0 ≤ L) (hW : 0 ≤ W) (hCw : 0 ≤ Cw) (hCe : 0 ≤ Ce)
    (hroot : L ^ 2 ≤ W * E) (hwidth : W ≤ Cw * X ^ (-(1 / 2 : ℝ)))
    (henergy : E ≤ Ce * X ^ (1 / 2 - 2 * eta)) :
    L ≤ Real.sqrt (Cw * Ce) * X ^ (-eta) := by
  have hbudget := mul_le_mul_of_nonneg_left henergy hW
  have hbudget2 := mul_le_mul_of_nonneg_right hwidth
    (mul_nonneg hCe (Real.rpow_nonneg hX.le (1 / 2 - 2 * eta)))
  have hexp : -(1 / 2 : ℝ) + (1 / 2 - 2 * eta) = -2 * eta := by ring
  have hproduct : (Cw * X ^ (-(1 / 2 : ℝ))) *
      (Ce * X ^ (1 / 2 - 2 * eta)) = Cw * Ce * X ^ (-2 * eta) := by
    calc
      _ = (Cw * Ce) * (X ^ (-(1 / 2 : ℝ)) * X ^ (1 / 2 - 2 * eta)) := by ring
      _ = _ := by rw [← Real.rpow_add hX, hexp]
  have hsq : (Real.sqrt (Cw * Ce) * X ^ (-eta)) ^ 2 = Cw * Ce * X ^ (-2 * eta) := by
    rw [mul_pow, Real.sq_sqrt (mul_nonneg hCw hCe), ← Real.rpow_mul_natCast hX.le]
    simp only [Nat.cast_ofNat]
    rw [show -eta * (2 : ℝ) = -2 * eta by ring]
  have hR : 0 ≤ Real.sqrt (Cw * Ce) * X ^ (-eta) := by positivity
  rw [hproduct] at hbudget2
  nlinarith

theorem power_energy_block_debts_summable {L : ℕ → ℝ} {C eta : ℝ}
    (heta : 0 < eta) (hL : ∀ n, 0 ≤ L n)
    (hbudget : ∀ n, L n ≤ C * ((2 : ℝ) ^ n) ^ (-eta)) : Summable L := by
  have hmajorant := DyadicShapeHybrid.dyadic_polylog_budget_summable
    (theta := (3 / 2 : ℝ) - eta) (lambda := 0) (sigma := 0) (by linarith) 0 C
  have hexp : DyadicShapeHybrid.hybridExponent ((3 / 2 : ℝ) - eta) 0 0 = -eta := by
    unfold DyadicShapeHybrid.hybridExponent
    ring
  rw [hexp] at hmajorant
  simp only [pow_zero, mul_one] at hmajorant
  exact Summable.of_nonneg_of_le hL hbudget hmajorant

theorem native_width_power_bound (N K : ℕ) :
    width N K ≤ 2 * (N : ℝ) ^ (-(1 / 2 : ℝ)) := by
  rw [Real.rpow_neg (Nat.cast_nonneg N), ← Real.sqrt_eq_rpow, inv_eq_one_div]
  unfold width cellClock
  have hi : 0 ≤ (1 : ℝ) / Real.sqrt (N + K : ℕ) := by positivity
  linarith

theorem actual_dyadic_power_energy_implies_summable_debt {Ce eta : ℝ}
    (hCe : 0 ≤ Ce) (heta : 0 < eta)
    (henergy : ∀ n : ℕ, positiveCellPEnergy (2 ^ n) (2 ^ n) 2 ≤
      Ce * (((2 : ℕ) ^ n : ℕ) : ℝ) ^ (1 / 2 - 2 * eta)) :
    Summable (fun n : ℕ => positiveDebt (2 ^ n) (2 ^ n)) := by
  have hN (n : ℕ) : 1 ≤ (2 : ℕ) ^ n := Nat.one_le_pow n 2 (by omega)
  have hK (n : ℕ) : 0 < (2 : ℕ) ^ n := Nat.pow_pos (by omega)
  apply power_energy_block_debts_summable (C := Real.sqrt (2 * Ce)) heta
    (fun n => positive_debt_nonneg (hN n) _)
  intro n
  have h := work_from_power_energy
    (X := (((2 : ℕ) ^ n : ℕ) : ℝ)) (L := positiveDebt (2 ^ n) (2 ^ n))
    (W := width (2 ^ n) (2 ^ n)) (E := positiveCellPEnergy (2 ^ n) (2 ^ n) 2)
    (Cw := 2) (Ce := Ce) (eta := eta)
    (by exact_mod_cast hK n) (positive_debt_nonneg (hN n) _) (width_pos (hN n) (hK n)).le
    (by norm_num) hCe (actual_positive_block_square_bound (hN n) (hK n))
    (native_width_power_bound _ _) (henergy n)
  simpa only [Nat.cast_pow, Nat.cast_ofNat] using h

theorem work_from_log_energy {L C epsilon : ℝ} {n : ℕ}
    (_hL : 0 ≤ L) (hC : 0 ≤ C)
    (hbudget : L ^ 2 ≤ C * ((n + 1 : ℕ) : ℝ) ^ (-2 - epsilon)) :
    L ≤ Real.sqrt C * ((n + 1 : ℕ) : ℝ) ^ (-1 - epsilon / 2) := by
  have hn : (0 : ℝ) < (n + 1 : ℕ) := by positivity
  have hsq : (Real.sqrt C * ((n + 1 : ℕ) : ℝ) ^ (-1 - epsilon / 2)) ^ 2 =
      C * ((n + 1 : ℕ) : ℝ) ^ (-2 - epsilon) := by
    rw [mul_pow, Real.sq_sqrt hC, ← Real.rpow_mul_natCast hn.le]
    simp only [Nat.cast_ofNat]
    rw [show (-1 - epsilon / 2) * (2 : ℝ) = -2 - epsilon by ring]
  have hR : 0 ≤ Real.sqrt C * ((n + 1 : ℕ) : ℝ) ^ (-1 - epsilon / 2) := by positivity
  nlinarith

theorem log_energy_block_debts_summable {L : ℕ → ℝ} {C epsilon : ℝ}
    (heps : 0 < epsilon) (hC : 0 ≤ C) (hL : ∀ n, 0 ≤ L n)
    (hbudget : ∀ n, (L n) ^ 2 ≤ C * ((n + 1 : ℕ) : ℝ) ^ (-2 - epsilon)) : Summable L := by
  have hseries := (Real.summable_nat_rpow.mpr
    (show (-1 - epsilon / 2 : ℝ) < -1 by linarith)).comp_injective Nat.succ_injective
  have hmajorant := hseries.mul_left (Real.sqrt C)
  exact Summable.of_nonneg_of_le hL (fun n => work_from_log_energy (hL n) hC (hbudget n)) hmajorant

end
end GRWTSK.RiemannHypothesis.Conversation.DyadicEnergyBudget
```
