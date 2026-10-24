# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Matcher.Variant5fe19227ca21c488deea7e35a69571986c197853351bc72d8b527107d3c4e5c6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9bf0289828f2933b5fb1e0bf2b05b4ae8a58a48d` · SHA-256 `07674bca9fdf2c0d60bfc6b0a27957ab5d97690e13b9800e0d4c205671ae90a8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Matcher.Variantaee9651b700b4cd822e203131fadac96c8a55944c1e701bd258859ada589564e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"aee9651b700b4cd822e203131fadac96c8a55944c1e701bd258859ada589564e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.Matcher.Variantaee9651b700b4cd822e203131fadac96c8a55944c1e701bd258859ada589564e","mathematical_subject":"Computation.DataStructures","original_sha256":"aee9651b700b4cd822e203131fadac96c8a55944c1e701bd258859ada589564e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/batteries/Batteries/Data/String/Matcher.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 F. G. Dorais. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: F. G. Dorais
-/
module

public import Batteries.Data.Array.Match
public import Batteries.Data.String.Basic


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Matcher.Variantaee9651b700b4cd822e203131fadac96c8a55944c1e701bd258859ada589564e

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
