/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.AlgebraicNumberTheoryGlobalFields.EisensteinTraceSeparation
import GRWTSK.NumberTheory.AlgebraicNumberTheoryGlobalFields.GaloisInvariantIntegerProduct
import GRWTSK.NumberTheory.AlgebraicNumberTheoryGlobalFields.IntegerPrimeLogBudget

/-!
# Actual integer witnesses from bounded trace families

Compose trace separation, integral Galois descent, and the finite prime budget.
Both finite index families and their multiplicities are retained. The existence
and arithmetic classification of these families remain hypotheses; this module
does not construct automorphic traces or prove their deformation bounds.
-/

open scoped BigOperators

namespace GRWTSK.NumberTheory.EisensteinTraceIntegerWitness

open EisensteinTraceSeparation GaloisInvariantIntegerProduct IntegerPrimeLogBudget

/-- Abstract complex field automorphisms preserve the exact three-term value. -/
theorem map_eisensteinTrace (σ : ℂ ≃+* ℂ) (q e : ℕ) (z : ℂ) :
    σ (eisensteinTrace q e z) = eisensteinTrace q e (σ z) := by
  simp [eisensteinTrace, map_add, map_mul, map_inv₀, map_pow, map_natCast]

/-- The supplied actual trace and root families yield a nonzero integer equal
to their full product, with the complete orbit-times-trace logarithmic cost. -/
theorem exists_int_trace_product {O S : Type*} [Fintype O] [Fintype S]
    (q e : ℕ) (hq : 7 ≤ q) (he : 1 ≤ e) (z : O → ℂ) (t : S → ℂ)
    (hz : ∀ o, ∃ k : ℕ, 0 < k ∧ z o ^ k = 1)
    (ht : ∀ s, ‖t s‖ ≤ Real.sqrt q + 2)
    (hint : ∀ s, IsIntegral ℤ ((q : ℂ) ^ e * t s))
    (hzperm : ∀ σ : ℂ ≃+* ℂ, ∃ u : O ≃ O, ∀ o, z (u o) = σ (z o))
    (htperm : ∀ σ : ℂ ≃+* ℂ, ∃ v : S ≃ S, ∀ s, t (v s) = σ (t s)) :
    ∃ N : ℤ,
      (N : ℂ) = ∏ o, ∏ s, (q : ℂ) ^ e * (t s - eisensteinTrace q e (z o)) ∧
      N ≠ 0 ∧ Real.log |(N : ℝ)| ≤
        Fintype.card O * Fintype.card S * (2 * e * Real.log q + 1) := by
  let f : O → S → ℂ := fun o s =>
    (q : ℂ) ^ e * (t s - eisensteinTrace q e (z o))
  have hleaf (o : O) (s : S) :
      t s ≠ eisensteinTrace q e (z o) ∧ IsIntegral ℤ (f o s) ∧
        Real.log ‖f o s‖ ≤ 2 * e * Real.log q + 1 := by
    obtain ⟨k, hk, hzk⟩ := hz o
    exact eisenstein_trace_difference_log_bound q e k hq he hk (z o) (t s)
      hzk (ht s) (hint s)
  apply exists_int_double_prod_ne_zero_log_le f (2 * e * Real.log q + 1)
  · exact fun o s => (hleaf o s).2.1
  · intro σ
    obtain ⟨u, hu⟩ := hzperm σ
    obtain ⟨v, hv⟩ := htperm σ
    refine ⟨u, v, fun o s => ?_⟩
    simp only [f, hu, hv, map_mul, map_sub, map_pow, map_natCast, map_eisensteinTrace]
  · intro o s
    exact mul_ne_zero (pow_ne_zero e (by exact_mod_cast (show q ≠ 0 by omega)))
      (sub_ne_zero.mpr (hleaf o s).1)
  · exact fun o s => (hleaf o s).2.2

/-- The same integer witness pays for every finite set of prime valuations.
The prime set is quantified after the integer has been chosen. -/
theorem exists_int_trace_product_prime_budget {O S : Type*} [Fintype O] [Fintype S]
    (q e : ℕ) (hq : 7 ≤ q) (he : 1 ≤ e) (z : O → ℂ) (t : S → ℂ)
    (hz : ∀ o, ∃ k : ℕ, 0 < k ∧ z o ^ k = 1)
    (ht : ∀ s, ‖t s‖ ≤ Real.sqrt q + 2)
    (hint : ∀ s, IsIntegral ℤ ((q : ℂ) ^ e * t s))
    (hzperm : ∀ σ : ℂ ≃+* ℂ, ∃ u : O ≃ O, ∀ o, z (u o) = σ (z o))
    (htperm : ∀ σ : ℂ ≃+* ℂ, ∃ v : S ≃ S, ∀ s, t (v s) = σ (t s)) :
    ∃ N : ℤ,
      (N : ℂ) = ∏ o, ∏ s, (q : ℂ) ^ e * (t s - eisensteinTrace q e (z o)) ∧
      N ≠ 0 ∧
      Real.log |(N : ℝ)| ≤
        Fintype.card O * Fintype.card S * (2 * e * Real.log q + 1) ∧
      ∀ P : Finset Nat.Primes,
        ∑ p ∈ P, Real.log (p : ℕ) * (padicValInt p N : ℝ) ≤
          Fintype.card O * Fintype.card S * (2 * e * Real.log q + 1) := by
  obtain ⟨N, hN, hN0, hlog⟩ :=
    exists_int_trace_product q e hq he z t hz ht hint hzperm htperm
  exact ⟨N, hN, hN0, hlog, fun P => (prime_log_budget N hN0 P).trans hlog⟩

end GRWTSK.NumberTheory.EisensteinTraceIntegerWitness
