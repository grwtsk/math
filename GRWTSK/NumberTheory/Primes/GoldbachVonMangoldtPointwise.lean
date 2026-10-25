/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachVonMangoldtNonPrimePowerBridge
import GRWTSK.NumberTheory.Primes.GoldbachVonMangoldtProperPowerBridge
import GRWTSK.NumberTheory.Primes.GoldbachVonMangoldtPrimeFullBridge
import Mathlib.Algebra.IsPrimePow
import Mathlib.Tactic

/-!
# Pointwise identification of finite Goldbach prime-power weight

The source-level cases are prime inputs, proper prime powers with
exponent at least two, and non-prime-powers (including zero and one).
No summatory or asymptotic theorem is claimed.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachVonMangoldtPointwise

open GRWTSK.NumberTheory.Primes.GoldbachPrimePowerCorrection
open GRWTSK.NumberTheory.Primes.GoldbachVonMangoldtPrimeFullBridge
open GRWTSK.NumberTheory.Primes.GoldbachVonMangoldtProperPowerBridge
open GRWTSK.NumberTheory.Primes.GoldbachVonMangoldtNonPrimePowerBridge

/-- The repository weight equals Mathlib's canonical von Mangoldt at every natural input. -/
theorem primePowerWeight_eq_vonMangoldt (n : ℕ) :
    primePowerWeight n = ArithmeticFunction.vonMangoldt n := by
  by_cases hn : IsPrimePow n
  · obtain ⟨p, k, hp, hk, rfl⟩ := (isPrimePow_nat_iff n).mp hn
    by_cases hk1 : k = 1
    · subst k
      simpa using primePowerWeight_eq_vonMangoldt_prime p hp
    · have hk2 : 2 ≤ k := by omega
      exact primePowerWeight_eq_vonMangoldt_prime_pow p k hp hk2
  · exact primePowerWeight_eq_vonMangoldt_of_not_prime_pow n hn

end GRWTSK.NumberTheory.Primes.GoldbachVonMangoldtPointwise
