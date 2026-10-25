# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Operations.Variant2026dc492e04a894f71ac2dc3d4a5a47b8124c20cd3065ee94f1873144a76407

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a38d425805b01c87e964f5caf406ed7dc5ffd3bb` · SHA-256 `e5ff22591e7a072082c8fb6cc2b0c4e62c23cba8d08d37114a78fbd3e5ecf978`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SliceSize.Variantb6627336544c7590fdd53027e40c3565eb21f181bf89757fbddefab60762ecf5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b6627336544c7590fdd53027e40c3565eb21f181bf89757fbddefab60762ecf5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.SliceSize.Variantb6627336544c7590fdd53027e40c3565eb21f181bf89757fbddefab60762ecf5","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"b6627336544c7590fdd53027e40c3565eb21f181bf89757fbddefab60762ecf5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/Slice/Operations.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
public import Init.Data.Slice.Basic
public import Init.Data.Iterators.ToIterator
public import Init.Data.Iterators.Consumers.Loop
import Init.Data.Iterators.Consumers.Collect


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SliceSize.Variantb6627336544c7590fdd53027e40c3565eb21f181bf89757fbddefab60762ecf5

public section

open Std.Iterators

namespace Std.Slice

instance [ToIterator γ m α β] : ToIterator (Slice γ) m α β where
  iterMInternal x := ToIterator.iterMInternal x.internalRepresentation

/--
Internal function to obtain an iterator from a slice. Users should import `Std.Data.Iterators`
and use `Std.Slice.iter` instead.
-/
@[always_inline, inline]
def Internal.iter [ToIterator (Slice γ) Id α β] (s : Slice γ) :=
  ToIterator.iter s

/--
This type class provides support for the `Slice.size` function.
-/
class SliceSize (γ : Type u) where
  /-- Computes the slice of a `Slice`. Use `Slice.size` instead. -/
  size (slice : Slice γ) : Nat

/--
This type class states that the slice's iterator emits exactly `Slice.size` elements before
terminating.
-/
class LawfulSliceSize (γ : Type u) [SliceSize γ] [ToIterator (Slice γ) Id α β]
    [Iterator α Id β] where
  /-- The iterator of a slice `s` of type `Slice γ` emits exactly `SliceSize.size s` elements. -/
  lawful :
      letI : IteratorLoop α Id Id := .defaultImplementation
      ∀ s : Slice γ, SliceSize.size s = (ToIterator.iter (γ := Slice γ) s).length

/--
Returns the number of elements with distinct indices in the given slice.

Example: `#[1, 1, 1][0...2].size = 2`.
-/
@[expose, always_inline, inline, suggest_for Subarray.size]
def size (s : Slice γ) [SliceSize γ] :=
  SliceSize.size s

/-- Allocates a new array that contains the elements of the slice. -/
@[always_inline, inline, suggest_for Subarray.toArray]
def toArray [ToIterator (Slice γ) Id α β] [Iterator α Id β]
    (s : Slice γ) : Array β :=
  Internal.iter s |>.toArray

/-- Allocates a new list that contains the elements of the slice. -/
@[always_inline, inline]
def toList [ToIterator (Slice γ) Id α β] [Iterator α Id β]
    (s : Slice γ) : List β :=
  Internal.iter s |>.toList

/-- Allocates a new list that contains the elements of the slice in reverse order. -/
@[always_inline, inline]
def toListRev [ToIterator (Slice γ) Id α β] [Iterator α Id β]
    (s : Slice γ) : List β :=
  Internal.iter s |>.toListRev

instance {γ : Type u} {β : Type v} [Monad m] [ToIterator (Slice γ) Id α β]
    [Iterator α Id β] [IteratorLoop α Id m] :
    ForIn m (Slice γ) β where
  forIn s init f :=
    forIn (Internal.iter s) init f

/--
Folds a monadic operation from left to right over the elements in a slice.
An accumulator of type `β` is constructed by starting with `init` and monadically combining each
element of the slice with the current accumulator value in turn. The monad in question may permit
early termination or repetition.

Examples for the special case of subarrays:
```lean example
#eval #["red", "green", "blue"].toSubarray.foldlM (init := "") fun acc x => do
  let l ← Option.guard (· ≠ 0) x.length
  return s!"{acc}({l}){x} "
```
```output
some "(3)red (5)green (4)blue "
```
```lean example
#eval #["red", "green", "blue"].toSubarray.foldlM (init := 0) fun acc x => do
  let l ← Option.guard (· ≠ 5) x.length
  return s!"{acc}({l}){x} "
```
```output
none
```
-/
@[always_inline, inline, suggest_for Subarray.foldlM]
def foldlM {γ : Type u} {β : Type v}
    {δ : Type w} {m : Type w → Type w'} [Monad m] (f : δ → β → m δ) (init : δ)
    [ToIterator (Slice γ) Id α β] [Iterator α Id β]
    [IteratorLoop α Id m]
    (s : Slice γ) : m δ :=
  Internal.iter s |>.foldM f init

/--
Folds an operation from left to right over the elements in a slice.
An accumulator of type `β` is constructed by starting with `init` and combining each
element of the slice with the current accumulator value in turn.
Examples for the special case of subarrays:
 * `#["red", "green", "blue"].toSubarray.foldl (· + ·.length) 0 = 12`
 * `#["red", "green", "blue"].toSubarray.popFront.foldl (· + ·.length) 0 = 9`
-/
@[always_inline, inline, suggest_for Subarray.foldl]
def foldl {γ : Type u} {β : Type v}
    {δ : Type w} (f : δ → β → δ) (init : δ)
    [ToIterator (Slice γ) Id α β] [Iterator α Id β]
    [IteratorLoop α Id Id]
    (s : Slice γ) : δ :=
  Internal.iter s |>.fold f init

end Std.Slice
````
