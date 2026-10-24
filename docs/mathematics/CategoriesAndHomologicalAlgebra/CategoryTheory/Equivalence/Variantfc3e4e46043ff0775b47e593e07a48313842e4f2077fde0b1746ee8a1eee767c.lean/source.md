# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Equivalence.Variantfc3e4e46043ff0775b47e593e07a48313842e4f2077fde0b1746ee8a1eee767c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3b21e986111928faefcdb7fd1e0243d5c98f9454` · SHA-256 `4a6772473016083ca1f07e465d66e212f7b7c819cf6c346926437dfb4a0eaf23`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.EssSurj.Variantb4722eab642e9cb08f2777833520ef21eea19fa17c5659cf41f57ae29c000a9d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b4722eab642e9cb08f2777833520ef21eea19fa17c5659cf41f57ae29c000a9d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.EssSurj.Variantb4722eab642e9cb08f2777833520ef21eea19fa17c5659cf41f57ae29c000a9d","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"b4722eab642e9cb08f2777833520ef21eea19fa17c5659cf41f57ae29c000a9d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/ObjectProperty/Equivalence.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
module

public import Mathlib.CategoryTheory.ObjectProperty.FullSubcategory
public import Mathlib.CategoryTheory.Equivalence
public import Mathlib.Order.BooleanAlgebra.Defs

/-!
# Equivalence of full subcategories

The inclusion functor `P.FullSubcategory ⥤ Q.FullSubcategory` induced
by an inequality `P ≤ Q` in `ObjectProperty C` is an equivalence iff
`Q ≤ P.isoClosure`.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.EssSurj.Variantb4722eab642e9cb08f2777833520ef21eea19fa17c5659cf41f57ae29c000a9d

@[expose] public section

universe v v' u u'

namespace CategoryTheory.ObjectProperty

variable {C : Type u} [Category.{v} C] {P Q : ObjectProperty C} (h : P ≤ Q)

lemma essSurj_ιOfLE_iff : (ιOfLE h).EssSurj ↔ Q ≤ P.isoClosure := by
  refine ⟨fun _ X hX ↦ ?_, fun hPQ ↦ ⟨fun ⟨Y, hY⟩ ↦ ?_⟩⟩
  · exact ⟨_, ((ιOfLE h).objPreimage ⟨X, hX⟩).2,
      ⟨Q.ι.mapIso ((ιOfLE h).objObjPreimageIso ⟨X, hX⟩).symm⟩⟩
  · obtain ⟨X, hX, ⟨e⟩⟩ := hPQ _ hY
    exact ⟨⟨X, hX⟩, ⟨Q.ι.preimageIso e.symm⟩⟩

lemma isEquivalence_ιOfLE_iff : (ιOfLE h).IsEquivalence ↔ Q ≤ P.isoClosure := by
  rw [← essSurj_ιOfLE_iff h]
  exact ⟨fun _ ↦ inferInstance, fun _ ↦ { }⟩

instance : (ιOfLE P.le_isoClosure).IsEquivalence := by rw [isEquivalence_ιOfLE_iff]

set_option backward.defeqAttrib.useBackward true in
variable (C) in
/-- The equivalence between the full subcategory `⊤` of a category `C` and `C` itself. -/
@[simps]
def topEquivalence : ObjectProperty.FullSubcategory (C := C) ⊤ ≌ C where
  functor := ObjectProperty.ι _
  inverse := ObjectProperty.lift _ (𝟭 _) (by simp)
  unitIso := Iso.refl _
  counitIso := Iso.refl _
  functor_unitIso_comp := by cat_disch

lemma isEquivalence_ι (h : P = ⊤) : P.ι.IsEquivalence := by
  rw [h]
  exact (topEquivalence C).isEquivalence_functor

end CategoryTheory.ObjectProperty

namespace CategoryTheory.Equivalence

variable {C : Type u} [Category.{v} C] {D : Type u'} [Category.{v'} D]
  {P : ObjectProperty C} {Q : ObjectProperty D} (e : C ≌ D)

/-- The equivalence of categories between two fullsubcategories `P` and `Q`
of categories `C` and `D` that is induced by an equivalence `e : C ≌ D`
when `Q.inverseImage e.functor = P` and `Q` respects isomorphisms. -/
@[simps]
def congrFullSubcategory [Q.IsClosedUnderIsomorphisms] (h : Q.inverseImage e.functor = P) :
    P.FullSubcategory ≌ Q.FullSubcategory where
  functor := Q.lift (P.ι ⋙ e.functor) (fun ⟨X, hX⟩ ↦ by rwa [← h] at hX)
  inverse := P.lift (Q.ι ⋙ e.inverse) (fun ⟨Y, hY⟩ ↦ by
    rw [← h]
    exact Q.prop_of_iso (e.counitIso.app Y).symm hY)
  unitIso := (P.fullyFaithfulι.whiskeringRight _).preimageIso
    (P.ι.isoWhiskerLeft e.unitIso)
  counitIso := (Q.fullyFaithfulι.whiskeringRight _).preimageIso
    (Q.ι.isoWhiskerLeft e.counitIso)
  functor_unitIso_comp X :=
    ObjectProperty.hom_ext _ (e.functor_unit_comp X.obj)

end CategoryTheory.Equivalence
```
