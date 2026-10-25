# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RecurringRule.Variant63a1843e865b8922002427e2bc22706a19bd1f90a461100e3aa5f33095d6b204

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4d9d8845f02af88ba323d75acdbc6914c1b8e96d` · SHA-256 `a88fde006fb99ccd402f82192cf8122a52e2d3bde38dae0a0466a37e69089222`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TransitionSpec.Variantcf43ec70eec81ef8e1697b7c2427d45cf543290f581dbbd058f1fe46249584e6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cf43ec70eec81ef8e1697b7c2427d45cf543290f581dbbd058f1fe46249584e6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.TransitionSpec.Variantcf43ec70eec81ef8e1697b7c2427d45cf543290f581dbbd058f1fe46249584e6","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"cf43ec70eec81ef8e1697b7c2427d45cf543290f581dbbd058f1fe46249584e6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Time/Zoned/RecurringRule.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sofia Rodrigues
-/
module

prelude
public import Std.Time.Date.Unit.Month
public import Std.Time.Date.Unit.Week
public import Std.Time.Date.Unit.Weekday
public import Std.Time.Zoned.TimeZone
public import Std.Time.Date

/-!
Types for recurring DST transition rules, used by `ZoneRules` and produced by POSIX TZ parsing.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TransitionSpec.Variantcf43ec70eec81ef8e1697b7c2427d45cf543290f581dbbd058f1fe46249584e6

public section

namespace Std.Time.TimeZone
open Internal

/--
Specifies how a DST transition date is expressed.
-/
inductive TransitionSpec where

  /--
  `Mm.w.d` form: month `m`, week `w` (1–5; 5 = last), ISO weekday `d`.
  -/
  | mwd (month : Month.Ordinal) (week : Week.Aligned.Ordinal) (day : Weekday.Ordinal)

  /--
  `Jn` form: Julian day 1–365 (Feb 29 never counted, even in leap years).
  -/
  | julian (day : Bounded.LE 1 365)

  /--
  `n` form: zero-based day 0–365 (Feb 29 counted in leap years).
  -/
  | julian0 (day : Bounded.LE 0 365)
deriving Repr

namespace TransitionSpec

/--
Returns the `Day.Offset` (days since epoch) for a `TransitionSpec.mwd` in the given year.

`Mm.w.d`: month `m`, week `w` (1–5; 5 = last), ISO weekday `d` (1 = Monday, 7 = Sunday).
Finds the `w`-th occurrence of weekday `d` in month `m`; if `w = 5`, returns the last occurrence.
-/
def toEpochDayMWD (year : Year.Offset) (month : Month.Ordinal) (week : Week.Aligned.Ordinal) (day : Weekday.Ordinal) : Day.Offset :=
  if week.val == 5 then
    -- "week 5" means the last occurrence of `day` in `month`.
    -- Start from the last day of the month and walk backwards to the desired weekday.
    let lastDay := month.days year.isLeap
    let lastOfMonth := PlainDate.ofYearMonthDayClip year month lastDay
    let lastWday := lastOfMonth.weekday.toOrdinal -- 1 = Monday … 7 = Sunday
    let diff : Bounded.LE 0 6 := (lastWday.subBounds day).emod 7 (by decide)
    lastOfMonth.toEpochDay - Day.Offset.ofInt diff.val
  else
    let firstOfMonth := PlainDate.ofYearMonthDayClip year month 1 -- First day of the month
    let firstWday := firstOfMonth.weekday.toOrdinal -- Weekday of the first day (1 = Monday … 7 = Sunday)
    let diff : Bounded.LE 0 6 := (day.subBounds firstWday).emod 7 (by decide)
    let firstOccurrence := firstOfMonth.toEpochDay + Day.Offset.ofInt diff.val
    let extra : Bounded.LE 0 28 := ((week.sub 1).mul_pos 7 (by decide))
    let extra := Day.Offset.ofInt extra.val
    firstOccurrence + extra

/--
Returns the `Day.Offset` (days since epoch) for a `TransitionSpec.julian` in the given year.

`Jn`: Julian day 1–365. Feb 29 is never counted, so in a leap year days ≥ 60 are shifted by one.
-/
def toEpochDayJulian (year : Year.Offset) (day : Bounded.LE 1 365) : Day.Offset :=
  let jan1 := PlainDate.ofYearMonthDayClip year 1 1
  let extra : Int := if year.isLeap && day.val >= 60 then 1 else 0
  jan1.toEpochDay + Day.Offset.ofInt (day.val - 1 + extra)

/--
Returns the `Day.Offset` (days since epoch) for a `TransitionSpec.julian0` in the given year.

`n`: zero-based day 0–365. Feb 29 is counted normally in leap years.
-/
def toEpochDayJulian0 (year : Year.Offset) (day : Bounded.LE 0 365) : Day.Offset :=
  let jan1 := PlainDate.ofYearMonthDayClip year 1 1
  jan1.toEpochDay + Day.Offset.ofInt day.val

/--
Returns the `Day.Offset` (days since epoch) for this `TransitionSpec` in the given year.
-/
def toEpochDay (spec : TransitionSpec) (year : Year.Offset) : Day.Offset :=
  match spec with
  | .mwd month week day => toEpochDayMWD year month week day
  | .julian day => toEpochDayJulian year day
  | .julian0 day => toEpochDayJulian0 year day

end TransitionSpec

/--
A single DST transition rule: a date specification and a wall-clock time.
-/
structure TransitionRule where

  /--
  How the transition date is specified.
  -/
  spec : TransitionSpec

  /--
  Time of day as seconds from midnight (default 7200 = 02:00).

  "The time has the same format as offset except that no leading sign ( '-' or '+' ) is allowed. The default, if time is not given, shall be 02:00:00."
  $8.3 https://pubs.opengroup.org/onlinepubs/9699919799/
  -/
  time : Second.Offset := 7200
deriving Repr

/--
Recurring DST details for a zone that observes daylight saving time.
-/
structure DaylightSavingRule where

  /--
  DST abbreviation.
  -/
  name : String

  /--
  DST UTC offset (east-positive).
  -/
  offset : TimeZone.Offset

  /--
  Rule for the start of DST, if any.
  -/
  start : Option TransitionRule := none

  /--
  Rule for the end of DST, if any.
  -/
  end_ : Option TransitionRule := none
deriving Repr

/--
Recurring rule describing standard and DST zones, as found in a POSIX TZ string or TZif footer.
-/
structure RecurringRule where

  /--
  Standard time abbreviation.
  -/
  stdName : String

  /--
  Standard UTC offset (east-positive).
  -/
  stdOffset : TimeZone.Offset

  /--
  DST details, if this zone observes DST.
  -/
  dst : Option DaylightSavingRule := none
deriving Repr

end Std.Time.TimeZone
```
