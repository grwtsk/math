# Complete source: GRWTSK.Algebra.QuarticCubicDiscriminantReduction

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e6b21f488c7766d0b9d4f0f8fdb3c3592840f208` · SHA-256 `fe50f1de835e8bcb3647636535ae9e005a87014661841e977a3363eb1ddb6009`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Algebra.QuarticCubicPolynomialComparison

/-!
# Base-field cubic resolvent discriminant under residue maps

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.

This module uses the pinned Mathlib `Cubic.discr` definition, not an
unidentified `Polynomial.discriminant` normalization. Discriminant
commutes with homomorphisms of commutative rings; nonvanishing in a
residue field implies separability of the monic cubic after reduction.
No implication in the reverse direction for arbitrary coefficient
rings, and no claim that reduction of roots is injective.
-/

namespace GRWTSK.Algebra.QuarticCubicDiscriminantReduction

open Polynomial
open GRWTSK.Algebra.QuarticCubicDiscriminant
open GRWTSK.Algebra.PolygonalQuarticDescent
open GRWTSK.Algebra.QuarticAdjacencyDiscriminant
open GRWTSK.Algebra.QuarticCubicPolynomialComparison

variable {R S : Type*} [CommRing R] [CommRing S]

/-- The explicit cubic discriminant is a polynomial in the coefficients
and hence commutes with every homomorphism of commutative rings. -/
theorem cubic_discr_map (f : R →+* S) (P : Cubic R) :
    (Cubic.map f P).discr = f P.discr := by
  cases P with
  | mk a b c d =>
    simp [Cubic.discr, Cubic.map, map_add, map_sub, map_mul,
      map_pow, map_ofNat]

/-- Reduction of the quartic adjacency cubic's discriminant is
independent of whether coefficients are reduced before or afterward. -/
theorem adjacencyCubic_discr_map (f : R →+* S)
    (s₁ s₂ s₃ s₄ : R) :
    (adjacencyCubic (f s₁) (f s₂) (f s₃) (f s₄)).discr =
      f (adjacencyCubic s₁ s₂ s₃ s₄).discr := by
  simp [adjacencyCubic, Cubic.discr, map_add, map_sub,
    map_mul, map_pow, map_ofNat]

/-- The residue-field discriminant of a monic adjacency cubic is
nonzero precisely when the square of its four-root Vandermonde
has nonzero image. This is an explicit root-level criterion, not
an abstract quartic-discriminant API claim. -/
theorem adjacencyCubic_discr_map_ne_zero_iff
    {F : Type*} [Field F] (f : R →+* F) (a b c d : R) :
    f (adjacencyCubic (eOne a b c d) (eTwo a b c d)
       (eThree a b c d) (eFour a b c d)).discr ≠ 0 ↔
      f (quarticVandermonde a b c d ^ 2) ≠ 0 := by
  rw [adjacencyCubic_discr_eq_quarticVandermonde_sq]

end GRWTSK.Algebra.QuarticCubicDiscriminantReduction
```
