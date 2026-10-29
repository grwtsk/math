-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.QuasiIsoOfRetract.Variant902daf1227bf9b8a79c821fc51f67c5fb33ff7f852ed8a138126aa6f0f70efe5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"902daf1227bf9b8a79c821fc51f67c5fb33ff7f852ed8a138126aa6f0f70efe5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.QuasiIsoOfRetract.Variant902daf1227bf9b8a79c821fc51f67c5fb33ff7f852ed8a138126aa6f0f70efe5","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"902daf1227bf9b8a79c821fc51f67c5fb33ff7f852ed8a138126aa6f0f70efe5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Homology/ShortComplex/Retract.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/

import Mathlib.Algebra.Homology.ShortComplex.QuasiIso
import Mathlib.CategoryTheory.MorphismProperty.Retract

/-!
# Quasi-isomorphisms of short complexes are stable under retracts

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.QuasiIsoOfRetract.Variant902daf1227bf9b8a79c821fc51f67c5fb33ff7f852ed8a138126aa6f0f70efe5

namespace CategoryTheory

open Limits

namespace ShortComplex

variable {C : Type*} [Category C] [HasZeroMorphisms C]
  {S₁ T₁ S₂ T₂ : ShortComplex C}
  [S₁.HasHomology] [T₁.HasHomology] [S₂.HasHomology] [T₂.HasHomology]
  {f₁ : S₁ ⟶ T₁} {f₂ : S₂ ⟶ T₂}

lemma quasiIso_of_retract (h : RetractArrow f₁ f₂) [hf₂ : QuasiIso f₂] :
    QuasiIso f₁ := by
  rw [quasiIso_iff] at hf₂ ⊢
  have h : RetractArrow (homologyMap f₁) (homologyMap f₂) :=
    { i := Arrow.homMk (u := homologyMap (show S₁ ⟶ S₂ from h.i.left))
        (v := homologyMap (show T₁ ⟶ T₂ from h.i.right)) (by simp [← homologyMap_comp])
      r := Arrow.homMk (u := homologyMap (show S₂ ⟶ S₁ from h.r.left))
        (v := homologyMap (show T₂ ⟶ T₁ from h.r.right)) (by simp [← homologyMap_comp])
      retract := by ext <;> simp [← homologyMap_comp] }
  exact (MorphismProperty.isomorphisms C).of_retract h hf₂

end ShortComplex

end CategoryTheory
