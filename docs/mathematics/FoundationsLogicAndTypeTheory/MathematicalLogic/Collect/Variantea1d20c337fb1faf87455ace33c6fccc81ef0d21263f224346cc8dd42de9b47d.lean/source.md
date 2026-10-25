# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Collect.Variantea1d20c337fb1faf87455ace33c6fccc81ef0d21263f224346cc8dd42de9b47d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9cb2cff237e2f1b48986f2350c748f242620045b` · SHA-256 `645b00701389689102d583cb81499958deac2006563f115520def1c3bb250b3e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.IterEquivToListRevEq.Variant65909e37703eca0ee3e7ca97f79667ac2e49c9c3aa8ad1e67776b7d6f79ec6ab","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"65909e37703eca0ee3e7ca97f79667ac2e49c9c3aa8ad1e67776b7d6f79ec6ab","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.IterEquivToListRevEq.Variant65909e37703eca0ee3e7ca97f79667ac2e49c9c3aa8ad1e67776b7d6f79ec6ab","mathematical_subject":"Logic.Foundations","original_sha256":"65909e37703eca0ee3e7ca97f79667ac2e49c9c3aa8ad1e67776b7d6f79ec6ab","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Data/Iterators/Lemmas/Consumers/Collect.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
public import Init.Data.Iterators.Lemmas.Consumers.Collect
public import Std.Data.Iterators.Lemmas.Consumers.Monadic.Collect


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.IterEquivToListRevEq.Variant65909e37703eca0ee3e7ca97f79667ac2e49c9c3aa8ad1e67776b7d6f79ec6ab

@[expose] public section

namespace Std
open Std.Iterators

theorem Iter.Equiv.toListRev_eq
    [Iterator α₁ Id β] [Iterator α₂ Id β] [Finite α₁ Id] [Finite α₂ Id]
    {ita : Iter (α := α₁) β} {itb : Iter (α := α₂) β} (h : Iter.Equiv ita itb) :
    ita.toListRev = itb.toListRev := by
  simp [Iter.toListRev_eq_toListRev_toIterM, h.toIterM.toListRev_eq]

theorem Iter.Equiv.toList_eq
    [Iterator α₁ Id β] [Iterator α₂ Id β] [Finite α₁ Id] [Finite α₂ Id]
    {ita : Iter (α := α₁) β} {itb : Iter (α := α₂) β} (h : Iter.Equiv ita itb) :
    ita.toList = itb.toList := by
  simp only [← Iter.reverse_toListRev, toListRev_eq h]

theorem Iter.Equiv.toArray_eq
    [Iterator α₁ Id β] [Iterator α₂ Id β] [Finite α₁ Id] [Finite α₂ Id]
    {ita : Iter (α := α₁) β} {itb : Iter (α := α₂) β} (h : Iter.Equiv ita itb) :
    ita.toArray = itb.toArray := by
  simp only [← Iter.toArray_toList, toList_eq h]

end Std
```
