# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.AdditionalOperations.Variant9406ec5bdda35b892041de86696828c2fd350bba75eb193a3240704541fbac5a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `41f6b0a525b0eb0cfb73b313db13b24ae94d1b03` · SHA-256 `489581fe9b1b8528b7826c29922ef18072383019df9864d45fc8c1117df2f5fd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.WFFilterMap.Variantad50d4bc48f3b14d8e2a2155071acf2b255d1b2f6f81a45cbeb12183f281b498","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ad50d4bc48f3b14d8e2a2155071acf2b255d1b2f6f81a45cbeb12183f281b498","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.WFFilterMap.Variantad50d4bc48f3b14d8e2a2155071acf2b255d1b2f6f81a45cbeb12183f281b498","mathematical_subject":"Computation.DataStructures","original_sha256":"ad50d4bc48f3b14d8e2a2155071acf2b255d1b2f6f81a45cbeb12183f281b498","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Data/HashMap/AdditionalOperations.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel
-/
module

prelude
public import Std.Data.DHashMap.AdditionalOperations
public import Std.Data.HashMap.Basic
public import Std.Data.HashMap.Raw


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.WFFilterMap.Variantad50d4bc48f3b14d8e2a2155071acf2b255d1b2f6f81a45cbeb12183f281b498

@[expose] public section

/-!
# Additional hash map operations

This module defines the operations `map` and `filterMap` on `Std.HashMap`.
Lemmas about these operations are found in `Std.Data.HashMap.Lemmas`.
-/

set_option linter.missingDocs true
set_option autoImplicit false

universe u v w

variable {α : Type u} {β : Type v} {γ : Type w}

namespace Std

namespace HashMap

namespace Raw

theorem WF.filterMap [BEq α] [Hashable α] {m : Raw α β} {f : α → β → Option γ} (h : m.WF) :
    (m.filterMap f).WF :=
  ⟨DHashMap.Raw.WF.filterMap h.out⟩

theorem WF.map [BEq α] [Hashable α] {m : Raw α β} {f : α → β → γ} (h : m.WF) : (m.map f).WF :=
  ⟨DHashMap.Raw.WF.map h.out⟩

end Raw

@[cbv_opaque, inline, inherit_doc DHashMap.filterMap] def filterMap [BEq α] [Hashable α] (f : α → β → Option γ)
    (m : HashMap α β) : HashMap α γ :=
  ⟨m.inner.filterMap f⟩

@[cbv_opaque, inline, inherit_doc DHashMap.map] def map [BEq α] [Hashable α] (f : α → β → γ) (m : HashMap α β) :
    HashMap α γ :=
  ⟨m.inner.map f⟩

end HashMap

end Std
```
