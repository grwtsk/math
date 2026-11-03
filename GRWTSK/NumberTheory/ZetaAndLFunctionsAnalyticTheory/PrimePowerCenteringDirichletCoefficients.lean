/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib totient and divisor facts retain upstream authorship and Apache-2.0 license. -/
import Mathlib.Data.Nat.Totient
import Mathlib.Tactic

set_option autoImplicit false
open scoped BigOperators

/-!
# Exact finite coefficients of the centering counterterm

The unweighted prime-power counterterm has divisor coefficient
sum_{m|k} (phi(m)/m)/(k/m)=1. This is the finite coefficient identity
behind a sum of Euler-log zeta terms, not a supplied analytic continuation
or permission to use principal complex logarithms in the critical strip.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.NumberTheory.Zeta.Riemann.PrimePowerCenteringDirichletCoefficients

theorem normalized_totient_divisor_sum (k : ℕ) (hk : 0 < k) :
    (∑ m ∈ k.divisors, (Nat.totient m : ℚ) / (k : ℚ)) = 1 := by
  have hs : (∑ m ∈ k.divisors, (Nat.totient m : ℚ)) = (k : ℚ) := by
    exact_mod_cast Nat.sum_totient k
  have hk0 : (k : ℚ) ≠ 0 := by exact_mod_cast (ne_of_gt hk)
  rw [← Finset.sum_div, hs, div_self hk0]

theorem euler_log_unweighted_prime_power_coefficient (k : ℕ) (hk : 0 < k) :
    (∑ m ∈ k.divisors,
      ((Nat.totient m : ℚ) / (m : ℚ)) * (1 / ((k / m : ℕ) : ℚ))) = 1 := by
  calc
    _ = ∑ m ∈ k.divisors, (Nat.totient m : ℚ) / (k : ℚ) := by
      apply Finset.sum_congr rfl
      intro m hm
      have hdiv : m ∣ k := (Nat.mem_divisors.mp hm).1
      have hmpos : 0 < m := Nat.pos_of_mem_divisors hm
      have hqpos : 0 < k / m := Nat.div_pos (Nat.le_of_dvd hk hdiv) hmpos
      have hm0 : (m : ℚ) ≠ 0 := by exact_mod_cast (ne_of_gt hmpos)
      have hq0 : ((k / m : ℕ) : ℚ) ≠ 0 := by exact_mod_cast (ne_of_gt hqpos)
      have he : (k : ℚ) = (m : ℚ) * ((k / m : ℕ) : ℚ) := by
        exact_mod_cast (Nat.mul_div_cancel' hdiv).symm
      rw [he]
      field_simp [hm0, hq0] <;> ring
    _ = 1 := normalized_totient_divisor_sum k hk

end GRWTSK.NumberTheory.Zeta.Riemann.PrimePowerCenteringDirichletCoefficients
