/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import Mathlib

set_option autoImplicit false
noncomputable section

/-!
# First and second Bockstein obstructions in a genuine truncated complex

Nekovar's Selmer complexes and Sano's derived Bockstein regulators use
cohomological deformations. The algebra here isolates the literal
first and second coefficients of a differential d(t) satisfying
d(t)^2=0 modulo t^3 on a three-term cochain complex.

No source object is defined from a desired BSD rank. This is
ordinary algebra over the given commutative coefficient ring R,
NOT a construction of a true Galois/Selmer complex for E/Q, not a
Neron--Tate real pairing, not a p-adic L-function, and not an
identification with the complex central jets of L(E,s).

The actual cohomological supplier must provide the genuine d0,d1,d2
and certify d(t)^2=0, not a freely chosen candidate operator.
-/

namespace GRWTSK.CategoryTheoryHomologicalAlgebra.DerivedBockstein

variable {R C₀ C₁ C₂ : Type*}
variable [CommRing R]
variable [AddCommGroup C₀] [Module R C₀]
variable [AddCommGroup C₁] [Module R C₁]
variable [AddCommGroup C₂] [Module R C₂]

/-- Three-term cochain differential d0, and its first two genuine
deformation coefficients d1, d2. The hypotheses are the three
coefficients of d(t)^2=0 mod t^3. -/
structure TruncatedDeformation where
  d00 : C₀ →ₗ[R] C₁
  d01 : C₁ →ₗ[R] C₂
  d10 : C₀ →ₗ[R] C₁
  d11 : C₁ →ₗ[R] C₂
  d20 : C₀ →ₗ[R] C₁
  d21 : C₁ →ₗ[R] C₂
  base_complex : ∀ a, d01 (d00 a) = 0
  first_anticommutes : ∀ a, d01 (d10 a) + d11 (d00 a) = 0
  second_anticommutes :
    ∀ a, (d01 (d20 a) + d11 (d10 a)) + d21 (d00 a) = 0

/-- Literal first cohomology cocycles before quotient by d0 boundaries. -/
def IsClosed (D : TruncatedDeformation (R := R) (C₀ := C₀)
    (C₁ := C₁) (C₂ := C₂)) (x : C₁) : Prop :=
  D.d01 x = 0

/-- The actual H² coker of the zero-order differential in this
three-term truncated complex. It is not an analytic L-jet space. -/
abbrev DegreeTwoCokernel (D : TruncatedDeformation
    (R := R) (C₀ := C₀) (C₁ := C₁) (C₂ := C₂)) :=
  C₂ ⧸ D.d01.range

/-- The first Bockstein class [d1(x)] in coker d0. Its restriction
to closed x descends from H¹ because of the first anticommutation. -/
def firstBockstein (D : TruncatedDeformation
    (R := R) (C₀ := C₀) (C₁ := C₁) (C₂ := C₂))
    (x : C₁) : DegreeTwoCokernel D :=
  Submodule.Quotient.mk (D.d11 x)

/-- The first Bockstein class is invariant under replacing a
1-cocycle by a cohomologous representative x + d0(a). -/
theorem firstBockstein_boundary_invariant
    (D : TruncatedDeformation (R := R) (C₀ := C₀)
      (C₁ := C₁) (C₂ := C₂)) (x : C₁) (a : C₀) :
    firstBockstein D (x + D.d00 a) = firstBockstein D x := by
  apply (Submodule.Quotient.eq D.d01.range).2
  change D.d11 (x + D.d00 a) - D.d11 x ∈ D.d01.range
  refine ⟨-D.d10 a, ?_⟩
  have hant : D.d11 (D.d00 a) = -D.d01 (D.d10 a) :=
    eq_neg_of_add_eq_zero_left (D.first_anticommutes a)
  rw [map_neg, map_add, hant]
  abel

/-- The first Bockstein vanishes iff the actual cocycle can be lifted
one order: d0(x1)+d1(x0)=0. No extra analytic hypothesis is required. -/
theorem firstBockstein_zero_iff_first_lift
    (D : TruncatedDeformation (R := R) (C₀ := C₀)
      (C₁ := C₁) (C₂ := C₂)) (x₀ : C₁) :
    firstBockstein D x₀ = 0 ↔
      ∃ x₁ : C₁, D.d01 x₁ + D.d11 x₀ = 0 := by
  change (Submodule.Quotient.mk (D.d11 x₀) :
    C₂ ⧸ D.d01.range) = 0 ↔ _
  rw [Submodule.Quotient.mk_eq_zero]
  constructor
  · rintro ⟨y, hy⟩
    refine ⟨-y, ?_⟩
    rw [map_neg, hy]
    exact neg_add_cancel _
  · rintro ⟨x₁, hx₁⟩
    refine ⟨-x₁, ?_⟩
    rw [map_neg]
    exact (eq_neg_of_add_eq_zero_left hx₁).symm

/-- The original closed cocycle remains closed after an actual
degree-zero coboundary, using d0²=0. -/
theorem closed_add_boundary
    (D : TruncatedDeformation (R := R) (C₀ := C₀)
      (C₁ := C₁) (C₂ := C₂))
    (x : C₁) (a : C₀) (hx : IsClosed D x) :
    IsClosed D (x + D.d00 a) := by
  change D.d01 (x + D.d00 a) = 0
  rw [map_add, hx, D.base_complex a, zero_add]

/-- An actual first-order lift transports under the gauge
correction x0' = x0 + d0(a), x1' = x1 + d1(a).
This is the source-preserving first Bockstein representative law. -/
theorem first_lift_under_boundary_change
    (D : TruncatedDeformation (R := R) (C₀ := C₀)
      (C₁ := C₁) (C₂ := C₂))
    (x₀ x₁ : C₁) (a : C₀)
    (hlift : D.d01 x₁ + D.d11 x₀ = 0) :
    D.d01 (x₁ + D.d10 a) +
      D.d11 (x₀ + D.d00 a) = 0 := by
  rw [map_add, map_add]
  calc
    D.d01 x₁ + D.d01 (D.d10 a) +
        (D.d11 x₀ + D.d11 (D.d00 a)) =
      (D.d01 x₁ + D.d11 x₀) +
        (D.d01 (D.d10 a) + D.d11 (D.d00 a)) := by abel
    _ = 0 := by rw [hlift, D.first_anticommutes a]; simp

/-- First-order cycle pair: x0 is closed, and x1 lifts it through
the first derivative of the complex. -/
def IsFirstOrderCycle
    (D : TruncatedDeformation (R := R) (C₀ := C₀)
      (C₁ := C₁) (C₂ := C₂)) (x₀ x₁ : C₁) : Prop :=
  IsClosed D x₀ ∧ D.d01 x₁ + D.d11 x₀ = 0

/-- The second Bockstein obstruction after choosing a first lift.
Its dependence on the choice is NOT yet suppressed. -/
def secondBockstein (D : TruncatedDeformation
    (R := R) (C₀ := C₀) (C₁ := C₁) (C₂ := C₂))
    (x₀ x₁ : C₁) : DegreeTwoCokernel D :=
  Submodule.Quotient.mk (D.d11 x₁ + D.d21 x₀)

/-- Vanishing of the second obstruction is equivalent to the
existence of x2 solving the actual t² coefficient equation. -/
theorem secondBockstein_zero_iff_second_lift
    (D : TruncatedDeformation (R := R) (C₀ := C₀)
      (C₁ := C₁) (C₂ := C₂)) (x₀ x₁ : C₁) :
    secondBockstein D x₀ x₁ = 0 ↔
      ∃ x₂ : C₁, (D.d01 x₂ + D.d11 x₁) + D.d21 x₀ = 0 := by
  change (Submodule.Quotient.mk (D.d11 x₁ + D.d21 x₀) :
    C₂ ⧸ D.d01.range) = 0 ↔ _
  rw [Submodule.Quotient.mk_eq_zero]
  constructor
  · rintro ⟨y, hy⟩
    refine ⟨-y, ?_⟩
    rw [map_neg, hy]
    abel
  · rintro ⟨x₂, hx₂⟩
    refine ⟨-x₂, ?_⟩
    rw [map_neg]
    have h : D.d01 x₂ + (D.d11 x₁ + D.d21 x₀) = 0 := by
      simpa only [add_assoc] using hx₂
    exact (eq_neg_of_add_eq_zero_left h).symm

/-- If two x1 are first lifts of the same x0, their difference is
a CLOSED 1-cocycle. This is essential: second derived heights may
depend on an allowed higher Selmer filtration, not only a chosen x1. -/
theorem first_lift_difference_closed
    (D : TruncatedDeformation (R := R) (C₀ := C₀)
      (C₁ := C₁) (C₂ := C₂))
    (x₀ x₁ y₁ : C₁)
    (hx : IsFirstOrderCycle D x₀ x₁)
    (hy : IsFirstOrderCycle D x₀ y₁) :
    IsClosed D (y₁ - x₁) := by
  change D.d01 (y₁ - x₁) = 0
  have h : D.d01 y₁ + D.d11 x₀ =
      D.d01 x₁ + D.d11 x₀ := hy.2.trans hx.2.symm
  have heq : D.d01 y₁ = D.d01 x₁ := add_right_cancel h
  rw [map_sub, heq, sub_self]

/-- Complete signed correction for TWO choices of first lift.
It is the first Bockstein image of the closed difference, not an
unaccounted zero. This is precisely the higher-derived ambiguity. -/
theorem second_obstruction_choice_difference
    (D : TruncatedDeformation (R := R) (C₀ := C₀)
      (C₁ := C₁) (C₂ := C₂))
    (x₀ x₁ y₁ : C₁) :
    (D.d11 y₁ + D.d21 x₀) -
      (D.d11 x₁ + D.d21 x₀) =
      D.d11 (y₁ - x₁) := by
  rw [map_sub]
  abel

/-- Under a genuine first-order change of representative, the
second obstruction changes by an ACTUAL d0 boundary, because
d0*d2 + d1*d1 + d2*d0 = 0. -/
theorem secondBockstein_boundary_invariant
    (D : TruncatedDeformation (R := R) (C₀ := C₀)
      (C₁ := C₁) (C₂ := C₂))
    (x₀ x₁ : C₁) (a : C₀) :
    secondBockstein D (x₀ + D.d00 a) (x₁ + D.d10 a) =
      secondBockstein D x₀ x₁ := by
  apply (Submodule.Quotient.eq D.d01.range).2
  change (D.d11 (x₁ + D.d10 a) +
      D.d21 (x₀ + D.d00 a)) -
        (D.d11 x₁ + D.d21 x₀) ∈ D.d01.range
  refine ⟨-D.d20 a, ?_⟩
  have h : D.d01 (D.d20 a) +
      (D.d11 (D.d10 a) + D.d21 (D.d00 a)) = 0 := by
    simpa only [add_assoc] using D.second_anticommutes a
  have hsecond :
      D.d11 (D.d10 a) + D.d21 (D.d00 a) =
        -D.d01 (D.d20 a) := eq_neg_of_add_eq_zero_left h
  have hraw :
      (D.d11 (x₁ + D.d10 a) +
        D.d21 (x₀ + D.d00 a)) -
          (D.d11 x₁ + D.d21 x₀) =
      D.d11 (D.d10 a) + D.d21 (D.d00 a) := by
    rw [map_add, map_add]
    abel
  rw [map_neg, hraw, hsecond]


/-! ## A genuinely choice-independent SECOND derived obstruction

For fixed x0 with a first lift, changing x1 by a closed 1-cochain
changes the raw second obstruction by d1 of that closed cochain.
The appropriate target is therefore coker(d0) modulo the image of
the FIRST Bockstein. This preserves precisely the higher-derived
ambiguity instead of setting it to zero by notation.
-/

/-- The obstruction subgroup in degree 2 generated by genuine
zero-order boundaries and d1-images of zero-order C1-cocycles. -/
def secondAmbiguity
    (D : TruncatedDeformation (R := R) (C₀ := C₀)
      (C₁ := C₁) (C₂ := C₂)) : Submodule R C₂ :=
  D.d01.range ⊔ D.d01.ker.map D.d11

/-- The SECOND derived obstruction target. It is a genuine quotient
of the source cochain space, not a complex L-function jet. -/
abbrev SecondDerivedCokernel
    (D : TruncatedDeformation (R := R) (C₀ := C₀)
      (C₁ := C₁) (C₂ := C₂)) :=
  C₂ ⧸ secondAmbiguity D

def secondDerivedObstruction
    (D : TruncatedDeformation (R := R) (C₀ := C₀)
      (C₁ := C₁) (C₂ := C₂))
    (x₀ x₁ : C₁) : SecondDerivedCokernel D :=
  Submodule.Quotient.mk (D.d11 x₁ + D.d21 x₀)

/-- Two actual first lifts of the SAME zero-order source class give
the SAME second derived cohomology class. The proof retains the entire
difference d1(y1-x1) and kills it ONLY by the declared derived
ambiguity subgroup, never by an unproved analytic cancellation. -/
theorem secondDerivedObstruction_choice_independent
    (D : TruncatedDeformation (R := R) (C₀ := C₀)
      (C₁ := C₁) (C₂ := C₂))
    (x₀ x₁ y₁ : C₁)
    (hx : IsFirstOrderCycle D x₀ x₁)
    (hy : IsFirstOrderCycle D x₀ y₁) :
    secondDerivedObstruction D x₀ x₁ =
      secondDerivedObstruction D x₀ y₁ := by
  apply (Submodule.Quotient.eq (secondAmbiguity D)).2
  change (D.d11 x₁ + D.d21 x₀) -
    (D.d11 y₁ + D.d21 x₀) ∈ secondAmbiguity D
  have hclosed : x₁ - y₁ ∈ D.d01.ker := by
    change D.d01 (x₁ - y₁) = 0
    exact first_lift_difference_closed D x₀ y₁ x₁ hy hx
  have hmap : D.d11 (x₁ - y₁) ∈ D.d01.ker.map D.d11 := by
    exact ⟨x₁ - y₁, hclosed, rfl⟩
  have hle : D.d01.ker.map D.d11 ≤ secondAmbiguity D := by
    unfold secondAmbiguity
    exact le_sup_right
  rw [second_obstruction_choice_difference D x₀ y₁ x₁]
  exact hle hmap

end GRWTSK.CategoryTheoryHomologicalAlgebra.DerivedBockstein
