# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Drop.Variant8a676b3c9a73cf05281628a58045dfeb383f341ce18ad88875c70a80f40e68ed

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `13c36882e630762f50d028e259438db5fcb78fda` · SHA-256 `1e61f966eea7e31755cedd1c33c555462b5e0b4c6c0547f7fa58d422363bd08b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IterDrop.Variant468ef218846357c4891577d5c4f31f883cbd77f4d58eb57407d7ff12cb80eec9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"468ef218846357c4891577d5c4f31f883cbd77f4d58eb57407d7ff12cb80eec9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.IterDrop.Variant468ef218846357c4891577d5c4f31f883cbd77f4d58eb57407d7ff12cb80eec9","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"468ef218846357c4891577d5c4f31f883cbd77f4d58eb57407d7ff12cb80eec9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Data/Iterators/Combinators/Drop.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
public import Std.Data.Iterators.Combinators.Monadic.Drop


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IterDrop.Variant468ef218846357c4891577d5c4f31f883cbd77f4d58eb57407d7ff12cb80eec9

@[expose] public section

namespace Std
open Std.Iterators.Types

/--
Given an iterator `it` and a natural number `n`, `it.drop n` is an iterator that forwards all of
`it`'s output values except for the first `n`.

**Marble diagram:**

```text
it          ---a----b---c--d-e--⊥
it.drop 3   ---------------d-e--⊥

it          ---a--⊥
it.drop 3   ------⊥
```

**Termination properties:**

* `Finite` instance: only if `it` is finite
* `Productive` instance: only if `it` is productive

**Performance:**

Currently, this combinator incurs an additional O(1) cost with each output of `it`, even when the iterator
does not drop any elements anymore.
-/
@[cbv_opaque, always_inline, inline]
def Iter.drop {α : Type w} {β : Type w} (n : Nat) (it : Iter (α := α) β) :
    Iter (α := Drop α Id β) β :=
  it.toIterM.drop n |>.toIter

end Std
````
