# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Repeat.Variant9a6be96224832d2593cd28913ebf4c7ab7ba3b3e49bbb2a14db2ccbc80b67579

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a62f68d71ee2fadb3e743dae0c7d4840ba5d3b6f` · SHA-256 `cce1f04068b23e5ef7470210e4e06b1b091521873734351423565ceaea37f62c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IterStepRepeat.Variante0ff18ac293dfd1f8b814ea4e2254e14a4ba11e482345fb173ab82edb9a01d84","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e0ff18ac293dfd1f8b814ea4e2254e14a4ba11e482345fb173ab82edb9a01d84","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.IterStepRepeat.Variante0ff18ac293dfd1f8b814ea4e2254e14a4ba11e482345fb173ab82edb9a01d84","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"e0ff18ac293dfd1f8b814ea4e2254e14a4ba11e482345fb173ab82edb9a01d84","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Data/Iterators/Lemmas/Producers/Repeat.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
public import Std.Data.Iterators.Producers.Repeat
public import Init.Data.Iterators.Lemmas.Combinators.Take
import Init.Data.Iterators.Lemmas.Consumers.Access
import Init.Data.Iterators.Lemmas.Consumers.Collect
import Init.Data.Option.Lemmas


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IterStepRepeat.Variante0ff18ac293dfd1f8b814ea4e2254e14a4ba11e482345fb173ab82edb9a01d84

@[expose] public section

namespace Std
open Std.Iterators

variable {α : Type w} {f : α → α} {init : α}

theorem Iter.step_repeat :
    (Iter.repeat f init).step = .yield (Iter.repeat f (f init)) init ⟨rfl, rfl⟩ := by
  simp [Iter.«repeat», Iter.step, Iter.toIterM, IterM.step, Iterator.step, IterM.toIter]

theorem Iter.atIdxSlow?_zero_repeat :
    (Iter.repeat f init).atIdxSlow? 0 = some init := by
  rw [atIdxSlow?_eq_match, step_repeat]

theorem Iter.atIdxSlow?_succ_repeat {k : Nat} :
    (Iter.repeat f init).atIdxSlow? (k + 1) = (Iter.repeat f (f init)).atIdxSlow? k := by
  rw [atIdxSlow?_eq_match, step_repeat]

theorem Iter.atIdxSlow?_succ_repeat_eq_map {k : Nat} :
    (Iter.repeat f init).atIdxSlow? (k + 1) = f <$> ((Iter.repeat f init).atIdxSlow? k) := by
  rw [atIdxSlow?_eq_match, step_repeat]
  simp only
  induction k generalizing init
  · simp [atIdxSlow?_zero_repeat, Functor.map]
  · simp [*, atIdxSlow?_succ_repeat]

@[simp]
theorem Iter.atIdxSlow?_repeat {n : Nat} :
    (Iter.repeat f init).atIdxSlow? n = some (Nat.repeat f n init) := by
  induction n generalizing init
  · apply atIdxSlow?_zero_repeat
  · rename_i _ ih
    simp [atIdxSlow?_succ_repeat_eq_map, ih, Nat.repeat]

theorem Iter.isSome_atIdxSlow?_repeat {k : Nat} :
    ((Iter.repeat f init).atIdxSlow? k).isSome := by
  induction k generalizing init <;> simp [*]

@[simp]
theorem Iter.toList_take_repeat_succ {k : Nat} :
    ((Iter.repeat f init).take (k + 1)).toList = init :: ((Iter.repeat f (f init)).take k).toList := by
  rw [toList_eq_match_step, step_take, step_repeat]

end Std
```
