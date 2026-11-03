/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib natural divisibility and radical facts retain upstream authorship and licenses. -/
import Mathlib.RingTheory.Radical.NatInt

set_option autoImplicit false
noncomputable section

/-!
# Repeated-prime quotient in the natural-number source domain

Use natural division n/rad(n), not EuclideanDomain.divRadical: the latter
requires a commutative ring and cannot be specialized to the natural numbers.
The exact multiplication identity follows from radical divisibility.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.NumberTheory.ABC.NaturalRepetitionSource

def repetitionQuotient (n : ℕ) : ℕ := n / UniqueFactorizationMonoid.radical n

theorem radical_mul_repetitionQuotient (n : ℕ) :
    UniqueFactorizationMonoid.radical n * repetitionQuotient n = n := by
  unfold repetitionQuotient
  exact Nat.mul_div_cancel'
    (show UniqueFactorizationMonoid.radical n ∣ n from UniqueFactorizationMonoid.radical_dvd_self)

theorem repetitionQuotient_ne_zero (n : ℕ) (hn : n ≠ 0) : repetitionQuotient n ≠ 0 := by
  intro h
  have he := radical_mul_repetitionQuotient n
  rw [h, mul_zero] at he
  exact hn he.symm

end GRWTSK.NumberTheory.ABC.NaturalRepetitionSource
