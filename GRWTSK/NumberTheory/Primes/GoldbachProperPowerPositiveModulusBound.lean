/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachProperPowerPrimeDivisorMassBound
import GRWTSK.NumberTheory.Primes.GoldbachProperPowerPrimeDivisorLogComparison

/-!
# Positive-modulus finite nonunit proper-power mass bounds

The finite exponent-count chain bounds proper-power nonunit mass by
log2(N) * D(q,N). For nonzero q, the squarefree radical gives the
sharper bound log2(N) * log(radical q), which in turn implies the
existing log2(N) * log q estimate. No prime-density or
prime-counting error estimate is claimed.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachProperPowerPositiveModulusBound

open GRWTSK.NumberTheory.Primes.GoldbachNonunitSplit
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerPrimeDivisorMassBound
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerPrimeDivisorLogComparison
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerPrimeDivisorLog
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerRadicalBound

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

end GRWTSK.NumberTheory.Primes.GoldbachProperPowerPositiveModulusBound
