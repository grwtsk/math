import FormalResearch.RiemannHypothesis.Conversation.WeightedHaarCoordinates
import FormalResearch.RiemannHypothesis.Conversation.DyadicDebtConsumer

/-!
# Literal native prime cells consume the complete weighted Haar budget

Batch 06 HC04/HC11's next consumer constructs the chronological finite tree
from the actual ordinary-prime storage and the exact native cell widths. Its
load is the unchanged signed primitive rise. Its complete normalized Haar
energy, including the harmonic root, is exactly the full signed cell energy.
Positive cell energy is at most that complete energy. Supplied complete dyadic
coefficient caps therefore reach actual record summability and all-real prefix
bounds. No coefficient cap, nonpositive sign or RH conclusion is supplied.

Human native Hodge and retained-root direction: grwtsk contributors. Local exact
tree construction, source adapter and consumers: OpenAI Codex. Mathlib finite
sums, real powers and infinite sums retain upstream mathematical/formal origin.
-/

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Conversation.NativeHaarEnergy

open RefinementTree WeightedHaarCoordinates NativeSuperlevelConsumer
open ArithmeticPrimitive NativeRecordConsumer OpenArithmeticSuppliers
open scoped BigOperators
noncomputable section

/-- The complete cell energy in this module, with the following exact parameterization.

def completeCellEnergy (N K : ℕ) : ℝ := ∑ j ∈ Finset.range K, storage N j ^ 2 * cellClock (N +
j) (N + j + 1 : ℕ)
-/
def completeCellEnergy (N K : ℕ) : ℝ :=
  ∑ j ∈ Finset.range K, storage N j ^ 2 * cellClock (N + j) (N + j + 1 : ℕ)

/-- Parameter K gives exactly K+1 consecutive cells; the first cell is retained. -/
def nativeTree (N : ℕ) : ℕ → Tree
  | 0 => .leaf (cellClock N (N + 1 : ℕ)) (storage N 0 * cellClock N (N + 1 : ℕ))
  | K + 1 => .split (nativeTree N K)
      (.leaf (cellClock (N + (K + 1)) (N + (K + 1) + 1 : ℕ))
        (storage N (K + 1) * cellClock (N + (K + 1)) (N + (K + 1) + 1 : ℕ)))

theorem native_tree_positive {N : ℕ} (hN : 1 ≤ N) (K : ℕ) : Positive (nativeTree N K) := by
  induction K with
  | zero => exact cellClock_pos hN
  | succ K ih =>
      exact ⟨ih, cellClock_pos (by omega : 1 ≤ N + (K + 1))⟩

theorem normalized_atom_energy {w : ℝ} (hw : 0 < w) (a : ℝ) :
    (a * w) ^ 2 / w = a ^ 2 * w := by
  field_simp [hw.ne']

theorem native_tree_leaf_energy {N : ℕ} (hN : 1 ≤ N) (K : ℕ) :
    leafEnergy (nativeTree N K) = completeCellEnergy N (K + 1) := by
  induction K with
  | zero =>
      simpa [nativeTree, leafEnergy, completeCellEnergy] using
        normalized_atom_energy (cellClock_pos hN) (storage N 0)
  | succ K ih =>
      change leafEnergy (nativeTree N K) +
        (storage N (K + 1) * cellClock (N + (K + 1)) (N + (K + 1) + 1 : ℕ)) ^ 2 /
          cellClock (N + (K + 1)) (N + (K + 1) + 1 : ℕ) =
        ∑ j ∈ Finset.range ((K + 1) + 1),
          storage N j ^ 2 * cellClock (N + j) (N + j + 1 : ℕ)
      rw [ih]
      conv_rhs => rw [Finset.sum_range_succ]
      congr 1
      exact normalized_atom_energy (cellClock_pos (by omega : 1 ≤ N + (K + 1))) _

theorem native_tree_value (N K : ℕ) :
    value (nativeTree N K) =
      ∑ j ∈ Finset.range (K + 1), storage N j * cellClock (N + j) (N + j + 1 : ℕ) := by
  induction K with
  | zero => simp [nativeTree, value]
  | succ K ih =>
      change value (nativeTree N K) +
        storage N (K + 1) * cellClock (N + (K + 1)) (N + (K + 1) + 1 : ℕ) = _
      rw [ih]
      conv_rhs => rw [Finset.sum_range_succ]

theorem native_tree_width (N K : ℕ) :
    width (nativeTree N K) =
      ∑ j ∈ Finset.range (K + 1), cellClock (N + j) (N + j + 1 : ℕ) := by
  induction K with
  | zero => simp [nativeTree, width]
  | succ K ih =>
      change width (nativeTree N K) + cellClock (N + (K + 1)) (N + (K + 1) + 1 : ℕ) = _
      rw [ih]
      conv_rhs => rw [Finset.sum_range_succ]

theorem native_tree_actual_root {N : ℕ} (hN : 1 ≤ N) (K : ℕ) :
    rootCoefficient (nativeTree N K) =
      (ordinaryPrimePrimitive (N + (K + 1) : ℕ) - ordinaryPrimePrimitive N) /
        Real.sqrt (2 * (1 / Real.sqrt N - 1 / Real.sqrt (N + (K + 1) : ℕ))) := by
  rw [rootCoefficient, native_tree_value, native_tree_width, native_width_telescope]
  simp only [storage]
  rw [← AccordionConsumer.actual_signed_work_telescope hN]

theorem actual_complete_haar_energy {N : ℕ} (hN : 1 ≤ N) (K : ℕ) :
    squaredMass (coefficients (nativeTree N K)) = completeCellEnergy N (K + 1) := by
  rw [complete_coordinate_energy _ (native_tree_positive hN K), native_tree_leaf_energy hN]

theorem positive_cell_energy_le_complete {N : ℕ} (hN : 1 ≤ N) (K : ℕ) :
    EnergySupplierHierarchy.positiveCellPEnergy N K 2 ≤ completeCellEnergy N K := by
  simp only [EnergySupplierHierarchy.positiveCellPEnergy, Real.rpow_two, completeCellEnergy,
    storage]
  apply Finset.sum_le_sum
  intro j _
  have hsq : (max (cumulativeDiscrepancy ordinaryPrimeCoefficient (N + j)) 0) ^ 2 ≤
      cumulativeDiscrepancy ordinaryPrimeCoefficient (N + j) ^ 2 := by
    rcases le_total (cumulativeDiscrepancy ordinaryPrimeCoefficient (N + j)) 0 with h | h
    · rw [max_eq_right h, zero_pow (by decide : (2 : ℕ) ≠ 0)]
      exact sq_nonneg _
    · rw [max_eq_left h]
  exact mul_le_mul_of_nonneg_right hsq (cellClock_pos (by omega : 1 ≤ N + j)).le

theorem positive_cell_energy_le_complete_haar {N K : ℕ} (hN : 1 ≤ N) (hK : 0 < K) :
    EnergySupplierHierarchy.positiveCellPEnergy N K 2 ≤
      squaredMass (coefficients (nativeTree N (K - 1))) := by
  rw [actual_complete_haar_energy hN,
    show K - 1 + 1 = K by omega]
  exact positive_cell_energy_le_complete hN K

theorem complete_haar_power_budget_bounds_every_real_prefix {Ce eta : ℝ}
    (hCe : 0 ≤ Ce) (heta : 0 < eta)
    (hbudget : ∀ n : ℕ, squaredMass (coefficients (nativeTree (2 ^ n) (2 ^ n - 1))) ≤
      Ce * (((2 : ℕ) ^ n : ℕ) : ℝ) ^ (1 / 2 - 2 * eta)) :
    Summable (primeRecordIncrement 1) ∧
      ∀ x : ℝ, 1 ≤ x → ordinaryPrimePrimitive x - ordinaryPrimePrimitive 1 ≤
        ∑' j : ℕ, DyadicEnergyBudget.positiveDebt (2 ^ j) (2 ^ j) := by
  apply DyadicDebtConsumer.complete_dyadic_energy_bounds_every_real_prefix hCe heta
  intro n
  exact (positive_cell_energy_le_complete_haar (Nat.one_le_pow n 2 (by omega))
    (Nat.pow_pos (by omega))).trans (hbudget n)

theorem complete_haar_log_budget_bounds_every_real_prefix {Ce epsilon : ℝ}
    (hCe : 0 ≤ Ce) (heps : 0 < epsilon)
    (hbudget : ∀ n : ℕ, squaredMass (coefficients (nativeTree (2 ^ n) (2 ^ n - 1))) ≤
      Ce * (((2 : ℕ) ^ n : ℕ) : ℝ) ^ (1 / 2 : ℝ) *
        ((n + 1 : ℕ) : ℝ) ^ (-2 - epsilon)) :
    Summable (primeRecordIncrement 1) ∧
      ∀ x : ℝ, 1 ≤ x → ordinaryPrimePrimitive x - ordinaryPrimePrimitive 1 ≤
        ∑' j : ℕ, DyadicEnergyBudget.positiveDebt (2 ^ j) (2 ^ j) := by
  apply DyadicDebtConsumer.complete_log_energy_bounds_every_real_prefix hCe heps
  intro n
  exact (positive_cell_energy_le_complete_haar (Nat.one_le_pow n 2 (by omega))
    (Nat.pow_pos (by omega))).trans (hbudget n)

end
end GRWTSK.RiemannHypothesis.Conversation.NativeHaarEnergy
