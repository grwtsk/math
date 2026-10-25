/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachProperPowerReindex
import GRWTSK.NumberTheory.Primes.GoldbachProperPowerExponentCount
import Mathlib.Tactic

/-!
# Prime-base support for the rectangular proper-power packet

The prime-power unit criterion is an explicit supplier, not inferred
from an unverified Mathlib API. The result removes nonunit tests on
powers in favor of a prime-divisor condition on the base.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachProperPowerPrimeSupport

open scoped BigOperators
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerReindex

noncomputable section

/-- A base-divisor packet with the original cutoff and exponent range. -/
def divisorProperPowerMass (q N : ℕ) : ℝ :=
  ∑ p ∈ Finset.range (N + 1),
    ∑ k ∈ Finset.Icc 2 N,
      if Nat.Prime p ∧ p ∣ q ∧ p ^ k ≤ N then
        Real.log (p : ℝ)
      else 0

/-- Transfer nonunit support of prime powers to divisibility of their
prime bases. The exact support equivalence is a separate supplier. -/
theorem rectangularProperPowerMass_eq_divisor
    (q N : ℕ)
    (hsupport : ∀ p k : ℕ, Nat.Prime p → 2 ≤ k →
      (¬ IsUnit ((p ^ k : ℕ) : ZMod q) ↔ p ∣ q)) :
    rectangularProperPowerMass q N = divisorProperPowerMass q N := by
  unfold rectangularProperPowerMass divisorProperPowerMass
  apply Finset.sum_congr rfl
  intro p hp
  apply Finset.sum_congr rfl
  intro k hk
  have hk2 : 2 ≤ k := (Finset.mem_Icc.mp hk).1
  by_cases hprime : Nat.Prime p
  · simp [hprime, and_left_comm, and_assoc, hsupport p k hprime hk2]
  · simp [hprime]

end
end GRWTSK.NumberTheory.Primes.GoldbachProperPowerPrimeSupport
