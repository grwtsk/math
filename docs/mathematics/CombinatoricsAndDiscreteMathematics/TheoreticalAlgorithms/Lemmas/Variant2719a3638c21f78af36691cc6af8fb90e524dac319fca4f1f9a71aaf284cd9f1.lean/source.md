# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Lemmas.Variant2719a3638c21f78af36691cc6af8fb90e524dac319fca4f1f9a71aaf284cd9f1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cbbf8741e7f712ad524bd21d65eddd1fe54b40ac` · SHA-256 `35885788ac2b1846ae87eea10f220c0da35da77a10b4b4e72b9d5a600aeef3d7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CongrAppend.Variantaed336a9aa9ef831edb1b2bc9b4c5147ddf487bc87974d7aebde908f52cf1cf0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"aed336a9aa9ef831edb1b2bc9b4c5147ddf487bc87974d7aebde908f52cf1cf0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.CongrAppend.Variantaed336a9aa9ef831edb1b2bc9b4c5147ddf487bc87974d7aebde908f52cf1cf0","mathematical_subject":"Computation.DataStructures","original_sha256":"aed336a9aa9ef831edb1b2bc9b4c5147ddf487bc87974d7aebde908f52cf1cf0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/String/Lemmas.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Chris Bailey. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Chris Bailey
-/
import Mathlib.Data.Nat.Notation
import Mathlib.Data.String.Defs
import Mathlib.Tactic.Basic
import Batteries.Tactic.Alias

/-!
# Miscellaneous lemmas about strings
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CongrAppend.Variantaed336a9aa9ef831edb1b2bc9b4c5147ddf487bc87974d7aebde908f52cf1cf0

namespace String

lemma congr_append : ∀ (a b : String), a ++ b = String.mk (a.data ++ b.data)
  | ⟨_⟩, ⟨_⟩ => rfl

@[simp] lemma length_replicate (n : ℕ) (c : Char) : (replicate n c).length = n := by
  simp only [String.length, String.replicate, List.length_replicate]

lemma length_eq_list_length (l : List Char) : (String.mk l).length = l.length := by
  simp only [String.length]

/-- The length of the String returned by `String.leftpad n a c` is equal
  to the larger of `n` and `s.length` -/
@[simp] lemma length_leftpad (n : ℕ) (c : Char) :
    ∀ (s : String), (leftpad n c s).length = max n s.length
  | ⟨s⟩ => by simp only [leftpad, String.length, List.length_leftpad]

@[deprecated (since := "2025-02-24")]
alias leftpad_length := length_leftpad

lemma leftpad_prefix (n : ℕ) (c : Char) : ∀ s, IsPrefix (replicate (n - length s) c) (leftpad n c s)
  | ⟨l⟩ => by simp only [IsPrefix, replicate, leftpad, String.length, List.leftpad_prefix]

lemma leftpad_suffix (n : ℕ) (c : Char) : ∀ s, IsSuffix s (leftpad n c s)
  | ⟨l⟩ => by simp only [IsSuffix, replicate, leftpad, String.length, List.leftpad_suffix]

end String
```
