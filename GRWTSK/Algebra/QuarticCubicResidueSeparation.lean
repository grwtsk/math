import GRWTSK.Algebra.QuarticCubicDiscriminantReduction
import Mathlib.FieldTheory.Separable

/-!
# Cubic discriminant nonvanishing and distinct residue roots

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.

This is the exact splitting-field criterion exposed by the pinned Mathlib
Cubic.discr_ne_zero_iff_roots_nodup theorem. It is intentionally about
the actual cubic coefficient structure, not an unproved identification
with a general Polynomial.discriminant. No characteristic restriction.
-/

namespace GRWTSK.Algebra.QuarticCubicResidueSeparation

open Polynomial
open GRWTSK.Algebra.QuarticCubicDiscriminant

noncomputable section

variable {F : Type*} [Field F]

/-- The monic adjacency cubic has three roots without multiplicities
when its discriminant is nonzero and it splits over the field. -/
theorem adjacencyCubic_roots_nodup_of_discr_ne_zero
    (s₁ s₂ s₃ s₄ : F)
    (hs : (adjacencyCubic s₁ s₂ s₃ s₄).toPoly.Splits)
    (hd : (adjacencyCubic s₁ s₂ s₃ s₄).discr ≠ 0) :
    (adjacencyCubic s₁ s₂ s₃ s₄).toPoly.roots.Nodup := by
  have ha : (adjacencyCubic s₁ s₂ s₃ s₄).a ≠ 0 := by
    simp [adjacencyCubic]
  simpa using
    (Cubic.discr_ne_zero_iff_roots_nodup
      (φ := RingHom.id F) ha (by simpa using hs)).mp hd

/-- Specialization to the explicit root-level quartic Vandermonde
obstruction. No separability is inferred for nonsplitting cubics. -/
theorem adjacencyCubic_roots_nodup_of_vandermonde_ne_zero
    (a b c d : F)
    (hs : (adjacencyCubic
      (GRWTSK.Algebra.PolygonalQuarticDescent.eOne a b c d)
      (GRWTSK.Algebra.PolygonalQuarticDescent.eTwo a b c d)
      (GRWTSK.Algebra.PolygonalQuarticDescent.eThree a b c d)
      (GRWTSK.Algebra.PolygonalQuarticDescent.eFour a b c d)).toPoly.Splits)
    (hv : quarticVandermonde a b c d ≠ 0) :
    (adjacencyCubic
      (GRWTSK.Algebra.PolygonalQuarticDescent.eOne a b c d)
      (GRWTSK.Algebra.PolygonalQuarticDescent.eTwo a b c d)
      (GRWTSK.Algebra.PolygonalQuarticDescent.eThree a b c d)
      (GRWTSK.Algebra.PolygonalQuarticDescent.eFour a b c d)).toPoly.roots.Nodup := by
  apply adjacencyCubic_roots_nodup_of_discr_ne_zero _ _ _ _ hs
  rw [adjacencyCubic_discr_eq_quarticVandermonde_sq]
  exact pow_ne_zero 2 hv

end
end GRWTSK.Algebra.QuarticCubicResidueSeparation
