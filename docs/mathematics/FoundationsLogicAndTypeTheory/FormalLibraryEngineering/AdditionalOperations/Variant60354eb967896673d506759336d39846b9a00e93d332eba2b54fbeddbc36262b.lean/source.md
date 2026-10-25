# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AdditionalOperations.Variant60354eb967896673d506759336d39846b9a00e93d332eba2b54fbeddbc36262b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `65557e76ac55764841d03cc834682a6eb5a3420e` · SHA-256 `a95d0eceb044c36c5c2559310a498d9885e25feb7b64b54ea8ea553b5f537cb4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FilterMap.Variant58bdc1c0df2248679f31c2c749702cdfb95442d85636bb606071f25adfb7bfc6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"58bdc1c0df2248679f31c2c749702cdfb95442d85636bb606071f25adfb7bfc6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.FilterMap.Variant58bdc1c0df2248679f31c2c749702cdfb95442d85636bb606071f25adfb7bfc6","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"58bdc1c0df2248679f31c2c749702cdfb95442d85636bb606071f25adfb7bfc6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Data/DTreeMap/Raw/AdditionalOperations.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
public import Std.Data.DTreeMap.AdditionalOperations


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FilterMap.Variant58bdc1c0df2248679f31c2c749702cdfb95442d85636bb606071f25adfb7bfc6

@[expose] public section

/-!
# Additional dependent raw tree map operations

This file defines more operations on `Std.DTreeMap.Raw`.
We currently do not provide lemmas for these functions.
-/

set_option autoImplicit false
set_option linter.missingDocs true

universe u v w

variable {α : Type u} {β : α → Type v} {γ : α → Type w} {cmp : α → α → Ordering}

namespace Std.DTreeMap
open Std.DTreeMap.Internal (Impl)

namespace Raw
local instance : Coe (Type v) (α → Type v) where coe γ := fun _ => γ

@[inline, inherit_doc DTreeMap.filterMap]
def filterMap (f : (a : α) → β a → Option (γ a)) (t : Raw α β cmp) : Raw α γ cmp :=
  letI : Ord α := ⟨cmp⟩; ⟨t.inner.filterMap! f⟩

@[inline, inherit_doc DTreeMap.map]
def map (f : (a : α) → β a → γ a) (t : Raw α β cmp) : Raw α γ cmp :=
  letI : Ord α := ⟨cmp⟩; ⟨t.inner.map f⟩

/-!
We do not provide `get*GE`, `get*GT`, `get*LE` and `get*LT` functions for the raw trees.
-/

end Raw

end Std.DTreeMap
```
