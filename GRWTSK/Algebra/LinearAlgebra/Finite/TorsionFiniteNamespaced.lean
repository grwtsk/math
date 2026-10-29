-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.RankEqZeroIffIsTorsion.Variant63a69557a800563f47f23a54019eca71e3b049ec15eebb0dc843e495895c60d2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"63a69557a800563f47f23a54019eca71e3b049ec15eebb0dc843e495895c60d2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.RankEqZeroIffIsTorsion.Variant63a69557a800563f47f23a54019eca71e3b049ec15eebb0dc843e495895c60d2","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"63a69557a800563f47f23a54019eca71e3b049ec15eebb0dc843e495895c60d2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/LinearAlgebra/Dimension/Torsion/Finite.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro, Johannes Hölzl, Sander Dahmen, Kim Morrison
-/
import Mathlib.Algebra.Module.Torsion
import Mathlib.LinearAlgebra.Dimension.Finite

/-!
# Results relating rank and torsion.

-/


namespace GRWTSK.Algebra.LinearAlgebra.RankEqZeroIffIsTorsion.Variant63a69557a800563f47f23a54019eca71e3b049ec15eebb0dc843e495895c60d2

variable {R M : Type*} [CommRing R] [IsDomain R] [AddCommGroup M] [Module R M]

lemma rank_eq_zero_iff_isTorsion: Module.rank R M = 0 ↔ Module.IsTorsion R M := by
  rw [Module.IsTorsion, rank_eq_zero_iff]
  simp [mem_nonZeroDivisors_iff_ne_zero]

/-- The `StrongRankCondition` is automatic. See `commRing_strongRankCondition`. -/
theorem Module.finrank_eq_zero_iff_isTorsion [StrongRankCondition R] [Module.Finite R M] :
    finrank R M = 0 ↔ Module.IsTorsion R M := by
  rw [← rank_eq_zero_iff_isTorsion (R := R), ← finrank_eq_rank]
  norm_cast
