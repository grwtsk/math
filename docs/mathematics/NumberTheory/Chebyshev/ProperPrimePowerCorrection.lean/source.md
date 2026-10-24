# Complete source: GRWTSK.NumberTheory.Chebyshev.ProperPrimePowerCorrection

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f0608838559f5b7cac636f47b233c385eb9d97fc` · SHA-256 `d13172c817ba6d4d1f267c2f80ed9db54119e50970d38192df9f01b66e58e89f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Chebyshev.PrimeIntervalWitness
import GRWTSK.NumberTheory.Chebyshev.CorrelationPairing
import GRWTSK.NumberTheory.Primes.LandauStatements

set_option autoImplicit false

/-!
# Proper-prime-power correction for the actual Chebyshev source

The correction is a finite sum over nonprime integers in `(a,b]`, not an
arbitrary difference field. A support theorem identifies its nonzero terms
as exactly the proper prime powers. Mathlib's existing psi/theta decomposition
then yields the source identity and a coarse, unconditional correction bound.
The strict margin theorem consumes a supplied approximation to the actual
source. It supplies neither that approximation nor an all-interval estimate.
PR #256's squareIncrement is not redefined or imported from its draft branch.
Source draft for #261; NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.Chebyshev.ProperPrimePowerCorrection

open scoped BigOperators
open GRWTSK.RiemannHypothesis.SourcePairing
open GRWTSK.NumberTheory.Primes.ConfigurationCounts
open GRWTSK.NumberTheory.Primes.LandauStatements
open GRWTSK.NumberTheory.Chebyshev.PrimeIntervalWitness

noncomputable section

/-- Reconcile the repository's inventory starting at two with Mathlib's inventory starting at one. -/
theorem source_eq_mathlib_psi (x : ℝ) : chebyshevPrimePower x = Chebyshev.psi x := by
  unfold chebyshevPrimePower Chebyshev.psi
  apply Finset.sum_subset
  · intro m hm
    simp only [Finset.mem_Icc, Finset.mem_Ioc] at hm ⊢
    omega
  · intro m hm hmissing
    have hm1 : m = 1 := by
      simp only [Finset.mem_Icc, Finset.mem_Ioc] at hm hmissing
      omega
    subst m
    exact ArithmeticFunction.vonMangoldt_apply_one

/-- Each integer occurs once; its von Mangoldt weight is log of the prime base, not log of the power. -/
def properPrimePowerMass (a b : ℕ) : ℝ :=
  ∑ m ∈ Finset.Ioc a b with ¬ Nat.Prime m, ArithmeticFunction.vonMangoldt m

/-- No sign or positivity premise is needed for the actual arithmetic correction. -/
theorem properPrimePowerMass_nonneg (a b : ℕ) : 0 ≤ properPrimePowerMass a b := by
  exact Finset.sum_nonneg (fun _ _ => ArithmeticFunction.vonMangoldt_nonneg)

/-- Removing zero-weight non-prime-powers leaves exactly the same finite correction. -/
theorem properPrimePowerMass_eq_supported_sum (a b : ℕ) :
    properPrimePowerMass a b =
      ∑ m ∈ Finset.Ioc a b with IsPrimePow m ∧ ¬ Nat.Prime m,
        ArithmeticFunction.vonMangoldt m := by
  classical
  simp only [properPrimePowerMass, Finset.sum_filter]
  apply Finset.sum_congr rfl
  intro m _
  by_cases hpow : IsPrimePow m
  · simp [hpow]
  · have hz : ArithmeticFunction.vonMangoldt m = 0 :=
      ArithmeticFunction.vonMangoldt_eq_zero_iff.mpr hpow
    simp [hpow, hz]

/-- Positive correction means a proper prime power, never automatically a prime. -/
theorem properPrimePowerMass_pos_iff (a b : ℕ) :
    0 < properPrimePowerMass a b ↔
      ∃ m, a < m ∧ m ≤ b ∧ IsPrimePow m ∧ ¬ Nat.Prime m := by
  classical
  unfold properPrimePowerMass
  rw [Finset.sum_pos_iff_of_nonneg
    (fun _ _ => ArithmeticFunction.vonMangoldt_nonneg)]
  simp only [Finset.mem_filter, Finset.mem_Ioc, ArithmeticFunction.vonMangoldt_pos_iff]
  constructor
  · rintro ⟨m, ⟨⟨ham, hmb⟩, hprime⟩, hpow⟩
    exact ⟨m, ham, hmb, hpow, hprime⟩
  · rintro ⟨m, ham, hmb, hpow, hprime⟩
    exact ⟨m, ⟨⟨ham, hmb⟩, hprime⟩, hpow⟩

/-- Derive the cumulative identity from Mathlib's existing nonprime-sum theorem. -/
theorem properPrimePowerMass_eq_cumulative_sub (a b : ℕ) (hab : a ≤ b) :
    properPrimePowerMass a b =
      (Chebyshev.psi (b : ℝ) - Chebyshev.theta (b : ℝ)) -
      (Chebyshev.psi (a : ℝ) - Chebyshev.theta (a : ℝ)) := by
  classical
  rw [Chebyshev.psi_sub_theta_eq_sum_not_prime,
    Chebyshev.psi_sub_theta_eq_sum_not_prime]
  simp only [properPrimePowerMass, Nat.floor_natCast, Finset.sum_filter]
  have h := Finset.sum_Ioc_consecutive
    (fun m : ℕ => if ¬ Nat.Prime m then ArithmeticFunction.vonMangoldt m else 0)
    (Nat.zero_le a) hab
  linarith

/-- Exact source = prime-only interval mass + the full proper-prime-power correction. -/
theorem source_sub_eq_theta_sub_add_proper (a b : ℕ) (hab : a ≤ b) :
    chebyshevPrimePower (b : ℝ) - chebyshevPrimePower (a : ℝ) =
      (Chebyshev.theta (b : ℝ) - Chebyshev.theta (a : ℝ)) +
        properPrimePowerMass a b := by
  rw [source_eq_mathlib_psi, source_eq_mathlib_psi]
  have h := properPrimePowerMass_eq_cumulative_sub a b hab
  linarith

/-- Discarding the nonnegative lower cumulative correction gives a valid coarse bound. -/
theorem properPrimePowerMass_le_cumulative (a b : ℕ) (hab : a ≤ b) :
    properPrimePowerMass a b ≤ Chebyshev.psi (b : ℝ) - Chebyshev.theta (b : ℝ) := by
  rw [properPrimePowerMass_eq_cumulative_sub a b hab]
  have h := Chebyshev.theta_le_psi (a : ℝ)
  linarith

/-- This global-scale bound is valid but is not the sharper square-interval bound of #256. -/
theorem properPrimePowerMass_le_coarse_bound (a b : ℕ) (hab : a ≤ b) (hb : 1 ≤ b) :
    properPrimePowerMass a b ≤ 2 * Real.sqrt (b : ℝ) * Real.log (b : ℝ) := by
  apply (properPrimePowerMass_le_cumulative a b hab).trans
  exact Chebyshev.psi_sub_theta_le (by exact_mod_cast hb)

/-- A nonprime upper endpoint with a nonzero Mangoldt weight must be charged. -/
theorem upper_endpoint_le_properPrimePowerMass (a b : ℕ) (hab : a < b)
    (hb : ¬ Nat.Prime b) :
    ArithmeticFunction.vonMangoldt b ≤ properPrimePowerMass a b := by
  unfold properPrimePowerMass
  apply Finset.single_le_sum (f := fun k : ℕ => (ArithmeticFunction.vonMangoldt k : ℝ))
    (fun _ _ => ArithmeticFunction.vonMangoldt_nonneg)
  exact Finset.mem_filter.mpr ⟨Finset.mem_Ioc.mpr ⟨hab, le_rfl⟩, hb⟩

/-- If n+1 is prime, its square contributes log(n+1) at the closed upper endpoint. -/
theorem prime_square_endpoint_lower_bound (n : ℕ) (hp : Nat.Prime (n + 1)) :
    Real.log ((n + 1 : ℕ) : ℝ) ≤ properPrimePowerMass (n ^ 2) ((n + 1) ^ 2) := by
  have h := upper_endpoint_le_properPrimePowerMass (n ^ 2) ((n + 1) ^ 2)
    (Nat.pow_lt_pow_left (Nat.lt_succ_self n) (by decide)) (square_not_prime (n + 1))
  simpa only [ArithmeticFunction.vonMangoldt_apply_pow (by decide : (2 : ℕ) ≠ 0),
    ArithmeticFunction.vonMangoldt_apply_prime hp] using h

/-- A strict approximation margin gives an actual prime-only count, after correction. -/
theorem intervalCount_pos_of_source_margin (a b : ℕ) (hab : a ≤ b)
    (hb : ¬ Nat.Prime b) (A ε U : ℝ)
    (happrox : |chebyshevPrimePower (b : ℝ) - chebyshevPrimePower (a : ℝ) - A| ≤ ε)
    (hcorrection : properPrimePowerMass a b ≤ U)
    (hmargin : 0 < A - ε - U) : 0 < intervalCount a b := by
  apply (theta_sub_pos_iff_intervalCount a b hab hb).mp
  have hlow := (abs_le.mp happrox).1
  have hsplit := source_sub_eq_theta_sub_add_proper a b hab
  linarith

set_option linter.unusedVariables false in
/-- The source expression is exactly the one used by #256, with natural-square casts explicit. -/
theorem squareCount_pos_of_source_margin (n : ℕ) (hn : 1 ≤ n) (A ε U : ℝ)
    (happrox : |chebyshevPrimePower (((n + 1) ^ 2 : ℕ) : ℝ) -
      chebyshevPrimePower ((n ^ 2 : ℕ) : ℝ) - A| ≤ ε)
    (hcorrection : properPrimePowerMass (n ^ 2) ((n + 1) ^ 2) ≤ U)
    (hmargin : 0 < A - ε - U) : 0 < squareCount n := by
  exact intervalCount_pos_of_source_margin (n ^ 2) ((n + 1) ^ 2)
    (pow_le_pow_left₀ (Nat.zero_le n) (by omega : n ≤ n + 1) 2) (square_not_prime (n + 1)) A ε U happrox hcorrection hmargin

/-- Only an independently supplied every-input margin can complete the finite-prefix theorem. -/
theorem legendre_of_prefix_and_source_margins (N : ℕ) («prefix» : LegendreThrough N)
    (A ε U : ℕ → ℝ)
    (happrox : ∀ n, N < n →
      |chebyshevPrimePower (((n + 1) ^ 2 : ℕ) : ℝ) -
        chebyshevPrimePower ((n ^ 2 : ℕ) : ℝ) - A n| ≤ ε n)
    (hcorrection : ∀ n, N < n → properPrimePowerMass (n ^ 2) ((n + 1) ^ 2) ≤ U n)
    (hmargin : ∀ n, N < n → 0 < A n - ε n - U n) : Legendre := by
  apply legendre_of_prefix_and_tail N «prefix»
  intro n hn
  exact squareCount_pos_of_source_margin n (by omega) (A n) (ε n) (U n)
    (happrox n hn) (hcorrection n hn) (hmargin n hn)

end

end GRWTSK.NumberTheory.Chebyshev.ProperPrimePowerCorrection
```
