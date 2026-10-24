# Complete source: GRWTSK.Algebra.QuarticBaseMaximalCriterion

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `58834d8b8373e79039b07b3bfb525ade35db78e5` · SHA-256 `a3b0c51291a5fe9a14abda371bddbadba7b9dc408f51e227a99cff665d84ca81`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Algebra.QuarticCubicMaximalReduction
import GRWTSK.Algebra.QuarticCubicPolynomialComparison

/-!
# Maximal-ideal reduction of the actual quartic cubic resolvent

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.

For a monic quartic X⁴+A X³+B X²+C X+D over a commutative ring,
nonmembership of the associated Cubic.discr in a maximal ideal implies
separability of its actual coefficient-defined resolvent after reduction.
No original-ring root enumeration or characteristic restriction is used.
-/

namespace GRWTSK.Algebra.QuarticBaseMaximalCriterion

open Polynomial
open GRWTSK.Algebra.QuarticCubicDiscriminant
open GRWTSK.Algebra.QuarticCubicMaximalReduction
open GRWTSK.Algebra.QuarticCubicPolynomialComparison
open GRWTSK.Algebra.PolygonalQuarticDescent

noncomputable section
variable {R : Type*} [CommRing R]
variable (I : Ideal R) [I.IsMaximal]

/-- The actual coefficient-resolvent of the reduced monic quartic
is separable when its Cubic.discr avoids the maximal ideal. -/
theorem coefficientResolvent_reduction_separable
    (A B C D : R)
    (hd : (adjacencyCubic (-A) B (-C) D).discr ∉ I) :
    (adjacencyResolventOfMonicCoefficients
      (Ideal.Quotient.mk I A) (Ideal.Quotient.mk I B)
      (Ideal.Quotient.mk I C) (Ideal.Quotient.mk I D)).Separable := by
  have hsep := residue_adjacencyCubic_separable I (-A) B (-C) D hd
  have hpoly :
      (adjacencyCubic (Ideal.Quotient.mk I (-A))
        (Ideal.Quotient.mk I B) (Ideal.Quotient.mk I (-C))
        (Ideal.Quotient.mk I D)).toPoly =
      adjacencyResolventOfMonicCoefficients
        (Ideal.Quotient.mk I A) (Ideal.Quotient.mk I B)
        (Ideal.Quotient.mk I C) (Ideal.Quotient.mk I D) := by
    rw [adjacencyCubic_toPoly_eq_resolvent]
    simp [adjacencyResolventOfMonicCoefficients]
  rw [← hpoly]
  exact hsep

end
end GRWTSK.Algebra.QuarticBaseMaximalCriterion
```
