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

end
end GRWTSK.Algebra.QuarticBaseResolvent
