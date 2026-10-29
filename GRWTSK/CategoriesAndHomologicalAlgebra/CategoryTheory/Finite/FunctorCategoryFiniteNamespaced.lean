-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FunctorCategory.Varianta9fe5ea9dc05c65e8aecd009634c4d7eb6e4b27402038668a5903af7fd29d16c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a9fe5ea9dc05c65e8aecd009634c4d7eb6e4b27402038668a5903af7fd29d16c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.FunctorCategory.Varianta9fe5ea9dc05c65e8aecd009634c4d7eb6e4b27402038668a5903af7fd29d16c","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"a9fe5ea9dc05c65e8aecd009634c4d7eb6e4b27402038668a5903af7fd29d16c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Limits/FunctorCategory/Finite.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Dagur Asgeirsson. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Dagur Asgeirsson
-/
import Mathlib.CategoryTheory.Limits.FunctorCategory.Basic
import Mathlib.CategoryTheory.Limits.Shapes.FiniteProducts
/-!

# Functor categories have finite limits when the target category does

These declarations cannot be in `Mathlib/CategoryTheory/Limits/FunctorCategory.lean` because
that file shouldn't import `Mathlib/CategoryTheory/Limits/Shapes/FiniteProducts.lean`.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FunctorCategory.Varianta9fe5ea9dc05c65e8aecd009634c4d7eb6e4b27402038668a5903af7fd29d16c

namespace CategoryTheory.Limits

variable {C : Type*} [Category C] {K : Type*} [Category K]

instance [HasFiniteLimits C] : HasFiniteLimits (K ⥤ C) := ⟨fun _ ↦ inferInstance⟩

instance [HasFiniteProducts C] : HasFiniteProducts (K ⥤ C) := ⟨inferInstance⟩

instance [HasFiniteColimits C] : HasFiniteColimits (K ⥤ C) := ⟨fun _ ↦ inferInstance⟩

instance [HasFiniteCoproducts C] : HasFiniteCoproducts (K ⥤ C) := ⟨inferInstance⟩

end CategoryTheory.Limits
