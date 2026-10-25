# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Casing.Variant2d75787716e181b7c6358e848623e9fb42b9a12604c94796f8e1d982e5a35687

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `16693c00c6f3554ea21da3b8ba41961ed80f07a4` · SHA-256 `7e25d92acc9cd392e464987f45e6828f14ee51583e5b5d18088077f215ecf2c9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ToUpperCamelCaseString.Variant55d9bf878c18f155199ed181e48fbd35b42857d099794e8d423ee85472982db6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"55d9bf878c18f155199ed181e48fbd35b42857d099794e8d423ee85472982db6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceEnvironments.SourceCorpus.ToUpperCamelCaseString.Variant55d9bf878c18f155199ed181e48fbd35b42857d099794e8d423ee85472982db6","mathematical_subject":"MathematicalTooling.SourceEnvironments","original_sha256":"55d9bf878c18f155199ed181e48fbd35b42857d099794e8d423ee85472982db6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/lake/Lake/Util/Casing.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Mac Malone. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mac Malone
-/
module

prelude
public import Init.Data.String.Basic
import Init.Data.String.Modify
import Init.Data.String.Search
import Init.Data.Iterators.Consumers.Collect


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ToUpperCamelCaseString.Variant55d9bf878c18f155199ed181e48fbd35b42857d099794e8d423ee85472982db6

namespace Lake

open Lean (Name)

/-- Converts a snake case, kebab case, or lower camel case `String` to upper camel case. -/
public def toUpperCamelCaseString (str : String) : String :=
  let parts := str.split fun chr => chr == '_' || chr == '-'
  String.join <| parts.map (·.copy.capitalize) |>.toList

/-- Converts a snake case, kebab case, or lower camel case `Name` to upper camel case. -/
public def toUpperCamelCase (name : Name) : Name :=
  if let Name.str p s := name then
    Name.mkStr (toUpperCamelCase p) <| toUpperCamelCaseString s
  else
    name
```
