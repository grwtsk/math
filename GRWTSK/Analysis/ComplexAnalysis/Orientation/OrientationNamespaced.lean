-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.ComplexAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.ComplexAnalysis.Orientation.Varianta909bbfed264a7c4dc8cc6991746c903fbc7037b930bf51abe0a99105d62a0f9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a909bbfed264a7c4dc8cc6991746c903fbc7037b930bf51abe0a99105d62a0f9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.ComplexAnalysis.SourceCorpus.Orientation.Varianta909bbfed264a7c4dc8cc6991746c903fbc7037b930bf51abe0a99105d62a0f9","mathematical_subject":"Analysis.ComplexAnalysis","original_sha256":"a909bbfed264a7c4dc8cc6991746c903fbc7037b930bf51abe0a99105d62a0f9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Complex/Orientation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Heather Macbeth. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Heather Macbeth
-/
import Mathlib.Data.Complex.Module
import Mathlib.LinearAlgebra.Orientation

/-!
# The standard orientation on `ℂ`.

This had previously been in `LinearAlgebra.Orientation`,
but keeping it separate results in a significant import reduction.
-/



namespace GRWTSK.Analysis.ComplexAnalysis.Orientation.Varianta909bbfed264a7c4dc8cc6991746c903fbc7037b930bf51abe0a99105d62a0f9

namespace Complex

/-- The standard orientation on `ℂ`. -/
protected noncomputable def orientation : Orientation ℝ ℂ (Fin 2) :=
  Complex.basisOneI.orientation

end Complex
