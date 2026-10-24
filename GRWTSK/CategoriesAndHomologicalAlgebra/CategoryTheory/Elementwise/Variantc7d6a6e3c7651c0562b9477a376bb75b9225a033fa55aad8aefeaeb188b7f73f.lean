-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Elementwise.Variant2b249752f2f7aa4fee040c8cbc4865672ab078dacc269398a47dd1c89fed2159","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2b249752f2f7aa4fee040c8cbc4865672ab078dacc269398a47dd1c89fed2159","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Elementwise.Variant2b249752f2f7aa4fee040c8cbc4865672ab078dacc269398a47dd1c89fed2159","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"2b249752f2f7aa4fee040c8cbc4865672ab078dacc269398a47dd1c89fed2159","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Elementwise.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
import Mathlib.Tactic.CategoryTheory.Elementwise
import Mathlib.CategoryTheory.ConcreteCategory.Basic

/-!
# Use the `elementwise` attribute to create applied versions of lemmas.

Usually we would use `@[elementwise]` at the point of definition,
however some early parts of the category theory library are imported by `Tactic.Elementwise`,
so we need to add the attribute after the fact.
-/


/-! We now add some `elementwise` attributes to lemmas that were proved earlier. -/



namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Elementwise.Variant2b249752f2f7aa4fee040c8cbc4865672ab078dacc269398a47dd1c89fed2159

open CategoryTheory

attribute [elementwise (attr := simp)] Iso.hom_inv_id Iso.inv_hom_id

-- This list is incomplete, and it would probably be useful to add more.
set_option linter.existingAttributeWarning false in
attribute [elementwise (attr := simp)] IsIso.hom_inv_id IsIso.inv_hom_id
