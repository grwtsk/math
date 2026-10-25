# DateFormatSymbols

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:59687d32f4dcd8cf51bf7fccec534bea57cfa8036e89916e1f7bbbd3ae4b9243",
  "kind": "structure",
  "lexical_name": "DateFormatSymbols",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "dateformatsymbols--7253f12419cef939999cff12",
  "source": {
    "blob": "8baee55986edd430a38f7680add71582730ba6d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 184,
    "line": 46,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DateFormat/Variantf56691e516cba4b622ce1a86233d3665bc452370eaa268da416208aab50cc7bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7253f12419cef939999cff12e9b210aac6c37d1017efe89a65f0bd1be6b1ab49",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DateFormat/Variantf56691e516cba4b622ce1a86233d3665bc452370eaa268da416208aab50cc7bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:59687d32f4dcd8cf51bf7fccec534bea57cfa8036e89916e1f7bbbd3ae4b9243`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–184.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure DateFormatSymbols where

  /--
  Full month names (12 elements, index 0 = January).
  -/
  monthLong : Vector String 12

  /--
  Abbreviated month names (12 elements, index 0 = Jan).
  -/
  monthShort : Vector String 12

  /--
  Narrow month names (12 elements, index 0 = J).
  -/
  monthNarrow : Vector String 12

  /--
  Full weekday names (7 elements, index 0 = Monday).
  -/
  weekdayLong : Vector String 7

  /--
  Abbreviated weekday names (7 elements, index 0 = Mon).
  -/
  weekdayShort : Vector String 7

  /--
  Narrow weekday names (7 elements, index 0 = M).
  -/
  weekdayNarrow : Vector String 7

  /--
  Two-letter abbreviated weekday names (7 elements, index 0 = Mo).
  Used by `EEEEEE`, `eeeeee`, `cccccc`.
  -/
  weekdayTwoLetter : Vector String 7

  /--
  Short era names (2 elements: index 0 = BCE, index 1 = CE).
  -/
  eraShort : Vector String 2

  /--
  Full era names (2 elements: index 0 = Before Common Era, index 1 = Common Era).
  -/
  eraLong : Vector String 2

  /--
  Narrow era names (2 elements: index 0 = B, index 1 = C).
  -/
  eraNarrow : Vector String 2

  /--
  Short quarter names (4 elements, index 0 = Q1).
  -/
  quarterShort : Vector String 4

  /--
  Full quarter names (4 elements, index 0 = 1st quarter).
  -/
  quarterLong : Vector String 4

  /--
  Narrow quarter names (4 elements, index 0 = 1).
  -/
  quarterNarrow : Vector String 4

  /--
  Short AM marker (used by `a`/`aa`/`aaa`).
  -/
  amShort : String

  /--
  Short PM marker (used by `a`/`aa`/`aaa`).
  -/
  pmShort : String

  /--
  Full AM marker (used by `aaaa`). Typically lowercase per CLDR ("ante meridiem").
  -/
  amLong : String

  /--
  Full PM marker (used by `aaaa`). Typically lowercase per CLDR ("post meridiem").
  -/
  pmLong : String

  /--
  Narrow AM marker (used by `aaaaa`).
  -/
  amNarrow : String

  /--
  Narrow PM marker (used by `aaaaa`).
  -/
  pmNarrow : String

  /--
  Short day-period strings for the `b` pattern (AM, PM, noon, midnight).
  Used by `b`/`bb`/`bbb`.
  -/
  dayPeriodShort : DayPeriodSymbols

  /--
  Full day-period strings for the `b` pattern (AM, PM, noon, midnight).
  Used by `bbbb`. Per TR35, AM/PM here are lowercase ("ante meridiem" / "post meridiem").
  -/
  dayPeriodLong : DayPeriodSymbols

  /--
  Narrow day-period strings for the `b` pattern (AM, PM, noon, midnight).
  Used by `bbbbb`.
  -/
  dayPeriodNarrow : DayPeriodSymbols

  /--
  Short extended-day-period strings for the `B` pattern (CLDR flexible day periods).
  Order: midnight, night, morning, noon, afternoon, evening.
  -/
  extendedDayPeriodShort : Vector String 6

  /--
  Full extended-day-period strings for the `B` pattern.
  Order: midnight, night, morning, noon, afternoon, evening.
  -/
  extendedDayPeriodLong : Vector String 6

  /--
  Narrow extended-day-period strings for the `B` pattern.
  Order: midnight, night, morning, noon, afternoon, evening.
  -/
  extendedDayPeriodNarrow : Vector String 6

namespace DateFormatSymbols

/--
English (US) locale symbols.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DateFormat/Variantf56691e516cba4b622ce1a86233d3665bc452370eaa268da416208aab50cc7bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DateFormat/Variantf56691e516cba4b622ce1a86233d3665bc452370eaa268da416208aab50cc7bd.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8baee55986edd430a38f7680add71582730ba6d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
