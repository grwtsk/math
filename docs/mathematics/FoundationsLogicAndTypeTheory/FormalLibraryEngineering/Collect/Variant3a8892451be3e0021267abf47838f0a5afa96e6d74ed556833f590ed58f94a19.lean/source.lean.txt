-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IterToArray.Variant81a4e5da28254d0e39c095c32e44023d9b6d38959fda003ac7f5fbb06b7fc77d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"81a4e5da28254d0e39c095c32e44023d9b6d38959fda003ac7f5fbb06b7fc77d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.IterToArray.Variant81a4e5da28254d0e39c095c32e44023d9b6d38959fda003ac7f5fbb06b7fc77d","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"81a4e5da28254d0e39c095c32e44023d9b6d38959fda003ac7f5fbb06b7fc77d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/Iterators/Consumers/Collect.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
public import Init.Data.Iterators.Consumers.Partial
public import Init.Data.Iterators.Consumers.Total
public import Init.Data.Iterators.Consumers.Monadic.Collect


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IterToArray.Variant81a4e5da28254d0e39c095c32e44023d9b6d38959fda003ac7f5fbb06b7fc77d

@[expose] public section

/-!
# Collectors

This module provides consumers that collect the values emitted by an iterator in a data structure.
Concretely, the following operations are provided:

* `Iter.toList`, collecting the values in a list
* `Iter.toListRev`, collecting the values in a list in reverse order but more efficiently
* `Iter.toArray`, collecting the values in an array
-/

namespace Std
open Std.Iterators

/--
Traverses the given iterator and stores the emitted values in an array.

If the iterator is not finite, this function might run forever. The variant
`it.ensureTermination.toArray` always terminates after finitely many steps.
-/
@[cbv_opaque, always_inline, inline]
def Iter.toArray {α : Type w} {β : Type w}
    [Iterator α Id β] (it : Iter (α := α) β) : Array β :=
  it.toIterM.toArray.run

/--
Traverses the given iterator and stores the emitted values in an array.

This function is deprecated. Instead of `it.allowNontermination.toArray`, use `it.toArray`.
-/
@[always_inline, inline, deprecated Iter.toArray (since := "2025-12-04")]
def Iter.Partial.toArray {α : Type w} {β : Type w}
    [Iterator α Id β] (it : Iter.Partial (α := α) β) : Array β :=
  it.it.toArray

/--
Traverses the given iterator and stores the emitted values in an array.

This variant terminates after finitely many steps and requires a proof that the iterator is
finite. If such a proof is not available, consider using `Iter.toArray`.
-/
@[always_inline, inline]
def Iter.Total.toArray {α : Type w} {β : Type w}
    [Iterator α Id β] [Finite α Id] (it : Iter.Total (α := α) β) :
    Array β :=
  it.it.toArray

/--
Traverses the given iterator and stores the emitted values in reverse order in a list. Because
lists are prepend-only, this `toListRev` is usually more efficient that `toList`.

If the iterator is not finite, this function might run forever. The variant
`it.ensureTermination.toListRev` always terminates after finitely many steps.
-/
@[always_inline, inline, cbv_opaque]
def Iter.toListRev {α : Type w} {β : Type w}
    [Iterator α Id β] (it : Iter (α := α) β) : List β :=
  it.toIterM.toListRev.run

/--
Traverses the given iterator and stores the emitted values in reverse order in a list. Because
lists are prepend-only, this `toListRev` is usually more efficient that `toList`.

This function is deprecated. Instead of `it.allowNontermination.toListRev`, use `it.toListRev`.
-/
@[always_inline, inline, deprecated Iter.toListRev (since := "2025-12-04")]
def Iter.Partial.toListRev {α : Type w} {β : Type w}
    [Iterator α Id β] (it : Iter.Partial (α := α) β) : List β :=
  it.it.toListRev

/--
Traverses the given iterator and stores the emitted values in reverse order in a list. Because
lists are prepend-only, this `toListRev` is usually more efficient that `toList`.

This variant terminates after finitely many steps and requires a proof that the iterator is
finite. If such a proof is not available, consider using `Iter.toListRev`.
-/
@[always_inline, inline]
def Iter.Total.toListRev {α : Type w} {β : Type w}
    [Iterator α Id β] [Finite α Id] (it : Iter.Total (α := α) β) : List β :=
  it.it.toListRev

/--
Traverses the given iterator and stores the emitted values in a list. Because
lists are prepend-only, `toListRev` is usually more efficient that `toList`.

If the iterator is not finite, this function might run forever. The variant
`it.ensureTermination.toList` always terminates after finitely many steps.
-/
@[cbv_opaque, always_inline, inline]
def Iter.toList {α : Type w} {β : Type w}
    [Iterator α Id β] (it : Iter (α := α) β) : List β :=
  it.toIterM.toList.run

/--
Traverses the given iterator and stores the emitted values in a list. Because
lists are prepend-only, `toListRev` is usually more efficient that `toList`.

This function is deprecated. Instead of `it.allowNontermination.toList`, use `it.toList`.
-/
@[always_inline, deprecated Iter.toList (since := "2025-12-04")]
def Iter.Partial.toList {α : Type w} {β : Type w}
    [Iterator α Id β] (it : Iter.Partial (α := α) β) : List β :=
  it.it.toList

/--
Traverses the given iterator and stores the emitted values in a list. Because
lists are prepend-only, `toListRev` is usually more efficient that `toList`.

This variant terminates after finitely many steps and requires a proof that the iterator is
finite. If such a proof is not available, consider using `Iter.toList`.
-/
@[always_inline, inline]
def Iter.Total.toList {α : Type w} {β : Type w}
    [Iterator α Id β] [Finite α Id] (it : Iter.Total (α := α) β) :
    List β :=
  it.it.toList

end Std
