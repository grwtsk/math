# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Iterator.Variantf410781ea6d221d1b7a3c9b3989df61c60520e3617464e48cf3c927ee50d417c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d57a6157898debd2c362658d4c41a11cebc6b59c` · SHA-256 `b5103607980bcbc52635904514f6dd708870577c3decb01f0c448ecc84c5c46a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Iter.Variant8863a4b0a0a39d220a10b54953bb353818bc72b12e59599ccebac339c66f96b6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8863a4b0a0a39d220a10b54953bb353818bc72b12e59599ccebac339c66f96b6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Iter.Variant8863a4b0a0a39d220a10b54953bb353818bc72b12e59599ccebac339c66f96b6","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"8863a4b0a0a39d220a10b54953bb353818bc72b12e59599ccebac339c66f96b6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Data/DTreeMap/Iterator.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Wojciech Różowski
-/
module

prelude
public import Std.Data.DTreeMap.Raw.Iterator

/-!
# Iterators on `DTreeMap`
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Iter.Variant8863a4b0a0a39d220a10b54953bb353818bc72b12e59599ccebac339c66f96b6

namespace Std.DTreeMap
open Std.Iterators

/--
Returns a finite iterator over the entries of a dependent tree map.
The iterator yields the elements of the map in order and then terminates.

**Termination properties:**

* `Finite` instance: always
* `Productive` instance: always
-/
@[inline]
public def iter {α : Type u} {β : α → Type v}
    {cmp : α → α → Ordering} (m : DTreeMap α β cmp) :=
  @Raw.iter _ _ cmp ⟨m.inner⟩

/--
Returns a finite iterator over the keys of a dependent tree map.
The iterator yields the keys in order and then terminates.

The key and value types must live in the same universe.

**Termination properties:**

* `Finite` instance: always
* `Productive` instance: always
-/
@[inline]
public def keysIter {α : Type u} {β : α → Type u} {cmp : α → α → Ordering} (m : DTreeMap α β cmp) :=
  @Raw.keysIter _ _ cmp ⟨m.inner⟩

/--
Returns a finite iterator over the values of a tree map.
The iterator yields the values in order and then terminates.

The key and value types must live in the same universe.

**Termination properties:**

* `Finite` instance: always
* `Productive` instance: always
-/
@[inline]
public def valuesIter {α : Type u} {β : Type u} {cmp : α → α → Ordering}
    (m : DTreeMap α (fun _ => β) cmp) :=
  @Raw.valuesIter _ _ cmp  ⟨m.inner⟩

@[simp]
public theorem toList_iter {cmp : α → α → Ordering} (m : DTreeMap α β cmp) :
    m.iter.toList = m.toList := Raw.toList_iter ⟨m.inner⟩

@[simp]
public theorem keysIter_toList {cmp : α → α → Ordering} (m : DTreeMap α β cmp) :
    m.keysIter.toList = m.keys := Raw.keysIter_toList ⟨m.inner⟩

@[simp]
public theorem valuesIter_toList {cmp : α → α → Ordering} (m : DTreeMap α (fun _ => β) cmp) :
    m.valuesIter.toList = m.values := Raw.valuesIter_toList ⟨m.inner⟩

end Std.DTreeMap
```
