-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Elementwise.Variant369cea636d450caa016c5f5f898c27a9a4db2cde8b5c164728b0ce335a31a2f7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"369cea636d450caa016c5f5f898c27a9a4db2cde8b5c164728b0ce335a31a2f7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Elementwise.Variant369cea636d450caa016c5f5f898c27a9a4db2cde8b5c164728b0ce335a31a2f7","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"369cea636d450caa016c5f5f898c27a9a4db2cde8b5c164728b0ce335a31a2f7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/ConcreteCategory/Elementwise.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Andrew Yang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Andrew Yang
-/
import Mathlib.Tactic.CategoryTheory.Elementwise
import Mathlib.CategoryTheory.Limits.HasLimits
import Mathlib.CategoryTheory.Limits.Shapes.Kernels
import Mathlib.CategoryTheory.ConcreteCategory.Basic

/-!
In this file we provide various simp lemmas in its elementwise form via `Tactic.Elementwise`.
-/



namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Elementwise.Variant369cea636d450caa016c5f5f898c27a9a4db2cde8b5c164728b0ce335a31a2f7

open CategoryTheory CategoryTheory.Limits

set_option linter.existingAttributeWarning false in
attribute [elementwise (attr := simp)] Cone.w limit.lift_π limit.w
  colimit.ι_desc colimit.w kernel.lift_ι cokernel.π_desc kernel.condition cokernel.condition

attribute [elementwise] Cocone.w
