-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.CastNegOnePow.Variant02b836e573fb976db7fc255400bbe5ffa619a0bd4294df091be53ec4cbb1ab37","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"02b836e573fb976db7fc255400bbe5ffa619a0bd4294df091be53ec4cbb1ab37","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.CastNegOnePow.Variant02b836e573fb976db7fc255400bbe5ffa619a0bd4294df091be53ec4cbb1ab37","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"02b836e573fb976db7fc255400bbe5ffa619a0bd4294df091be53ec4cbb1ab37","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Field/NegOnePow.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou, Johan Commelin
-/
import Mathlib.Algebra.Field.Defs
import Mathlib.Algebra.Ring.NegOnePow
import Mathlib.Tactic.NormNum

/-! # Integer powers of `-1` in a field -/


namespace GRWTSK.Algebra.CastNegOnePow.Variant02b836e573fb976db7fc255400bbe5ffa619a0bd4294df091be53ec4cbb1ab37

namespace Int

lemma cast_negOnePow (K : Type*) (n : ℤ) [DivisionRing K] : n.negOnePow = (-1 : K) ^ n := by
  rcases even_or_odd' n with ⟨k, rfl | rfl⟩
  · simp [zpow_mul, zpow_ofNat]
  · rw [zpow_add_one₀ (by norm_num), zpow_mul, zpow_ofNat]
    simp

end Int
