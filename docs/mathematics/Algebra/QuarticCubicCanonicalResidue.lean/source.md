# Complete source: GRWTSK.Algebra.QuarticCubicCanonicalResidue

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `527ab1bbeb80cf86b27bee43369f739219ba6202` · SHA-256 `92216301879c8323ee931a97ab316de063c620621bd6eeeb7d67de42d0b0abc0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Algebra.QuarticCubicResidueSplittingField
import Mathlib.FieldTheory.SplittingField.Construction

/-!
# Canonical splitting-field-free residue cubic separability criterion

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.

The pinned Mathlib construction provides a canonical SplittingField q
with an IsSplittingField instance. No extension E or splitting instance
appears in the theorem statement: the auxiliary field is selected in
the proof. Every characteristic is supported.
-/

namespace GRWTSK.Algebra.QuarticCubicCanonicalResidue

open Polynomial
open GRWTSK.Algebra.QuarticCubicDiscriminant
open GRWTSK.Algebra.QuarticCubicResidueSplittingField

noncomputable section

variable {R F : Type*} [CommRing R] [Field F]

/-- Nonzero reduced cubic discriminant implies separability over the
residue field, without any user-supplied splitting extension. -/
theorem reduced_adjacencyCubic_separable_canonical
    (f : R →+* F) (s₁ s₂ s₃ s₄ : R)
    (hd : f (adjacencyCubic s₁ s₂ s₃ s₄).discr ≠ 0) :
    (adjacencyCubic (f s₁) (f s₂) (f s₃) (f s₄)).toPoly.Separable := by
  let q : F[X] := (adjacencyCubic (f s₁) (f s₂) (f s₃) (f s₄)).toPoly
  letI : Field q.SplittingField := inferInstance
  letI : Algebra F q.SplittingField := inferInstance
  letI : IsSplittingField F q.SplittingField q := inferInstance
  exact reduced_adjacencyCubic_separable_in_splittingField
    (E := q.SplittingField) f s₁ s₂ s₃ s₄ hd

end
end GRWTSK.Algebra.QuarticCubicCanonicalResidue
```
