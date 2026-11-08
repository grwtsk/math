/-
Copyright (c) 2026 grwtsk contributors. MIT.
Local attribution: grwtsk contributors.

SOURCE_ONLY / LEAN_NOT_RUN / KERNEL_NOT_RUN / AXIOMS_NOT_AUDITED.

Elementary source-independent algebra: reciprocal quartics, their quadratic
resolvent, and the order-two permutation of a quadratic-factor dyad.
This file does not prove an algorithm for arbitrary quartics, a knot invariant,
or a spectral triple for arithmetic prime polynomials.
-/
import Mathlib

/-!
# Reciprocal quartic factorization and the dyad crossing

The quadratic substitution `y = x + x⁻¹` on nonzero field points sends
`x⁴ + a*x³ + b*x² + a*x + 1` to `y² + a*y + (b-2)` after dividing by `x²`.

If `u + v = -a` and `u*v = b-2`, the quartic is the product of two
reciprocal quadratics. The two choices `(u,v)` and `(v,u)` form a dyad;
exchanging them is an involution. This is the permutation quotient of a
two-strand braid crossing, **not** a proof that the associated data is a
knot in a 3-manifold. The polynomial identity and permutation statements
are independent of Skelet17, the finite Busy Beaver machine.

A concrete consumer is the
[finite Alexander-incidence Dirac construction](../OperatorTheory/PrimeKnotAlexanderSpectralTriple.lean):
`trefoil_figureEight_product` specializes `quadraticFactor_mul` over `ZMod 17`.
The consumer's `commutator_leibniz` concerns its finite function algebra;
it does not turn this factorization into an ambient-isotopy theorem.
-/

set_option autoImplicit false

noncomputable section

namespace GRWTSK.FieldTheoryAndPolynomials.ReciprocalQuarticDyad

open Polynomial

variable {R : Type*} [CommRing R]

/-- A monic reciprocal quartic. -/
def quartic (a b : R) : R[X] :=
  X ^ 4 + C a * X ^ 3 + C b * X ^ 2 + C a * X + 1

/-- The degree-two resolvent of a reciprocal quartic. -/
def resolvent (a b : R) : R[X] :=
  X ^ 2 + C a * X + C (b - 2)

/-- One of the two monic reciprocal quadratic factors. -/
def quadraticFactor (u : R) : R[X] :=
  X ^ 2 - C u * X + 1

/-- The complete quartic/quadratic multiplication identity.
No division, root existence, or algebraic-closure assumption is used. -/
theorem quadraticFactor_mul (u v : R) :
    quadraticFactor u * quadraticFactor v =
      quartic (-(u + v)) (u * v + 2) := by
  simp [quadraticFactor, quartic, map_add, map_mul, map_neg, C_ofNat]
  ring

/-- The quadratic resolvent factors with the same two parameters. -/
theorem resolvent_factor (u v : R) :
    resolvent (-(u + v)) (u * v + 2) =
      (X - C u) * (X - C v) := by
  simp [resolvent, map_add, map_mul, map_neg]
  ring

/-- This is a conditional factorization: the sum and product must be
established independently in the coefficient ring. -/
theorem factor_of_sum_product (a b u v : R)
    (hsum : u + v = -a) (hproduct : u * v = b - 2) :
    quartic a b = quadraticFactor u * quadraticFactor v := by
  have ha : a = -(u + v) := by
    rw [hsum]
    simp
  have hb : b = u * v + 2 := by
    rw [hproduct]
    ring
  rw [ha, hb]
  exact (quadraticFactor_mul (R := R) u v).symm

/-- A *pair* of factors retains their order; multiplication is symmetric. -/
structure Dyad (R : Type*) [CommRing R] where
  first : R
  second : R

/-- Exchange the two quadratic factors. -/
def Dyad.cross (d : Dyad R) : Dyad R :=
  ⟨d.second, d.first⟩

/-- The crossing is a genuine order-two permutation on the dyad. -/
theorem Dyad.cross_cross (d : Dyad R) : d.cross.cross = d := by
  cases d
  rfl

/-- The dyad crossing is a permutation, and hence an element of its
permutation group. This does not identify a topological knot group. -/
def crossing : Equiv.Perm (Dyad R) where
  toFun := Dyad.cross
  invFun := Dyad.cross
  left_inv := Dyad.cross_cross
  right_inv := Dyad.cross_cross

/-- The two-strand crossing maps to an involution in the dyad
permutation group. -/
theorem crossing_twice (d : Dyad R) : crossing (crossing d) = d :=
  Dyad.cross_cross d

/-- The product of the two quadratics is the same after a crossing. -/
def Dyad.product (d : Dyad R) : R[X] :=
  quadraticFactor d.first * quadraticFactor d.second

theorem Dyad.product_cross (d : Dyad R) :
    d.cross.product = d.product := by
  simp only [Dyad.cross, Dyad.product]
  exact mul_comm _ _

/-- The quartic reconstructed from the dyad is insensitive to its order. -/
def Dyad.reconstruct (d : Dyad R) : R[X] :=
  quartic (-(d.first + d.second)) (d.first * d.second + 2)

theorem Dyad.reconstruct_cross (d : Dyad R) :
    d.cross.reconstruct = d.reconstruct := by
  simp [Dyad.cross, Dyad.reconstruct, add_comm, mul_comm]

theorem Dyad.product_eq_reconstruct (d : Dyad R) :
    d.product = d.reconstruct :=
  quadraticFactor_mul (R := R) d.first d.second

section FieldReduction

variable {K : Type*} [Field K]

/-- For nonzero `x`, the reciprocal quartic reduces to a quadratic in
`x + x⁻¹`. The exclusion of zero is essential. -/
theorem eval_quartic_eq_resolvent (a b x : K) (hx : x ≠ 0) :
    (quartic a b).eval x =
      x ^ 2 * (resolvent a b).eval (x + x⁻¹) := by
  simp [quartic, resolvent]
  field_simp [hx]
  ring

end FieldReduction

/-! ## Proof-carrying factorization and braid-parity transport -/

/-- Source-verified coefficients and the *actual* two witnesses in their
original coefficient ring. An automated search must construct this data
before an edit can be admitted as a factorization. -/
structure CheckedDyad (R : Type*) [CommRing R] where
  a : R
  b : R
  dyad : Dyad R
  sum_eq : dyad.first + dyad.second = -a
  product_eq : dyad.first * dyad.second = b - 2

/-- A complete, local algebraic soundness return for a checked dyad. -/
theorem CheckedDyad.sound (c : CheckedDyad R) :
    quartic c.a c.b = c.dyad.product :=
  factor_of_sum_product c.a c.b c.dyad.first c.dyad.second
    c.sum_eq c.product_eq

/-- A braid generator is transported through its permutation quotient:
an odd crossing count exchanges the two positions, an even count does not.
This *is not* an ambient isotopy invariant or a faithful braid group action. -/
def braidParityAction (oddCrossings : Bool) (d : Dyad R) : Dyad R :=
  if oddCrossings then d.cross else d

/-- The parity-quotient action cannot change the quartic product. -/
theorem braidParityAction_preserves_product (oddCrossings : Bool) (d : Dyad R) :
    (braidParityAction oddCrossings d).product = d.product := by
  cases oddCrossings <;> simp [braidParityAction, Dyad.product_cross]

/-- Traversal in the required five-step order is a finite state protocol;
no stage is declared to have executed solely by naming it. -/
inductive Phase where
  | search | diffuse | edit | save | gather
  deriving DecidableEq, Repr

def Phase.next : Phase → Option Phase
  | .search => some .diffuse
  | .diffuse => some .edit
  | .edit => some .save
  | .save => some .gather
  | .gather => none

theorem phase_chain :
    Phase.search.next = some .diffuse ∧
    Phase.diffuse.next = some .edit ∧
    Phase.edit.next = some .save ∧
    Phase.save.next = some .gather ∧
    Phase.gather.next = none := by
  decide

end GRWTSK.FieldTheoryAndPolynomials.ReciprocalQuarticDyad

