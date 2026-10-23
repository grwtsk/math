import GRWTSK.Algebra.QuarticResolventRingNaturality

/-!
# Quartic resolvent under quotient-ring reduction

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.

Naturality applies to the canonical quotient map R → R ⧸ I for every
ideal I of a commutative ring. The cubic coefficient formula therefore
commutes with reduction, including residue characteristics two and three
and nonreduced quotients. This does not say the reduction is separable or
that the three adjacency weights stay distinct.
-/

namespace GRWTSK.Algebra.QuarticResolventReduction

open Polynomial
open GRWTSK.Algebra.PolygonalQuarticDescent
open GRWTSK.Algebra.QuarticResolventRingNaturality

variable {R : Type*} [CommRing R]

/-- Coefficientwise reduction of the cubic resolvent modulo an ideal. -/
theorem resolvent_quotient (I : Ideal R) (A B C D : R) :
    (adjacencyResolventOfMonicCoefficients A B C D).map
        (Ideal.Quotient.mk I) =
      adjacencyResolventOfMonicCoefficients
        (Ideal.Quotient.mk I A) (Ideal.Quotient.mk I B)
        (Ideal.Quotient.mk I C) (Ideal.Quotient.mk I D) := by
  exact resolvent_map (Ideal.Quotient.mk I) A B C D

/-- A coefficient tuple congruent modulo I yields exactly the same
cubic in the quotient, without any separability premise. -/
theorem resolvent_quotient_congr (I : Ideal R)
    (A B C D A' B' C' D' : R)
    (hA : Ideal.Quotient.mk I A = Ideal.Quotient.mk I A')
    (hB : Ideal.Quotient.mk I B = Ideal.Quotient.mk I B')
    (hC : Ideal.Quotient.mk I C = Ideal.Quotient.mk I C')
    (hD : Ideal.Quotient.mk I D = Ideal.Quotient.mk I D') :
    (adjacencyResolventOfMonicCoefficients A B C D).map
        (Ideal.Quotient.mk I) =
      (adjacencyResolventOfMonicCoefficients A' B' C' D').map
        (Ideal.Quotient.mk I) := by
  rw [resolvent_quotient, resolvent_quotient, hA, hB, hC, hD]

end GRWTSK.Algebra.QuarticResolventReduction
