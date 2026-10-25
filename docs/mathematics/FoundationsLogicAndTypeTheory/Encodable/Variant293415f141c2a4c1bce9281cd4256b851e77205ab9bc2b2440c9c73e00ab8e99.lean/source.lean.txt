-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.Encodable.Variant7d7090ce5ceade0380ff2bfa5932e25eddf15578a622a6012d8fa41bafef0657","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7d7090ce5ceade0380ff2bfa5932e25eddf15578a622a6012d8fa41bafef0657","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Encodable.Variant7d7090ce5ceade0380ff2bfa5932e25eddf15578a622a6012d8fa41bafef0657","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"7d7090ce5ceade0380ff2bfa5932e25eddf15578a622a6012d8fa41bafef0657","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Rat/Encodable.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Mario Carneiro
-/
import Mathlib.Logic.Encodable.Basic
import Mathlib.Data.Rat.Init

/-! # The rationals are `Encodable`.

As a consequence we also get the instance `Countable ℚ`.

This is kept separate from `Data.Rat.Defs` in order to minimize imports.
-/



namespace GRWTSK.FoundationsLogicAndTypeTheory.Encodable.Variant7d7090ce5ceade0380ff2bfa5932e25eddf15578a622a6012d8fa41bafef0657

namespace Rat

instance : Encodable ℚ :=
  Encodable.ofEquiv (Σn : ℤ, { d : ℕ // 0 < d ∧ n.natAbs.Coprime d })
    ⟨fun ⟨a, b, c, d⟩ => ⟨a, b, Nat.pos_of_ne_zero c, d⟩,
      fun ⟨a, b, c, d⟩ => ⟨a, b, Nat.pos_iff_ne_zero.mp c, d⟩,
      fun _ => rfl, fun ⟨_, _, _, _⟩ => rfl⟩

end Rat
