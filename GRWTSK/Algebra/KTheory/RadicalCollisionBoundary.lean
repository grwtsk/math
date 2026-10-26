/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.Algebra.KTheory.GrothendieckPort
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Arithmetic radical collisions under a K₀-shaped group completion

The arithmetic radical is a **squarefree compression**. Given an explicitly
supplied multiplicative map from natural numbers into a commutative monoid
of stable objects, its group-completed observable cannot recover discarded
prime exponents. This is a typed information-loss boundary, not a
construction of analytic K₀ for a C*-algebra, a complete K-invariant, or
a map from primitive additive triples without a separate adapter.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.Algebra.KTheory.RadicalCollisionBoundary

variable {M : Type*} [CommMonoid M]

/-- A radical-dependent value in the universal group completion.
The lift and the stable-object monoid must be supplied explicitly. -/
noncomputable def kZeroRadical (lift : ℕ →* M) (n : ℕ) :
    GrothendieckKZero M :=
  Algebra.GrothendieckGroup.of (lift (Nat.radical n))

/-- Arithmetic radical collisions are invisible to every observable
factoring through this K₀-shaped group completion. -/
theorem kZeroRadical_eq_of_radical_eq
    (lift : ℕ →* M) {m n : ℕ}
    (h : Nat.radical m = Nat.radical n) :
    kZeroRadical lift m = kZeroRadical lift n := by
  unfold kZeroRadical
  rw [h]

/-- Positive powers retain the same squarefree radical, and hence the
same radical-factored group-completion value. -/
theorem kZeroRadical_pow (lift : ℕ →* M)
    (n k : ℕ) (hk : k ≠ 0) :
    kZeroRadical lift (n ^ k) = kZeroRadical lift n := by
  apply kZeroRadical_eq_of_radical_eq
  exact UniqueFactorizationMonoid.radical_pow n hk

/-- A radical-factored K₀-shaped observable is never injective on all
natural numbers: 2 and 2² are a concrete collision fixture. -/
theorem kZeroRadical_not_injective (lift : ℕ →* M) :
    ¬ Function.Injective (kZeroRadical lift) := by
  intro hinj
  have h : (2 : ℕ) ^ 2 = 2 :=
    hinj (kZeroRadical_pow lift 2 2 (by norm_num))
  norm_num at h

/-- An observation that separates two radical-factored group-completion
values certifies distinct radicals. The converse is not asserted:
neither the lift nor group completion need be injective. -/
theorem radical_ne_of_kZero_observation_ne
    {C : Type*} (lift : ℕ →* M)
    (observer : GrothendieckKZero M → C) {m n : ℕ}
    (h : observer (kZeroRadical lift m) ≠
      observer (kZeroRadical lift n)) :
    Nat.radical m ≠ Nat.radical n := by
  intro sameRadical
  exact h (congrArg observer
    (kZeroRadical_eq_of_radical_eq lift sameRadical))

/-- A stable port cannot recover exponent information once the source
observable has passed through the arithmetic radical. -/
theorem kZeroRadical_port_pow_collision
    {N : Type*} [CommMonoid N]
    (port : StablePort M N) (lift : ℕ →* M)
    (n k : ℕ) (hk : k ≠ 0) :
    port.kZeroMap (kZeroRadical lift (n ^ k)) =
      port.kZeroMap (kZeroRadical lift n) :=
  congrArg port.kZeroMap (kZeroRadical_pow lift n k hk)

end GRWTSK.Algebra.KTheory.RadicalCollisionBoundary
