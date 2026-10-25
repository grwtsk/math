# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Iterator.Variant7292398ebeb2510610b446a8428d5e3538863c1dea5c908ea1134158977e57ed

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `111d4b5d66e412112a5ff4c2031a7f2618d75b63` · SHA-256 `3a80fa464ac58953041bf9f05df5f18abe96173eb90d200f9e83251c386f43e7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Iter.Variant4d67bf5448cf85e8172633f8abd39f21b8d5a92527e7b1aa14bf4d95fa01b15a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4d67bf5448cf85e8172633f8abd39f21b8d5a92527e7b1aa14bf4d95fa01b15a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Iter.Variant4d67bf5448cf85e8172633f8abd39f21b8d5a92527e7b1aa14bf4d95fa01b15a","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"4d67bf5448cf85e8172633f8abd39f21b8d5a92527e7b1aa14bf4d95fa01b15a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Data/TreeSet/Raw/Iterator.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Wojciech Różowski
-/
module

prelude
public import Std.Data.TreeSet.Raw.Basic
public import Std.Data.TreeMap.Raw.Iterator
public import Std.Data.DTreeMap.Raw.Lemmas
import Init.Data.Iterators.Lemmas.Combinators.FilterMap

/-!
# Iterators on `DTreeMap`
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Iter.Variant4d67bf5448cf85e8172633f8abd39f21b8d5a92527e7b1aa14bf4d95fa01b15a

namespace Std.TreeSet.Raw
open Std.Iterators

/--
Returns a finite iterator over the entries of a tree set.
The iterator yields the elements of the set in order and then terminates.

**Termination properties:**

* `Finite` instance: always
* `Productive` instance: always
-/
@[inline]
public def iter {α : Type u}
    {cmp : α → α → Ordering} (m : Raw α cmp) :=
  (m.inner.iter.map fun e => e.1 : Iter α)

@[simp]
public theorem toList_iter {cmp : α → α → Ordering} (m : Raw α cmp) :
    m.iter.toList = m.toList := by
  rw [iter, Iter.toList_map, TreeMap.Raw.toList_iter, TreeMap.Raw.toList]
  rw [TreeSet.Raw.toList]
  rw [Std.DTreeMap.Internal.Impl.foldr_eq_foldr_toList]
  simp only [DTreeMap.Raw.Const.map_fst_toList_eq_keys, List.empty_eq, List.foldr_cons_eq_append,
    List.append_nil]
  rw [DTreeMap.Raw.keys, ← Std.DTreeMap.Internal.Impl.map_fst_toList_eq_keys]

end Std.TreeSet.Raw
```
