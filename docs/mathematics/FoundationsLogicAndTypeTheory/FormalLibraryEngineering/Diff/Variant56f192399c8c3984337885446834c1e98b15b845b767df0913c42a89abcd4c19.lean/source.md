# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Diff.Variant56f192399c8c3984337885446834c1e98b15b845b767df0913c42a89abcd4c19

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a5a196e9287d4d9acaf4eb0daf0741098b76891c` · SHA-256 `dccc27fafddb874a6d927b52d32b73b37f4d8204670a3647f95905618d088c8f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Action.Variantd4f1aa22d5c10548ccb9b68f373721fbe6719c87721e7d8cc873e70090a088a9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d4f1aa22d5c10548ccb9b68f373721fbe6719c87721e7d8cc873e70090a088a9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Action.Variantd4f1aa22d5c10548ccb9b68f373721fbe6719c87721e7d8cc873e70090a088a9","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"d4f1aa22d5c10548ccb9b68f373721fbe6719c87721e7d8cc873e70090a088a9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Util/Diff.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: David Thrane Christiansen
-/
module

prelude
public import Init.Data.Array.Subarray.Split
public import Init.Data.Slice.Array.Iterator
public import Init.Data.Range
public import Std.Data.HashMap.Basic
public import Init.Data.String.Basic
public import Init.Data.Range.Polymorphic.RangeIterator
public import Init.While
import Init.Data.Range.Polymorphic.Iterators
import Init.Data.Range.Polymorphic.Nat
import Init.Data.ToString.Macro
import Init.Omega


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Action.Variantd4f1aa22d5c10548ccb9b68f373721fbe6719c87721e7d8cc873e70090a088a9

public section

namespace Lean.Diff
/--
An action in an edit script to transform one source sequence into a target sequence.
-/
inductive Action where
  /-- Insert the item into the source -/
  | insert
  /-- Delete the item from the source -/
  | delete
  /-- Leave the item in the source -/
  | skip
deriving Repr, BEq, Hashable, Inhabited

instance : ToString Action where
  toString
    | .insert => "insert"
    | .delete => "delete"
    | .skip => "skip"

/--
Determines a prefix to show on a given line when printing diff results.

For `delete`, the prefix is `"-"`, for `insert`, it is `"+"`, and for `skip` it is `" "`.
-/
def Action.linePrefix : (action : Action) → String
  | .delete => "-"
  | .insert => "+"
  | .skip => " "

/--
A histogram entry consists of the number of times the element occurs in the left and right input
arrays along with an index at which the element can be found, if applicable.
-/
structure Histogram.Entry (α : Type u) (lsize rsize : Nat) where
  /-- How many times the element occurs in the left array -/
  leftCount : Nat
  /-- An index of the element in the left array, if applicable -/
  leftIndex : Option (Fin lsize)
  /-- Invariant: the count is non-zero iff there is a saved index -/
  leftWF : leftCount = 0 ↔ leftIndex = none
  /-- How many times the element occurs in the right array -/
  rightCount : Nat
  /-- An index of the element in the right array, if applicable -/
  rightIndex : Option (Fin rsize)
  /-- Invariant: the count is non-zero iff there is a saved index -/
  rightWF : rightCount = 0 ↔ rightIndex = none

/-- A histogram for arrays maps each element to a count and, if applicable, an index.-/
@[expose] def Histogram (α : Type u) (lsize rsize : Nat) [BEq α] [Hashable α] :=
  Std.HashMap α (Histogram.Entry α lsize rsize)


section

variable [BEq α] [Hashable α]

/-- Add an element from the left array to a histogram -/
def Histogram.addLeft (histogram : Histogram α lsize rsize) (index : Fin lsize) (val : α)
    : Histogram α lsize rsize :=
  match histogram.get? val with
  | none => histogram.insert val {
      leftCount := 1, leftIndex := some index,
      leftWF := by simp,
      rightCount := 0, rightIndex := none
      rightWF := by simp
    }
  | some x => histogram.insert val {x with
      leftCount := x.leftCount + 1, leftIndex := some index, leftWF := by simp
    }

/-- Add an element from the right array to a histogram -/
def Histogram.addRight (histogram : Histogram α lsize rsize) (index : Fin rsize) (val : α)
    : Histogram α lsize rsize :=
  match histogram.get? val with
  | none => histogram.insert val {
      leftCount := 0, leftIndex := none,
      leftWF := by simp,
      rightCount := 1, rightIndex := some index,
      rightWF := by simp
    }
  | some x => histogram.insert val {x with
      rightCount := x.leftCount + 1, rightIndex := some index,
      rightWF := by simp
    }

/-- Given two `Subarray`s, find their common prefix and return their differing suffixes -/
def matchPrefix (left right : Subarray α) : Array α × Subarray α × Subarray α :=
  let rec go (pref : Array α) : Array α × Subarray α × Subarray α :=
    let i := pref.size
    if _ : i < left.size ∧ i < right.size then
      if left[i]'(by omega) == right[i]'(by omega) then
        go <| pref.push <| left[i]'(by omega)
      else (pref, left.drop pref.size, right.drop pref.size)
    else (pref, left.drop pref.size, right.drop pref.size)
  termination_by left.size - pref.size
  go #[]

/-- Given two `Subarray`s, find their common suffix and return their differing prefixes -/
def matchSuffix (left right : Subarray α) : Subarray α × Subarray α × Array α :=
  let rec go (i : Nat) : Subarray α × Subarray α × Array α :=
    if _ : i < left.size ∧ i < right.size then
      if left[left.size - i - 1]'(by omega) == right[right.size - i - 1]'(by omega) then
        go i.succ
      else
        (left.take (left.size - i), right.take (right.size - i), (left.drop (left.size - i)).toArray)
    else
      (left.take (left.size - i), right.take (right.size - i), (left.drop (left.size - i)).toArray)
    termination_by left.size - i
  go 0

/--
Finds the least common subsequence of two arrays using a variant of jgit's histogram diff algorithm.

Unlike jgit's implementation, this one does not perform a cutoff on histogram bucket sizes, nor does
it fall back to the Myers diff algorithm. This means that it has quadratic worst-case complexity.
Empirically, however, even quadratic cases of this implementation can handle hundreds of megabytes
in a second or so, and it is intended to be used for short strings like error messages. Be
cautious when applying it to larger workloads.
-/
partial def lcs (left right : Subarray α) : Array α := Id.run do
  let (pref, left, right) := matchPrefix left right
  let (left, right, suff) := matchSuffix left right
  let mut hist : Histogram α left.size right.size := (∅ : Std.HashMap ..)
  for h : i in *...left.size do
    hist := hist.addLeft ⟨i, Std.Rio.Internal.get_elem_helper_upper_open h rfl⟩ left[i]
  for h : i in *...right.size do
    hist := hist.addRight ⟨i, Std.Rio.Internal.get_elem_helper_upper_open h rfl⟩ right[i]
  let mut best := none
  for (k, v) in hist.toList do
    if let {leftCount := lc, leftIndex := some li, rightCount := rc, rightIndex := some ri, ..} := v then
      match best with
      | none =>
        best := some ((lc + rc), k, li, ri)
      | some (count, _) =>
        if lc + rc < count then
          best := some ((lc + rc), k, li, ri)
  let some (_, v, li, ri) := best
    | return pref ++ suff

  let lefts := left.split ⟨li.val, by cases li; omega⟩
  let rights := right.split ⟨ri.val, by cases ri; omega⟩

  pref ++ lcs lefts.1 rights.1 ++ #[v] ++ lcs (lefts.2.drop 1) (rights.2.drop 1) ++ suff

/--
Computes an edit script to transform `left` into `right`.
-/
def diff [Inhabited α] (original edited : Array α) : Array (Action × α) :=
  if h : ¬(0 < original.size) then
    edited.map (.insert, ·)
  else if h' : ¬(0 < edited.size) then
    original.map (.delete, ·)
  else Id.run do
    have : original.size > 0 := by omega
    have : edited.size > 0 := by omega
    let mut out := #[]
    let ds := lcs original.toSubarray edited.toSubarray
    let mut i := 0
    let mut j := 0
    for d in ds do
      while i < original.size && original[i]! != d do
        out := out.push <| (.delete, original[i]!)
        i := i.succ
      while j < edited.size && edited[j]! != d do
        out := out.push <| (.insert, edited[j]!)
        j := j.succ
      out := out.push <| (.skip, d)
      i := i.succ
      j := j.succ
    while h : i < original.size do
      out := out.push <| (.delete, original[i])
      i := i.succ
    while h : j < edited.size do
      out := out.push <| (.insert, edited[j])
      j := j.succ
    out

/-- Shows a line-by-line edit script with markers for added and removed lines. -/
def linesToString [ToString α] (lines : Array (Action × α)) : String := Id.run do
  let mut out : String := ""
  for (act, line) in lines do
    let lineStr := toString line
    if lineStr == "" then
      out := out ++ s!"{act.linePrefix}\n"
    else
      out := out ++ s!"{act.linePrefix} {lineStr}\n"
  out
```
