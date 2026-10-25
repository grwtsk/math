# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Name.Variant49de886d7f108a3ed7d11ce62c8c86c7d42ef5a22094810a15b7ecb8b071d27a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `de2036ccee7402a7c2f3b4a6b80ebddc6c6062a0` · SHA-256 `33a1c50a535a9dac4c66c6f280056d5828535ae0ff57b447af89c53141473f13`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RuleSetName.Variant935b8305a29faed6d0c6da368935c1f146674441650369d9e035621a4e27eb8a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"935b8305a29faed6d0c6da368935c1f146674441650369d9e035621a4e27eb8a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.RuleSetName.Variant935b8305a29faed6d0c6da368935c1f146674441650369d9e035621a4e27eb8a","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"935b8305a29faed6d0c6da368935c1f146674441650369d9e035621a4e27eb8a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/Aesop/RuleSet/Name.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021-2024 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module



namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RuleSetName.Variant935b8305a29faed6d0c6da368935c1f146674441650369d9e035621a4e27eb8a

public section

open Lean

namespace Aesop

abbrev RuleSetName := Name -- Not really an abbreviation is it?

def defaultRuleSetName : RuleSetName := `default

def builtinRuleSetName : RuleSetName := `builtin

def localRuleSetName : RuleSetName := `local

def builtinRuleSetNames : Array RuleSetName :=
  #[defaultRuleSetName, builtinRuleSetName]

def RuleSetName.isReserved (n : RuleSetName) : Bool :=
  n == localRuleSetName || builtinRuleSetNames.contains n

end Aesop
```
