-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.EnoughInjectives.Varianta97c3c12f4acf73fb12d104f4e22a29dd46c9c7bc25d35cb750c3328c95fe961","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a97c3c12f4acf73fb12d104f4e22a29dd46c9c7bc25d35cb750c3328c95fe961","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.EnoughInjectives.Varianta97c3c12f4acf73fb12d104f4e22a29dd46c9c7bc25d35cb750c3328c95fe961","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"a97c3c12f4acf73fb12d104f4e22a29dd46c9c7bc25d35cb750c3328c95fe961","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Abelian/GrothendieckCategory/Coseparator.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Markus Himmel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel
-/
import Mathlib.CategoryTheory.Abelian.GrothendieckCategory.EnoughInjectives
import Mathlib.CategoryTheory.Generator.Abelian

/-!
# Grothendieck categories have a coseparator
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.EnoughInjectives.Varianta97c3c12f4acf73fb12d104f4e22a29dd46c9c7bc25d35cb750c3328c95fe961

universe w v u

namespace CategoryTheory.IsGrothendieckAbelian

variable {C : Type u} [Category.{v} C] [Abelian C] [IsGrothendieckAbelian.{w} C]

instance : HasCoseparator C := by
  suffices HasCoseparator (ShrinkHoms C) from
    HasCoseparator.of_equivalence (ShrinkHoms.equivalence.{w} C).symm
  obtain ⟨G, -, hG⟩ := Abelian.has_injective_coseparator (separator (ShrinkHoms C))
    (isSeparator_separator _)
  exact ⟨G, hG⟩

end CategoryTheory.IsGrothendieckAbelian
