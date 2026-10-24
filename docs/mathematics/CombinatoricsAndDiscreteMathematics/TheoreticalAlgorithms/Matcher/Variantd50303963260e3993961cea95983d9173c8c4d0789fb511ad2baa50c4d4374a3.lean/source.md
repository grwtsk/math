# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Matcher.Variantd50303963260e3993961cea95983d9173c8c4d0789fb511ad2baa50c4d4374a3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `614f80f4940fe03dd42c73fd717d8faaa4d8cce7` · SHA-256 `e470a0cb5fbdc38ce86056bab7df8d0db30954e51d814fce26e618b30e49fec3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Matcher.Variant12108a439c78d56a4290f9d15f8435f90547e03dffc9cadbeafe1a148ad9f378","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"12108a439c78d56a4290f9d15f8435f90547e03dffc9cadbeafe1a148ad9f378","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.Matcher.Variant12108a439c78d56a4290f9d15f8435f90547e03dffc9cadbeafe1a148ad9f378","mathematical_subject":"Computation.DataStructures","original_sha256":"12108a439c78d56a4290f9d15f8435f90547e03dffc9cadbeafe1a148ad9f378","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/batteries/Batteries/Data/String/Matcher.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 F. G. Dorais. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: F. G. Dorais
-/
module

public import Batteries.Data.Array.Match
public import Batteries.Data.String.Basic


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Matcher.Variant12108a439c78d56a4290f9d15f8435f90547e03dffc9cadbeafe1a148ad9f378

@[expose] public section

namespace String

/-- Knuth-Morris-Pratt matcher type

This type is used to keep data for running the Knuth-Morris-Pratt (KMP) string matching algorithm.
KMP is a linear time algorithm to locate all substrings of a string that match a given pattern.
Generating the algorithm data is also linear in the length of the pattern but the data can be
re-used to match the same pattern over different strings.

The KMP data for a pattern string can be generated using `Matcher.ofString`. Then `Matcher.find?`
and `Matcher.findAll` can be used to run the algorithm on an input string.
```
def m := Matcher.ofString "abba"

#eval Option.isSome <| m.find? "AbbabbA" -- false
#eval Option.isSome <| m.find? "aabbaa" -- true

#eval Array.size <| m.findAll "abbabba" -- 2
#eval Array.size <| m.findAll "abbabbabba" -- 3
```
-/
structure Matcher extends Array.Matcher Char where
  /-- The pattern for the matcher -/
  pattern : Substring.Raw

/-- Make KMP matcher from pattern substring -/
@[inline] def Matcher.ofSubstring (pattern : Substring.Raw) : Matcher where
  toMatcher := Array.Matcher.ofStream pattern
  pattern := pattern

/-- Make KMP matcher from pattern string -/
@[inline] def Matcher.ofString (pattern : String) : Matcher :=
  Matcher.ofSubstring pattern

/-- The byte size of the string pattern for the matcher -/
abbrev Matcher.patternSize (m : Matcher) : Nat := m.pattern.bsize

/-- Find all substrings of `s` matching `m.pattern`. -/
partial def Matcher.findAll (m : Matcher) (s : Substring.Raw) : Array Substring.Raw :=
  loop s m.toMatcher #[]
where
  /-- Accumulator loop for `String.Matcher.findAll` -/
  loop (s : Substring.Raw) (am : Array.Matcher Char) (occs : Array Substring.Raw) :
      Array Substring.Raw :=
    match am.next? s with
    | none => occs
    | some (s, am) =>
      loop s am <| occs.push { s with
        startPos := ⟨s.startPos.byteIdx - m.patternSize⟩
        stopPos := s.startPos }

/-- Find the first substring of `s` matching `m.pattern`, or `none` if no such substring exists. -/
def Matcher.find? (m : Matcher) (s : Substring.Raw) : Option Substring.Raw :=
  match m.next? s with
  | none => none
  | some (s, _) =>
    some { s with
      startPos := ⟨s.startPos.byteIdx - m.patternSize⟩
      stopPos := s.startPos }

end String

namespace Substring.Raw

/--
Returns all the substrings of `s` that match `pattern`.
-/
@[inline] def findAllSubstr (s pattern : Substring.Raw) : Array Substring.Raw :=
  (String.Matcher.ofSubstring pattern).findAll s

/--
Returns the first substring of `s` that matches `pattern`,
or `none` if there is no such substring.
-/
@[inline] def findSubstr? (s pattern : Substring.Raw) : Option Substring.Raw :=
  (String.Matcher.ofSubstring pattern).find? s

/--
Returns true iff `pattern` occurs as a substring of `s`.
-/
@[inline] def containsSubstr (s pattern : Substring.Raw) : Bool :=
  s.findSubstr? pattern |>.isSome

end Substring.Raw

section Deprecations

@[deprecated Substring.Raw.findAllSubstr (since := "2025-11-16"),
  inherit_doc Substring.Raw.findAllSubstr]
abbrev Substring.findAllSubstr := Substring.Raw.findAllSubstr

@[deprecated Substring.Raw.findSubstr? (since := "2025-11-16"),
  inherit_doc Substring.Raw.findSubstr?]
abbrev Substring.findSubstr? := Substring.Raw.findSubstr?

@[deprecated Substring.Raw.containsSubstr (since := "2025-11-16"),
  inherit_doc Substring.Raw.containsSubstr]
abbrev Substring.containsSubstr := Substring.Raw.containsSubstr

end Deprecations

namespace String

@[inherit_doc Substring.Raw.findAllSubstr]
abbrev findAllSubstr (s : String) (pattern : Substring.Raw) : Array Substring.Raw :=
  (String.Matcher.ofSubstring pattern).findAll s

@[inherit_doc Substring.Raw.findSubstr?]
abbrev findSubstr? (s : String) (pattern : Substring.Raw) : Option Substring.Raw :=
  s.toRawSubstring.findSubstr? pattern

@[deprecated String.contains (since := "2026-02-25"), inherit_doc Substring.Raw.containsSubstr]
abbrev containsSubstr (s : String) (pattern : Substring.Raw) : Bool :=
  s.toRawSubstring.containsSubstr pattern

end String
````
