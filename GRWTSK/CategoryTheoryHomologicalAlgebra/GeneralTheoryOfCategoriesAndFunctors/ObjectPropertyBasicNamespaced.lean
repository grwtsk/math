-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Is.Variant03ca6caec14c152a8693c3cee650359e0b94b82fa404c57cae4cf1c9c80fa51c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"03ca6caec14c152a8693c3cee650359e0b94b82fa404c57cae4cf1c9c80fa51c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Is.Variant03ca6caec14c152a8693c3cee650359e0b94b82fa404c57cae4cf1c9c80fa51c","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"03ca6caec14c152a8693c3cee650359e0b94b82fa404c57cae4cf1c9c80fa51c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/ObjectProperty/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.CategoryTheory.Category.Basic
import Mathlib.CategoryTheory.Functor.Basic
import Mathlib.CategoryTheory.Iso
import Mathlib.Order.Basic

/-!
# Properties of objects in a category

Given a category `C`, we introduce an abbreviation `ObjectProperty C`
for predicates `C → Prop`.

## TODO

* refactor the file `Limits.FullSubcategory` in order to rename `ClosedUnderLimitsOfShape`
  as `ObjectProperty.IsClosedUnderLimitsOfShape` (and make it a type class)
* refactor the file `Triangulated.Subcategory` in order to make it a type class
  regarding terms in `ObjectProperty C` when `C` is pretriangulated

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Is.Variant03ca6caec14c152a8693c3cee650359e0b94b82fa404c57cae4cf1c9c80fa51c

universe v v' u u'

namespace CategoryTheory

/-- A property of objects in a category `C` is a predicate `C → Prop`. -/
@[nolint unusedArguments]
abbrev ObjectProperty (C : Type u) [Category.{v} C] : Type u := C → Prop

namespace ObjectProperty

variable {C : Type u} {D : Type u'} [Category.{v} C] [Category.{v'} D]

lemma le_def {P Q : ObjectProperty C} :
    P ≤ Q ↔ ∀ (X : C), P X → Q X := Iff.rfl

/-- The inverse image of a property of objects by a functor. -/
def inverseImage (P : ObjectProperty D) (F : C ⥤ D) : ObjectProperty C :=
  fun X ↦ P (F.obj X)

@[simp]
lemma prop_inverseImage_iff (P : ObjectProperty D) (F : C ⥤ D) (X : C) :
    P.inverseImage F X ↔ P (F.obj X) := Iff.rfl

/-- The essential image of a property of objects by a functor. -/
def map (P : ObjectProperty C) (F : C ⥤ D) : ObjectProperty D :=
  fun Y ↦ ∃ (X : C), P X ∧ Nonempty (F.obj X ≅ Y)

lemma prop_map_iff (P : ObjectProperty C) (F : C ⥤ D) (Y : D) :
    P.map F Y ↔ ∃ (X : C), P X ∧ Nonempty (F.obj X ≅ Y) := Iff.rfl

lemma prop_map_obj (P : ObjectProperty C) (F : C ⥤ D) {X : C} (hX : P X) :
    P.map F (F.obj X) :=
  ⟨X, hX, ⟨Iso.refl _⟩⟩

/-- The typeclass associated to `P : ObjectProperty C`. -/
@[mk_iff]
class Is (P : ObjectProperty C) (X : C) : Prop where
  prop : P X

lemma prop_of_is (P : ObjectProperty C) (X : C) [P.Is X] : P X := by rwa [← P.is_iff]

lemma is_of_prop (P : ObjectProperty C) {X : C} (hX : P X) : P.Is X := by rwa [P.is_iff]

end ObjectProperty

end CategoryTheory
