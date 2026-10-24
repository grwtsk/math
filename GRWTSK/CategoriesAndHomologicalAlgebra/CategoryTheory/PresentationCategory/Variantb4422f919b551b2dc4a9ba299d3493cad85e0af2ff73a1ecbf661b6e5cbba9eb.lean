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
