-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Filtered.Variantf82b84167190d48909941138de13be17757b2cc93e2ea6cc1bf101fb8737809d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f82b84167190d48909941138de13be17757b2cc93e2ea6cc1bf101fb8737809d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Filtered.Variantf82b84167190d48909941138de13be17757b2cc93e2ea6cc1bf101fb8737809d","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"f82b84167190d48909941138de13be17757b2cc93e2ea6cc1bf101fb8737809d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Filtered/Grothendieck.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Markus Himmel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel
-/
import Mathlib.CategoryTheory.Filtered.Basic
import Mathlib.CategoryTheory.Grothendieck

/-!
# Filteredness of Grothendieck construction

We show that if `F : C ⥤ Cat` is such that `C` is filtered and `F.obj c` is filtered for all
`c : C`, then `Grothendieck F` is filtered.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Filtered.Variantf82b84167190d48909941138de13be17757b2cc93e2ea6cc1bf101fb8737809d

universe v u

namespace CategoryTheory

variable {C : Type u} [Category.{v} C] (F : C ⥤ Cat)

open IsFiltered

instance [IsFilteredOrEmpty C] [∀ c, IsFilteredOrEmpty (F.obj c)] :
    IsFilteredOrEmpty (Grothendieck F) := by
  refine ⟨?_, ?_⟩
  · rintro ⟨c, f⟩ ⟨d, g⟩
    exact ⟨⟨max c d, max ((F.map (leftToMax c d)).obj f) ((F.map (rightToMax c d)).obj g)⟩,
      ⟨leftToMax c d, leftToMax _ _⟩, ⟨rightToMax c d, rightToMax _ _⟩, trivial⟩
  · rintro ⟨c, f⟩ ⟨d, g⟩ ⟨u, x⟩ ⟨v, y⟩
    refine ⟨⟨coeq u v, coeq (eqToHom ?_ ≫
        (F.map (coeqHom u v)).map x) ((F.map (coeqHom u v)).map y)⟩, ⟨coeqHom u v, coeqHom _ _⟩, ?_⟩
    · conv_rhs => rw [← Cat.comp_obj, ← F.map_comp, coeq_condition, F.map_comp, Cat.comp_obj]
    · apply Grothendieck.ext _ _ (coeq_condition u v)
      refine Eq.trans ?_ (eqToHom _ ≫= coeq_condition _ _)
      simp

instance [IsFiltered C] [∀ c, IsFiltered (F.obj c)] : IsFiltered (Grothendieck F) := by
  have : Nonempty (Grothendieck F) := by
    obtain ⟨c⟩ : Nonempty C := IsFiltered.nonempty
    obtain ⟨f⟩ : Nonempty (F.obj c) := IsFiltered.nonempty
    exact ⟨⟨c, f⟩⟩
  apply IsFiltered.mk

end CategoryTheory
