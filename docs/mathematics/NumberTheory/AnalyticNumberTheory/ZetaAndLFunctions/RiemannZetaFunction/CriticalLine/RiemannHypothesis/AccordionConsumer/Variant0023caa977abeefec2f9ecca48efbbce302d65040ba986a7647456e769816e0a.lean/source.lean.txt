import FormalResearch.RiemannHypothesis.Conversation.NativeRecordConsumer

/-!
# The actual positive-debt supplier reaches the signed prime consumer

Every native integer cell and the all-real interpolation are retained. This
consumer proves no prime-debt estimate; it makes the open reserve supplier's
consequence explicit. The chronological record selector is bounded by actual
positive cell work, rather than by a freely chosen surrogate.

Source: audited RH conversation Batches 04–13. Human mathematical direction:
grwtsk contributors. Local consumer and Lean implementation: OpenAI Codex.
-/

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Conversation.AccordionConsumer

open OpenArithmeticSuppliers ArithmeticPrimitive NativeRecordConsumer CausalRecords
open scoped BigOperators
noncomputable section

theorem ordinaryPrime_integer_step {n : ℕ} (hn : 1 ≤ n) :
    ordinaryPrimePrimitive (n + 1 : ℕ) - ordinaryPrimePrimitive n =
      cumulativeDiscrepancy ordinaryPrimeCoefficient n * cellClock n (n + 1 : ℕ) := by
  simp only [ordinaryPrimePrimitive, closedPrimitive, Nat.floor_natCast]
  simpa only [Nat.cast_add, Nat.cast_one] using
    adjacent_integer_increment ordinaryPrimeCoefficient n hn

/-- This retains the signed work on every integer cell, including the tail entrance. -/
theorem actual_signed_work_telescope {N : ℕ} (hN : 1 ≤ N) (K : ℕ) :
    ordinaryPrimePrimitive (N + K : ℕ) - ordinaryPrimePrimitive N =
      ∑ j ∈ Finset.range K, cumulativeDiscrepancy ordinaryPrimeCoefficient (N + j) *
        cellClock (N + j) (N + j + 1 : ℕ) := by
  induction K with
  | zero => simp
  | succ K ih =>
      rw [Finset.sum_range_succ, ← ih]
      have hstep := ordinaryPrime_integer_step (n := N + K) (by omega)
      rw [show N + K.succ = N + K + 1 by omega]
      linarith

theorem actual_signed_work_le_positive_debt {N : ℕ} (hN : 1 ≤ N) (K : ℕ) :
    ordinaryPrimePrimitive (N + K : ℕ) - ordinaryPrimePrimitive N ≤ primePositiveDebt N K := by
  rw [actual_signed_work_telescope hN]
  apply Finset.sum_le_sum
  intro j _hj
  apply mul_le_mul_of_nonneg_right (le_max_left _ _)
  exact (cellClock_pos (by omega : 1 ≤ N + j)).le

/-- The actual running-maximum increment is bounded by the actual positive cell work. -/
theorem actual_record_increment_le_cell_debt {N : ℕ} (hN : 1 ≤ N) (j : ℕ) :
    primeRecordIncrement N j ≤
      max (cumulativeDiscrepancy ordinaryPrimeCoefficient (N + j)) 0 *
        cellClock (N + j) (N + j + 1 : ℕ) := by
  have hold := actual_prefix_le_record N j
  have h := record_le_positive_work
    (level := primeRecordLevel N j)
    (old := ordinaryPrimePrimitive (N + j : ℕ) - ordinaryPrimePrimitive N)
    (work := cumulativeDiscrepancy ordinaryPrimeCoefficient (N + j) *
      cellClock (N + j) (N + j + 1 : ℕ)) hold
  have hstep := ordinaryPrime_integer_step (n := N + j) (by omega)
  have hc : 0 ≤ cellClock (N + j) (N + j + 1 : ℕ) := (cellClock_pos (by omega)).le
  have hmax : max (cumulativeDiscrepancy ordinaryPrimeCoefficient (N + j) *
      cellClock (N + j) (N + j + 1 : ℕ)) 0 =
      max (cumulativeDiscrepancy ordinaryPrimeCoefficient (N + j)) 0 *
        cellClock (N + j) (N + j + 1 : ℕ) := by
    rw [max_mul_of_nonneg _ _ hc, zero_mul]
  unfold primeRecordIncrement
  rw [show ordinaryPrimePrimitive (N + j + 1 : ℕ) - ordinaryPrimePrimitive N =
    (ordinaryPrimePrimitive (N + j : ℕ) - ordinaryPrimePrimitive N) +
      cumulativeDiscrepancy ordinaryPrimeCoefficient (N + j) *
        cellClock (N + j) (N + j + 1 : ℕ) by linarith]
  exact h.trans_eq hmax

theorem actual_record_level_le_positive_debt {N : ℕ} (hN : 1 ≤ N) (K : ℕ) :
    primeRecordLevel N K ≤ primePositiveDebt N K := by
  rw [← record_sum_eq_level]
  exact Finset.sum_le_sum (fun j _ => actual_record_increment_le_cell_debt hN j)

/-- Endpoint sign bounds imply the exact all-real target, with every floor cell covered. -/
theorem integer_sign_implies_all_real {N : ℕ} (hN : 2 ≤ N)
    (hint : ∀ n : ℕ, N ≤ n → ordinaryPrimePrimitive n ≤ 0) :
    OrdinaryPrimeEventualSignSupplier := by
  refine ⟨N, by exact_mod_cast hN, ?_⟩
  intro x hx
  have hNx : N ≤ ⌊x⌋₊ := Nat.le_floor hx
  have hx0 : 0 ≤ x := (Nat.cast_nonneg N).trans hx
  have hleft := hint ⌊x⌋₊ hNx
  have hright := hint (⌊x⌋₊ + 1) (by omega)
  change finitePrimitive ordinaryPrimeCoefficient x ⌊x⌋₊ ≤ 0
  apply finite_cell_sign (by omega) (Nat.floor_le hx0)
    (by simpa only [Nat.cast_add, Nat.cast_one] using (Nat.lt_floor_add_one x).le)
  · simpa only [ordinaryPrimePrimitive, closedPrimitive, Nat.floor_natCast] using hleft
  · simpa only [ordinaryPrimePrimitive, closedPrimitive, Nat.floor_natCast] using hright

/-- The open, actual reserve supplier has a checked route to eventual prime-primitive sign. -/
theorem accordionReserve_implies_eventualSign (h : AccordionReserveSupplier) :
    OrdinaryPrimeEventualSignSupplier := by
  obtain ⟨N, hN, hstart, hdebt⟩ := h
  apply integer_sign_implies_all_real hN
  intro n hn
  obtain ⟨K, rfl⟩ := Nat.exists_eq_add_of_le hn
  have hwork := actual_signed_work_le_positive_debt (by omega : 1 ≤ N) K
  linarith [hdebt K]

end
end GRWTSK.RiemannHypothesis.Conversation.AccordionConsumer
