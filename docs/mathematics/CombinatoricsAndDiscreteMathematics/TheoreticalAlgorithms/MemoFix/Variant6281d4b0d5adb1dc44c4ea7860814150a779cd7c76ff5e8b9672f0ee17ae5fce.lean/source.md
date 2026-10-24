# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MemoFix.Variant6281d4b0d5adb1dc44c4ea7860814150a779cd7c76ff5e8b9672f0ee17ae5fce

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `712cb941a23bdcda6285dd0b132db8e26aeb6ae0` · SHA-256 `4986b1e03cfd22e0e705d284f49e51c59f5ffa3a6887327f5d66c3aa034354d2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ObjectMap.Variant751e97223ff3debe93374a035eb7e6a5b9d7d0f5aeedc4160695eaba8a89ada8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"751e97223ff3debe93374a035eb7e6a5b9d7d0f5aeedc4160695eaba8a89ada8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ObjectMap.Variant751e97223ff3debe93374a035eb7e6a5b9d7d0f5aeedc4160695eaba8a89ada8","mathematical_subject":"Computation.DataStructures","original_sha256":"751e97223ff3debe93374a035eb7e6a5b9d7d0f5aeedc4160695eaba8a89ada8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Util/MemoFix.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Gabriel Ebner. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Gabriel Ebner, Edward Ayers
-/
import Std.Data.HashMap.Basic
import Mathlib.Init

/-!
# Fixpoint function with memoisation

-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ObjectMap.Variant751e97223ff3debe93374a035eb7e6a5b9d7d0f5aeedc4160695eaba8a89ada8

universe u v
open ShareCommon Std

private unsafe abbrev ObjectMap := @Std.HashMap Object Object ⟨Object.ptrEq⟩ ⟨Object.hash⟩

private unsafe def memoFixImplObj (f : (Object → Object) → (Object → Object)) (a : Object) :
    Object := unsafeBaseIO do
  let cache : IO.Ref ObjectMap ← ST.mkRef ∅
  let rec fix (a) := unsafeBaseIO do
    if let some b := (← cache.get)[a]? then
      return b
    let b := f fix a
    cache.modify (·.insert a b)
    pure b
  pure <| fix a

private unsafe def memoFixImpl {α : Type u} {β : Type v} [Nonempty β] :
    (f : (α → β) → (α → β)) → (a : α) → β :=
  unsafeCast memoFixImplObj

/-- Takes the fixpoint of `f` with caching of values that have been seen before.
Hashing makes use of a pointer hash.

This is useful for implementing tree traversal functions where
subtrees may be referenced in multiple places.
-/
@[implemented_by memoFixImpl]
opaque memoFix {α : Type u} {β : Type v} [Nonempty β] (f : (α → β) → (α → β)) : α → β
```
