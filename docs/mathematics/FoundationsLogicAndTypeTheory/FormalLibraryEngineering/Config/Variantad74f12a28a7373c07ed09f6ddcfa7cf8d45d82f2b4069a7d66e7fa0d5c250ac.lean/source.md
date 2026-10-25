# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Config.Variantad74f12a28a7373c07ed09f6ddcfa7cf8d45d82f2b4069a7d66e7fa0d5c250ac

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `19cc51805482cde174ada9a4740b36472ff50e4a` · SHA-256 `ad74f12a28a7373c07ed09f6ddcfa7cf8d45d82f2b4069a7d66e7fa0d5c250ac`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sofia Rodrigues
-/
module

prelude
public import Init.Data.Nat

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
