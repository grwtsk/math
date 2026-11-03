/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib finite-sum facts retain upstream authorship and licenses. -/
import GRWTSK.NumberTheory.MultiplicativeNumberTheory.GoldbachWeighted

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Exact aggregate partition for actual odd-prime weights

Only the actual prime-log atom at two is removed. All ordered pairs
through cutoff X are partitioned by their literal sum N<=2X. This gives
an aggregate identity, not positivity at any prescribed even target.
The full Goldbach mass comparison, even-target restriction and quantitative
Chebyshev/cardinality bounds are separate steps. SOURCE_PROOF_CANDIDATES / NOT_RUN.
-/
namespace GRWTSK.NumberTheory.Primes.GoldbachTruncatedOddAggregate
open GoldbachWeighted

def oddPrimeWeight (n : ℕ) : ℝ := if n = 2 then 0 else primeLogWeight n

def oddPrimePrefix (X : ℕ) : ℝ := ∑ n ∈ Finset.range (X + 1), oddPrimeWeight n

def truncatedOddMass (X N : ℕ) : ℝ :=
  ∑ uv ∈ goldbachBox X,
    if uv.1 + uv.2 = N then oddPrimeWeight uv.1 * oddPrimeWeight uv.2 else 0

theorem oddPrimeWeight_nonneg (n : ℕ) : 0 ≤ oddPrimeWeight n := by
  unfold oddPrimeWeight
  split_ifs
  · exact le_rfl
  · exact primeLogWeight_nonneg n

theorem truncatedOddMass_nonneg (X N : ℕ) : 0 ≤ truncatedOddMass X N := by
  apply Finset.sum_nonneg
  intro uv _
  split_ifs
  · exact mul_nonneg (oddPrimeWeight_nonneg _) (oddPrimeWeight_nonneg _)
  · exact le_rfl

theorem exact_truncated_target_partition (X : ℕ) :
    (∑ N ∈ Finset.range (2 * X + 1), truncatedOddMass X N) = oddPrimePrefix X ^ 2 := by
  unfold truncatedOddMass
  rw [Finset.sum_comm]
  have hs : (∑ uv ∈ goldbachBox X,
      ∑ N ∈ Finset.range (2 * X + 1),
        if uv.1 + uv.2 = N then oddPrimeWeight uv.1 * oddPrimeWeight uv.2 else 0) =
      ∑ uv ∈ goldbachBox X, oddPrimeWeight uv.1 * oddPrimeWeight uv.2 := by
    apply Finset.sum_congr rfl
    intro uv huv
    have hb := mem_goldbachBox.mp huv
    have hm : uv.1 + uv.2 ∈ Finset.range (2 * X + 1) :=
      Finset.mem_range.mpr (by omega)
    simp [hm]
  rw [hs]
  simp [oddPrimePrefix, goldbachBox, Finset.sum_product, pow_two, Finset.sum_mul_sum]

end GRWTSK.NumberTheory.Primes.GoldbachTruncatedOddAggregate
