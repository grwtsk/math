# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lemmas.Variant50825b0c2341d8087d4550ea42f8c6fab306fc03258d25b07e5bcd8bd32ab85c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a1cdb380d473571d5ba5b0c55acaa46cbc2363f8` · SHA-256 `cc15b6b0fabf62175951ec40e79ee3bf817cedb07d8f15a37300794766a2a1f9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HeapFindMinVal.Variantf8c96bf9476d036fcd8b9b029e1561521dc2ca77e4d70790a9dde7ff4c78417a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f8c96bf9476d036fcd8b9b029e1561521dc2ca77e4d70790a9dde7ff4c78417a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.HeapFindMinVal.Variantf8c96bf9476d036fcd8b9b029e1561521dc2ca77e4d70790a9dde7ff4c78417a","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"f8c96bf9476d036fcd8b9b029e1561521dc2ca77e4d70790a9dde7ff4c78417a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/batteries/Batteries/Data/BinomialHeap/Lemmas.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
module

public import Batteries.Data.BinomialHeap.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HeapFindMinVal.Variantf8c96bf9476d036fcd8b9b029e1561521dc2ca77e4d70790a9dde7ff4c78417a

@[expose] public section

namespace Batteries.BinomialHeap
namespace Imp

theorem Heap.findMin_val : ((s : Heap α).findMin le k res).val = s.headD le res.val :=
  match s with
  | .nil => rfl
  | .cons r a c s => by rw [findMin, headD]; split <;> apply findMin_val

theorem Heap.deleteMin_fst : ((s : Heap α).deleteMin le).map (·.1) = s.head? le :=
  match s with
  | .nil => rfl
  | .cons r a c s => by simp only [deleteMin, findMin_val, Option.map, head?]

theorem HeapNode.WF.realSize_eq :
    ∀ {n} {s : HeapNode α}, s.WF le a n → s.realSize + 1 = 2 ^ n
  | _, .nil, rfl => rfl
  | _, .node .., ⟨_, rfl, _, c, s⟩ => by
    rw [realSize, realSize_eq c, Nat.pow_succ, Nat.mul_succ]
    simp [Nat.add_assoc, realSize_eq s]

theorem Heap.WF.size_eq :
    ∀ {s : Heap α}, s.WF le n → s.size = s.realSize
  | .nil, _ => rfl
  | .cons .., ⟨_, h₁, h₂⟩ => by
    simp [size, size_eq h₂]
    simp [Nat.one_shiftLeft, h₁.realSize_eq]

end Imp
```
