/-
Copyright (c) 2026.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: GRWTSK research
-/
import Mathlib

/-!
# Four-cycle orbit exhaustion and quartic resolvent coefficients

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.

All equalities of elementary symmetric expressions hold over an arbitrary
commutative ring, including characteristic two and three and repeated roots.
Root separation, irreducibility of the resolvent and its discriminant are
strictly separate claims.

The finite exhaustion lemma describes *unoriented* four-cycle edge sets:
relabelling can only yield one of the three sets. It does not choose a canonical
labelling of the roots of a polynomial.
-/

namespace GRWTSK.Algebra.PolygonalQuarticDescent

variable {R : Type*} [CommRing R]

def eOne (a b c d : R) : R := a + b + c + d
def eTwo (a b c d : R) : R :=
  a*b + a*c + a*d + b*c + b*d + c*d
def eThree (a b c d : R) : R :=
  a*b*c + a*b*d + a*c*d + b*c*d
def eFour (a b c d : R) : R := a*b*c*d

def qOne (a b c d : R) : R := a*b + c*d
def qTwo (a b c d : R) : R := a*c + b*d
def qThree (a b c d : R) : R := a*d + b*c

theorem matching_sum (a b c d : R) :
    qOne a b c d + qTwo a b c d + qThree a b c d =
      eTwo a b c d := by
  simp only [qOne, qTwo, qThree, eTwo]
  ring

theorem matching_pair_sum (a b c d : R) :
    qOne a b c d * qTwo a b c d +
      qOne a b c d * qThree a b c d +
      qTwo a b c d * qThree a b c d =
      eOne a b c d * eThree a b c d - 4 * eFour a b c d := by
  simp only [qOne, qTwo, qThree, eOne, eThree, eFour]
  ring

theorem matching_product (a b c d : R) :
    qOne a b c d * qTwo a b c d * qThree a b c d =
      eOne a b c d ^ 2 * eFour a b c d +
        eThree a b c d ^ 2 -
        4 * eTwo a b c d * eFour a b c d := by
  simp only [qOne, qTwo, qThree, eOne, eTwo, eThree, eFour]
  ring

def adjacencyOne (a b c d : R) : R := eTwo a b c d - qOne a b c d
def adjacencyTwo (a b c d : R) : R := eTwo a b c d - qTwo a b c d
def adjacencyThree (a b c d : R) : R := eTwo a b c d - qThree a b c d

theorem adjacency_sum (a b c d : R) :
    adjacencyOne a b c d + adjacencyTwo a b c d +
      adjacencyThree a b c d = 2 * eTwo a b c d := by
  simp only [adjacencyOne, adjacencyTwo, adjacencyThree]
  rw [← matching_sum a b c d]
  ring

theorem adjacency_pair_sum (a b c d : R) :
    adjacencyOne a b c d * adjacencyTwo a b c d +
      adjacencyOne a b c d * adjacencyThree a b c d +
      adjacencyTwo a b c d * adjacencyThree a b c d =
      eTwo a b c d ^ 2 + eOne a b c d * eThree a b c d -
        4 * eFour a b c d := by
  simp only [adjacencyOne, adjacencyTwo, adjacencyThree,
    eOne, eTwo, eThree, eFour, qOne, qTwo, qThree]
  ring

theorem adjacency_product (a b c d : R) :
    adjacencyOne a b c d * adjacencyTwo a b c d *
      adjacencyThree a b c d =
      eTwo a b c d * eOne a b c d * eThree a b c d -
        eOne a b c d ^ 2 * eFour a b c d -
        eThree a b c d ^ 2 := by
  simp only [adjacencyOne, adjacencyTwo, adjacencyThree,
    eOne, eTwo, eThree, eFour, qOne, qTwo, qThree]
  ring

/-! The three possible unoriented cyclic edge sets, expressed without
choosing a starting vertex or an orientation. -/

private def edge (i j : Fin 4) : Finset (Fin 4) := {i,j}
private def cyclicEdges (σ : Equiv.Perm (Fin 4)) :
    Finset (Finset (Fin 4)) :=
  Finset.univ.image (fun i : Fin 4 => edge (σ i) (σ (i + 1)))

def referenceCycles : Finset (Finset (Finset (Fin 4))) :=
  {cyclicEdges 1,
   cyclicEdges (Equiv.swap (1 : Fin 4) 2),
   cyclicEdges (Equiv.swap (2 : Fin 4) 3)}

theorem every_four_cycle_is_one_of_three :
    ∀ σ : Equiv.Perm (Fin 4), cyclicEdges σ ∈ referenceCycles := by
  decide

/-- There are exactly three unoriented cyclic edge sets of four vertices. -/
theorem referenceCycles_card : referenceCycles.card = 3 := by
  decide

/-! For a monic quartic ∏(X - C r), its coefficients are
 -e₁, e₂, -e₃, e₄. The following cubic is coefficient-wise
 determined by those four Vieta coordinates, independent of any
 root ordering. -/

def adjacencyResolventFromVieta (s₁ s₂ s₃ s₄ : R) : R[X] :=
  Polynomial.X ^ 3 -
  Polynomial.C (2*s₂) * Polynomial.X ^ 2 +
  Polynomial.C (s₂^2 + s₁*s₃ - 4*s₄) * Polynomial.X -
  Polynomial.C (s₂*s₁*s₃ - s₁^2*s₄ - s₃^2)

def adjacencyResolventFromRoots (a b c d : R) : R[X] :=
  (Polynomial.X - Polynomial.C (adjacencyOne a b c d)) *
  (Polynomial.X - Polynomial.C (adjacencyTwo a b c d)) *
  (Polynomial.X - Polynomial.C (adjacencyThree a b c d))

theorem adjacencyResolvent_vieta (a b c d : R) :
    adjacencyResolventFromRoots a b c d =
      adjacencyResolventFromVieta
        (eOne a b c d) (eTwo a b c d)
        (eThree a b c d) (eFour a b c d) := by
  simp only [adjacencyResolventFromRoots, adjacencyResolventFromVieta,
    adjacencyOne, adjacencyTwo, adjacencyThree, eOne, eTwo, eThree,
    eFour, qOne, qTwo, qThree]
  simp only [map_add, map_sub, map_mul, map_pow]
  ring

/-- The monic quartic reconstructed from the four Vieta coordinates. -/
def quarticFromVieta (s₁ s₂ s₃ s₄ : R) : R[X] :=
  Polynomial.X ^ 4 - Polynomial.C s₁ * Polynomial.X ^ 3 +
    Polynomial.C s₂ * Polynomial.X ^ 2 -
    Polynomial.C s₃ * Polynomial.X + Polynomial.C s₄

theorem four_linear_factors_vieta (a b c d : R) :
    (Polynomial.X - Polynomial.C a) *
      (Polynomial.X - Polynomial.C b) *
      (Polynomial.X - Polynomial.C c) *
      (Polynomial.X - Polynomial.C d) =
      quarticFromVieta (eOne a b c d) (eTwo a b c d)
        (eThree a b c d) (eFour a b c d) := by
  simp only [quarticFromVieta, eOne, eTwo, eThree, eFour]
  simp only [map_add, map_sub, map_mul, map_pow]
  ring

/-- The output is a function of the actual quartic coefficients; no
chosen ordering is included in the output. An explicit factorization
is the sole input witness. If the quartic is separable over a splitting
field, such an ordering exists with distinct roots, but the polynomial
identity itself also holds for repeated roots in every characteristic. -/
theorem resolvent_of_actual_factored_quartic
    (p : R[X]) (a b c d A B C D : R)
    (hp : p = (Polynomial.X - Polynomial.C a) *
      (Polynomial.X - Polynomial.C b) *
      (Polynomial.X - Polynomial.C c) *
      (Polynomial.X - Polynomial.C d))
    (hcoeff : p = Polynomial.X ^ 4 +
      Polynomial.C A * Polynomial.X ^ 3 +
      Polynomial.C B * Polynomial.X ^ 2 +
      Polynomial.C C * Polynomial.X + Polynomial.C D)
    (hA : A = -eOne a b c d)
    (hB : B = eTwo a b c d)
    (hC : C = -eThree a b c d)
    (hD : D = eFour a b c d) :
    adjacencyResolventFromRoots a b c d =
      adjacencyResolventOfMonicCoefficients A B C D := by
  rw [hA, hB, hC, hD]
  exact adjacencyResolvent_coefficient_substitution a b c d

/-- Express the same cubic through the coefficients of a monic quartic
  p = X⁴ + A X³ + B X² + C X + D. -/
def adjacencyResolventOfMonicCoefficients (A B C D : R) : R[X] :=
  adjacencyResolventFromVieta (-A) B (-C) D

theorem adjacencyResolvent_coefficient_substitution (a b c d : R) :
    adjacencyResolventFromRoots a b c d =
      adjacencyResolventOfMonicCoefficients
        (-eOne a b c d) (eTwo a b c d)
        (-eThree a b c d) (eFour a b c d) := by
  rw [adjacencyResolvent_vieta]
  simp [adjacencyResolventOfMonicCoefficients]

end GRWTSK.Algebra.PolygonalQuarticDescent
