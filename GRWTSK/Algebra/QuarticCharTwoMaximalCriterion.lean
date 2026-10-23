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
  have hd := GRWTSK.Algebra.QuarticResolventRingNaturality.resolvent_map
  simpa [monicQuarticDiscriminant, charTwoDiscriminantRoot, map_add,
    map_sub, map_mul, map_pow, map_ofNat] using hn

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
  have hh := (reduced_discriminant_ne_zero_iff_charTwoRoot I h2 A B C D).2
  exact hh (fun hz => h ((Ideal.Quotient.eq_zero_iff_mem).1 hz)) hzero

end
end GRWTSK.Algebra.QuarticCharTwoMaximalCriterion
