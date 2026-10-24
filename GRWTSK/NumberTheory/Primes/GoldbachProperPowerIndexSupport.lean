/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachProperPowerReindex
import Mathlib.Tactic

/-!
# Finite proper-power support equivalence

The exact support conditions of the dependent n-indexed sum are
recorded as a finite index predicate. No analytic estimate is claimed.
This is a preparatory, unconditional source-level identity.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachProperPowerIndexSupport

open scoped BigOperators

noncomputable section

/-- The dependent original support for one prime base, exponent and
represented integer. -/
def OriginalSupport (N p k n : ℕ) : Prop :=
  n ≤ N ∧ p ≤ n ∧ 2 ≤ k ∧ k ≤ n ∧
    Nat.Prime p ∧ p ^ k = n

/-- The rectangular support for the same prime-power representation. -/
def RectangularSupport (N p k : ℕ) : Prop :=
  p ≤ N ∧ 2 ≤ k ∧ k ≤ N ∧ Nat.Prime p ∧ p ^ k ≤ N

/-- Original support implies the rectangular range conditions. -/
theorem original_implies_rectangular
    (N p k n : ℕ) (h : OriginalSupport N p k n) :
    RectangularSupport N p k := by
  rcases h with ⟨hnN, hpn, hk2, hkn, hp, hpow⟩
  exact ⟨hpn.trans hnN, hk2, hkn.trans hnN, hp,
    hpow.symm ▸ hnN⟩

/-- A supported rectangular pair determines an original index n=p^k,
provided the elementary base/exponent bounds are supplied. -/
theorem rectangular_implies_original
    (N p k : ℕ) (h : RectangularSupport N p k)
    (hbase : p ≤ p ^ k) (hexponent : k ≤ p ^ k) :
    OriginalSupport N p k (p ^ k) := by
  rcases h with ⟨hpN, hk2, hkN, hp, hpow⟩
  exact ⟨hpow, hbase, hk2, hexponent, hp, rfl⟩

end
end GRWTSK.NumberTheory.Primes.GoldbachProperPowerIndexSupport
