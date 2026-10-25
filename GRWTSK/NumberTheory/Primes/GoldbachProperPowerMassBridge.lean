/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachProperPowerPrimeSupport
import Mathlib.Tactic

/-!
# Exact rectangular-to-original proper-power mass bridge

This theorem uses an explicit finite reindexing identity as its
hypothesis. The difficult dependent-range reindexing remains an
unresolved supplier, not an assumed prime-distribution estimate.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachProperPowerMassBridge

open scoped BigOperators
open GRWTSK.NumberTheory.Primes.GoldbachNonunitSplit
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerReindex
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerPrimeSupport

noncomputable section

/-- Once the exact finite reindexing is supplied, the original nonunit
proper-power mass inherits the prime-divisor packet representation. -/
theorem nonunitProperPowerMass_eq_divisor_packet
    (q N : ℕ)
    (hreindex : nonunitProperPowerMass q N =
      rectangularProperPowerMass q N)
    (hsupport : ∀ p k : ℕ, Nat.Prime p → 2 ≤ k →
      (¬ IsUnit ((p ^ k : ℕ) : ZMod q) ↔ p ∣ q)) :
    nonunitProperPowerMass q N = divisorProperPowerMass q N := by
  rw [hreindex]
  exact rectangularProperPowerMass_eq_divisor q N hsupport

end
end GRWTSK.NumberTheory.Primes.GoldbachProperPowerMassBridge
