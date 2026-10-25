# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Config.Variantc3f604a58be4181b82a3c0ecdee89c6714ab5c7125bf5c8e7529ee12b70f5540

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3c37a094783c0104fa32baea53110f529fbf09e0` · SHA-256 `cea9a21f788d30c070192f667c9f169682d759cf4fed4d0d2dc771dadea68711`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Config.Variantad74f12a28a7373c07ed09f6ddcfa7cf8d45d82f2b4069a7d66e7fa0d5c250ac","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ad74f12a28a7373c07ed09f6ddcfa7cf8d45d82f2b4069a7d66e7fa0d5c250ac","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Config.Variantad74f12a28a7373c07ed09f6ddcfa7cf8d45d82f2b4069a7d66e7fa0d5c250ac","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"ad74f12a28a7373c07ed09f6ddcfa7cf8d45d82f2b4069a7d66e7fa0d5c250ac","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Http/Data/URI/Config.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sofia Rodrigues
-/
module

prelude
public import Init.Data.Nat


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Config.Variantad74f12a28a7373c07ed09f6ddcfa7cf8d45d82f2b4069a7d66e7fa0d5c250ac

public section

/-!
# URI Parser Configuration

This module defines `URI.Config`, which controls per-component size limits used during URI
parsing. All limits default to the values previously hardcoded in the parser, except
`maxQueryLength`, which is raised from 1024 to 8192 to match `H1.Config.maxUriLength` and
accommodate real-world query strings.
-/

namespace Std.Http.URI

set_option linter.all true

/--
Per-component size limits for the URI parser.
-/
structure Config where
  /--
  Maximum length of the URI scheme component (e.g. `https`), in bytes.
  The scheme grammar requires at least one leading ALPHA; the remaining budget is
  `max(0, maxSchemeLength - 1)` additional characters.
  -/
  maxSchemeLength : Nat := 13

  /--
  Maximum length of the host `reg-name` component, in bytes.
  -/
  maxHostLength : Nat := 253

  /--
  Maximum length of the userinfo component (username and password each), in bytes.
  -/
  maxUserInfoLength : Nat := 1024

  /--
  Maximum length of a single path segment, in bytes.
  -/
  maxSegmentLength : Nat := 256

  /--
  Maximum length of the query string, in bytes.
  Raised from the previously hardcoded 1024 to 8192 to match `H1.Config.maxUriLength`
  and allow real-world query strings.
  -/
  maxQueryLength : Nat := 8192

  /--
  Maximum length of the fragment component, in bytes.
  -/
  maxFragmentLength : Nat := 1024

  /--
  Maximum number of path segments.
  Prevents excessive segment counts that could arise from paths like `/a/b/c/…` repeated many times.
  -/
  maxPathSegments : Nat := 128

  /--
  Maximum total byte length of the path (all segments combined, including separating slashes).
  -/
  maxTotalPathLength : Nat := 8192

  /--
  Maximum number of query parameters (key-value pairs separated by `&`).
  -/
  maxQueryParams : Nat := 100

end Std.Http.URI
```
