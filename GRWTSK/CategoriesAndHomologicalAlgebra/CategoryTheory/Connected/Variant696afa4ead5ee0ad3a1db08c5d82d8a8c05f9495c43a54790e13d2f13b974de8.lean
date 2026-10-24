-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.IsConnected.Variantda155e2a70a5e28dcc9d674dcd026e9e47cad0c6a41e55bad9f6b46931e7d7fb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"da155e2a70a5e28dcc9d674dcd026e9e47cad0c6a41e55bad9f6b46931e7d7fb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.IsConnected.Variantda155e2a70a5e28dcc9d674dcd026e9e47cad0c6a41e55bad9f6b46931e7d7fb","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"da155e2a70a5e28dcc9d674dcd026e9e47cad0c6a41e55bad9f6b46931e7d7fb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Limits/Shapes/Connected.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Andrew Yang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Andrew Yang
-/
import Mathlib.CategoryTheory.IsConnected
import Mathlib.CategoryTheory.Limits.Shapes.WidePullbacks

/-!

# Connected shapes

In this file we prove that various shapes are connected.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.IsConnected.Variantda155e2a70a5e28dcc9d674dcd026e9e47cad0c6a41e55bad9f6b46931e7d7fb

namespace CategoryTheory

open Limits

instance {J} : IsConnected (WidePullbackShape J) := by
  apply IsConnected.of_constant_of_preserves_morphisms
  intros α F H
  suffices ∀ i, F i = F none from fun j j' ↦ (this j).trans (this j').symm
  rintro ⟨⟩
  exacts [rfl, H (.term _)]

instance {J} : IsConnected (WidePushoutShape J) := by
  apply IsConnected.of_constant_of_preserves_morphisms
  intros α F H
  suffices ∀ i, F i = F none from fun j j' ↦ (this j).trans (this j').symm
  rintro ⟨⟩
  exacts [rfl, (H (.init _)).symm]

end CategoryTheory
