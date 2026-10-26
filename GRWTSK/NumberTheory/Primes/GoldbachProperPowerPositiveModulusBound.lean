/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachProperPowerPrimeDivisorMassBound
import GRWTSK.NumberTheory.Primes.GoldbachProperPowerPrimeDivisorLogComparison
import GRWTSK.NumberTheory.Primes.GoldbachNonunitPrimeTransfer

/-!
# Positive-modulus finite nonunit proper-power mass bounds

The finite exponent-count chain bounds proper-power nonunit mass by
log2(N) * D(q,N), and the squarefree radical sharpens this to
log2(N) * log(radical q) for q ≠ 0. The prime-only bound is now combined
with this proper-power correction to control full finite nonunit psi.
All sums retain their inclusive cutoff N. No prime-density, character
cancellation, or zero-free region estimate is claimed.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachProperPowerPositiveModulusBound

open GRWTSK.NumberTheory.Primes.GoldbachNonunitSplit
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerPrimeDivisorMassBound
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerPrimeDivisorLogComparison
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerPrimeDivisorLog
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerRadicalBound
open GRWTSK.NumberTheory.Primes.GoldbachNonunitBudget
open GRWTSK.NumberTheory.Primes.GoldbachNonunitPrimeBudget
open GRWTSK.NumberTheory.Primes.GoldbachNonunitPrimeTransfer

/-- For q ≠ 0, finite proper-power nonunit mass is at most
log2(N) times the logarithm of the squarefree radical of q. -/
theorem nonunitProperPowerMass_le_log2_mul_log_radical (q N : ℕ)
    (hq : q ≠ 0) :
    nonunitProperPowerMass q N ≤
      (Nat.log2 N : ℝ) * Real.log (Nat.radical q : ℝ) := by
  calc
    nonunitProperPowerMass q N ≤
        (Nat.log2 N : ℝ) * primeDivisorLogMass q N :=
      nonunitProperPowerMass_le_log2_mul_primeDivisorLogMass q N
    _ ≤ (Nat.log2 N : ℝ) * Real.log (Nat.radical q : ℝ) := by
      exact mul_le_mul_of_nonneg_left
        (primeDivisorLogMass_le_log_radical q N hq)
        (Nat.cast_nonneg _)

/-- The radical comparison implies the original finite
log2(N) * log(q) bound for every nonzero natural modulus q. -/
theorem nonunitProperPowerMass_le_log2_mul_log (q N : ℕ)
    (hq : q ≠ 0) :
    nonunitProperPowerMass q N ≤
      (Nat.log2 N : ℝ) * Real.log (q : ℝ) := by
  calc
    nonunitProperPowerMass q N ≤
        (Nat.log2 N : ℝ) * Real.log (Nat.radical q : ℝ) :=
      nonunitProperPowerMass_le_log2_mul_log_radical q N hq
    _ ≤ (Nat.log2 N : ℝ) * Real.log (q : ℝ) := by
      apply mul_le_mul_of_nonneg_left
      · apply Real.log_le_log
        · exact_mod_cast Nat.radical_pos q
        · exact_mod_cast radical_le_of_ne_zero q hq
      · exact Nat.cast_nonneg _

/-- Full finite nonunit prime-power mass: the prime-only part is bounded
by the number of prime divisors up to N times log N, and the proper
prime-power part by log2 N times the log of the squarefree radical.
The modulus must be nonzero; no restriction on N is needed. -/
theorem nonunitPsiMass_le_count_mul_log_add_log2_mul_log_radical
    (q N : ℕ) (hq : q ≠ 0) :
    nonunitPsiMass q N ≤
      (finitePrimeDivisorCount q N : ℝ) * Real.log (N : ℝ) +
        (Nat.log2 N : ℝ) * Real.log (Nat.radical q : ℝ) := by
  calc
    nonunitPsiMass q N =
        nonunitPrimeMass q N + nonunitProperPowerMass q N :=
      nonunitPsiMass_eq_prime_add_proper q N
    _ ≤ (finitePrimeDivisorCount q N : ℝ) * Real.log (N : ℝ) +
          (Nat.log2 N : ℝ) * Real.log (Nat.radical q : ℝ) :=
      add_le_add
        (nonunitPrimeMass_le_count_mul_log_unconditional q N)
        (nonunitProperPowerMass_le_log2_mul_log_radical q N hq)

/-- A coarser finite bound replaces log(radical q) by log q,
still requiring q ≠ 0 and no lower bound on N. -/
theorem nonunitPsiMass_le_count_mul_log_add_log2_mul_log
    (q N : ℕ) (hq : q ≠ 0) :
    nonunitPsiMass q N ≤
      (finitePrimeDivisorCount q N : ℝ) * Real.log (N : ℝ) +
        (Nat.log2 N : ℝ) * Real.log (q : ℝ) := by
  calc
    nonunitPsiMass q N =
        nonunitPrimeMass q N + nonunitProperPowerMass q N :=
      nonunitPsiMass_eq_prime_add_proper q N
    _ ≤ (finitePrimeDivisorCount q N : ℝ) * Real.log (N : ℝ) +
          (Nat.log2 N : ℝ) * Real.log (q : ℝ) :=
      add_le_add
        (nonunitPrimeMass_le_count_mul_log_unconditional q N)
        (nonunitProperPowerMass_le_log2_mul_log q N hq)

end GRWTSK.NumberTheory.Primes.GoldbachProperPowerPositiveModulusBound
