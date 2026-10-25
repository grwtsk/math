# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Range.Variant1ffb6508b1bb2ee094dc3e62aa5e829a6ddfb2c7060e98c9ed7e0d8b87cfa34c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `88785730cd6f1308529ad2d1b118cffb99ca72d4` · SHA-256 `d625d34ce313afd5541bec184cec4fe3cf1031aa699e8ec4c656d7630a52717c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.StdRccIter.Variant0ac375a03f1ec43af1cd20286895520d4ac6f945bd62dcb0eeee17cec5c3e99a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0ac375a03f1ec43af1cd20286895520d4ac6f945bd62dcb0eeee17cec5c3e99a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.StdRccIter.Variant0ac375a03f1ec43af1cd20286895520d4ac6f945bd62dcb0eeee17cec5c3e99a","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"0ac375a03f1ec43af1cd20286895520d4ac6f945bd62dcb0eeee17cec5c3e99a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Data/Iterators/Producers/Range.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
public import Init.Data.Range.Polymorphic.Iterators


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.StdRccIter.Variant0ac375a03f1ec43af1cd20286895520d4ac6f945bd62dcb0eeee17cec5c3e99a

set_option doc.verso true

@[expose] public section

/-!
# Range iterator

This module provides iterators over ranges {name}`Std.Rcc` (and {name}`Std.Rco`, ...) via
{name (scope := "Std.Data.Iterators.Producers.Range")}`Std.Rcc.iter` (and
{name (scope := "Std.Data.Iterators.Producers.Range")}`Std.Rco.iter`, ...).
-/

open Std.PRange

/--
Returns an iterator over the given range. This iterator will emit the elements of the range
in increasing order.
-/
@[always_inline, inline]
def Std.Rcc.iter (r : Rcc α) : Iter (α := Rxc.Iterator α) α :=
  ⟨⟨some r.lower, r.upper⟩⟩

/--
Returns an iterator over the given range. This iterator will emit the elements of the range
in increasing order.
-/
@[always_inline, inline]
def Std.Rco.iter (r : Rco α) : Iter (α := Rxo.Iterator α) α :=
  ⟨⟨some r.lower, r.upper⟩⟩

/--
Returns an iterator over the given range. This iterator will emit the elements of the range
in increasing order.
-/
@[always_inline, inline]
def Std.Rci.iter (r : Rci α) : Iter (α := Rxi.Iterator α) α :=
  ⟨⟨some r.lower⟩⟩

/--
Returns an iterator over the given range. This iterator will emit the elements of the range
in increasing order.
-/
@[always_inline, inline]
def Std.Roc.iter [UpwardEnumerable α] (r : Roc α) : Iter (α := Rxc.Iterator α) α :=
  ⟨⟨UpwardEnumerable.succ? r.lower, r.upper⟩⟩

/--
Returns an iterator over the given range. This iterator will emit the elements of the range
in increasing order.
-/
@[always_inline, inline]
def Std.Roo.iter [UpwardEnumerable α] (r : Roo α) : Iter (α := Rxo.Iterator α) α :=
  ⟨⟨UpwardEnumerable.succ? r.lower, r.upper⟩⟩

/--
Returns an iterator over the given range. This iterator will emit the elements of the range
in increasing order.
-/
@[always_inline, inline]
def Std.Roi.iter [UpwardEnumerable α] (r : Roi α) : Iter (α := Rxi.Iterator α) α :=
  ⟨⟨UpwardEnumerable.succ? r.lower⟩⟩

/--
Returns an iterator over the given range. This iterator will emit the elements of the range
in increasing order.
-/
@[always_inline, inline]
def Std.Ric.iter [Least? α] (r : Ric α) : Iter (α := Rxc.Iterator α) α :=
  ⟨⟨Least?.least?, r.upper⟩⟩

/--
Returns an iterator over the given range. This iterator will emit the elements of the range
in increasing order.
-/
@[always_inline, inline]
def Std.Rio.iter [Least? α] (r : Rio α) : Iter (α := Rxo.Iterator α) α :=
  ⟨⟨Least?.least?, r.upper⟩⟩

/--
Returns an iterator over the given range. This iterator will emit the elements of the range
in increasing order.
-/
@[always_inline, inline]
def Std.Rii.iter [Least? α] (_ : Rii α) : Iter (α := Rxi.Iterator α) α :=
  ⟨⟨Least?.least?⟩⟩
```
