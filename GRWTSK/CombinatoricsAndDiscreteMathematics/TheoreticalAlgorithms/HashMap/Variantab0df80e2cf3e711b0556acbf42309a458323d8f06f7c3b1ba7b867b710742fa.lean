-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MapVal.Varianta770f1cbc1b60feb8725bf38c7fab476191dd23732fdb50cc2ee9b261afafc77","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a770f1cbc1b60feb8725bf38c7fab476191dd23732fdb50cc2ee9b261afafc77","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.MapVal.Varianta770f1cbc1b60feb8725bf38c7fab476191dd23732fdb50cc2ee9b261afafc77","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"a770f1cbc1b60feb8725bf38c7fab476191dd23732fdb50cc2ee9b261afafc77","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Std/Data/HashMap.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
import Std.Data.HashMap.Basic
import Mathlib.Init

/-!
# Convenience functions for hash maps

These will be reimplemented in the Lean standard library.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MapVal.Varianta770f1cbc1b60feb8725bf38c7fab476191dd23732fdb50cc2ee9b261afafc77

namespace Std.HashMap

variable {α β γ : Type _} [BEq α] [Hashable α]

/-- Apply a function to the values of a hash map. -/
def mapVal (f : α → β → γ) (m : HashMap α β) : HashMap α γ :=
  m.fold (fun acc k v => acc.insert k (f k v)) ∅

end Std.HashMap
