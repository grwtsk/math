-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.IsIndObjectPi.Variant59d9c07d810d92bb024798966053a3f1ea7a8e4fd7c9f58d39ba7921013a27be","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"59d9c07d810d92bb024798966053a3f1ea7a8e4fd7c9f58d39ba7921013a27be","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.IsIndObjectPi.Variant59d9c07d810d92bb024798966053a3f1ea7a8e4fd7c9f58d39ba7921013a27be","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"59d9c07d810d92bb024798966053a3f1ea7a8e4fd7c9f58d39ba7921013a27be","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Limits/Indization/Products.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Markus Himmel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel
-/
import Mathlib.CategoryTheory.Limits.FilteredColimitCommutesProduct
import Mathlib.CategoryTheory.Limits.Indization.FilteredColimits

/-!
# Ind-objects are closed under products

We show that if `C` admits products indexed by `α`, then `IsIndObject` is closed under taking
products in `Cᵒᵖ ⥤ Type v` indexed by `α`. This will imply that the functor `Ind C ⥤ Cᵒᵖ ⥤ Type v`
creates products indexed by `α` and that the functor `C ⥤ Ind C` preserves them.

## References
* [M. Kashiwara, P. Schapira, *Categories and Sheaves*][Kashiwara2006], Prop. 6.1.16(ii)
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.IsIndObjectPi.Variant59d9c07d810d92bb024798966053a3f1ea7a8e4fd7c9f58d39ba7921013a27be

universe v u

namespace CategoryTheory.Limits

variable {C : Type u} [Category.{v} C] {α : Type v}

theorem isIndObject_pi (h : ∀ (g : α → C), IsIndObject (∏ᶜ yoneda.obj ∘ g))
    (f : α → Cᵒᵖ ⥤ Type v) (hf : ∀ a, IsIndObject (f a)) : IsIndObject (∏ᶜ f) := by
  let F := fun a => (hf a).presentation.F ⋙ yoneda
  suffices (∏ᶜ f ≅ colimit (pointwiseProduct F)) from
    (isIndObject_colimit _ _ (fun i => h _)).map this.inv
  refine Pi.mapIso (fun s => ?_) ≪≫ (asIso (colimitPointwiseProductToProductColimit F)).symm
  exact IsColimit.coconePointUniqueUpToIso (hf s).presentation.isColimit (colimit.isColimit _)

theorem isIndObject_limit_of_discrete (h : ∀ (g : α → C), IsIndObject (∏ᶜ yoneda.obj ∘ g))
    (F : Discrete α ⥤ Cᵒᵖ ⥤ Type v) (hF : ∀ a, IsIndObject (F.obj a)) : IsIndObject (limit F) :=
  IsIndObject.map (Pi.isoLimit _).hom (isIndObject_pi h _ (fun a => hF ⟨a⟩))

theorem isIndObject_limit_of_discrete_of_hasLimitsOfShape [HasLimitsOfShape (Discrete α) C]
    (F : Discrete α ⥤ Cᵒᵖ ⥤ Type v) (hF : ∀ a, IsIndObject (F.obj a)) : IsIndObject (limit F) :=
  isIndObject_limit_of_discrete (fun g => (isIndObject_limit_comp_yoneda (Discrete.functor g)).map
      (HasLimit.isoOfNatIso (Discrete.compNatIsoDiscrete g yoneda)).hom) F hF

end CategoryTheory.Limits
