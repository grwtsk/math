# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Matcher.Variantd22669ac31b98e8370abbe15e22a86aff63d9a2ae42e75b8dfbf3358b1fe2f30

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3b8eb8016e137fc54e83d2fe00bbe446dea2d3ac` · SHA-256 `a91f20b3a6889401a2223b17974048d551b88160acaab561f9d8f3714aa3d52c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Matcher.Variant6eed618b904b24020b6333a4f620092343fcb77b2b052227b20254c0aefc9eba","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6eed618b904b24020b6333a4f620092343fcb77b2b052227b20254c0aefc9eba","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.Matcher.Variant6eed618b904b24020b6333a4f620092343fcb77b2b052227b20254c0aefc9eba","mathematical_subject":"Computation.DataStructures","original_sha256":"6eed618b904b24020b6333a4f620092343fcb77b2b052227b20254c0aefc9eba","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/batteries/Batteries/Data/List/Matcher.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 François G. Dorais. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: François G. Dorais
-/
module

public import Batteries.Data.Array.Match


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Matcher.Variant6eed618b904b24020b6333a4f620092343fcb77b2b052227b20254c0aefc9eba

@[expose] public section

namespace List

/-- Knuth-Morris-Pratt matcher type

This type is used to keep data for running the Knuth-Morris-Pratt (KMP) list matching algorithm.
KMP is a linear time algorithm to locate all contiguous sublists of a list that match a given
pattern. Generating the algorithm data is also linear in the length of the pattern but the data can
be re-used to match the same pattern over multiple lists.

The KMP data for a pattern can be generated using `Matcher.ofList`. Then `Matcher.find?` and
`Matcher.findAll` can be used to run the algorithm on an input list.
```
def m := Matcher.ofList [0,1,1,0]

#eval Option.isSome <| m.find? [2,1,1,0,1,1,2] -- false
#eval Option.isSome <| m.find? [0,0,1,1,0,0] -- true

#eval Array.size <| m.findAll [0,1,1,0,1,1,0] -- 2
#eval Array.size <| m.findAll [0,1,1,0,1,1,0,1,1,0] -- 3
```
-/
structure Matcher (α : Type _) extends Array.Matcher α where
  /-- The pattern for the matcher -/
  pattern : List α

/-- Make KMP matcher from list pattern. -/
@[inline] def Matcher.ofList [BEq α] (pattern : List α) : Matcher α where
  toMatcher := Array.Matcher.ofStream pattern
  pattern := pattern

/-- List stream that keeps count of items read. -/
local instance (α) : Std.Stream (List α × Nat) α where
  next?
  | ([], _) => none
  | (x::xs, n) => (x, xs, n+1)

/--
Find all start and end positions of all infix sublists of `l` matching `m.pattern`.
The sublists may be overlapping.
-/
partial def Matcher.findAll [BEq α] (m : Matcher α) (l : List α) : Array (Nat × Nat) :=
  loop (l, 0) m.toMatcher #[]
where
  /-- Accumulator loop for `List.Matcher.findAll` -/
  loop (l : List α × Nat) (am : Array.Matcher α) (occs : Array (Nat × Nat)) : Array (Nat × Nat) :=
    match am.next? l with
    | none => occs
    | some (l, am) => loop l am (occs.push (l.snd - m.table.size, l.snd))

/--
Find the start and end positions of the first infix sublist of `l` matching `m.pattern`,
or `none` if there is no such sublist.
-/
def Matcher.find? [BEq α] (m : Matcher α) (l : List α) : Option (Nat × Nat) :=
  match m.next? (l, 0) with
  | none => none
  | some (l, _) => some (l.snd - m.table.size, l.snd)

/--
Returns all the start and end positions of all infix sublists of of `l` that match `pattern`.
The sublists may be overlapping.
-/
@[inline] def findAllInfix [BEq α] (l pattern : List α) : Array (Nat × Nat) :=
  (Matcher.ofList pattern).findAll l

/--
Returns the start and end positions of the first infix sublist of `l` that matches `pattern`,
or `none` if there is no such sublist.
-/
@[inline] def findInfix? [BEq α] (l pattern : List α) : Option (Nat × Nat) :=
  (Matcher.ofList pattern).find? l

/--
Returns true iff `pattern` occurs as an infix sublist of `l`.
-/
@[inline] def containsInfix [BEq α] (l pattern : List α) : Bool :=
  findInfix? l pattern |>.isSome
````
