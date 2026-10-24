# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Match.Variantd2d0c0336492b9af41d61a9b3d8db45eed645b229c10e2b50408fc2eb6902e23

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `01ea2be178d078aa6f9edf9a9bb699504b74e42a` · SHA-256 `1a0e07624b8e225c18625665479227f976ba1fd258974ff656d5f06b3cde6c76`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PrefixTable.Variant7027cd7fb1b71147e39cc3be4b32eb5f38ffd5ad015b025862f44c3c793c83f0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7027cd7fb1b71147e39cc3be4b32eb5f38ffd5ad015b025862f44c3c793c83f0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.PrefixTable.Variant7027cd7fb1b71147e39cc3be4b32eb5f38ffd5ad015b025862f44c3c793c83f0","mathematical_subject":"Computation.DataStructures","original_sha256":"7027cd7fb1b71147e39cc3be4b32eb5f38ffd5ad015b025862f44c3c793c83f0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/August/-/spectral-proof-exe/.lake/packages/std/Std/Data/Array/Match.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 F. G. Dorais. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: F. G. Dorais
-/
import Std.Data.Array.Basic
import Std.Data.Array.Lemmas


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PrefixTable.Variant7027cd7fb1b71147e39cc3be4b32eb5f38ffd5ad015b025862f44c3c793c83f0

namespace Array

/-- Prefix table for the Knuth-Morris-Pratt matching algorithm

  This is an array of the form `t = [(x₀,n₀), (x₁,n₁), (x₂, n₂), ...]` where for each `i`, `nᵢ` is
  the length of the longest proper prefix of `xs = [x₀,x₁,...,xᵢ]` which is also a suffix of `xs`.
-/
structure PrefixTable (α : Type _) extends Array (α × Nat) where
  /-- Validity condition to help with termination proofs -/
  valid : (h : i < toArray.size) → toArray[i].2 ≤ i

instance : Inhabited (PrefixTable α) where
  default := ⟨#[], fun.⟩

/-- Returns the size of the prefix table -/
abbrev PrefixTable.size (t : PrefixTable α) := t.toArray.size

/-- Transition function for the KMP matcher

  Assuming we have an input `xs` with a suffix that matches the pattern prefix `t.pattern[:len]`
  where `len : Fin (t.size+1)`. Then `xs.push x` has a suffix that matches the pattern prefix
  `t.pattern[:t.step x len]`. If `len` is as large as possible then `t.step x len` will also be
  as large as possible.
-/
def PrefixTable.step [BEq α] (t : PrefixTable α) (x : α) : Fin (t.size+1) → Fin (t.size+1)
  | ⟨k, hk⟩ =>
    let cont := fun () =>
      match k with
      | 0 => ⟨0, Nat.zero_lt_succ _⟩
      | k + 1 =>
        have h2 : k < t.size := Nat.lt_of_succ_lt_succ hk
        let k' := t.toArray[k].2
        have hk' : k' < k + 1 := Nat.lt_succ_of_le (t.valid h2)
        step t x ⟨k', Nat.lt_trans hk' hk⟩
    if hsz : k < t.size then
      if x == t.toArray[k].1 then
        ⟨k+1, Nat.succ_lt_succ hsz⟩
      else cont ()
    else cont ()
termination_by _ k => k.val

/-- Extend a prefix table by one element

  If `t` is the prefix table for `xs` then `t.extend x` is the prefix table for `xs.push x`.
-/
def PrefixTable.extend [BEq α] (t : PrefixTable α) (x : α) : PrefixTable α where
  toArray := t.toArray.push (x, t.step x ⟨t.size, Nat.lt_succ_self _⟩)
  valid _ := by
    rw [Array.get_push]
    split
    · exact t.valid ..
    · next h => exact Nat.le_trans (Nat.lt_succ.1 <| Fin.isLt ..) (Nat.not_lt.1 h)

/-- Make prefix table from a pattern array -/
def mkPrefixTable [BEq α] (xs : Array α) : PrefixTable α := xs.foldl (·.extend) default

/-- Make prefix table from a pattern stream -/
partial def mkPrefixTableOfStream [BEq α] [Stream σ α] (stream : σ) : PrefixTable α :=
  loop default stream
where
  /-- Inner loop for `mkPrefixTableOfStream` -/
  loop (t : PrefixTable α) (stream : σ) :=
    match Stream.next? stream with
    | none => t
    | some (x, stream) => loop (t.extend x) stream

/-- KMP matcher structure -/
structure Matcher (α) where
  /-- Prefix table for the pattern -/
  table : PrefixTable α
  /-- Current longest matching prefix -/
  state : Fin (table.size + 1) := 0

/-- Make a KMP matcher for a given pattern array -/
def Matcher.ofArray [BEq α] (pat : Array α) : Matcher α where
  table := mkPrefixTable pat

/-- Make a KMP matcher for a given a pattern stream -/
def Matcher.ofStream [BEq α] [Stream σ α] (pat : σ) : Matcher α where
  table := mkPrefixTableOfStream pat

/-- Find next match from a given stream

  Runs the stream until it reads a sequence that matches the sought pattern, then returns the stream
  state at that point and an updated matcher state.
-/
partial def Matcher.next? [BEq α] [Stream σ α] (m : Matcher α) (stream : σ) :
    Option (σ × Matcher α) :=
  match Stream.next? stream with
  | none => none
  | some (x, stream) =>
    let state := m.table.step x m.state
    if state = m.table.size then
      some (stream, { m with state })
    else
      next? { m with state } stream

end Array
```
