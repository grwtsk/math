-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.OfObjectProperty.Variant49bf90c89afe6698873b8b18e92c17eaedd51537e346a99a43bcdc5d8cf6dfaf","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"49bf90c89afe6698873b8b18e92c17eaedd51537e346a99a43bcdc5d8cf6dfaf","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.OfObjectProperty.Variant49bf90c89afe6698873b8b18e92c17eaedd51537e346a99a43bcdc5d8cf6dfaf","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"49bf90c89afe6698873b8b18e92c17eaedd51537e346a99a43bcdc5d8cf6dfaf","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/MorphismProperty/OfObjectProperty.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Justus Springer. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Justus Springer
-/
module

public import Mathlib.CategoryTheory.MorphismProperty.Basic
public import Mathlib.Data.Finset.Attr
public import Mathlib.Tactic.SetLike

/-!
# Morphism properties from object properties

Given two object properties `P` and `Q`, we introduce a morphism property
`ofObjectProperty P Q`, given by all morphisms whose source satisfies `P` and
target satisfies `Q`.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.OfObjectProperty.Variant49bf90c89afe6698873b8b18e92c17eaedd51537e346a99a43bcdc5d8cf6dfaf

@[expose] public section

namespace CategoryTheory.MorphismProperty

variable {C : Type*} [Category* C]

/-- Given two object properties `P` and `Q`, the property of morphisms whose source
satisfies `P` and target satisfies `Q`. -/
def ofObjectProperty (P Q : ObjectProperty C) : MorphismProperty C := fun X Y _ => P X ∧ Q Y

variable (P Q : ObjectProperty C)

lemma ofObjectProperty_iff {X Y : C} (f : X ⟶ Y) :
    ofObjectProperty P Q f ↔ P X ∧ Q Y := Iff.rfl

variable {P} in
lemma monotone_ofObjectProperty_left {P' : ObjectProperty C} (h : P ≤ P') :
    ofObjectProperty P Q ≤ ofObjectProperty P' Q := by
  intro _ _ _ ⟨hX, hY⟩
  exact ⟨h _ hX, hY⟩

variable {Q} in
lemma monotone_ofObjectProperty_right {Q' : ObjectProperty C} (h : Q ≤ Q') :
    ofObjectProperty P Q ≤ ofObjectProperty P Q' := by
  intro _ _ _ ⟨hX, hY⟩
  exact ⟨hX, h _ hY⟩

lemma ofObjectProperty_inverseImage {D : Type*} [Category* D] (F : D ⥤ C) :
    ofObjectProperty (P.inverseImage F) (Q.inverseImage F) =
    (ofObjectProperty P Q).inverseImage F := by
  rfl

lemma ofObjectProperty_map_le {D : Type*} [Category* D] (F : C ⥤ D) :
    (ofObjectProperty P Q).map F ≤ ofObjectProperty (P.map F) (Q.map F) := by
  intro X Y f ⟨X', Y', f', ⟨hX', hY'⟩, ⟨i⟩⟩
  exact ⟨⟨X', hX', ⟨Comma.leftIso i⟩⟩, ⟨Y', hY', ⟨Comma.rightIso i⟩⟩⟩

instance [P.IsClosedUnderIsomorphisms] : (ofObjectProperty P Q).RespectsLeft (isomorphisms C) where
  precomp := by
    intro X Y Z i hi f ⟨hY, hZ⟩
    rw [isomorphisms.iff] at hi
    exact ⟨(P.prop_iff_of_isIso i).mpr hY, hZ⟩

instance [Q.IsClosedUnderIsomorphisms] : (ofObjectProperty P Q).RespectsRight (isomorphisms C) where
  postcomp := by
    intro X Y Z i hi f ⟨hY, hZ⟩
    rw [isomorphisms.iff] at hi
    exact ⟨hY, (Q.prop_iff_of_isIso i).mp hZ⟩

end CategoryTheory.MorphismProperty
