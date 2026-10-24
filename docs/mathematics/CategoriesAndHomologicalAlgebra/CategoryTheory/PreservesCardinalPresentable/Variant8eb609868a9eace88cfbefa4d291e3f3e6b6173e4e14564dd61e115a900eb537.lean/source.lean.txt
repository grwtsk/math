-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.PreservesCardinalPresentable.Variant8ba1bcc1e7b38a8db305c423cf2ccc496105bd900f2953332ed572f0f66d883d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8ba1bcc1e7b38a8db305c423cf2ccc496105bd900f2953332ed572f0f66d883d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.PreservesCardinalPresentable.Variant8ba1bcc1e7b38a8db305c423cf2ccc496105bd900f2953332ed572f0f66d883d","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"8ba1bcc1e7b38a8db305c423cf2ccc496105bd900f2953332ed572f0f66d883d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/Presentable/PreservesCardinalPresentable.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
module

public import Mathlib.CategoryTheory.Presentable.Basic

/-!
# Functors which preserve `κ`-presentable objects

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.PreservesCardinalPresentable.Variant8ba1bcc1e7b38a8db305c423cf2ccc496105bd900f2953332ed572f0f66d883d

@[expose] public section

universe w

namespace CategoryTheory.Functor

variable {C D E : Type*} [Category* C] [Category* D] [Category* E]

/-- Let `F : C ⥤ D` be a functor and `κ` be a regular cardinal, we say
that `F.PreservesCardinalPresentable κ` holds if for any `X : C`
that is `κ`-presentable in `C`, the object `F.obj X` is `κ`-presentable in `D`. -/
class PreservesCardinalPresentable
    (F : C ⥤ D) (κ : Cardinal.{w}) [Fact κ.IsRegular] : Prop where
  le_inverseImage_isCardinalPresentable (F κ) :
    isCardinalPresentable C κ ≤ (isCardinalPresentable D κ).inverseImage F

export PreservesCardinalPresentable (le_inverseImage_isCardinalPresentable)

instance (F : C ⥤ D) (κ : Cardinal.{w}) [Fact κ.IsRegular] (X : C)
    [IsCardinalPresentable X κ] [F.PreservesCardinalPresentable κ] :
    IsCardinalPresentable (F.obj X) κ :=
  le_inverseImage_isCardinalPresentable F κ _ (by assumption)

instance (κ : Cardinal.{w}) [Fact κ.IsRegular] :
    (𝟭 C).PreservesCardinalPresentable κ where
  le_inverseImage_isCardinalPresentable := by rfl

instance (F : C ⥤ D) (G : D ⥤ E) (κ : Cardinal.{w}) [Fact κ.IsRegular]
    [F.PreservesCardinalPresentable κ] [G.PreservesCardinalPresentable κ] :
    (F ⋙ G).PreservesCardinalPresentable κ where
  le_inverseImage_isCardinalPresentable X hX := by
    simp only [ObjectProperty.prop_inverseImage_iff, comp_obj]
    infer_instance

lemma PreservesCardinalPresentable.of_iso {F G : C ⥤ D} (e : F ≅ G)
    (κ : Cardinal.{w}) [Fact κ.IsRegular] [F.PreservesCardinalPresentable κ] :
    G.PreservesCardinalPresentable κ where
  le_inverseImage_isCardinalPresentable X _ :=
    isCardinalPresentable_of_iso (e.app X) κ

lemma PreservesCardinalPresentable.iff_of_iso {F G : C ⥤ D} (e : F ≅ G)
    (κ : Cardinal.{w}) [Fact κ.IsRegular] :
    F.PreservesCardinalPresentable κ ↔ G.PreservesCardinalPresentable κ :=
  ⟨fun _ ↦ .of_iso e _, fun _ ↦ .of_iso e.symm _⟩

end CategoryTheory.Functor
