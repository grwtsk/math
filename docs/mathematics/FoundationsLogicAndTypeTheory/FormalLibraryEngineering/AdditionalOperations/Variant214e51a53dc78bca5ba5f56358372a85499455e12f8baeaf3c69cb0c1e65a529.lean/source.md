# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AdditionalOperations.Variant214e51a53dc78bca5ba5f56358372a85499455e12f8baeaf3c69cb0c1e65a529

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b77288104b4466976a0fa62fb472be2f6ab7d5e2` · SHA-256 `48db61d948d40ad245663f8939b0a09c5459c60a16ef814aa738da24cda9d324`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WFFilterMap.Variant24f32b66434a3feabe3a1bacdf7d917c022980085f1e297de40ecfa08f4f4733","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"24f32b66434a3feabe3a1bacdf7d917c022980085f1e297de40ecfa08f4f4733","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.WFFilterMap.Variant24f32b66434a3feabe3a1bacdf7d917c022980085f1e297de40ecfa08f4f4733","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"24f32b66434a3feabe3a1bacdf7d917c022980085f1e297de40ecfa08f4f4733","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Data/DHashMap/AdditionalOperations.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel
-/
module

prelude
public import Std.Data.DHashMap.Internal.Raw
public import Std.Data.DHashMap.Internal.WF


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WFFilterMap.Variant24f32b66434a3feabe3a1bacdf7d917c022980085f1e297de40ecfa08f4f4733

public section

/-!
# Additional dependent hash map operations

This file defines the operations `map` and `filterMap` on `Std.DHashMap`.
Lemmas about these operations are found in `Std.Data.DHashMap.Lemmas`.
-/

open Std.DHashMap.Internal

set_option linter.missingDocs true
set_option autoImplicit false

universe u v w

variable {α : Type u} {β : α → Type v} {γ : Type w} {δ : α → Type w}

namespace Std.DHashMap

namespace Raw

open Internal.Raw

theorem WF.filterMap [BEq α] [Hashable α] {m : Raw α β} (h : m.WF)
    {f : (a : α) → β a → Option (δ a)} : (m.filterMap f).WF := by
  simpa only [filterMap_eq h] using Raw₀.wf_filterMap₀ h

theorem WF.map [BEq α] [Hashable α] {m : Raw α β} (h : m.WF) {f : (a : α) → β a → δ a} :
    (m.map f).WF := by
  simpa only [map_eq h] using Raw₀.wf_map₀ h

end Raw

@[cbv_opaque, inline, inherit_doc Raw.filterMap] def filterMap [BEq α] [Hashable α]
    (f : (a : α) → β a → Option (δ a)) (m : DHashMap α β) : DHashMap α δ :=
  ⟨Raw₀.filterMap f ⟨m.1, m.2.size_buckets_pos⟩, Raw₀.wf_filterMap₀ m.2⟩

@[cbv_opaque, inline, inherit_doc Raw.map] def map [BEq α] [Hashable α] (f : (a : α) → β a → δ a)
    (m : DHashMap α β) : DHashMap α δ :=
  ⟨Raw₀.map f ⟨m.1, m.2.size_buckets_pos⟩, Raw₀.wf_map₀ m.2⟩

end Std.DHashMap
```
