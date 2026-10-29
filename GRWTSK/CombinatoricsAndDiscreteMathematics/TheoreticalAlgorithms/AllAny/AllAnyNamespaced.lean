-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.AllIffForallProp.Variant640e4d31f55d6faa533a0787f4564ff0d9002e86d0ce79343ae088cf27d56ca4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"640e4d31f55d6faa533a0787f4564ff0d9002e86d0ce79343ae088cf27d56ca4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.AllIffForallProp.Variant640e4d31f55d6faa533a0787f4564ff0d9002e86d0ce79343ae088cf27d56ca4","mathematical_subject":"Computation.DataStructures","original_sha256":"640e4d31f55d6faa533a0787f4564ff0d9002e86d0ce79343ae088cf27d56ca4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Bool/AllAny.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2017 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
import Batteries.Tactic.Alias
import Mathlib.Tactic.TypeStar

/-!
# Boolean quantifiers

This proves a few properties about `List.all` and `List.any`, which are the `Bool` universal and
existential quantifiers. Their definitions are in core Lean.
-/



namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.AllIffForallProp.Variant640e4d31f55d6faa533a0787f4564ff0d9002e86d0ce79343ae088cf27d56ca4

variable {α : Type*} {p : α → Prop} [DecidablePred p] {l : List α} {a : α}

namespace List

theorem all_iff_forall_prop : (all l fun a => p a) ↔ ∀ a ∈ l, p a := by
  simp

theorem any_iff_exists_prop : (any l fun a => p a) ↔ ∃ a ∈ l, p a := by simp

theorem any_of_mem {p : α → Bool} (h₁ : a ∈ l) (h₂ : p a) : any l p :=
  any_eq_true.2 ⟨_, h₁, h₂⟩

end List
