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

/-- An exact natural-number type decoder cannot factor through the
pair of a radical-derived K₀-shaped class and that same arithmetic
radical. Distinct positive powers remain a hostile collision fixture.
This specializes the obstruction represented by
`GRWTSK.Algebra.KTheory.JointCollision`. -/
theorem no_exact_nat_type_decoder (lift : ℕ →* M) :
    ¬ ∃ decoder : GrothendieckKZero M × ℕ → ℕ,
        ∀ n : ℕ, decoder (kZeroRadical lift n, Nat.radical n) = n := by
  rintro ⟨decoder, correct⟩
  have hrad : Nat.radical ((2 : ℕ) ^ 2) = Nat.radical 2 :=
    UniqueFactorizationMonoid.radical_pow 2 (by norm_num)
  have hk : kZeroRadical lift ((2 : ℕ) ^ 2) =
      kZeroRadical lift 2 :=
    kZeroRadical_pow lift 2 2 (by norm_num)
  have hcollision :
      decoder (kZeroRadical lift ((2 : ℕ) ^ 2),
        Nat.radical ((2 : ℕ) ^ 2)) =
      decoder (kZeroRadical lift 2, Nat.radical 2) :=
    congrArg decoder (Prod.ext hk hrad)
  have hcontra : (2 : ℕ) ^ 2 = 2 := by
    calc
      (2 : ℕ) ^ 2 =
          decoder (kZeroRadical lift ((2 : ℕ) ^ 2),
            Nat.radical ((2 : ℕ) ^ 2)) := (correct _).symm
      _ = decoder (kZeroRadical lift 2, Nat.radical 2) :=
        hcollision
      _ = 2 := correct 2
  norm_num at hcontra

/-- Any deterministic steering or diffusion output that only reads the
radical-derived K₀-shaped feature remains constant on equal-radical
inputs. This is a collision obstruction, not an analytic mixing theorem. -/
theorem steered_observation_eq_of_radical_eq
    {State : Type*} (lift : ℕ →* M)
    (steer : GrothendieckKZero M → State)
    {m n : ℕ} (h : Nat.radical m = Nat.radical n) :
    steer (kZeroRadical lift m) = steer (kZeroRadical lift n) :=
  congrArg steer (kZeroRadical_eq_of_radical_eq lift h)

/-- If two inputs have the same radical-derived K₀-shaped feature but
different exact types, no feature-only steering map can decode both.
The type-separation premise is explicit. -/
theorem no_type_complete_feature_only_steering_of_collision
    {TypeLabel : Type*} (lift : ℕ →* M)
    (typeOf : ℕ → TypeLabel)
    {m n : ℕ}
    (hRadical : Nat.radical m = Nat.radical n)
    (hType : typeOf m ≠ typeOf n) :
    ¬ ∃ steer : GrothendieckKZero M → TypeLabel,
        ∀ x : ℕ, steer (kZeroRadical lift x) = typeOf x := by
  rintro ⟨steer, correct⟩
  apply hType
  calc
    typeOf m = steer (kZeroRadical lift m) := (correct m).symm
    _ = steer (kZeroRadical lift n) :=
      steered_observation_eq_of_radical_eq lift steer hRadical
    _ = typeOf n := correct n

end GRWTSK.Algebra.KTheory.RadicalCollisionBoundary
