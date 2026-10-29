-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.LiftNatTransZero.Variantc309587b9ebc9b3023f70a887f9ad9d57ce3fabe82bfa386604983b03d72973a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c309587b9ebc9b3023f70a887f9ad9d57ce3fabe82bfa386604983b03d72973a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.LiftNatTransZero.Variantc309587b9ebc9b3023f70a887f9ad9d57ce3fabe82bfa386604983b03d72973a","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"c309587b9ebc9b3023f70a887f9ad9d57ce3fabe82bfa386604983b03d72973a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Localization/Preadditive.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.CategoryTheory.Localization.Predicate
import Mathlib.CategoryTheory.Preadditive.FunctorCategory

/-!
# Localization of natural transformations to preadditive categories

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.LiftNatTransZero.Variantc309587b9ebc9b3023f70a887f9ad9d57ce3fabe82bfa386604983b03d72973a

namespace CategoryTheory

open Limits

variable {C D E : Type*} [Category C] [Category D] [Category E]

namespace Localization

variable (L : C ⥤ D) (W : MorphismProperty C) [L.IsLocalization W]

lemma liftNatTrans_zero (F₁ F₂ : C ⥤ E) (F₁' F₂' : D ⥤ E)
    [Lifting L W F₁ F₁'] [Lifting L W F₂ F₂']
    [HasZeroMorphisms E] :
    liftNatTrans L W F₁ F₂ F₁' F₂' 0 = 0 :=
  natTrans_ext L W (by simp)

variable [Preadditive E]

lemma liftNatTrans_add (F₁ F₂ : C ⥤ E) (F₁' F₂' : D ⥤ E)
    [Lifting L W F₁ F₁'] [Lifting L W F₂ F₂']
    (τ τ' : F₁ ⟶ F₂) :
    liftNatTrans L W F₁ F₂ F₁' F₂' (τ + τ') =
      liftNatTrans L W F₁ F₂ F₁' F₂' τ + liftNatTrans L W F₁ F₂ F₁' F₂' τ' :=
  natTrans_ext L W (by simp)

end Localization

end CategoryTheory
