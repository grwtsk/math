# Complete source: GRWTSK.Algebra.QuarticCharTwoMaximalCriterion

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `30d35a254cc61acb9cd4aecbbe44e0308a6f0bec` · SHA-256 `48502d93296f9506d2e70a680832da317abc0bdbe7e733998fb274a2ce18d093`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Algebra.QuarticDiscriminantCharTwo
import GRWTSK.Algebra.QuarticCoefficientReductionCriterion

/-!
# Quartic resolvent reduction at characteristic-two maximal ideals

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.

When the residue field has characteristic two, the reduced quartic
discriminant is the square of C² + A²D + ABC. Nonmembership of this
explicit expression in the maximal ideal therefore supplies the
separability criterion for the reduced cubic resolvent. This is not
a parity-character or Galois-group statement.
-/

namespace GRWTSK.Algebra.QuarticCharTwoMaximalCriterion

open Polynomial
open GRWTSK.Algebra.QuarticDiscriminantCharTwo
open GRWTSK.Algebra.QuarticCoefficientDiscriminant
open GRWTSK.Algebra.QuarticCoefficientReductionCriterion
open GRWTSK.Algebra.PolygonalQuarticDescent

noncomputable section

variable {R : Type*} [CommRing R]
variable (I : Ideal R) [I.IsMaximal]

/-- The reduced discriminant is controlled by the explicit characteristic-two
coefficient expression, including when R itself has other characteristic. -/
theorem reduced_discriminant_ne_zero_iff_charTwoRoot
    (h2 : (2 : R ⧸ I) = 0) (A B C D : R) :
    Ideal.Quotient.mk I (monicQuarticDiscriminant A B C D) ≠ 0 ↔
      Ideal.Quotient.mk I (charTwoDiscriminantRoot A B C D) ≠ 0 := by
  letI : Field (R ⧸ I) := Ideal.Quotient.field I
  have hn := monicQuarticDiscriminant_ne_zero_iff_charTwoRoot h2
    (Ideal.Quotient.mk I A) (Ideal.Quotient.mk I B)
    (Ideal.Quotient.mk I C) (Ideal.Quotient.mk I D)
  have hdisc := monicQuarticDiscriminant_map
    (Ideal.Quotient.mk I) A B C D
  have hroot :
      Ideal.Quotient.mk I (charTwoDiscriminantRoot A B C D) =
        charTwoDiscriminantRoot (Ideal.Quotient.mk I A)
          (Ideal.Quotient.mk I B) (Ideal.Quotient.mk I C)
          (Ideal.Quotient.mk I D) := by
    simp [charTwoDiscriminantRoot, map_add, map_mul, map_pow]
  rw [hdisc, hroot]
  exact hn

/-- Nonvanishing of the characteristic-two obstruction modulo the maximal
ideal implies separability of the coefficient-defined reduced resolvent. -/
theorem charTwo_obstruction_nonmem_separable_resolvent
    (h2 : (2 : R ⧸ I) = 0) (A B C D : R)
    (h : charTwoDiscriminantRoot A B C D ∉ I) :
    (adjacencyResolventOfMonicCoefficients
      (Ideal.Quotient.mk I A) (Ideal.Quotient.mk I B)
      (Ideal.Quotient.mk I C) (Ideal.Quotient.mk I D)).Separable := by
  apply quartic_discriminant_nonmem_separable_resolvent I A B C D
  intro hd
  have hzero : Ideal.Quotient.mk I (monicQuarticDiscriminant A B C D) = 0 :=
    (Ideal.Quotient.eq_zero_iff_mem).2 hd
  have hroot : Ideal.Quotient.mk I (charTwoDiscriminantRoot A B C D) ≠ 0 := by
    intro hz
    exact h ((Ideal.Quotient.eq_zero_iff_mem).1 hz)
  exact ((reduced_discriminant_ne_zero_iff_charTwoRoot I h2 A B C D).2 hroot) hzero

end
end GRWTSK.Algebra.QuarticCharTwoMaximalCriterion
```
