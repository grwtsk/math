# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.PresentationCategory.Variantb4422f919b551b2dc4a9ba299d3493cad85e0af2ff73a1ecbf661b6e5cbba9eb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `26dbd3c1c0b6078b59e18c830ac8d2c60d2d4fdb` · SHA-256 `b4422f919b551b2dc4a9ba299d3493cad85e0af2ff73a1ecbf661b6e5cbba9eb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import DAF.Fabric.Presentation
import Mathlib.CategoryTheory.Category.Basic
import Mathlib.CategoryTheory.EqToHom

/-!
# The category of assembly presentations

The categorical arrows are exactly `Presentation.Hom` values, so composition
retains every input, state, resolution, observation, and invariant law of the
existing `DAF.System.Hom` API.
-/

namespace DAF.Fabric

/-- Presentations regarded as objects of their morphism category. -/
abbrev PresentationCat := DAF.Fabric.Presentation

instance : CategoryTheory.Category PresentationCat where
  Hom := Presentation.Hom
  id := Presentation.Hom.id
  comp f g := Presentation.Hom.comp g f
  id_comp := Presentation.Hom.id_comp
  comp_id := Presentation.Hom.comp_id
  assoc := by
    intro P Q R S f g h
    exact (Presentation.Hom.comp_assoc h g f).symm

namespace Presentation.Hom

open CategoryTheory

/-- Transport only the target presentation of a morphism along equality. -/
def castTarget {P Q R : Presentation}
    (f : Presentation.Hom P Q) (h : Q = R) : Presentation.Hom P R :=
  f ≫ eqToHom h

/-- Transport only the source presentation of a morphism along equality. -/
def castSource {P Q R : Presentation}
    (f : Presentation.Hom Q R) (h : P = Q) : Presentation.Hom P R :=
  eqToHom h ≫ f

@[simp]
theorem castTarget_rfl {P Q : Presentation} (f : Presentation.Hom P Q) :
    f.castTarget rfl = f := by
  simp [castTarget]

@[simp]
theorem castSource_rfl {P Q : Presentation} (f : Presentation.Hom P Q) :
    f.castSource rfl = f := by
  simp [castSource]

end Presentation.Hom

end DAF.Fabric
```
