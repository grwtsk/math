/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicVolumeLimit
import Mathlib.Data.Nat.Factorization.PrimePow
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.Algebra.BigOperators.Group.Finset.Basic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! # The optimal floor for the original arithmetic cycle family

Every natural label n >= 2 has Lambda(n) + log(radical(n)) >= 2 * log 2.
Prime powers and numbers with at least two distinct prime factors are both
included. Label 2 attains the floor, so it is optimal over the full label family.
At every fixed N >= 3, the resulting cycle coefficient is optimal uniformly
over ALL admissible label assignments and ALL complex mean-zero vectors.
This does not identify each separately chosen variable-conductance matrix's gap.

SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED.
No infinite operator, continuum rescaling or physical identification is supplied. -/

namespace GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicOptimalFloor

open ArithmeticCyclicLaplacian
open GRWTSK.Analysis.ErrorBounds.HermitianGramRealification

theorem radical_ge_four_of_not_prime_power {n : ℕ} (hn : 2 ≤ n)
    (hpow : ¬ IsPrimePow n) : 4 ≤ UniqueFactorizationMonoid.radical n := by
  obtain ⟨p, hp, q, hq, hpq⟩ :=
    (Nat.not_isPrimePow_iff_nontrivial_of_two_le hn).mp hpow
  have hsub : ({p, q} : Finset ℕ) ⊆ n.primeFactors := by
    intro x hx
    rcases Finset.mem_insert.mp hx with h | h
    · simpa only [h] using hp
    · have h' := Finset.mem_singleton.mp h
      simpa only [h'] using hq
  have hdvd : p * q ∣ UniqueFactorizationMonoid.radical n := by
    rw [Nat.radical_eq_prod_primeFactors]
    have h := Finset.prod_dvd_prod_of_subset {p, q} n.primeFactors (fun i => i) hsub
    simpa only [Finset.prod_pair hpq] using h
  have hprod : 4 ≤ p * q := by
    simpa using Nat.mul_le_mul (Nat.prime_of_mem_primeFactors hp).two_le
      (Nat.prime_of_mem_primeFactors hq).two_le
  exact hprod.trans (Nat.le_of_dvd (Nat.radical_pos n) hdvd)

theorem prime_power_conductance_value {p k : ℕ} (hp : p.Prime) (hk : 0 < k) :
    ArithmeticFunction.vonMangoldt (p ^ k) +
      Real.log (UniqueFactorizationMonoid.radical (p ^ k) : ℝ) = 2 * Real.log p := by
  rw [ArithmeticFeatureGram.vonMangoldt_prime_power hp hk,
    ArithmeticFeatureGram.radical_prime_power hp hk]
  ring

theorem scalar_conductance_lower_bound {n : ℕ} (hn : 2 ≤ n) :
    2 * Real.log 2 ≤ ArithmeticFunction.vonMangoldt n +
      Real.log (UniqueFactorizationMonoid.radical n : ℝ) := by
  by_cases hpow : IsPrimePow n
  · obtain ⟨p, k, hp, hk, rfl⟩ := (isPrimePow_nat_iff n).mp hpow
    rw [prime_power_conductance_value hp hk]
    have hp2 : (2 : ℝ) ≤ (p : ℝ) := by exact_mod_cast hp.two_le
    have hl := Real.log_le_log (by norm_num : (0 : ℝ) < 2) hp2
    linarith
  · have hr4 := radical_ge_four_of_not_prime_power hn hpow
    have hr4r : (4 : ℝ) ≤ (UniqueFactorizationMonoid.radical n : ℝ) := by
      exact_mod_cast hr4
    have hl := Real.log_le_log (by norm_num : (0 : ℝ) < 4) hr4r
    have hv : ArithmeticFunction.vonMangoldt n = 0 :=
      ArithmeticFunction.vonMangoldt_eq_zero_iff.mpr hpow
    have he : Real.log (4 : ℝ) = 2 * Real.log 2 := by
      rw [show (4 : ℝ) = 2 ^ 2 by norm_num, Real.log_pow]
      norm_num
    rw [hv, zero_add]
    exact he ▸ hl

theorem scalar_conductance_at_two :
    ArithmeticFunction.vonMangoldt 2 +
      Real.log (UniqueFactorizationMonoid.radical (2 : ℕ) : ℝ) = 2 * Real.log 2 := by
  simpa only [pow_one] using
    prime_power_conductance_value Nat.prime_two (by decide : 0 < 1)

theorem optimal_scalar_floor (b : ℝ) :
    (∀ n : ℕ, 2 ≤ n → b ≤ ArithmeticFunction.vonMangoldt n +
      Real.log (UniqueFactorizationMonoid.radical n : ℝ)) ↔ b ≤ 2 * Real.log 2 := by
  constructor
  · intro hb
    have h := hb 2 (Nat.le_refl 2)
    rwa [scalar_conductance_at_two] at h
  · intro hb n hn
    exact hb.trans (scalar_conductance_lower_bound hn)

section FiniteCycle

variable (N : ℕ) [hNz : NeZero N]
include hNz

theorem arithmeticConductance_log_four_floor (m : ZMod N → ℕ)
    (i : ZMod N) (hm : 2 ≤ m i) :
    2 * Real.log 2 ≤ arithmeticConductance N m i :=
  scalar_conductance_lower_bound hm

theorem optimal_site_floor (b : ℝ) :
    (∀ m : ZMod N → ℕ, (∀ i, 2 ≤ m i) →
      ∀ i, b ≤ arithmeticConductance N m i) ↔ b ≤ 2 * Real.log 2 := by
  constructor
  · intro hb
    have h := hb (fun _ => 2) (fun _ => Nat.le_refl 2) 0
    change b ≤ ArithmeticFunction.vonMangoldt 2 +
      Real.log (UniqueFactorizationMonoid.radical (2 : ℕ) : ℝ) at h
    rwa [scalar_conductance_at_two] at h
  · intro hb m hm i
    exact hb.trans (arithmeticConductance_log_four_floor N m i (hm i))

theorem arithmetic_poincare_optimal_floor (hN : 3 ≤ N) (m : ZMod N → ℕ)
    (hm : ∀ i, 2 ≤ m i) (x : ZMod N → ℂ) (hx : (∑ i, x i) = 0) :
    ((2 * Real.log 2) * (4 * Real.sin (Real.pi / (N : ℝ)) ^ 2)) *
      (∑ i, ‖x i‖ ^ 2) ≤
        (complexReadout x (fun p => arithmeticLaplacian N m p.1 p.2)).re := by
  exact ArithmeticCyclicSharpPoincare.sharp_cycle_poincare N hN
    (arithmeticConductance N m) (2 * Real.log 2)
    (mul_nonneg (by norm_num) (Real.log_nonneg (by norm_num)))
    (fun i => arithmeticConductance_log_four_floor N m i (hm i)) x hx

/-- The best coefficient uniform over all labels at this FIXED finite N.
Equality with an individual variable-conductance matrix's gap is not claimed. -/
theorem optimal_uniform_arithmetic_coefficient (hN : 3 ≤ N) (b : ℝ) :
    (∀ m : ZMod N → ℕ, (∀ i, 2 ≤ m i) →
      ∀ x : ZMod N → ℂ, (∑ i, x i) = 0 →
        b * (∑ i, ‖x i‖ ^ 2) ≤
          (complexReadout x (fun p => arithmeticLaplacian N m p.1 p.2)).re) ↔
      b ≤ (2 * Real.log 2) * (4 * Real.sin (Real.pi / (N : ℝ)) ^ 2) := by
  constructor
  · intro hb
    apply ArithmeticCyclicVolumeLimit.constant_conductance_upper_bound N hN (2 * Real.log 2) b
    intro x hx
    have h := hb (fun _ => 2) (fun _ => Nat.le_refl 2) x hx
    rwa [ArithmeticCyclicVolumeLimit.arithmetic_two_laplacian N] at h
  · intro hb m hm x hx
    have hs : 0 ≤ ∑ i, ‖x i‖ ^ 2 := Finset.sum_nonneg (fun _ _ => sq_nonneg _)
    exact (mul_le_mul_of_nonneg_right hb hs).trans
      (arithmetic_poincare_optimal_floor N hN m hm x hx)

end FiniteCycle
end GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicOptimalFloor
