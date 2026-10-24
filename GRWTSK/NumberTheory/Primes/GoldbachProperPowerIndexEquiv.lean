/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachProperPowerGrowth
import Mathlib.Tactic

/-!
# Exact supported-index correspondence for proper prime powers

The original support records n, p and k; rectangular support records
p and k. The maps preserve n = p^k and do not require uniqueness of
prime-power representations across different pairs.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachProperPowerIndexEquiv

open GRWTSK.NumberTheory.Primes.GoldbachProperPowerIndexSupport
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerGrowth

/-- A triple supported by the original dependent bounds. -/
def OriginalIndex (N : ℕ) :=
  { t : ℕ × ℕ × ℕ // OriginalSupport N t.2.1 t.2.2 t.1 }

/-- A pair supported by the rectangular bounds. -/
def RectangularIndex (N : ℕ) :=
  { t : ℕ × ℕ // RectangularSupport N t.1 t.2 }

/-- Forget the determined integer n, retaining the prime base and exponent. -/
def toRectangular (N : ℕ) (t : OriginalIndex N) : RectangularIndex N :=
  ⟨(t.1.2.1, t.1.2.2),
    original_implies_rectangular N t.1.2.1 t.1.2.2 t.1.1 t.2⟩

/-- Reconstruct n from the rectangular pair as p^k. -/
def toOriginal (N : ℕ) (t : RectangularIndex N) : OriginalIndex N :=
  ⟨(t.1.1 ^ t.1.2, t.1.1, t.1.2),
    rectangular_implies_original_prime N t.1.1 t.1.2 t.2⟩

/-- The supported original and rectangular index types are equivalent. -/
def indexEquiv (N : ℕ) : OriginalIndex N ≃ RectangularIndex N where
  toFun := toRectangular N
  invFun := toOriginal N
  left_inv := by
    intro t
    apply Subtype.ext
    rcases t with ⟨⟨n, p, k⟩, ht⟩
    change (p ^ k, p, k) = (n, p, k)
    have hpow : p ^ k = n := ht.2.2.2.2.2
    simp [hpow]
  right_inv := by
    intro t
    apply Subtype.ext
    rfl

end GRWTSK.NumberTheory.Primes.GoldbachProperPowerIndexEquiv
