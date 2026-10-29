-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.CharP.Variant67ad5e8c36a8b40b53cf875be8f1a7b7f76863e5e0b6168039af0b08236b93b4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"67ad5e8c36a8b40b53cf875be8f1a7b7f76863e5e0b6168039af0b08236b93b4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.CharP.Variant67ad5e8c36a8b40b53cf875be8f1a7b7f76863e5e0b6168039af0b08236b93b4","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"67ad5e8c36a8b40b53cf875be8f1a7b7f76863e5e0b6168039af0b08236b93b4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Matrix/CharP.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Aaron Anderson. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Aaron Anderson
-/
import Mathlib.Algebra.CharP.Defs
import Mathlib.Data.Matrix.Diagonal

/-!
# Matrices in prime characteristic

In this file we prove that matrices over a ring of characteristic `p`
with nonempty index type have the same characteristic.
-/



namespace GRWTSK.Algebra.LinearAlgebra.CharP.Variant67ad5e8c36a8b40b53cf875be8f1a7b7f76863e5e0b6168039af0b08236b93b4

open Matrix

variable {n : Type*} {R : Type*} [AddMonoidWithOne R]

instance Matrix.charP [DecidableEq n] [Nonempty n] (p : ℕ) [CharP R p] :
    CharP (Matrix n n R) p where
  cast_eq_zero_iff k := by simp_rw [← diagonal_natCast, ← diagonal_zero, diagonal_eq_diagonal_iff,
    CharP.cast_eq_zero_iff R p k, forall_const]
