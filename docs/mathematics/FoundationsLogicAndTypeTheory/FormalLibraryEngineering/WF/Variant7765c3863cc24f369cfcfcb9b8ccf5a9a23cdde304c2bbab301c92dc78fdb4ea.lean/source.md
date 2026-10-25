# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WF.Variant7765c3863cc24f369cfcfcb9b8ccf5a9a23cdde304c2bbab301c92dc78fdb4ea

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f308a73140d18a9d3fcc67685dcaec181352b495` · SHA-256 `15bcb029b0514b26b854ae8f772827b596534362194532a870cd956267122999`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Empty.Variantb23f2a76c573091f1dd71fc20097a76f044de22f75494cd5971515f75dc23a79","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b23f2a76c573091f1dd71fc20097a76f044de22f75494cd5971515f75dc23a79","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Empty.Variantb23f2a76c573091f1dd71fc20097a76f044de22f75494cd5971515f75dc23a79","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"b23f2a76c573091f1dd71fc20097a76f044de22f75494cd5971515f75dc23a79","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Data/TreeSet/Raw/WF.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
public import Std.Data.TreeMap.Raw.WF
public import Std.Data.TreeSet.AdditionalOperations


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Empty.Variantb23f2a76c573091f1dd71fc20097a76f044de22f75494cd5971515f75dc23a79

@[expose] public section

/-!
# Well-formedness proofs for raw tree sets

This file contains well-formedness proofs about `Std.Data.TreeSet.Raw.Basic`. Most of the lemmas require
`TransCmp cmp` for the comparison function `cmp`.
-/

set_option linter.missingDocs true
set_option autoImplicit false

universe u v

namespace Std.TreeSet.Raw.WF

open TreeMap.Raw renaming WF → InnerWF

variable {α : Type u} {cmp : α → α → Ordering} {t : Raw α cmp}

theorem empty : (empty : Raw α cmp).WF :=
  ⟨InnerWF.empty⟩

theorem emptyc : (∅ : Raw α cmp).WF :=
  empty

theorem erase [TransCmp cmp] {a} (h : t.WF) :
    WF (t.erase a) :=
  ⟨InnerWF.erase h⟩

theorem insert [TransCmp cmp] {a} (h : t.WF) :
    WF (t.insert a) :=
  ⟨InnerWF.insertIfNew h⟩

theorem containsThenInsert [TransCmp cmp] {a} (h : t.WF) :
    WF (t.containsThenInsert a).2 :=
  ⟨InnerWF.containsThenInsertIfNew h⟩

theorem filter [TransCmp cmp] {f} (h : t.WF) :
    WF (t.filter f) :=
  ⟨InnerWF.filter h⟩

theorem partition_fst [TransCmp cmp] {f} :
    WF (t.partition f).fst :=
  ⟨InnerWF.partition_fst⟩

theorem partition_snd [TransCmp cmp] {f} :
    WF (t.partition f).snd :=
  ⟨InnerWF.partition_snd⟩

theorem eraseMany [TransCmp cmp] {ρ} [ForIn Id ρ α] {l : ρ} {t : Raw α cmp} (h : t.WF) :
    WF (t.eraseMany l) :=
  ⟨InnerWF.eraseMany h⟩

theorem insertMany [TransCmp cmp] {ρ} [ForIn Id ρ α] {l : ρ} {t : Raw α cmp}
    (h : t.WF) : WF (t.insertMany l) :=
  ⟨InnerWF.insertManyIfNewUnit h⟩

theorem ofList [TransCmp cmp] {l : List α} :
    (Raw.ofList l cmp).WF :=
  ⟨InnerWF.unitOfList⟩

theorem ofArray [TransCmp cmp] {a : Array α} :
    (Raw.ofArray a cmp).WF :=
  ⟨InnerWF.unitOfArray⟩

theorem merge {t₁ t₂ : Raw α cmp} (h : t₁.WF) :
    (t₁.merge t₂).WF :=
  ⟨InnerWF.mergeWith h⟩

theorem union [TransCmp cmp] {t₁ t₂ : Raw α cmp} (h₁ : t₁.WF) (h₂ : t₂.WF) :
  (t₁ ∪ t₂).WF :=
  ⟨InnerWF.union h₁ h₂⟩

theorem inter [TransCmp cmp] {t₁ t₂ : Raw α cmp} (h₁ : t₁.WF) :
    (t₁ ∩ t₂).WF :=
  ⟨InnerWF.inter h₁⟩

theorem diff [TransCmp cmp] {t₁ t₂ : Raw α cmp} (h₁ : t₁.WF) :
    (t₁ \ t₂).WF :=
  ⟨InnerWF.diff h₁⟩

end Std.TreeSet.Raw.WF
```
