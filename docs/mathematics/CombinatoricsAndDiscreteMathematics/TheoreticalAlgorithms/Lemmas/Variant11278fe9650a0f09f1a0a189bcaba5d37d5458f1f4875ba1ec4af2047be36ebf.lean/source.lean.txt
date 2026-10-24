-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CongrAppend.Variantaef5965a563a4abe8d9719d508a41db9689cd366b58776f2607c0e0fa78b4ab8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"aef5965a563a4abe8d9719d508a41db9689cd366b58776f2607c0e0fa78b4ab8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.CongrAppend.Variantaef5965a563a4abe8d9719d508a41db9689cd366b58776f2607c0e0fa78b4ab8","mathematical_subject":"Computation.DataStructures","original_sha256":"aef5965a563a4abe8d9719d508a41db9689cd366b58776f2607c0e0fa78b4ab8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Data/String/Lemmas.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Chris Bailey. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Chris Bailey
-/
import Mathlib.Data.List.Basic
import Mathlib.Data.String.Defs


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CongrAppend.Variantaef5965a563a4abe8d9719d508a41db9689cd366b58776f2607c0e0fa78b4ab8

namespace String

lemma congr_append : ∀ (a b : String), a ++ b = String.mk (a.data ++ b.data)
  | ⟨_⟩, ⟨_⟩ => rfl

@[simp] lemma length_append : ∀ (as bs : String), (as ++ bs).length = as.length + bs.length
  | ⟨as⟩, ⟨bs⟩ => by
    rw [congr_append]
    simp only [String.length]
    exact List.length_append as bs

@[simp] lemma length_replicate (n : ℕ) (c : Char) : (replicate n c).length = n := by
  simp only [String.length, String.replicate, List.length_replicate]

lemma length_eq_list_length (l : List Char) : (String.mk l).length = l.length := by
  simp only [String.length]

/-- The length of the String returned by `String.leftpad n a c` is equal
  to the larger of `n` and `s.length` -/
@[simp] lemma leftpad_length (n : ℕ) (c : Char) :
    ∀ (s : String), (leftpad n c s).length = max n s.length
  | ⟨s⟩ => by simp only [leftpad, String.length, List.leftpad_length]

lemma leftpad_prefix (n : ℕ) (c : Char) : ∀ s, isPrefix (replicate (n - length s) c) (leftpad n c s)
  | ⟨l⟩ => by simp only [isPrefix, replicate, leftpad, String.length, List.leftpad_prefix]

lemma leftpad_suffix (n : ℕ) (c : Char) : ∀ s, isSuffix s (leftpad n c s)
  | ⟨l⟩ => by simp only [isSuffix, replicate, leftpad, String.length, List.leftpad_suffix]

end String
