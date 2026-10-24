/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachVonMangoldtPacketProduct
import Mathlib.Tactic

/-!
# Proper prime-power packet evaluates to its unique logarithmic weight

For prime p and k≥2, the filtered finite product support is
the singleton (p,k), hence the proper-prime-power weight is log p.
Canonical von Mangoldt identification remains a separate supplier.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachVonMangoldtProperPowerValue

open GRWTSK.NumberTheory.Primes.GoldbachPrimePowerCorrection
open GRWTSK.NumberTheory.Primes.GoldbachVonMangoldtPacketProduct
open GRWTSK.NumberTheory.Primes.GoldbachVonMangoldtUniqueSupport

/-- The finite proper-power packet has exactly one logarithmic contribution. -/
theorem properPrimePowerWeight_prime_pow (p k : ℕ)
    (hp : Nat.Prime p) (hk : 2 ≤ k) :
    properPrimePowerWeight (p ^ k) = Real.log (p : ℝ) := by
  rw [properPrimePowerWeight_eq_filtered_product]
  rw [proper_power_support_eq_singleton p k hp hk]
  simp

end GRWTSK.NumberTheory.Primes.GoldbachVonMangoldtProperPowerValue
