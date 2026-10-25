# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Iterator.Variant6799a721c9cb4c30605b3f164f309e11f65fbffdb8844e08fddbfee0cb5cd6b7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5f2232b7149b998019d96fbb1c1b339bf2fc3555` · SHA-256 `b73253229f551bbd780c663285fb9260d87e9bb3637923912de4290caca8cf17`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Iter.Variante878bdde3f051a3389d07325777bc385ab9292030d4599fabf33587a08a922cd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e878bdde3f051a3389d07325777bc385ab9292030d4599fabf33587a08a922cd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Iter.Variante878bdde3f051a3389d07325777bc385ab9292030d4599fabf33587a08a922cd","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"e878bdde3f051a3389d07325777bc385ab9292030d4599fabf33587a08a922cd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Data/TreeSet/Iterator.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Wojciech Różowski
-/
module

prelude
public import Std.Data.TreeSet.Basic
public import Std.Data.TreeMap.Iterator
public import Std.Data.DTreeMap.Lemmas
import Init.Data.Iterators.Lemmas.Combinators.FilterMap

/-!
# Iterators on `DTreeMap`
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Iter.Variante878bdde3f051a3389d07325777bc385ab9292030d4599fabf33587a08a922cd

namespace Std.TreeSet
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
    {cmp : α → α → Ordering} (m : TreeSet α cmp) :=
  (m.inner.iter.map fun e => e.1 : Iter α)

@[simp]
public theorem toList_iter {cmp : α → α → Ordering} (m : TreeSet α cmp) :
    m.iter.toList = m.toList := by
  rw [iter, Iter.toList_map, TreeMap.toList_iter, toList, TreeMap.toList, TreeMap.keys, Std.DTreeMap.Const.map_fst_toList_eq_keys]

end Std.TreeSet
```
