# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TimeZone.Variant96ae0c3c6a79012653ed4f6d82adc071dc471cedeb90d8494906946b1347c6de

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `830232c7e2a87a3cc689c98805a89febf7fd08a7` · SHA-256 `c4196e8fec1fdb39a7105b540e8468222a6f47677ef11f27700329751a7cf5fe`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Offset.Variant55e57ad9e8fbf21d4a82b727a0ff7b266a0addd34436c794643fb645aa42168f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"55e57ad9e8fbf21d4a82b727a0ff7b266a0addd34436c794643fb645aa42168f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Offset.Variant55e57ad9e8fbf21d4a82b727a0ff7b266a0addd34436c794643fb645aa42168f","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"55e57ad9e8fbf21d4a82b727a0ff7b266a0addd34436c794643fb645aa42168f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Time/Zoned/TimeZone.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","interpolated_literals","scope_end_name_mismatch","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sofia Rodrigues
-/
module

prelude
public import Std.Time.Time
public import Std.Time.DateTime.Timestamp


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Offset.Variant55e57ad9e8fbf21d4a82b727a0ff7b266a0addd34436c794643fb645aa42168f

public section

namespace Std
namespace Time

set_option linter.all true

namespace TimeZone

/--
Represents a timezone offset as a total number of seconds from UTC.
-/
@[ext]
structure Offset where

  /--
  Creates an `Offset` from a given number of seconds.
  -/
  ofSeconds ::

  /--
  The same timezone offset in seconds.
  -/
  second : Second.Offset
deriving Repr, DecidableEq

instance : Inhabited Offset where
  default := ⟨0⟩

instance : Ord Offset where
  compare := compareOn (·.second)

theorem Offset.compare_def :
    compare (α := Offset) = compareOn (·.second) := rfl

instance : TransOrd Offset := inferInstanceAs <| TransCmp (compareOn _)

instance : LawfulEqOrd Offset where
  eq_of_compare {a b} h := by
    simp only [Offset.compare_def] at h
    apply Offset.ext
    exact LawfulEqOrd.eq_of_compare h

namespace Offset

/--
Converts an `Offset` to a string in ISO 8601 format. The `colon` parameter determines if the hour
and minute components are separated by a colon (e.g., "+01:00" or "+0100").
-/
def toIsoString (offset : Offset) (colon : Bool) : String :=
  let (sign, time) := if offset.second.val ≥ 0 then ("+", offset.second) else ("-", -offset.second)
  let hour : Hour.Offset := time.toHours
  let minute := Int.ediv (Int.tmod time.val 3600) 60
  let hourStr := if hour.val < 10 then s!"0{hour.val}" else toString hour.val
  let minuteStr := if minute < 10 then s!"0{minute}" else toString minute
    if colon then s!"{sign}{hourStr}:{minuteStr}"
    else s!"{sign}{hourStr}{minuteStr}"

/--
A zero `Offset` representing UTC (no offset).
-/
def zero : Offset :=
  { second := 0 }

/--
Creates an `Offset` from a given number of hour.
-/
def ofHours (n : Hour.Offset) : Offset :=
  ofSeconds n.toSeconds

/--
Creates an `Offset` from a given number of hours and minutes.
-/
def ofHoursAndMinutes (n : Hour.Offset) (m : Minute.Offset) : Offset :=
  ofSeconds (n.toSeconds + m.toSeconds)

end TimeZone.Offset

/--
A TimeZone structure that stores the timezone offset, the name, abbreviation and if it's in daylight
saving time.
-/
structure TimeZone where

  /--
  The `Offset` of the date time.
  -/
  offset : TimeZone.Offset

  /--
  The name of the time zone.
  -/
  name : String

  /--
  The abbreviation of the time zone.
  -/
  abbreviation : String

  /--
  Day light saving flag.
  -/
  isDST : Bool
deriving Inhabited, Repr, DecidableEq

namespace TimeZone

/--
A zeroed `Timezone` representing UTC (no offset).
-/
def UTC : TimeZone :=
  TimeZone.mk (Offset.zero) "UTC" "UTC" false

/--
A zeroed `Timezone` representing GMT (no offset).
-/
def GMT : TimeZone :=
  TimeZone.mk (Offset.zero) "Greenwich Mean Time" "GMT" false

/--
Creates a `Timestamp` from a given number of hour.
-/
def ofHours (name : String) (abbreviation : String) (n : Hour.Offset) (isDST : Bool := false) : TimeZone :=
  TimeZone.mk (Offset.ofHours n) name abbreviation isDST

/--
Creates a `Timestamp` from a given number of second.
-/
def ofSeconds (name : String) (abbreviation : String) (n : Second.Offset) (isDST : Bool := false) : TimeZone :=
  TimeZone.mk (Offset.ofSeconds n) name abbreviation isDST

/--
Gets the number of seconds in a timezone offset.
-/
def toSeconds (tz : TimeZone) : Second.Offset :=
  tz.offset.second

end TimeZone

namespace Timestamp

/--
Converts a `Timestamp` to a `WallTime` for a given timezone `offset`. The result is the local
civil time: `wall = UTC + offset`.
-/
@[inline]
def toWallTime (ts : Timestamp) (offset : TimeZone.Offset) : WallTime :=
  WallTime.ofDuration (ts.val + offset.second)

/--
Creates a `Timestamp` from a `WallTime` and a timezone `offset`. Assumes the `WallTime` represents
civil time at the given offset: `UTC = wall − offset`.
-/
@[inline]
def ofWallTime (wt : WallTime) (offset : TimeZone.Offset) : Timestamp :=
  Timestamp.ofDurationSinceUnixEpoch (wt.val - offset.second)

end Timestamp

namespace WallTime

/--
Converts a `WallTime` to a `Timestamp` given a timezone `offset`. The `WallTime` is treated as
civil time at the given offset: `UTC = wall − offset`.
-/
@[inline]
def toTimestamp (wt : WallTime) (offset : TimeZone.Offset) : Timestamp :=
  Timestamp.ofWallTime wt offset

/--
Creates a `WallTime` from a `Timestamp` given a timezone `offset`. The result is the local
civil time: `wall = UTC + offset`.
-/
@[inline]
def ofTimestamp (ts : Timestamp) (offset : TimeZone.Offset) : WallTime :=
  Timestamp.toWallTime ts offset

end WallTime
```
