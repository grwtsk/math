import GRWTSK.Algebra.PolygonalQuarticSplitting

/-!
# Base-field quartic adjacency resolvent

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.

A monic quartic p=X⁴+A X³+B X²+C X+D over K has an explicit
cubic resolvent over K. Mapping it to any extension commutes with
the coefficient formula. When p splits there, the checked Vieta
identity identifies its scalar extension with the three adjacency
values of an actual four-root enumeration. This asserts neither
irreducibility of the cubic nor an S₄ Galois group.
-/

namespace GRWTSK.Algebra.QuarticBaseResolvent

open Polynomial
open GRWTSK.Algebra.PolygonalQuarticDescent
open GRWTSK.Algebra.PolygonalQuarticSplitting

noncomputable section

variable {K L : Type*} [Field K] [Field L] [Algebra K L]

/-- An explicit cubic polynomial defined over the base field. -/
def baseAdjacencyResolvent (A B C₀ D : K) : K[X] :=
  adjacencyResolventOfMonicCoefficients A B C₀ D

/-- Explicit coefficient descent commutes with scalar extension in
every characteristic, with no separability requirement. -/
theorem baseAdjacencyResolvent_map (A B C₀ D : K) :
    (baseAdjacencyResolvent A B C₀ D).map (algebraMap K L) =
      adjacencyResolventOfMonicCoefficients
        (algebraMap K L A) (algebraMap K L B)
        (algebraMap K L C₀) (algebraMap K L D) := by
  simp [baseAdjacencyResolvent, adjacencyResolventOfMonicCoefficients,
    adjacencyResolventFromVieta, Polynomial.map_add, Polynomial.map_sub,
    Polynomial.map_mul, Polynomial.map_pow]

/-- A factored actual monic quartic has an adjacency cubic obtained by
scalar extension from K; the chosen ordering is auxiliary, not part of
the base-field polynomial. -/
theorem actual_quartic_base_resolvent
    (p : K[X]) (A B C₀ D : K)
    (hp : p = X ^ 4 + Polynomial.C A * X ^ 3 +
      Polynomial.C B * X ^ 2 + Polynomial.C C₀ * X + Polynomial.C D)
    (hs : (p.map (algebraMap K L)).Splits)
    (hm : (p.map (algebraMap K L)).Monic)
    (e : QuarticRootEnumeration (L := L) p) :
    adjacencyResolventFromRoots (e.r 0) (e.r 1) (e.r 2) (e.r 3) =
      (baseAdjacencyResolvent A B C₀ D).map (algebraMap K L) := by
  rw [baseAdjacencyResolvent_map]
  apply resolvent_of_mapped_quartic p hs hm e
  rw [hp]
  simp [Polynomial.map_add, Polynomial.map_mul, Polynomial.map_pow]


/-- The base-field comparison is independent of the chosen enumeration
of the *actual root multiset*, even if the quartic has repeated roots.
This does not select or require a canonical ordering. -/
theorem actual_quartic_base_resolvent_order_independent
    (p : K[X]) (e₁ e₂ : QuarticRootEnumeration (L := L) p) :
    adjacencyResolventFromRoots (e₁.r 0) (e₁.r 1) (e₁.r 2) (e₁.r 3) =
      adjacencyResolventFromRoots (e₂.r 0) (e₂.r 1) (e₂.r 2) (e₂.r 3) := by
  exact (resolvent_independent_of_enumeration p e₁ e₂).symm

/-- In a genuine splitting field, the splitting hypothesis required by
the base-field comparison is supplied directly by Mathlib's instance. -/
theorem actual_quartic_base_resolvent_in_splitting_field
    (p : K[X]) [IsSplittingField K L p] (A B C₀ D : K)
    (hp : p = X ^ 4 + Polynomial.C A * X ^ 3 +
      Polynomial.C B * X ^ 2 + Polynomial.C C₀ * X + Polynomial.C D)
    (hm : (p.map (algebraMap K L)).Monic)
    (e : QuarticRootEnumeration (L := L) p) :
    adjacencyResolventFromRoots (e.r 0) (e.r 1) (e.r 2) (e.r 3) =
      (baseAdjacencyResolvent A B C₀ D).map (algebraMap K L) :=
  actual_quartic_base_resolvent p A B C₀ D hp
    (IsSplittingField.splits L p) hm e

/-- The cubic coefficient formula is compatible with a tower of field
homomorphisms. This is a pure polynomial identity: no splitting,
separability, characteristic restriction, or chosen root ordering. -/
theorem baseAdjacencyResolvent_map_tower
    {M : Type*} [Field M]
    (f : K →+* L) (g : L →+* M) (A B C₀ D : K) :
    ((baseAdjacencyResolvent A B C₀ D).map f).map g =
      (baseAdjacencyResolvent A B C₀ D).map (g.comp f) := by
  exact Polynomial.map_map (baseAdjacencyResolvent A B C₀ D) f g

/-- Coefficient-wise base change gives exactly the same cubic as first
extending the coefficient tuple; no root enumeration is involved. -/
theorem baseAdjacencyResolvent_ringHom_map
    {M : Type*} [Field M] (f : K →+* M) (A B C₀ D : K) :
    (baseAdjacencyResolvent A B C₀ D).map f =
      baseAdjacencyResolvent (f A) (f B) (f C₀) (f D) := by
  simp [baseAdjacencyResolvent, adjacencyResolventOfMonicCoefficients,
    adjacencyResolventFromVieta, map_add, map_sub, map_mul, map_pow,
    map_ofNat]

end
end GRWTSK.Algebra.QuarticBaseResolvent
