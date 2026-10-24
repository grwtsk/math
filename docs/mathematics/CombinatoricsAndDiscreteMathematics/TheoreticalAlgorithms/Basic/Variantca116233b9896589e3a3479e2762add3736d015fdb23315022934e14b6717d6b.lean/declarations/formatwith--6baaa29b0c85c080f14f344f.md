# formatWith

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:66f7123f3ccfebbc7dfa508ed21674ac7d257ab47a8a93248c28b5c307332a26",
  "kind": "def",
  "lexical_name": "formatWith",
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
  "slug": "formatwith--6baaa29b0c85c080f14f344f",
  "source": {
    "blob": "4221feb8f385c81a6444dd1322886c149cde7746",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 494,
    "line": 327,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantca116233b9896589e3a3479e2762add3736d015fdb23315022934e14b6717d6b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6baaa29b0c85c080f14f344f3c82c24d5f79972e4315dea3291a2999d0abe4fb",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantca116233b9896589e3a3479e2762add3736d015fdb23315022934e14b6717d6b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:66f7123f3ccfebbc7dfa508ed21674ac7d257ab47a8a93248c28b5c307332a26`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 327–494.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def formatWith (dateformat : DateFormat) (modifier : Modifier) (data : TypeFormat modifier) : String :=
  match modifier with
  | .G format =>
    match format with
    | .short => formatEraShort dateformat.symbols data
    | .full  => formatEraLong dateformat.symbols data
    | .narrow => formatEraNarrow dateformat.symbols data
    | .twoLetterShort => formatEraShort dateformat.symbols data
  | .y format =>
    let info := data.toInt
    let info := if info ≤ 0 then -info + 1 else info
    match format with
    | .any      => pad 0 info
    | .twoDigit => pad 2 (info % 100)
    | .fourDigit => pad 4 info
    | .extended n => pad n info
  | .u format =>
    match format with
    | .any      => pad 0 (data.toInt)
    | .twoDigit => pad 2 (data.toInt % 100)
    | .fourDigit => pad 4 data.toInt
    | .extended n => pad n data.toInt
  | .Y format =>
    let info := data.toInt
    let info := if info ≤ 0 then -info + 1 else info
    match format with
    | .any      => pad 0 info
    | .twoDigit => pad 2 (info % 100)
    | .fourDigit => pad 4 info
    | .extended n => pad n info
  | .D format =>
    pad format.padding data.snd.val
  | .M format | .L format =>
    match format with
    | .inl fmt  => pad fmt.padding data.val
    | .inr .short => formatMonthShort dateformat.symbols data
    | .inr .full  => formatMonthLong dateformat.symbols data
    | .inr .narrow => formatMonthNarrow dateformat.symbols data
    | .inr .twoLetterShort => formatMonthShort dateformat.symbols data
  | .d format =>
    pad format.padding data.val
  | .Q format | .q format =>
    match format with
    | .inl fmt  => pad fmt.padding data.val
    | .inr .short  => formatQuarterShort dateformat.symbols data
    | .inr .full   => formatQuarterLong dateformat.symbols data
    | .inr .narrow => formatQuarterNarrow dateformat.symbols data
    | .inr .twoLetterShort => formatQuarterNumber data
  | .w format =>
    pad format.padding data.val
  | .W format =>
    pad format.padding data.val
  | .E format =>
    match format with
    | .short  => formatWeekdayShort dateformat.symbols data
    | .full   => formatWeekdayLong dateformat.symbols data
    | .narrow => formatWeekdayNarrow dateformat.symbols data
    | .twoLetterShort => formatWeekdayTwoLetter dateformat.symbols data
  | .e format | .c format =>
    match format with
    | .inl fmt =>
      let firstOrd : Int := dateformat.firstDayOfWeek.toOrdinal.val
      let dayOrd : Int := data.toOrdinal.val
      pad fmt.padding ((dayOrd - firstOrd + 7) % 7 + 1)
    | .inr .short  => formatWeekdayShort dateformat.symbols data
    | .inr .full   => formatWeekdayLong dateformat.symbols data
    | .inr .narrow => formatWeekdayNarrow dateformat.symbols data
    | .inr .twoLetterShort => formatWeekdayTwoLetter dateformat.symbols data
  | .F format =>
    pad format.padding data.val
  | .a format =>
    match format with
    | .short => formatMarkerShort dateformat.symbols data
    | .full => formatMarkerShort dateformat.symbols data
    | .narrow => formatMarkerNarrow dateformat.symbols data
    | .twoLetterShort => formatMarkerShort dateformat.symbols data
  | .b format =>
    match format with
    | .short  => formatDayPeriod dateformat.symbols.dayPeriodShort data
    | .full   => formatDayPeriod dateformat.symbols.dayPeriodLong data
    | .narrow => formatDayPeriod dateformat.symbols.dayPeriodNarrow data
    | .twoLetterShort => formatDayPeriod dateformat.symbols.dayPeriodShort data
  | .B format =>
    match format with
    | .short  => formatExtendedDayPeriod dateformat.symbols.extendedDayPeriodShort data
    | .full   => formatExtendedDayPeriod dateformat.symbols.extendedDayPeriodLong data
    | .narrow => formatExtendedDayPeriod dateformat.symbols.extendedDayPeriodNarrow data
    | .twoLetterShort => formatExtendedDayPeriod dateformat.symbols.extendedDayPeriodShort data
  | .h format => pad format.padding data.val
  | .K format => pad format.padding data.val
  | .k format => pad format.padding data.val
  | .H format => pad format.padding data.val
  | .m format => pad format.padding data.val
  | .s format => pad format.padding data.val
  | .S format =>
    match format with
    | .nano      => pad 9 data.val
    | .truncated n =>
      -- Pad to 9 digits first so truncation is from the left of the full nanosecond string
      let s := leftPadAscii 9 '0' (toString data.val)
      (s.take n).toString
  | .A format =>
    pad format.padding data.val
  | .n format =>
    pad format.padding data.val
  | .N format =>
    pad format.padding data.val
  | .V format =>
    match format with
    | .unknown => "unk"
    | .short   => data
    | .full    => data
  | .z format =>
    match format with
    | .short => data
    | .full  => data
  | .v format =>
    match format with
    | .short => data
    | .full  => data
  | .O format =>
    match format with
    | .short =>
      if data.second == 0 then "GMT"
      else
        let (sign, time) := if data.second.val ≥ 0 then ("+", data.second) else ("-", -data.second)
        let t := PlainTime.ofSeconds time
        let pad := leftPadAscii 2 '0' ∘ toString
        if t.minute.val == 0
          then s!"GMT{sign}{t.hour.val}"
          else s!"GMT{sign}{t.hour.val}:{pad t.minute.val}"
    | .full  =>
      if data.second == 0 then "GMT" else s!"GMT{toIsoString data .yes .no true}"
  | .X format =>
    if data.second == 0 then
      "Z"
    else
      match format with
        | .hour => toIsoString data .optional .no false
        | .hourMinute => toIsoString data .yes .no false
        | .hourMinuteColon => toIsoString data .yes .no true
        | .hourMinuteSecond => toIsoString data .yes .optional false
        | .hourMinuteSecondColon => toIsoString data .yes .optional true
  | .x format =>
    match format with
    | .hour =>
      toIsoString data .optional .no false
    | .hourMinute =>
      toIsoString data .yes .no false
    | .hourMinuteColon =>
      toIsoString data .yes .no true
    | .hourMinuteSecond =>
      toIsoString data .yes .optional false
    | .hourMinuteSecondColon =>
      toIsoString data .yes .optional true
  | .Z format =>
    match format with
    | .hourMinute =>
      toIsoString data .yes .optional false
    | .full =>
      if data.second.val = 0
        then "GMT"
        else s!"GMT{toIsoString data .yes .no true}"
    | .hourMinuteSecondColon =>
      if data.second == 0
        then "Z"
        else toIsoString data .yes .optional true

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantca116233b9896589e3a3479e2762add3736d015fdb23315022934e14b6717d6b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantca116233b9896589e3a3479e2762add3736d015fdb23315022934e14b6717d6b.lean#L327).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4221feb8f385c81a6444dd1322886c149cde7746` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
