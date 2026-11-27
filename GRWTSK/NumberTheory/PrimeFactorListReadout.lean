import GRWTSK.NumberTheory.CompleteIntegerFactorization

/-!
# Reading a complete list of prime factors in arbitrary order

Authors: grwtsk contributors

This is the output contract of PrimeFactorLean's `factor_total_correct`.
See `PrimeFactorListReadout.md` for its provider pins and build evidence.
-/

namespace GRWTSK.IntegerFactorization

/-- Compressing a permutation preserves every prime base and every exponent. -/
theorem compress_perm {xs ys : List ℕ} (h : xs.Perm ys) : compress xs = compress ys := by
  unfold compress
  rw [List.toFinset_eq_of_perm xs ys h]
  simp only [h.count_eq]

/-- Read unordered, possibly interleaved multiplicities without an ordering
premise on the supplier. This also handles the empty factorization of one. -/
theorem compress_of_prime_product {xs : List ℕ} {n : ℕ}
    (allPrime : ∀ p ∈ xs, Nat.Prime p) (product : xs.prod = n) :
    compress xs = canonical n :=
  (compress_perm (Nat.primeFactorsList_unique product allPrime)).trans (compress_primeFactorsList n)

/-- Apply a source's success-and-totality theorem and retain the actual returned
list. This form is directly usable for an option-valued executable interface. -/
theorem canonical_of_total_prime_list (run : ℕ → Option (List ℕ))
    (correct : ∀ n, n ≠ 0 → ∃ ps, run n = some ps ∧ (∀ p ∈ ps, Nat.Prime p) ∧ ps.prod = n)
    {n : ℕ} (hn : 2 ≤ n) :
    ∃ ps, run n = some ps ∧ compress ps = canonical n ∧ CompleteFactorization n (compress ps) := by
  obtain ⟨ps, ret, prime, product⟩ := correct n (by omega)
  have readout := compress_of_prime_product prime product
  exact ⟨ps, ret, readout, (complete_iff_eq_canonical hn).mpr readout⟩

end GRWTSK.IntegerFactorization
