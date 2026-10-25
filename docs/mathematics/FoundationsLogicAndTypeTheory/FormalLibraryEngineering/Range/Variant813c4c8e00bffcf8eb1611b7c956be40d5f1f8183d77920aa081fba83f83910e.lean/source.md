# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Range.Variant813c4c8e00bffcf8eb1611b7c956be40d5f1f8183d77920aa081fba83f83910e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `add5da558f7b004218255f8769984c02da1e672b` · SHA-256 `2322a13ed731a4b97dd11bf2116113627aa67038c0be0a2f1fd4d583073cf14c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RccToListIter.Variant2047f135bf785e19f07637d52d401f95c30ecedc22c14db0052cd44f4738b9c9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2047f135bf785e19f07637d52d401f95c30ecedc22c14db0052cd44f4738b9c9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.RccToListIter.Variant2047f135bf785e19f07637d52d401f95c30ecedc22c14db0052cd44f4738b9c9","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"2047f135bf785e19f07637d52d401f95c30ecedc22c14db0052cd44f4738b9c9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Data/Iterators/Lemmas/Producers/Range.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
public import Std.Data.Iterators.Producers.Range
import Init.Data.Range.Polymorphic.Lemmas
public import Init.Data.Iterators.Consumers.Loop
import Init.Data.Iterators.Lemmas.Consumers.Loop


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RccToListIter.Variant2047f135bf785e19f07637d52d401f95c30ecedc22c14db0052cd44f4738b9c9

@[expose] public section

namespace Std
open Std.PRange Std.Iterators

@[simp]
theorem Rcc.toList_iter [LE α] [DecidableLE α] [UpwardEnumerable α]
    [LawfulUpwardEnumerableLE α] [Rxc.IsAlwaysFinite α] [LawfulUpwardEnumerable α] {r : Rcc α} :
    r.iter.toList = r.toList := by
 rfl

@[deprecated Rcc.toList_iter (since := "2025-11-13")]
theorem Rcc.toList_iter_eq_toList [LE α] [DecidableLE α] [UpwardEnumerable α]
    [LawfulUpwardEnumerableLE α] [Rxc.IsAlwaysFinite α] [LawfulUpwardEnumerable α] {r : Rcc α} :
    r.iter.toList = r.toList := by
 rfl

@[simp]
theorem Rcc.toArray_iter [LE α] [DecidableLE α] [UpwardEnumerable α]
    [LawfulUpwardEnumerableLE α] [Rxc.IsAlwaysFinite α] [LawfulUpwardEnumerable α] {r : Rcc α} :
    r.iter.toArray = r.toArray := by
 rfl

@[deprecated Rcc.toArray_iter (since := "2025-11-13")]
theorem Rcc.toArray_iter_eq_toArray [LE α] [DecidableLE α] [UpwardEnumerable α]
    [LawfulUpwardEnumerableLE α] [Rxc.IsAlwaysFinite α] [LawfulUpwardEnumerable α] {r : Rcc α} :
    r.iter.toArray = r.toArray := by
 rfl

@[simp]
theorem Rcc.length_iter [LE α] [DecidableLE α] [UpwardEnumerable α]
    [LawfulUpwardEnumerableLE α] [Rxc.IsAlwaysFinite α] [LawfulUpwardEnumerable α]
    [Rxc.HasSize α] [Rxc.LawfulHasSize α] {r : Rcc α} :
    r.iter.length = r.size := by
  rw [← size_toArray, ← toArray_iter, Iter.size_toArray_eq_length]

set_option linter.defProp false in
@[deprecated Rcc.length_iter (since := "2026-01-28")]
def Rcc.count_iter := @Rcc.length_iter


@[simp]
theorem Rco.toList_iter [LT α] [DecidableLT α] [UpwardEnumerable α]
    [LawfulUpwardEnumerableLT α] [Rxo.IsAlwaysFinite α] [LawfulUpwardEnumerable α] {r : Rco α} :
    r.iter.toList = r.toList := by
 rfl

@[deprecated Rco.toList_iter (since := "2025-11-13")]
theorem Rco.toList_iter_eq_toList [LT α] [DecidableLT α] [UpwardEnumerable α]
    [LawfulUpwardEnumerableLT α] [Rxo.IsAlwaysFinite α] [LawfulUpwardEnumerable α] {r : Rco α} :
    r.iter.toList = r.toList := by
 rfl

@[simp]
theorem Rco.toArray_iter [LT α] [DecidableLT α] [UpwardEnumerable α]
    [LawfulUpwardEnumerableLT α] [Rxo.IsAlwaysFinite α] [LawfulUpwardEnumerable α] {r : Rco α} :
    r.iter.toArray = r.toArray := by
 rfl

@[deprecated Rco.toArray_iter (since := "2025-11-13")]
theorem Rco.toArray_iter_eq_toArray [LT α] [DecidableLT α] [UpwardEnumerable α]
    [LawfulUpwardEnumerableLT α] [Rxo.IsAlwaysFinite α] [LawfulUpwardEnumerable α] {r : Rco α} :
    r.iter.toArray = r.toArray := by
 rfl

@[simp]
theorem Rco.length_iter [LT α] [DecidableLT α] [UpwardEnumerable α]
    [LawfulUpwardEnumerableLT α] [Rxo.IsAlwaysFinite α] [LawfulUpwardEnumerable α]
    [Rxo.HasSize α] [Rxo.LawfulHasSize α]
    {r : Rco α} :
    r.iter.length = r.size := by
  rw [← size_toArray, ← toArray_iter, Iter.size_toArray_eq_length]

set_option linter.defProp false in
@[deprecated Rco.length_iter (since := "2026-01-28")]
def Rco.count_iter := @Rco.length_iter

@[simp]
theorem Rci.toList_iter [UpwardEnumerable α]
    [Rxi.IsAlwaysFinite α] [LawfulUpwardEnumerable α] {r : Rci α} :
    r.iter.toList = r.toList := by
 rfl

@[deprecated Rci.toList_iter (since := "2025-11-13")]
theorem Rci.toList_iter_eq_toList [UpwardEnumerable α]
    [Rxi.IsAlwaysFinite α] [LawfulUpwardEnumerable α] {r : Rci α} :
    r.iter.toList = r.toList := by
 rfl

@[simp]
theorem Rci.toArray_iter [UpwardEnumerable α]
    [Rxi.IsAlwaysFinite α] [LawfulUpwardEnumerable α] {r : Rci α} :
    r.iter.toArray = r.toArray := by
 rfl

@[simp]
theorem Rci.toArray_iter_eq_toArray [UpwardEnumerable α]
    [Rxi.IsAlwaysFinite α] [LawfulUpwardEnumerable α] {r : Rci α} :
    r.iter.toArray = r.toArray := by
 rfl

@[simp]
theorem Rci.length_iter [UpwardEnumerable α]
    [Rxi.IsAlwaysFinite α] [LawfulUpwardEnumerable α]
    [Rxi.HasSize α] [Rxi.LawfulHasSize α]
    {r : Rci α} :
    r.iter.length = r.size := by
  rw [← size_toArray, ← toArray_iter_eq_toArray, Iter.size_toArray_eq_length]

set_option linter.defProp false in
@[deprecated Rci.length_iter (since := "2026-01-28")]
def Rci.count_iter := @Rci.length_iter

@[simp]
theorem Roc.toList_iter [LE α] [DecidableLE α] [UpwardEnumerable α]
    [LawfulUpwardEnumerableLE α] [Rxc.IsAlwaysFinite α] [LawfulUpwardEnumerable α] {r : Roc α} :
    r.iter.toList = r.toList := by
 rfl

@[deprecated Roc.toList_iter (since := "2025-11-13")]
theorem Roc.toList_iter_eq_toList [LE α] [DecidableLE α] [UpwardEnumerable α]
    [LawfulUpwardEnumerableLE α] [Rxc.IsAlwaysFinite α] [LawfulUpwardEnumerable α] {r : Roc α} :
    r.iter.toList = r.toList := by
 rfl

@[simp]
theorem Roc.toArray_iter [LE α] [DecidableLE α] [UpwardEnumerable α]
    [LawfulUpwardEnumerableLE α] [Rxc.IsAlwaysFinite α] [LawfulUpwardEnumerable α] {r : Roc α} :
    r.iter.toArray = r.toArray := by
 rfl

@[simp]
theorem Roc.toArray_iter_eq_toArray [LE α] [DecidableLE α] [UpwardEnumerable α]
    [LawfulUpwardEnumerableLE α] [Rxc.IsAlwaysFinite α] [LawfulUpwardEnumerable α] {r : Roc α} :
    r.iter.toArray = r.toArray := by
 rfl

@[simp]
theorem Roc.length_iter [LE α] [DecidableLE α] [UpwardEnumerable α]
    [LawfulUpwardEnumerableLE α] [Rxc.IsAlwaysFinite α] [LawfulUpwardEnumerable α]
    [Rxc.HasSize α] [Rxc.LawfulHasSize α]
    {r : Roc α} :
    r.iter.length = r.size := by
  rw [← size_toArray, ← toArray_iter_eq_toArray, Iter.size_toArray_eq_length]

set_option linter.defProp false in
@[deprecated Roc.length_iter (since := "2026-01-28")]
def Roc.count_iter := @Roc.length_iter

@[simp]
theorem Roo.toList_iter [LT α] [DecidableLT α] [UpwardEnumerable α]
    [LawfulUpwardEnumerableLT α] [Rxo.IsAlwaysFinite α] [LawfulUpwardEnumerable α] {r : Roo α} :
    r.iter.toList = r.toList := by
 rfl

@[deprecated Roo.toList_iter (since := "2025-11-13")]
theorem Roo.toList_iter_eq_toList [LT α] [DecidableLT α] [UpwardEnumerable α]
    [LawfulUpwardEnumerableLT α] [Rxo.IsAlwaysFinite α] [LawfulUpwardEnumerable α] {r : Roo α} :
    r.iter.toList = r.toList := by
 rfl

@[simp]
theorem Roo.toArray_iter [LT α] [DecidableLT α] [UpwardEnumerable α]
    [LawfulUpwardEnumerableLT α] [Rxo.IsAlwaysFinite α] [LawfulUpwardEnumerable α] {r : Roo α} :
    r.iter.toArray = r.toArray := by
 rfl

@[simp]
theorem Roo.toArray_iter_eq_toArray [LT α] [DecidableLT α] [UpwardEnumerable α]
    [LawfulUpwardEnumerableLT α] [Rxo.IsAlwaysFinite α] [LawfulUpwardEnumerable α] {r : Roo α} :
    r.iter.toArray = r.toArray := by
 rfl

@[simp]
theorem Roo.length_iter [LT α] [DecidableLT α] [UpwardEnumerable α]
    [LawfulUpwardEnumerableLT α] [Rxo.IsAlwaysFinite α] [LawfulUpwardEnumerable α]
    [Rxo.HasSize α] [Rxo.LawfulHasSize α]
    {r : Roo α} :
    r.iter.length = r.size := by
  rw [← size_toArray, ← toArray_iter_eq_toArray, Iter.size_toArray_eq_length]

set_option linter.defProp false in
@[deprecated Roo.length_iter (since := "2026-01-28")]
def Roo.count_iter := @Roo.length_iter

@[simp]
theorem Roi.toList_iter [UpwardEnumerable α]
    [Rxi.IsAlwaysFinite α] [LawfulUpwardEnumerable α] {r : Roi α} :
    r.iter.toList = r.toList := by
 rfl

@[deprecated Roi.toList_iter (since := "2025-11-13")]
theorem Roi.toList_iter_eq_toList [UpwardEnumerable α]
    [Rxi.IsAlwaysFinite α] [LawfulUpwardEnumerable α] {r : Roi α} :
    r.iter.toList = r.toList := by
 rfl

@[simp]
theorem Roi.toArray_iter [UpwardEnumerable α]
    [Rxi.IsAlwaysFinite α] [LawfulUpwardEnumerable α] {r : Roi α} :
    r.iter.toArray = r.toArray := by
 rfl

@[deprecated Roi.toArray_iter (since := "2025-11-13")]
theorem Roi.toArray_iter_eq_toArray [UpwardEnumerable α]
    [Rxi.IsAlwaysFinite α] [LawfulUpwardEnumerable α] {r : Roi α} :
    r.iter.toArray = r.toArray := by
 rfl

@[simp]
theorem Roi.length_iter [UpwardEnumerable α]
    [Rxi.IsAlwaysFinite α] [LawfulUpwardEnumerable α]
    [Rxi.HasSize α] [Rxi.LawfulHasSize α]
    {r : Roi α} :
    r.iter.length = r.size := by
  rw [← size_toArray, ← toArray_iter, Iter.size_toArray_eq_length]

set_option linter.defProp false in
@[deprecated Roi.length_iter (since := "2026-01-28")]
def Roi.count_iter := @Roi.length_iter

@[simp]
theorem Ric.toList_iter [Least? α] [LE α] [DecidableLE α] [UpwardEnumerable α]
    [LawfulUpwardEnumerableLE α] [Rxc.IsAlwaysFinite α] [LawfulUpwardEnumerable α] {r : Ric α} :
    r.iter.toList = r.toList := by
 rfl

@[deprecated Ric.toList_iter (since := "2025-11-13")]
theorem Ric.toList_iter_eq_toList [Least? α] [LE α] [DecidableLE α] [UpwardEnumerable α]
    [LawfulUpwardEnumerableLE α] [Rxc.IsAlwaysFinite α] [LawfulUpwardEnumerable α] {r : Ric α} :
    r.iter.toList = r.toList := by
 rfl

@[simp]
theorem Ric.toArray_iter [Least? α] [LE α] [DecidableLE α] [UpwardEnumerable α]
    [LawfulUpwardEnumerableLE α] [Rxc.IsAlwaysFinite α] [LawfulUpwardEnumerable α] {r : Ric α} :
    r.iter.toArray = r.toArray := by
 rfl

@[deprecated Ric.toArray_iter (since := "2025-11-13")]
theorem Ric.toArray_iter_eq_toArray [Least? α] [LE α] [DecidableLE α] [UpwardEnumerable α]
    [LawfulUpwardEnumerableLE α] [Rxc.IsAlwaysFinite α] [LawfulUpwardEnumerable α] {r : Ric α} :
    r.iter.toArray = r.toArray := by
 rfl

@[simp]
theorem Ric.length_iter [Least? α] [LE α] [DecidableLE α] [UpwardEnumerable α]
    [LawfulUpwardEnumerableLE α] [Rxc.IsAlwaysFinite α] [LawfulUpwardEnumerable α]
    [Rxc.HasSize α] [Rxc.LawfulHasSize α]
    {r : Ric α} :
    r.iter.length = r.size := by
  rw [← size_toArray, ← toArray_iter, Iter.size_toArray_eq_length]

set_option linter.defProp false in
@[deprecated Ric.length_iter (since := "2026-01-28")]
def Ric.count_iter := @Ric.length_iter

@[simp]
theorem Rio.toList_iter [Least? α] [LT α] [DecidableLT α] [UpwardEnumerable α]
    [LawfulUpwardEnumerableLT α] [Rxo.IsAlwaysFinite α] [LawfulUpwardEnumerable α] {r : Rio α} :
    r.iter.toList = r.toList := by
 rfl

@[deprecated Rio.toList_iter (since := "2025-11-13")]
theorem Rio.toList_iter_eq_toList [Least? α] [LT α] [DecidableLT α] [UpwardEnumerable α]
    [LawfulUpwardEnumerableLT α] [Rxo.IsAlwaysFinite α] [LawfulUpwardEnumerable α] {r : Rio α} :
    r.iter.toList = r.toList := by
 rfl

@[simp]
theorem Rio.toArray_iter [Least? α] [LT α] [DecidableLT α] [UpwardEnumerable α]
    [LawfulUpwardEnumerableLT α] [Rxo.IsAlwaysFinite α] [LawfulUpwardEnumerable α] {r : Rio α} :
    r.iter.toArray = r.toArray := by
 rfl

@[deprecated Rio.toArray_iter (since := "2025-11-13")]
theorem Rio.toArray_iter_eq_toArray [Least? α] [LT α] [DecidableLT α] [UpwardEnumerable α]
    [LawfulUpwardEnumerableLT α] [Rxo.IsAlwaysFinite α] [LawfulUpwardEnumerable α] {r : Rio α} :
    r.iter.toArray = r.toArray := by
 rfl

@[simp]
theorem Rio.length_iter [Least? α] [LT α] [DecidableLT α] [UpwardEnumerable α]
    [LawfulUpwardEnumerableLT α] [Rxo.IsAlwaysFinite α] [LawfulUpwardEnumerable α]
    [Rxo.HasSize α] [Rxo.LawfulHasSize α]
    {r : Rio α} :
    r.iter.length = r.size := by
  rw [← size_toArray, ← toArray_iter, Iter.size_toArray_eq_length]

set_option linter.defProp false in
@[deprecated Rio.length_iter (since := "2026-01-28")]
def Rio.count_iter := @Rio.length_iter

@[simp]
theorem Rii.toList_iter [Least? α] [UpwardEnumerable α]
    [Rxi.IsAlwaysFinite α] [LawfulUpwardEnumerable α] {r : Rii α} :
    r.iter.toList = r.toList := by
 rfl

@[deprecated Rii.toList_iter (since := "2025-11-13")]
theorem Rii.toList_iter_eq_toList [Least? α] [UpwardEnumerable α]
    [Rxi.IsAlwaysFinite α] [LawfulUpwardEnumerable α] {r : Rii α} :
    r.iter.toList = r.toList := by
 rfl

@[simp]
theorem Rii.toArray_iter [Least? α] [UpwardEnumerable α]
    [Rxi.IsAlwaysFinite α] [LawfulUpwardEnumerable α] {r : Rii α} :
    r.iter.toArray = r.toArray := by
 rfl

@[deprecated Rii.toArray_iter (since := "2025-11-13")]
theorem Rii.toArray_iter_eq_toArray [Least? α] [UpwardEnumerable α]
    [Rxi.IsAlwaysFinite α] [LawfulUpwardEnumerable α] {r : Rii α} :
    r.iter.toArray = r.toArray := by
 rfl

@[simp]
theorem Rii.length_iter [Least? α] [UpwardEnumerable α]
    [Rxi.IsAlwaysFinite α] [LawfulUpwardEnumerable α]
    [Rxi.HasSize α] [Rxi.LawfulHasSize α]
    {r : Rii α} :
    r.iter.length = r.size := by
  rw [← size_toArray, ← toArray_iter, Iter.size_toArray_eq_length]

set_option linter.defProp false in
@[deprecated Rii.length_iter (since := "2026-01-28")]
def Rii.count_iter := @Rii.length_iter

end Std
```
