namespace Surface.Prismatic

universe u

/-!
# Delta rings

Formalized here: a small operation-level interface for δ-rings, including the
Frobenius lift formula `φ(x) = x^p + pδ(x)` and Prop-valued certificates for
the δ-identities.

Certificate-gated here: ring-homomorphism laws and Frobenius reduction modulo
`p`, because the current Surface snapshot does not import a full commutative
ring hierarchy.

Not claimed: a complete development of commutative algebra or Witt-vector
theory.
-/

/-- Minimal commutative-ring-like operations used by the prismatic interfaces. -/
structure RingOps where
  carrier : Type u
  zero : carrier
  one : carrier
  add : carrier → carrier → carrier
  neg : carrier → carrier
  mul : carrier → carrier → carrier
  lawBoundary : List String

namespace RingOps

def natMul (R : RingOps.{u}) : Nat → R.carrier → R.carrier
  | 0, _ => R.zero
  | n + 1, x => R.add x (natMul R n x)

def pow (R : RingOps.{u}) (x : R.carrier) : Nat → R.carrier
  | 0 => R.one
  | n + 1 => R.mul x (pow R x n)

end RingOps

/-- A δ-ring at the prime-like index `p`. -/
structure DeltaRing (p : Nat) where
  ops : RingOps.{u}
  delta : ops.carrier → ops.carrier
  phi : ops.carrier → ops.carrier
  phi_eq :
    ∀ x, phi x =
      ops.add (ops.pow x p) (ops.natMul p (delta x))
  delta_zero : delta ops.zero = ops.zero
  delta_one : delta ops.one = ops.zero
  delta_add_numerator_divisible :
    ∀ _ _ : ops.carrier, Prop
  delta_add_certificate :
    ∀ x y, delta_add_numerator_divisible x y
  delta_mul :
    ∀ x y,
      delta (ops.mul x y) =
        ops.add
          (ops.add
            (ops.mul (ops.pow x p) (delta y))
            (ops.mul (ops.pow y p) (delta x)))
          (ops.natMul p (ops.mul (delta x) (delta y)))
  phi_is_ring_hom : Prop
  phi_is_ring_hom_certified : phi_is_ring_hom
  phi_lifts_frobenius_mod_p : Prop
  phi_lifts_frobenius_mod_p_certified : phi_lifts_frobenius_mod_p
  certificateBoundary : List String

namespace DeltaRing

theorem frobenius_lift_formula
    (A : Surface.Prismatic.DeltaRing p)
    (x : A.ops.carrier) :
    A.phi x =
      A.ops.add (A.ops.pow x p) (A.ops.natMul p (A.delta x)) :=
  A.phi_eq x

theorem delta_structure_gives_frobenius_lift
    (A : Surface.Prismatic.DeltaRing p) :
    A.phi_lifts_frobenius_mod_p :=
  A.phi_lifts_frobenius_mod_p_certified

end DeltaRing

/-- Homomorphism of δ-rings. -/
structure DeltaRingHom
    {p : Nat}
    (A B : DeltaRing p) where
  map : A.ops.carrier → B.ops.carrier
  preserves_zero : map A.ops.zero = B.ops.zero
  preserves_one : map A.ops.one = B.ops.one
  preserves_add :
    ∀ x y, map (A.ops.add x y) = B.ops.add (map x) (map y)
  preserves_mul :
    ∀ x y, map (A.ops.mul x y) = B.ops.mul (map x) (map y)
  preserves_delta :
    ∀ x, map (A.delta x) = B.delta (map x)
  preserves_phi :
    ∀ x, map (A.phi x) = B.phi (map x)
  homBoundary : List String

/-- A tiny terminal δ-ring used by examples and tests. -/
def unitDeltaRing (p : Nat) : DeltaRing p where
  ops := {
    carrier := PUnit
    zero := PUnit.unit
    one := PUnit.unit
    add := fun _ _ => PUnit.unit
    neg := fun _ => PUnit.unit
    mul := fun _ _ => PUnit.unit
    lawBoundary := [
      "The unit ring is an example carrier for interface tests.",
      "It is not used to prove nontrivial prismatic comparison theorems."
    ]
  }
  delta := fun _ => PUnit.unit
  phi := fun _ => PUnit.unit
  phi_eq := by
    intro x
    rfl
  delta_zero := rfl
  delta_one := rfl
  delta_add_numerator_divisible := fun _ _ => True
  delta_add_certificate := by
    intro x y
    trivial
  delta_mul := by
    intro x y
    rfl
  phi_is_ring_hom := True
  phi_is_ring_hom_certified := trivial
  phi_lifts_frobenius_mod_p := True
  phi_lifts_frobenius_mod_p_certified := trivial
  certificateBoundary := [
    "Unit δ-ring example.",
    "Nontrivial δ-ring mathematics must use nontrivial certificates."
  ]

end Surface.Prismatic
