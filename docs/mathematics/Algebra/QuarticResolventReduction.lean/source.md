# Complete source: GRWTSK.Algebra.QuarticResolventReduction

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `188482513fa2d718108bc0efa3f90ee340a655c7` · SHA-256 `c46d3c53cf4ef284e0e565158b3fce10b929419ee153bb8e035804a2aa566468`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
