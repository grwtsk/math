import FormalResearch.RiemannHypothesis.Conversation.FirstCrossingGreen

/-!
# The chronological storage is the literal Chebyshev theta error

Every integer from two through the closed natural endpoint is retained. This
identifies the cumulative coefficient used by the record and Green consumers
with the actual ordinary-prime Chebyshev function. Prime-power and Mangoldt
storage are distinct objects and are not substituted here.

Source: audited RH conversation Batches 04–13. Human direction:
grwtsk contributors. Local source identification and Lean implementation:
OpenAI Codex. Chebyshev theta is imported from Mathlib under its own identity.
-/

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Conversation.PrimeStorage

open OpenArithmeticSuppliers ArithmeticPrimitive FirstCrossingGreen
open scoped BigOperators
noncomputable section

theorem theta_eq_all_integer_sum (n : ℕ) :
    Chebyshev.theta n = ∑ k ∈ Finset.Icc 2 n, if k.Prime then Real.log k else 0 := by
  rw [Chebyshev.theta_eq_sum_Icc, Nat.floor_natCast, Finset.sum_filter]
  symm
  apply Finset.sum_subset
  · intro k hk
    obtain ⟨hk2, hkn⟩ := Finset.mem_Icc.mp hk
    exact Finset.mem_Icc.mpr ⟨by omega, hkn⟩
  · intro k hk hnot
    have hkn := (Finset.mem_Icc.mp hk).2
    have hk2 : k < 2 := by
      by_contra h
      exact hnot (Finset.mem_Icc.mpr ⟨by omega, hkn⟩)
    interval_cases k <;> norm_num

/-- The +1 comes from omitting the integer-one coefficient in the actual source. -/
theorem actual_storage_eq_theta (n : ℕ) (hn : 1 ≤ n) :
    cumulativeDiscrepancy ordinaryPrimeCoefficient n = Chebyshev.theta n - n + 1 := by
  have hs : cumulativeDiscrepancy ordinaryPrimeCoefficient n =
      (∑ k ∈ Finset.Icc 2 n, if k.Prime then Real.log k else 0) -
        (Finset.Icc 2 n).card := by
    unfold cumulativeDiscrepancy
    calc
      _ = ∑ k ∈ Finset.Icc 2 n, ((if k.Prime then Real.log k else 0) - 1) := by
        apply Finset.sum_congr rfl
        intro k hk
        exact ordinaryPrimeCoefficient_at_source_index (Finset.mem_Icc.mp hk).1
      _ = _ := by rw [Finset.sum_sub_distrib]; simp
  have hc : (Finset.Icc 2 n).card = n - 1 := by simp
  rw [hs, ← theta_eq_all_integer_sum, hc, Nat.cast_sub hn, Nat.cast_one]
  ring

theorem actual_storage_step {n : ℕ} (hn : 1 ≤ n) :
    cumulativeDiscrepancy ordinaryPrimeCoefficient (n + 1) -
      cumulativeDiscrepancy ordinaryPrimeCoefficient n = ordinaryPrimeCoefficient (n + 1) := by
  unfold cumulativeDiscrepancy
  rw [Finset.sum_Icc_succ_top (by omega : 2 ≤ n + 1)]
  ring

/-- Every interior source-profile coefficient is the actual prime-minus-one atom. -/
theorem actual_green_work_eq_prime_atoms {N : ℕ} (hN : 1 ≤ N) (K : ℕ) :
    profileWork (fun j => cumulativeDiscrepancy ordinaryPrimeCoefficient (N + j))
      (actualSuffix N K) K =
      ∑ j ∈ Finset.range K, ordinaryPrimeCoefficient (N + j + 1) *
        actualSuffix N K (j + 1) := by
  unfold profileWork
  apply Finset.sum_congr rfl
  intro j _hj
  change (cumulativeDiscrepancy ordinaryPrimeCoefficient (N + (j + 1)) -
    cumulativeDiscrepancy ordinaryPrimeCoefficient (N + j)) * actualSuffix N K (j + 1) = _
  rw [show N + (j + 1) = N + j + 1 by omega,
    actual_storage_step (by omega : 1 ≤ N + j)]

end
end GRWTSK.RiemannHypothesis.Conversation.PrimeStorage
