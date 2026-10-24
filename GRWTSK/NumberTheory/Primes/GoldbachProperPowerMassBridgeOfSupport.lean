/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachProperPowerMassBridge
import GRWTSK.NumberTheory.Primes.GoldbachProperPowerFinalReindex

/-!
# Proper-power divisor packet without a reindexing hypothesis

The finite reindexing supplier is applied explicitly. The arithmetic
support equivalence remains an assumption, with its exact prime and
exponent hypotheses preserved.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachProperPowerMassBridge

open GRWTSK.NumberTheory.Primes.GoldbachNonunitSplit
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerReindex

/-- The divisor packet identity no longer requires a separate
finite reindexing hypothesis; the support equivalence remains. -/
theorem nonunitProperPowerMass_eq_divisor_packet_of_support
    (q N : ℕ)
    (hsupport : ∀ p k : ℕ, Nat.Prime p → 2 ≤ k →
      (¬ IsUnit ((p ^ k : ℕ) : ZMod q) ↔ p ∣ q)) :
    nonunitProperPowerMass q N = divisorProperPowerMass q N := by
  exact nonunitProperPowerMass_eq_divisor_packet q N
    (GRWTSK.NumberTheory.Primes.GoldbachProperPowerFinalReindex.nonunitProperPowerMass_eq_rectangularProperPowerMass q N)
    hsupport

end GRWTSK.NumberTheory.Primes.GoldbachProperPowerMassBridge
