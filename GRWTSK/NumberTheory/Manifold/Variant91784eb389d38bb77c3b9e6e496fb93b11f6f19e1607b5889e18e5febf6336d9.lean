-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.MdifferentiableJacobiTheta.Variantff344ac851f88815eccfe3f7876b9d8cd1ff25f6453bb50e8e4094ffc3c2e1b4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ff344ac851f88815eccfe3f7876b9d8cd1ff25f6453bb50e8e4094ffc3c2e1b4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.MdifferentiableJacobiTheta.Variantff344ac851f88815eccfe3f7876b9d8cd1ff25f6453bb50e8e4094ffc3c2e1b4","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"ff344ac851f88815eccfe3f7876b9d8cd1ff25f6453bb50e8e4094ffc3c2e1b4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/NumberTheory/ModularForms/JacobiTheta/Manifold.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 David Loeffler. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: David Loeffler
-/
import Mathlib.Analysis.Complex.UpperHalfPlane.Manifold
import Mathlib.Geometry.Manifold.MFDeriv.FDeriv
import Mathlib.NumberTheory.ModularForms.JacobiTheta.OneVariable

/-!
# Manifold differentiability of the Jacobi theta function

In this file we reformulate differentiability of the Jacobi theta function in terms of manifold
differentiability.

## TODO

Prove smoothness (in terms of `Smooth`).
-/



namespace GRWTSK.NumberTheory.MdifferentiableJacobiTheta.Variantff344ac851f88815eccfe3f7876b9d8cd1ff25f6453bb50e8e4094ffc3c2e1b4

open scoped UpperHalfPlane Manifold

theorem mdifferentiable_jacobiTheta : MDifferentiable 𝓘(ℂ) 𝓘(ℂ) (jacobiTheta ∘ (↑) : ℍ → ℂ) :=
  fun τ => (differentiableAt_jacobiTheta τ.2).mdifferentiableAt.comp τ τ.mdifferentiable_coe
