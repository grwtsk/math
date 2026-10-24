/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachVonMangoldtPrimeBridge
import Mathlib.Data.Nat.Prime.Int

/-!
# Uniqueness of the prime base and exponent in proper prime powers

The pinned Mathlib prime-power injectivity theorem rules out
multiple prime-base/exponent representations with positive exponents.
This prevents overcounting in the proper-prime-power weight.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachVonMangoldtPowerUniqueness

/-- Positive prime-power representations have identical bases and exponents. -/
theorem prime_power_representation_unique
    (p r k j : ℕ) (hp : Nat.Prime p) (hr : Nat.Prime r)
    (hk : 2 ≤ k) (hj : 2 ≤ j) (h : p ^ k = r ^ j) :
    p = r ∧ k = j := by
  exact hp.pow_inj' hr (by omega) (by omega) h

end GRWTSK.NumberTheory.Primes.GoldbachVonMangoldtPowerUniqueness
