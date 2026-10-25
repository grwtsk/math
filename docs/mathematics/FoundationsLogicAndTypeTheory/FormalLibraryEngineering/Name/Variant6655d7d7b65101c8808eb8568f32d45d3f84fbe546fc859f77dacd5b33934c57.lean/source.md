# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Name.Variant6655d7d7b65101c8808eb8568f32d45d3f84fbe546fc859f77dacd5b33934c57

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ce872e4b577969d28ca82cd2d975f84a87cdd06a` · SHA-256 `0716123c9d3527b3b9bd33af027b3c17e6619076f61b2649c4576e140817b978`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HasNum.Variant8a185e8847073f46ad0c4888c92cdd64057e6bc94a04c10d38a3923d9a66162a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8a185e8847073f46ad0c4888c92cdd64057e6bc94a04c10d38a3923d9a66162a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.HasNum.Variant8a185e8847073f46ad0c4888c92cdd64057e6bc94a04c10d38a3923d9a66162a","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"8a185e8847073f46ad0c4888c92cdd64057e6bc94a04c10d38a3923d9a66162a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/August/-/spectral-proof-exe/.lake/packages/std/Std/Lean/Name.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HasNum.Variant8a185e8847073f46ad0c4888c92cdd64057e6bc94a04c10d38a3923d9a66162a

namespace Lean.Name

/-- Returns true if the name has any numeric components. -/
def hasNum : Name → Bool
  | .anonymous => false
  | .str p _ => p.hasNum
  | .num _ _ => true

/-- The frontend does not allow user declarations to start with `_` in any of its parts.
   We use name parts starting with `_` internally to create auxiliary names (e.g., `_private`). -/
def isInternalOrNum : Name → Bool
  | .str p s => s.get 0 == '_' || isInternalOrNum p
  | .num _ _ => true
  | _       => false

/--
Returns true if this a part of name that is internal or dynamically
generated so that it may easily be changed.

Generally, user code should not explicitly use internal names.
-/
def isInternalDetail : Name → Bool
  | .str p s     =>
    s.startsWith "_"
      || s.startsWith "match_"
      || s.startsWith "proof_"
      || p.isInternalOrNum
  | .num _ _     => true
  | p            => p.isInternalOrNum
```
