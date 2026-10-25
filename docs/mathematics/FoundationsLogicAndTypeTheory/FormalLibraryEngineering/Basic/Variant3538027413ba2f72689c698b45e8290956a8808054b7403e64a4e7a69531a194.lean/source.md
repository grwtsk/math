# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Variant3538027413ba2f72689c698b45e8290956a8808054b7403e64a4e7a69531a194

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c5fbc1fb6d111956646574455302b2be9f07fe69` · SHA-256 `07690e743659cdfba91211e2ada0cc01aa85cc5796e1d13c19bd7c2d0300b15e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OfWeeks.Variant7f712cb9d3e253e28f4700e06484a1c4b13c62fbcaa00a593fba7d442b790978","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7f712cb9d3e253e28f4700e06484a1c4b13c62fbcaa00a593fba7d442b790978","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.OfWeeks.Variant7f712cb9d3e253e28f4700e06484a1c4b13c62fbcaa00a593fba7d442b790978","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"7f712cb9d3e253e28f4700e06484a1c4b13c62fbcaa00a593fba7d442b790978","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Time/Date/Unit/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sofia Rodrigues
-/
module

prelude
public import Std.Time.Date.Unit.Year
public import Std.Time.Date.Unit.Weekday
public import Std.Time.Date.Unit.Week


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OfWeeks.Variant7f712cb9d3e253e28f4700e06484a1c4b13c62fbcaa00a593fba7d442b790978

public section

/-!
This module defines various units used for measuring, counting, and converting between days, months,
years, weekdays, and weeks of the year.

The units are organized into types representing these time-related concepts, with operations provided
to facilitate conversions and manipulations between them.
-/

namespace Std
namespace Time
open Internal

namespace Day.Offset

/--
Convert `Week.Offset` into `Day.Offset`.
-/
@[inline]
def ofWeeks (week : Week.Offset) : Day.Offset :=
  week.mul 7 |>.cast (by decide +kernel)

/--
Convert `Day.Offset` into `Week.Offset`.
-/
@[inline]
def toWeeks (day : Day.Offset) : Week.Offset :=
  day.ediv 7

end Day.Offset
```
