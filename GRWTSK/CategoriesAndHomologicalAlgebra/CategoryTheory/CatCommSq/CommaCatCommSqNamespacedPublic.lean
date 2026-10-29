-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CatCommSq.Varianta910054bd67a5872c9fa6d0c0b170dd967ad774617220e9f8b184f58e1220886","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a910054bd67a5872c9fa6d0c0b170dd967ad774617220e9f8b184f58e1220886","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.CatCommSq.Varianta910054bd67a5872c9fa6d0c0b170dd967ad774617220e9f8b184f58e1220886","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"a910054bd67a5872c9fa6d0c0b170dd967ad774617220e9f8b184f58e1220886","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/Comma/CatCommSq.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
module

public import Mathlib.CategoryTheory.CatCommSq
public import Mathlib.CategoryTheory.Comma.Arrow

/-!
# 2-commutative squares of categories of arrows

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CatCommSq.Varianta910054bd67a5872c9fa6d0c0b170dd967ad774617220e9f8b184f58e1220886

public section

namespace CategoryTheory.Arrow

@[simps]
instance catCommSq
    {C₁ C₂ D₁ D₂ : Type*} [Category C₁] [Category C₂] [Category D₁] [Category D₂]
    (T : C₁ ⥤ C₂) (L : C₁ ⥤ D₁) (R : C₂ ⥤ D₂) (B : D₁ ⥤ D₂) [CatCommSq T L R B] :
    CatCommSq T.mapArrow L.mapArrow R.mapArrow B.mapArrow where
  iso := (Functor.mapArrowFunctor _ _).mapIso (CatCommSq.iso T L R B)

end CategoryTheory.Arrow
