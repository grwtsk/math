/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical reference: Bhargav Bhatt and Peter Scholze,
"Prisms and prismatic cohomology", Annals of Mathematics 196 (2022),
Definition 2.1 and Remark 2.2; DOI: 10.4007/annals.2022.196.3.5.
This is a new finite-cochain consequence of the torsion-free
delta-ring/Frobenius-lift construction, NOT an import from openai/math
and NOT a construction of a prism or prismatic cohomology.
-/
import Mathlib

/-!
# Divided Frobenius and the exact finite-coboundary obstruction

One bounded portion of the delta-ring algebra underlying prismatic
cohomology is the formula phi(a) = a^p + p * delta(a).  We state the
p-torsion-free form with the addition law multiplied by p.  The
p-regularity hypothesis ensures the multiplication-by-p identity does
not lose information.  The associated Frobenius lift is constructed
as an actual ring homomorphism.

The finite matrix statement is a separate GRWTSK cochain bridge:
Frobenius transports the boundary with matrix M to the boundary with
entrywise Frobenius-twisted matrix phi(M).  It commutes with the SAME
boundary exactly when all matrix entries are fixed by phi.

There is no completion, prism ideal, distinguished element, Nygaard
filtration, crystalline comparison, actual source-cellular realization,
or cohomology quasi-isomorphism supplied by this file.
-/

set_option autoImplicit false

namespace GRWTSK.Algebra.FinitePrismaticSurfaceModel.DividedFrobeniusCochain

universe u

/-- A p-torsion-free delta structure in division-free coordinates.

The addition law is multiplied by p; multiplication by p is injective,
so this is the usual delta addition formula with its uniquely
determined integral correction polynomial.  Unlike an arbitrary
Frobenius-like matrix, the delta and multiplicative identities are
actual proof fields.  This is not yet a prism: no ideal, Cartier,
derived completeness or distinguished-element assertion is present. -/
structure TorsionFreeDeltaStructure (p : ℕ) (A : Type u) [CommRing A] where
  prime : Nat.Prime p
  delta : A → A
  delta_zero : delta 0 = 0
  delta_one : delta 1 = 0
  delta_add :
    ∀ x y : A,
      (p : A) * (delta (x + y) - delta x - delta y) =
        x ^ p + y ^ p - (x + y) ^ p
  delta_mul :
    ∀ x y : A,
      delta (x * y) =
        x ^ p * delta y + y ^ p * delta x +
          (p : A) * delta x * delta y
  p_regular : ∀ x : A, (p : A) * x = 0 → x = 0

namespace TorsionFreeDeltaStructure

variable {A : Type u} [CommRing A] {p : ℕ}

/-- The genuine ring endomorphism forced by the delta identities.
This is only the algebraic Frobenius-lift layer of prism theory. -/
def frobeniusLift (D : TorsionFreeDeltaStructure p A) : A →+* A where
  toFun x := x ^ p + (p : A) * D.delta x
  map_zero' := by
    have hp : p ≠ 0 := Nat.ne_of_gt D.prime.pos
    simp [D.delta_zero, hp]
  map_one' := by
    simp [D.delta_one]
  map_add' := by
    intro x y
    change (x + y) ^ p + (p : A) * D.delta (x + y) =
      (x ^ p + (p : A) * D.delta x) +
        (y ^ p + (p : A) * D.delta y)
    have h := D.delta_add x y
    linear_combination h
  map_mul' := by
    intro x y
    change (x * y) ^ p + (p : A) * D.delta (x * y) =
      (x ^ p + (p : A) * D.delta x) *
        (y ^ p + (p : A) * D.delta y)
    rw [D.delta_mul, mul_pow]
    ring

@[simp]
theorem frobeniusLift_apply (D : TorsionFreeDeltaStructure p A) (x : A) :
    D.frobeniusLift x = x ^ p + (p : A) * D.delta x :=
  rfl

/-- An exact divided Frobenius defect, hence congruence modulo (p).
This equality is stronger than an unspecified mod-p approximation. -/
theorem frobeniusLift_sub_pow (D : TorsionFreeDeltaStructure p A) (x : A) :
    D.frobeniusLift x - x ^ p = (p : A) * D.delta x := by
  rw [frobeniusLift_apply]
  ring

/-- The Frobenius lift reduces to the p-th-power map modulo p. -/
theorem frobeniusLift_mod_p_dvd (D : TorsionFreeDeltaStructure p A) (x : A) :
    (p : A) ∣ D.frobeniusLift x - x ^ p := by
  refine ⟨D.delta x, ?_⟩
  exact D.frobeniusLift_sub_pow x

end TorsionFreeDeltaStructure

/-- A finite matrix boundary (the bare degree-zero to degree-one map).
The coefficient ring is retained; this is NOT silently an actual
prismatic cochain complex. -/
def finiteCoboundary {A : Type u} [CommRing A]
    {I J : Type*} [Fintype I]
    (M : J → I → A) (x : I → A) (j : J) : A :=
  ∑ i : I, M j i * x i

namespace TorsionFreeDeltaStructure

variable {A : Type u} [CommRing A] {p : ℕ}
variable {I J : Type*} [Fintype I]

/-- The exact semilinear chain identity.  The target boundary must
use phi(M), not M, unless the coefficient-fixity obstruction vanishes. -/
theorem finiteCoboundary_frobenius_twist
    (D : TorsionFreeDeltaStructure p A) (M : J → I → A)
    (x : I → A) (j : J) :
    D.frobeniusLift (finiteCoboundary M x j) =
      finiteCoboundary (fun k i => D.frobeniusLift (M k i))
        (fun i => D.frobeniusLift (x i)) j := by
  simp only [finiteCoboundary, map_sum, map_mul]

/-- Exact coefficient defect for an untwisted boundary.  This
quantifies precisely which theorem must be supplied before an
arithmetic Frobenius may act on a fixed GRWTSK cochain complex. -/
theorem finiteCoboundary_frobenius_defect
    (D : TorsionFreeDeltaStructure p A) (M : J → I → A)
    (x : I → A) (j : J) :
    D.frobeniusLift (finiteCoboundary M x j) -
        finiteCoboundary M (fun i => D.frobeniusLift (x i)) j =
      ∑ i : I,
        (D.frobeniusLift (M j i) - M j i) *
          D.frobeniusLift (x i) := by
  rw [D.finiteCoboundary_frobenius_twist]
  simp only [finiteCoboundary, ← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro i hi
  ring

/-- Sufficient direction: if every incidence coefficient is fixed,
coordinatewise Frobenius commutes with the actual finite boundary. -/
theorem finiteCoboundary_commutes_of_coefficients_fixed
    (D : TorsionFreeDeltaStructure p A) (M : J → I → A)
    (hM : ∀ j i, D.frobeniusLift (M j i) = M j i)
    (x : I → A) (j : J) :
    D.frobeniusLift (finiteCoboundary M x j) =
      finiteCoboundary M (fun i => D.frobeniusLift (x i)) j := by
  calc
    D.frobeniusLift (finiteCoboundary M x j) =
        finiteCoboundary (fun k i => D.frobeniusLift (M k i))
          (fun i => D.frobeniusLift (x i)) j :=
      D.finiteCoboundary_frobenius_twist M x j
    _ = finiteCoboundary M (fun i => D.frobeniusLift (x i)) j := by
      unfold finiteCoboundary
      apply Finset.sum_congr rfl
      intro i hi
      rw [hM j i]

/-- Strongest bounded bridge: Frobenius is a chain map of the
UNTWISTED degree-zero/degree-one finite matrix exactly when all
matrix coefficients are Frobenius-fixed.  The reverse direction
tests elementary basis cochains, so the hypothesis is not cosmetic. -/
theorem finiteCoboundary_commutes_iff_coefficients_fixed
    (D : TorsionFreeDeltaStructure p A) (M : J → I → A) :
    (∀ (x : I → A) (j : J),
      D.frobeniusLift (finiteCoboundary M x j) =
        finiteCoboundary M (fun i => D.frobeniusLift (x i)) j) ↔
      (∀ j i, D.frobeniusLift (M j i) = M j i) := by
  constructor
  · intro h j i
    classical
    let e : I → A := fun t => if t = i then 1 else 0
    have he := h e j
    simpa [finiteCoboundary, e] using he
  · intro h x j
    exact D.finiteCoboundary_commutes_of_coefficients_fixed M h x j

/-- Twisted zero-cocycles survive by an actual ring homomorphism.
This does NOT produce an isomorphism on a completed prismatic complex. -/
theorem finiteCocycle_frobenius_twist
    (D : TorsionFreeDeltaStructure p A) (M : J → I → A)
    (x : I → A)
    (hx : ∀ j, finiteCoboundary M x j = 0) :
    ∀ j, finiteCoboundary
      (fun k i => D.frobeniusLift (M k i))
      (fun i => D.frobeniusLift (x i)) j = 0 := by
  intro j
  rw [← D.finiteCoboundary_frobenius_twist]
  simp [hx j]

/-- A single nonfixed matrix coefficient obstructs an untwisted
Frobenius chain-map assertion.  Twisting the matrix resolves the
algebraic mismatch but supplies no comparison quasi-isomorphism. -/
theorem nonfixed_coefficient_obstructs_untwisted
    (D : TorsionFreeDeltaStructure p A) (M : J → I → A)
    (h : ∃ j i, D.frobeniusLift (M j i) ≠ M j i) :
    ¬ (∀ (x : I → A) (j : J),
        D.frobeniusLift (finiteCoboundary M x j) =
          finiteCoboundary M (fun i => D.frobeniusLift (x i)) j) := by
  intro hc
  obtain ⟨j, i, hne⟩ := h
  exact hne ((D.finiteCoboundary_commutes_iff_coefficients_fixed M).mp hc j i)

end TorsionFreeDeltaStructure

end GRWTSK.Algebra.FinitePrismaticSurfaceModel.DividedFrobeniusCochain
