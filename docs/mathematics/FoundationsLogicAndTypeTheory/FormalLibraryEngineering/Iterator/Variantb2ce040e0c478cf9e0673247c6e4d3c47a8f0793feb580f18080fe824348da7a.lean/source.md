# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Iterator.Variantb2ce040e0c478cf9e0673247c6e4d3c47a8f0793feb580f18080fe824348da7a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `eb429dfe075e4d4e3769536685d13c8d3ffbc79c` · SHA-256 `1647aedb4775f3a7ba1b8a4fd803e1d79447563fdca460de033c0a540b284f62`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Iter.Variantace5f2f6a9490daa4c6ce3e51baf2bda3af9a5bdb22a4aadabe6032f51ed99fc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ace5f2f6a9490daa4c6ce3e51baf2bda3af9a5bdb22a4aadabe6032f51ed99fc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Iter.Variantace5f2f6a9490daa4c6ce3e51baf2bda3af9a5bdb22a4aadabe6032f51ed99fc","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"ace5f2f6a9490daa4c6ce3e51baf2bda3af9a5bdb22a4aadabe6032f51ed99fc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Data/DHashMap/Iterator.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
public import Std.Data.Iterators.Producers.Array
public import Init.Data.Iterators.Combinators.FlatMap
public import Std.Data.DHashMap.Basic
public import Std.Data.DHashMap.Internal.AssocList.Iterator
import Init.Data.Iterators.Combinators.FilterMap

/-!
# Iterators on `DHashMap` and `DHashMap.Raw`
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Iter.Variantace5f2f6a9490daa4c6ce3e51baf2bda3af9a5bdb22a4aadabe6032f51ed99fc

namespace Std.DHashMap.Raw

/--
Returns a finite iterator over the entries of a dependent hash map.
The iterator yields the elements of the map in order and then terminates.

**Termination properties:**

* `Finite` instance: always
* `Productive` instance: always
-/
@[inline]
public def iter {α : Type u} {β : α → Type v} (m : Raw α β) :=
  (m.buckets.iter.flatMap fun b => b.iter : Iter ((a : α) × β a))

/--
Returns a finite iterator over the keys of a dependent hash map.
The iterator yields the keys in order and then terminates.

The key and value types must live in the same universe.

**Termination properties:**

* `Finite` instance: always
* `Productive` instance: always
-/
@[inline]
public def keysIter {α : Type u} {β : α → Type u} (m : Raw α β) :=
  (m.iter.map fun e => e.1 : Iter α)

/--
Returns a finite iterator over the values of a hash map.
The iterator yields the values in order and then terminates.

The key and value types must live in the same universe.

**Termination properties:**

* `Finite` instance: always
* `Productive` instance: always
-/
@[inline]
public def valuesIter {α : Type u} {β : Type u} (m : Raw α (fun _ => β)) :=
  (m.iter.map fun e => e.2 : Iter β)

end Std.DHashMap.Raw

namespace Std.DHashMap

@[inline, inherit_doc Raw.iter]
public def iter {α : Type u} {β : α → Type v} [BEq α] [Hashable α] (m : DHashMap α β) :=
  (m.1.iter : Iter ((a : α) × β a))

@[inline, inherit_doc Raw.keysIter]
public def keysIter {α : Type u} {β : α → Type u} [BEq α] [Hashable α] (m : DHashMap α β) :=
  (m.1.keysIter : Iter α)

@[inline, inherit_doc Raw.valuesIter]
public def valuesIter {α : Type u} {β : Type u} [BEq α] [Hashable α]
    (m : DHashMap α (fun _ => β)) :=
  (m.iter.map fun e => e.2 : Iter β)

end Std.DHashMap
```
