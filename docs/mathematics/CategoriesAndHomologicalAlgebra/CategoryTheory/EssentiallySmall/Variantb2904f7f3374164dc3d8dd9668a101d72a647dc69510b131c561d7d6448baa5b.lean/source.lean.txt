-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.HasLimitsOfShapeOfEssentiallySmall.Variantbb6ca15aac4d29e98077b2947616b9f08b2349b2b0c437b50903a0bded74649b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bb6ca15aac4d29e98077b2947616b9f08b2349b2b0c437b50903a0bded74649b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.HasLimitsOfShapeOfEssentiallySmall.Variantbb6ca15aac4d29e98077b2947616b9f08b2349b2b0c437b50903a0bded74649b","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"bb6ca15aac4d29e98077b2947616b9f08b2349b2b0c437b50903a0bded74649b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Limits/EssentiallySmall.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Markus Himmel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel
-/
import Mathlib.CategoryTheory.Limits.Shapes.Products
import Mathlib.CategoryTheory.EssentiallySmall

/-!
# Limits over essentially small indexing categories

If `C` has limits of size `w` and `J` is `w`-essentially small, then `C` has limits of shape `J`.

See also the file `FinallySmall.lean` for more general results.

-/



namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.HasLimitsOfShapeOfEssentiallySmall.Variantbb6ca15aac4d29e98077b2947616b9f08b2349b2b0c437b50903a0bded74649b

universe w₁ w₂ v₁ v₂ u₁ u₂

noncomputable section

open CategoryTheory

namespace CategoryTheory.Limits

variable (J : Type u₂) [Category.{v₂} J] (C : Type u₁) [Category.{v₁} C]

theorem hasLimitsOfShape_of_essentiallySmall [EssentiallySmall.{w₁} J]
    [HasLimitsOfSize.{w₁, w₁} C] : HasLimitsOfShape J C :=
  hasLimitsOfShape_of_equivalence <| Equivalence.symm <| equivSmallModel.{w₁} J

theorem hasColimitsOfShape_of_essentiallySmall [EssentiallySmall.{w₁} J]
    [HasColimitsOfSize.{w₁, w₁} C] : HasColimitsOfShape J C :=
  hasColimitsOfShape_of_equivalence <| Equivalence.symm <| equivSmallModel.{w₁} J

theorem hasProductsOfShape_of_small (β : Type w₂) [Small.{w₁} β] [HasProducts.{w₁} C] :
    HasProductsOfShape β C :=
  hasLimitsOfShape_of_equivalence <| Discrete.equivalence <| Equiv.symm <| equivShrink β

theorem hasCoproductsOfShape_of_small (β : Type w₂) [Small.{w₁} β] [HasCoproducts.{w₁} C] :
    HasCoproductsOfShape β C :=
  hasColimitsOfShape_of_equivalence <| Discrete.equivalence <| Equiv.symm <| equivShrink β

end CategoryTheory.Limits
