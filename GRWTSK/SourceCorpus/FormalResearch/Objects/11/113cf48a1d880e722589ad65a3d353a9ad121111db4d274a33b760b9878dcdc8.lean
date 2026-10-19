import Mathlib.CategoryTheory.Yoneda

/-!
# Complete morphism profiles and Yoneda reconstruction

The profile of an object is its full representable presheaf, not a finite
incidence sketch.  Full faithfulness of Yoneda then reconstructs every object
isomorphism from an isomorphism of complete profiles.
-/

namespace Mathematics.Terrain.YonedaProfile

open CategoryTheory

universe v u

variable {C : Type u} [Category.{v} C]

/-- The complete incoming-morphism profile of an object. -/
abbrev CompleteMorphismProfile (object : C) :=
  CategoryTheory.yoneda.obj object

/-- Every object isomorphism induces an isomorphism of complete profiles. -/
def profileIsoOfObjectIso {left right : C} (iso : left ≅ right) :
    CompleteMorphismProfile left ≅ CompleteMorphismProfile right :=
  CategoryTheory.yoneda.mapIso iso

/--
Yoneda reconstructs an object isomorphism from an isomorphism of the complete
morphism profiles.
-/
noncomputable def reconstructIso
    {left right : C}
    (profileIso :
      CompleteMorphismProfile left ≅ CompleteMorphismProfile right) :
    left ≅ right :=
  CategoryTheory.yoneda.preimageIso profileIso

/-- Reconstruction is inverse to mapping an existing object isomorphism. -/
@[simp]
theorem reconstructIso_profileIsoOfObjectIso
    {left right : C} (iso : left ≅ right) :
    reconstructIso (profileIsoOfObjectIso iso) = iso := by
  exact CategoryTheory.Functor.preimageIso_mapIso _ iso

/--
Two objects have isomorphic complete profiles exactly when they are
isomorphic.  This statement does not hold for an arbitrary finite Boolean
shadow.
-/
theorem profileIso_nonempty_iff_objectIso_nonempty
    (left right : C) :
    Nonempty
        (CompleteMorphismProfile left ≅ CompleteMorphismProfile right) ↔
      Nonempty (left ≅ right) := by
  constructor
  · rintro ⟨profileIso⟩
    exact ⟨reconstructIso profileIso⟩
  · rintro ⟨iso⟩
    exact ⟨profileIsoOfObjectIso iso⟩

end Mathematics.Terrain.YonedaProfile
