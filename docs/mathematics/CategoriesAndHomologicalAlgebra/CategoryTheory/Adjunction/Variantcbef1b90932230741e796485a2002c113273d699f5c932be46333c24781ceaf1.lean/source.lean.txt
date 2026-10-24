-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SheafForget.Varianta6e1e9255f1e2f730110a7944ce86fe123acced3523da96b6525b0e32a791dd5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a6e1e9255f1e2f730110a7944ce86fe123acced3523da96b6525b0e32a791dd5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.SheafForget.Varianta6e1e9255f1e2f730110a7944ce86fe123acced3523da96b6525b0e32a791dd5","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"a6e1e9255f1e2f730110a7944ce86fe123acced3523da96b6525b0e32a791dd5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Sites/Adjunction.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Adam Topaz. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Adam Topaz, Joël Riou
-/
import Mathlib.CategoryTheory.Adjunction.Restrict
import Mathlib.CategoryTheory.Adjunction.Whiskering
import Mathlib.CategoryTheory.Sites.PreservesSheafification

/-!

In this file, we show that an adjunction `G ⊣ F` induces an adjunction between
categories of sheaves. We also show that `G` preserves sheafification.

-/



namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SheafForget.Varianta6e1e9255f1e2f730110a7944ce86fe123acced3523da96b6525b0e32a791dd5

namespace CategoryTheory

open GrothendieckTopology CategoryTheory Limits Opposite

universe v₁ v₂ u₁ u₂

variable {C : Type u₁} [Category.{v₁} C] (J : GrothendieckTopology C)
variable {D : Type u₂} [Category.{v₂} D]
variable {E : Type*} [Category E]
variable {F : D ⥤ E} {G : E ⥤ D}

/-- The forgetful functor from `Sheaf J D` to sheaves of types, for a concrete category `D`
whose forgetful functor preserves the correct limits. -/
abbrev sheafForget [HasForget D] [HasSheafCompose J (forget D)] :
    Sheaf J D ⥤ Sheaf J (Type _) :=
  sheafCompose J (forget D)

namespace Sheaf

noncomputable section

/-- An adjunction `adj : G ⊣ F` with `F : D ⥤ E` and `G : E ⥤ D` induces an adjunction
between `Sheaf J D` and `Sheaf J E`, in contexts where one can sheafify `D`-valued presheaves,
and postcomposing with `F` preserves the property of being a sheaf. -/
def adjunction [HasWeakSheafify J D] [HasSheafCompose J F] (adj : G ⊣ F) :
    composeAndSheafify J G ⊣ sheafCompose J F :=
  Adjunction.restrictFullyFaithful ((adj.whiskerRight Cᵒᵖ).comp (sheafificationAdjunction J D))
    (fullyFaithfulSheafToPresheaf J E) (Functor.FullyFaithful.id _) (Iso.refl _) (Iso.refl _)

@[simp]
lemma adjunction_unit_app_val [HasWeakSheafify J D] [HasSheafCompose J F] (adj : G ⊣ F)
    (X : Sheaf J E) : ((adjunction J adj).unit.app X).val =
      (adj.whiskerRight Cᵒᵖ).unit.app _ ≫ whiskerRight (toSheafify J (X.val ⋙ G)) F  := by
  change (sheafToPresheaf _ _).map ((adjunction J adj).unit.app X) = _
  simp only [Functor.id_obj, Functor.comp_obj, whiskeringRight_obj_obj, adjunction,
    Adjunction.map_restrictFullyFaithful_unit_app, Adjunction.comp_unit_app,
    sheafificationAdjunction_unit_app, whiskeringRight_obj_map, Iso.refl_hom, NatTrans.id_app,
    Functor.comp_map, Functor.map_id, whiskerRight_id', Category.comp_id]
  rfl

@[simp]
lemma adjunction_counit_app_val [HasWeakSheafify J D] [HasSheafCompose J F] (adj : G ⊣ F)
    (Y : Sheaf J D) : ((adjunction J adj).counit.app Y).val =
      sheafifyLift J (((adj.whiskerRight Cᵒᵖ).counit.app Y.val)) Y.cond := by
  change ((𝟭 (Sheaf _ _)).map ((adjunction J adj).counit.app Y)).val = _
  simp only [Functor.comp_obj, sheafToPresheaf_obj, sheafCompose_obj_val, whiskeringRight_obj_obj,
    adjunction, Adjunction.map_restrictFullyFaithful_counit_app, Iso.refl_inv, NatTrans.id_app,
    Functor.comp_map, whiskeringRight_obj_map, Adjunction.comp_counit_app,
    instCategorySheaf_comp_val, instCategorySheaf_id_val, sheafificationAdjunction_counit_app_val,
    sheafifyMap_sheafifyLift, Functor.id_obj, whiskerRight_id', Category.comp_id, Category.id_comp]


instance [HasWeakSheafify J D] [F.IsRightAdjoint] : (sheafCompose J F).IsRightAdjoint :=
  (adjunction J (Adjunction.ofIsRightAdjoint F)).isRightAdjoint

instance [HasWeakSheafify J D] [G.IsLeftAdjoint] : (composeAndSheafify J G).IsLeftAdjoint :=
  (adjunction J (Adjunction.ofIsLeftAdjoint G)).isLeftAdjoint

lemma preservesSheafification_of_adjunction (adj : G ⊣ F) :
    J.PreservesSheafification G where
  le P Q f hf := by
    have := adj.isRightAdjoint
    rw [MorphismProperty.inverseImage_iff]
    dsimp
    intro R hR
    rw [← ((adj.whiskerRight Cᵒᵖ).homEquiv P R).comp_bijective]
    convert (((adj.whiskerRight Cᵒᵖ).homEquiv Q R).trans
      (hf.homEquiv (R ⋙ F) ((sheafCompose J F).obj ⟨R, hR⟩).cond)).bijective
    ext g X
    -- The rest of this proof was
    -- `dsimp [Adjunction.whiskerRight, Adjunction.mkOfUnitCounit]; simp` before https://github.com/leanprover-community/mathlib4/pull/16317.
    dsimp
    rw [← NatTrans.comp_app]
    congr
    exact Adjunction.homEquiv_naturality_left _ _ _

instance [G.IsLeftAdjoint] : J.PreservesSheafification G :=
  preservesSheafification_of_adjunction J (Adjunction.ofIsLeftAdjoint G)

section ForgetToType

variable [HasWeakSheafify J D] [HasForget D] [HasSheafCompose J (forget D)]

@[deprecated (since := "2024-11-26")] alias composeAndSheafifyFromTypes := composeAndSheafify

/-- The adjunction `composeAndSheafify J G ⊣ sheafForget J`. -/
@[deprecated Sheaf.adjunction (since := "2024-11-26")] abbrev adjunctionToTypes
    {G : Type max v₁ u₁ ⥤ D} (adj : G ⊣ forget D) :
    composeAndSheafify J G ⊣ sheafForget J :=
  adjunction _ adj

example [(forget D).IsRightAdjoint] :
    (sheafForget.{_, _, _, _, max u₁ v₁} (D := D) J).IsRightAdjoint := by infer_instance

end ForgetToType

end

end Sheaf

end CategoryTheory
