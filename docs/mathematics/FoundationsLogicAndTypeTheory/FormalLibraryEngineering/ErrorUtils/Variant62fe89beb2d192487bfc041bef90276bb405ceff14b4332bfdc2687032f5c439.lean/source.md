# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ErrorUtils.Variant62fe89beb2d192487bfc041bef90276bb405ceff14b4332bfdc2687032f5c439

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5ab40c5ec09548101b4f42e527624212636b6590` · SHA-256 `740819bdd53fb3a6c3f32a7072e8a4b097a4e0210887a6ba95ee784daf1d95aa`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HasOxfordStrings.Variantad327cf0a32ddfffca166a191dc84db4df7e356c903f73ee897d84c6ea3228bd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ad327cf0a32ddfffca166a191dc84db4df7e356c903f73ee897d84c6ea3228bd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.HasOxfordStrings.Variantad327cf0a32ddfffca166a191dc84db4df7e356c903f73ee897d84c6ea3228bd","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"ad327cf0a32ddfffca166a191dc84db4df7e356c903f73ee897d84c6ea3228bd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/ErrorUtils.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Rob Simmons
-/
module

prelude
import Lean.Message


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HasOxfordStrings.Variantad327cf0a32ddfffca166a191dc84db4df7e356c903f73ee897d84c6ea3228bd

namespace Lean

/--
Translate numbers (1, 2, 3, 212, 322 ...) to ordinals with appropriate English-language names for
small ordinals (0 through 10 become "zeroth" through "tenth") and postfixes for other numbers
(212 becomes "212th" and 1292 becomes "1292nd").
-/
def _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HasOxfordStrings.Variantad327cf0a32ddfffca166a191dc84db4df7e356c903f73ee897d84c6ea3228bd.Nat.toOrdinal : Nat -> String
  | 0 => "zeroth"
  | 1 => "first"
  | 2 => "second"
  | 3 => "third"
  | 4 => "fourth"
  | 5 => "fifth"
  | 6 => "sixth"
  | 7 => "seventh"
  | 8 => "eighth"
  | 9 => "ninth"
  | 10 => "tenth"
  | n => if n % 100 > 10 && n % 100 < 20 then
      s!"{n}th"
    else if n % 10 == 2 then
      s!"{n}nd"
    else if n % 10 == 3 then
      s!"{n}rd"
    else
      s!"{n}th"

class HasOxfordStrings α where
  emp : α
  and : α
  comma : α
  commaAnd : α

instance : HasOxfordStrings String where
  emp := ""
  and := " and "
  comma := ", "
  commaAnd := ", and "

instance : HasOxfordStrings MessageData where
  emp := ""
  and := " and "
  comma := ", "
  commaAnd := ", and "

/--
Make an oxford-comma-separated list of strings.

 - `["eats"].toOxford == "eats"`
 - `["eats", "shoots"].toOxford == "eats and shoots"`
 - `["eats", "shoots", "leaves"] == "eats, shoots, and leaves"`
-/
def _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HasOxfordStrings.Variantad327cf0a32ddfffca166a191dc84db4df7e356c903f73ee897d84c6ea3228bd.List.toOxford [Append α] [HasOxfordStrings α] : List α -> α
  | [] => HasOxfordStrings.emp
  | [a] => a
  | [a, b] => a ++ HasOxfordStrings.and ++ b
  | [a, b, c] => a ++ HasOxfordStrings.comma ++ b  ++ HasOxfordStrings.commaAnd ++ c
  | a :: as => a ++ HasOxfordStrings.comma ++ as.toOxford

class HasPluralDefaults α where
  singular : α
  plural : α → α

instance : HasPluralDefaults String where
  singular := ""
  plural := (· ++ "s")

instance : HasPluralDefaults MessageData where
  singular := .nil
  plural := (m!"{·}s")

/--
Give alternative forms of a string if the `count` is 1 or not.

 - `(1).plural == ""`
 - `(2).plural == "s"`
 - `(1).plural "wug" == "wug"`
 - `(2).plural "wug" == "wugs"`
 - `(1).plural "it" "they" == "it"`
 - `(2).plural "it" "they" == "they"`
-/
def _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HasOxfordStrings.Variantad327cf0a32ddfffca166a191dc84db4df7e356c903f73ee897d84c6ea3228bd.Nat.plural [HasPluralDefaults α] (count : Nat)
    (singular : α := HasPluralDefaults.singular)
    (plural : α := HasPluralDefaults.plural singular) :=
  if count = 1 then
    singular
  else
    plural
```
