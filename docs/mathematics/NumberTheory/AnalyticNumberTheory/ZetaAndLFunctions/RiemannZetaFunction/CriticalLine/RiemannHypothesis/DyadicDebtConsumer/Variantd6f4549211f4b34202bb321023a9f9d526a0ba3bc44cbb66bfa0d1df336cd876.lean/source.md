# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.DyadicDebtConsumer.Variantd6f4549211f4b34202bb321023a9f9d526a0ba3bc44cbb66bfa0d1df336cd876

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `147cc4c915a4f9179141f04f12af5c4c48ad9c2c` · SHA-256 `d6f4549211f4b34202bb321023a9f9d526a0ba3bc44cbb66bfa0d1df336cd876`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.DyadicEnergyBudget
import FormalResearch.RiemannHypothesis.Conversation.NativeCellBound

/-!
# Summable actual dyadic positive debts bound every actual source prefix

The next consumer of Batch 06 HC11 retains every cell. The dyadic blocks
[2^j,2^(j+1)) exactly partition each finite prefix [1,2^k), and their positive
debts bound every shorter signed prefix of the unchanged prime primitive.
Summable block debt therefore gives summable chronological record height and
a common bound on every real source prefix. The power-energy premise remains
explicit. A common upper bound alone does not supply a nonpositive sign or RH.

Human dyadic-budget and chronological direction: grwtsk contributors. Local
exact partition, actual-source consumer and Lean implementation: OpenAI Codex.
Mathlib finite sums and infinite sums retain upstream identity.
-/

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Conversation.DyadicDebtConsumer

open DyadicEnergyBudget NativeSuperlevelConsumer ArithmeticPrimitive
open NativeAccordionFold
open NativeRecordConsumer NativeCellBound RecordSummability OpenArithmeticSuppliers
open scoped BigOperators
noncomputable section

theorem positive_debt_add (N K L : ℕ) :
    positiveDebt N (K + L) = positiveDebt N K + positiveDebt (N + K) L := by
  simp only [positiveDebt, Finset.sum_range_add, storage, Nat.add_assoc]

theorem positive_debt_mono {N K L : ℕ} (hN : 1 ≤ N) (hKL : K ≤ L) :
    positiveDebt N K ≤ positiveDebt N L := by
  apply Finset.sum_le_sum_of_subset_of_nonneg (Finset.range_mono hKL)
  intro j _ _
  exact mul_nonneg (cellClock_pos (by omega : 1 ≤ N + j)).le (le_max_right _ _)

theorem exact_dyadic_partition (k : ℕ) :
    positiveDebt 1 (2 ^ k - 1) =
      ∑ j ∈ Finset.range k, positiveDebt (2 ^ j) (2 ^ j) := by
  induction k with
  | zero => simp [positiveDebt]
  | succ k ih =>
      have hp : 1 ≤ (2 : ℕ) ^ k := Nat.one_le_pow k 2 (by omega)
      have hl : (2 : ℕ) ^ (k + 1) - 1 = (2 ^ k - 1) + 2 ^ k := by
        rw [pow_succ]
        omega
      have hs : 1 + ((2 : ℕ) ^ k - 1) = 2 ^ k := by omega
      rw [Finset.sum_range_succ, ← ih, hl, positive_debt_add, hs]

theorem every_positive_prefix_le_total_dyadic_debt
    (hsum : Summable (fun j : ℕ => positiveDebt (2 ^ j) (2 ^ j))) (K : ℕ) :
    positiveDebt 1 K ≤ ∑' j : ℕ, positiveDebt (2 ^ j) (2 ^ j) := by
  have hp : K + 1 < (2 : ℕ) ^ (K + 1) := Nat.lt_two_pow_self
  have hK : K ≤ (2 : ℕ) ^ (K + 1) - 1 := by omega
  apply (positive_debt_mono (by omega : 1 ≤ (1 : ℕ)) hK).trans
  rw [exact_dyadic_partition]
  exact hsum.sum_le_tsum (Finset.range (K + 1))
    (fun j _ => positive_debt_nonneg (Nat.one_le_pow j 2 (by omega)) _)

theorem positive_debt_is_existing_source_debt (N K : ℕ) :
    positiveDebt N K = primePositiveDebt N K := by
  simp only [positiveDebt, primePositiveDebt, storage, mul_comm]

theorem dyadic_debts_imply_summable_actual_records
    (hsum : Summable (fun j : ℕ => positiveDebt (2 ^ j) (2 ^ j))) :
    Summable (primeRecordIncrement 1) := by
  apply (record_summable_iff_levels_bounded 1).mpr
  refine ⟨∑' j : ℕ, positiveDebt (2 ^ j) (2 ^ j),
    tsum_nonneg (fun j => positive_debt_nonneg (Nat.one_le_pow j 2 (by omega)) _), ?_⟩
  intro K
  have h := AccordionConsumer.actual_record_level_le_positive_debt
    (by omega : 1 ≤ (1 : ℕ)) K
  rw [← positive_debt_is_existing_source_debt] at h
  exact h.trans (every_positive_prefix_le_total_dyadic_debt hsum K)

theorem dyadic_debts_bound_every_real_source_prefix
    (hsum : Summable (fun j : ℕ => positiveDebt (2 ^ j) (2 ^ j))) {x : ℝ} (hx : 1 ≤ x) :
    ordinaryPrimePrimitive x - ordinaryPrimePrimitive 1 ≤
      ∑' j : ℕ, positiveDebt (2 ^ j) (2 ^ j) := by
  have hint (K : ℕ) : ordinaryPrimePrimitive (1 + K : ℕ) - ordinaryPrimePrimitive (1 : ℕ) ≤
      ∑' j : ℕ, positiveDebt (2 ^ j) (2 ^ j) := by
    have h := AccordionConsumer.actual_signed_work_le_positive_debt
      (by omega : 1 ≤ (1 : ℕ)) K
    rw [← positive_debt_is_existing_source_debt] at h
    exact h.trans (every_positive_prefix_le_total_dyadic_debt hsum K)
  simpa only [Nat.cast_one] using actual_integer_upper_implies_all_real
    (by omega : 1 ≤ (1 : ℕ)) hint x (by simpa only [Nat.cast_one] using hx)

theorem complete_dyadic_energy_bounds_every_real_prefix {Ce eta : ℝ}
    (hCe : 0 ≤ Ce) (heta : 0 < eta)
    (henergy : ∀ n : ℕ, EnergySupplierHierarchy.positiveCellPEnergy (2 ^ n) (2 ^ n) 2 ≤
      Ce * (((2 : ℕ) ^ n : ℕ) : ℝ) ^ (1 / 2 - 2 * eta)) :
    Summable (primeRecordIncrement 1) ∧
      ∀ x : ℝ, 1 ≤ x → ordinaryPrimePrimitive x - ordinaryPrimePrimitive 1 ≤
        ∑' j : ℕ, positiveDebt (2 ^ j) (2 ^ j) := by
  have hs := actual_dyadic_power_energy_implies_summable_debt hCe heta henergy
  exact ⟨dyadic_debts_imply_summable_actual_records hs,
    fun _ hx => dyadic_debts_bound_every_real_source_prefix hs hx⟩

/-- The normalized logarithmic budget pays the complete energy on every block. -/
theorem complete_log_energy_implies_summable_debt {Ce epsilon : ℝ}
    (hCe : 0 ≤ Ce) (heps : 0 < epsilon)
    (henergy : ∀ n : ℕ, EnergySupplierHierarchy.positiveCellPEnergy (2 ^ n) (2 ^ n) 2 ≤
      Ce * (((2 : ℕ) ^ n : ℕ) : ℝ) ^ (1 / 2 : ℝ) *
        ((n + 1 : ℕ) : ℝ) ^ (-2 - epsilon)) :
    Summable (fun j : ℕ => positiveDebt (2 ^ j) (2 ^ j)) := by
  have hN (n : ℕ) : 1 ≤ (2 : ℕ) ^ n := Nat.one_le_pow n 2 (by omega)
  have hK (n : ℕ) : 0 < (2 : ℕ) ^ n := Nat.pow_pos (by omega)
  apply log_energy_block_debts_summable heps
    (mul_nonneg (by norm_num : (0 : ℝ) ≤ 2) hCe)
    (fun n => positive_debt_nonneg (hN n) _)
  intro n
  let X : ℝ := (((2 : ℕ) ^ n : ℕ) : ℝ)
  let T : ℝ := ((n + 1 : ℕ) : ℝ) ^ (-2 - epsilon)
  have hX : 0 < X := by
    dsimp [X]
    exact_mod_cast hK n
  have hT : 0 ≤ T := Real.rpow_nonneg (by positivity) _
  have hupper : 0 ≤ Ce * X ^ (1 / 2 : ℝ) * T := by positivity
  have hcancel : X ^ (-(1 / 2 : ℝ)) * X ^ (1 / 2 : ℝ) = 1 := by
    rw [← Real.rpow_add hX]
    norm_num
  calc
    _ ≤ width (2 ^ n) (2 ^ n) *
        EnergySupplierHierarchy.positiveCellPEnergy (2 ^ n) (2 ^ n) 2 :=
      actual_positive_block_square_bound (hN n) (hK n)
    _ ≤ width (2 ^ n) (2 ^ n) * (Ce * X ^ (1 / 2 : ℝ) * T) :=
      mul_le_mul_of_nonneg_left (henergy n) (width_pos (hN n) (hK n)).le
    _ ≤ (2 * X ^ (-(1 / 2 : ℝ))) * (Ce * X ^ (1 / 2 : ℝ) * T) :=
      mul_le_mul_of_nonneg_right (native_width_power_bound _ _) hupper
    _ = (2 * Ce) * (X ^ (-(1 / 2 : ℝ)) * X ^ (1 / 2 : ℝ)) * T := by ring
    _ = _ := by rw [hcancel, mul_one]

theorem complete_log_energy_bounds_every_real_prefix {Ce epsilon : ℝ}
    (hCe : 0 ≤ Ce) (heps : 0 < epsilon)
    (henergy : ∀ n : ℕ, EnergySupplierHierarchy.positiveCellPEnergy (2 ^ n) (2 ^ n) 2 ≤
      Ce * (((2 : ℕ) ^ n : ℕ) : ℝ) ^ (1 / 2 : ℝ) *
        ((n + 1 : ℕ) : ℝ) ^ (-2 - epsilon)) :
    Summable (primeRecordIncrement 1) ∧
      ∀ x : ℝ, 1 ≤ x → ordinaryPrimePrimitive x - ordinaryPrimePrimitive 1 ≤
        ∑' j : ℕ, positiveDebt (2 ^ j) (2 ^ j) := by
  have hs := complete_log_energy_implies_summable_debt hCe heps henergy
  exact ⟨dyadic_debts_imply_summable_actual_records hs,
    fun _ hx => dyadic_debts_bound_every_real_source_prefix hs hx⟩

end
end GRWTSK.RiemannHypothesis.Conversation.DyadicDebtConsumer
```
