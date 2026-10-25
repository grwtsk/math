# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Empty.Variantf06d7c17839b4d6f898cf641035e445946d2fa20442aff3c7bfa5ae92bb573d2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ccd17e2911ca0e762c0f112301466de4040335c6` · SHA-256 `870b2ea792bc800db69ad1bc9932f772d320d45b62cd59052c00fe3f3b2ca048`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IterToIterMEmpty.Variantbb8297fdad9fcd20c4c263634a608ffe9ba151c37c9fcf3f4a67fa60c4cd3866","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bb8297fdad9fcd20c4c263634a608ffe9ba151c37c9fcf3f4a67fa60c4cd3866","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.IterToIterMEmpty.Variantbb8297fdad9fcd20c4c263634a608ffe9ba151c37c9fcf3f4a67fa60c4cd3866","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"bb8297fdad9fcd20c4c263634a608ffe9ba151c37c9fcf3f4a67fa60c4cd3866","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Data/Iterators/Lemmas/Producers/Empty.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
public import Std.Data.Iterators.Lemmas.Producers.Monadic.Empty
public import Init.Data.Iterators.Lemmas.Consumers
public import Std.Data.Iterators.Producers.Empty


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IterToIterMEmpty.Variantbb8297fdad9fcd20c4c263634a608ffe9ba151c37c9fcf3f4a67fa60c4cd3866

@[expose] public section

namespace Std

@[simp]
theorem Iter.toIterM_empty {β} :
    (Iter.empty β).toIterM = IterM.empty Id β :=
  rfl

@[simp]
theorem Iter.step_empty {β} :
    (Iter.empty β).step = ⟨.done, rfl⟩ := by
  simp [Iter.step]; rfl

@[simp]
theorem Iter.toList_empty {β} :
    (Iter.empty β).toList = [] := by
  simp [Iter.toList_eq_toList_toIterM]

@[simp]
theorem Iter.toListRev_empty {β} :
    (Iter.empty β).toListRev = [] := by
  simp [Iter.toListRev_eq_toListRev_toIterM]

@[simp]
theorem Iter.toArray_empty {β} :
    (Iter.empty β).toArray = #[] := by
  simp [Iter.toArray_eq_toArray_toIterM]

@[simp]
theorem Iter.forIn_empty {m β γ} [Monad m] [LawfulMonad m]
    {init : γ} {f} :
    ForIn.forIn (m := m) (Iter.empty β) init f = pure init := by
  simp [Iter.forIn_eq_match_step]

@[simp]
theorem Iter.foldM_empty {m β γ} [Monad m] [LawfulMonad m]
    {init : γ} {f} :
    (Iter.empty β).foldM (m := m) (init := init) f = pure init := by
  simp [Iter.foldM_eq_forIn]

@[simp]
theorem Iter.fold_empty {β γ} {init : γ} {f} :
    (Iter.empty β).fold (init := init) f = init := by
  simp [Iter.fold_eq_foldM]

end Std
```
