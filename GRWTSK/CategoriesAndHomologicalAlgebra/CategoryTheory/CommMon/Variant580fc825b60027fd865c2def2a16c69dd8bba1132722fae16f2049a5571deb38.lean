-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.IsCommMonOfRepresentableBy.Variantdc9209466f5cc62468f1f3a6d91cbdb51715131439fc1a4b5f46109dda2aec97","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"dc9209466f5cc62468f1f3a6d91cbdb51715131439fc1a4b5f46109dda2aec97","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.IsCommMonOfRepresentableBy.Variantdc9209466f5cc62468f1f3a6d91cbdb51715131439fc1a4b5f46109dda2aec97","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"dc9209466f5cc62468f1f3a6d91cbdb51715131439fc1a4b5f46109dda2aec97","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Monoidal/Cartesian/CommMon_.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Andrew Yang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Andrew Yang
-/
import Mathlib.CategoryTheory.Monoidal.Cartesian.Mon_

/-!
# Yoneda embedding of `CommMon_ C`
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.IsCommMonOfRepresentableBy.Variantdc9209466f5cc62468f1f3a6d91cbdb51715131439fc1a4b5f46109dda2aec97

open CategoryTheory MonoidalCategory Limits Opposite CartesianMonoidalCategory Mon_Class

universe w v u
variable {C : Type u} [Category.{v} C] [CartesianMonoidalCategory C] [BraidedCategory C] {X : C}

variable (X) in
/-- If `X` represents a presheaf of commutative monoids, then `X` is a commutative monoid object. -/
lemma IsCommMon.ofRepresentableBy (F : Cᵒᵖ ⥤ CommMonCat) (α : (F ⋙ forget _).RepresentableBy X) :
    letI : Mon_Class X := .ofRepresentableBy X (F ⋙ forget₂ CommMonCat MonCat) α
    IsCommMon X := by
  letI : Mon_Class X := .ofRepresentableBy X (F ⋙ forget₂ CommMonCat MonCat) α
  have : μ = α.homEquiv.symm (α.homEquiv (fst X X) * α.homEquiv (snd X X)) := rfl
  constructor
  simp_rw [this, ← α.homEquiv.apply_eq_iff_eq, α.homEquiv_comp, Functor.comp_map,
    ConcreteCategory.forget_map_eq_coe, Equiv.apply_symm_apply, map_mul,
    ← ConcreteCategory.forget_map_eq_coe, ← Functor.comp_map, ← α.homEquiv_comp, op_tensorObj,
    Functor.comp_obj, braiding_hom_fst, braiding_hom_snd, _root_.mul_comm]
