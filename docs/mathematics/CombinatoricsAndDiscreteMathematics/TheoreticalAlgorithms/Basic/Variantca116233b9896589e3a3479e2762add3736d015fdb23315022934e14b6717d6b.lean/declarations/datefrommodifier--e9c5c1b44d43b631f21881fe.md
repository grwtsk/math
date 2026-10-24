# dateFromModifier

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d7b97d430a30cd60b2b414a7b8b6cf3419dfb146ceaedd0396420188430fac29",
  "kind": "def",
  "lexical_name": "dateFromModifier",
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
  "slug": "datefrommodifier--e9c5c1b44d43b631f21881fe",
  "source": {
    "blob": "4221feb8f385c81a6444dd1322886c149cde7746",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 554,
    "line": 495,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantca116233b9896589e3a3479e2762add3736d015fdb23315022934e14b6717d6b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e9c5c1b44d43b631f21881fec92841cf01717210de5d65fd180f7db31404a9cc",
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

Occurrence: `declaration:d7b97d430a30cd60b2b414a7b8b6cf3419dfb146ceaedd0396420188430fac29`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 495–554.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def dateFromModifier (dateformat : DateFormat) (date : DateTime) : TypeFormat modifier :=
  let firstDay := dateformat.firstDayOfWeek
  let minDays := dateformat.minimalDaysInFirstWeek
  let tz := date.timezone
  match modifier with
  | .G _ => date.era
  | .y _ => date.year
  | .u _ => date.year
  | .Y _ => date.weekYear firstDay minDays
  | .D _ => Sigma.mk _ date.dayOfYear
  | .M _ | .L _ => date.month
  | .d _ => date.day
  | .Q _ | .q _ => date.quarter
  | .w _ => date.weekOfYear firstDay minDays
  | .W _ => date.weekOfMonth firstDay
  | .E _ | .e _ | .c _ => date.weekday
  | .F _ => date.alignedWeekOfMonth
  | .a _ => HourMarker.ofOrdinal date.hour
  | .b _ => classifyDayPeriod date.hour date.minute date.date.get.time.second
  | .B _ => classifyExtendedDayPeriod date.hour date.minute date.date.get.time.second
  | .h _ => HourMarker.toRelative date.hour |>.fst
  | .K _ => date.hour.emod 12 (by decide)
  | .k _ => date.hour.shiftTo1BasedHour
  | .H _ => date.hour
  | .m _ => date.minute
  | .s _ => date.date.get.time.second
  | .S _ => date.nanosecond
  | .A _ => date.date.get.time.toMilliseconds
  | .n _ => date.nanosecond
  | .N _ => date.date.get.time.toNanoseconds
  | .V .unknown => "unk"
  | .V .short =>
    if tz.name.startsWith "+" || tz.name.startsWith "-"
      then s!"GMT{toIsoString tz.offset .yes .no true}"
      else tz.name
  | .V .full =>
    if tz.name.startsWith "+" || tz.name.startsWith "-"
      then s!"GMT{toIsoString tz.offset .yes .no true}"
      else tz.name
  | .z .short =>
    if tz.abbreviation.startsWith "+" || tz.abbreviation.startsWith "-"
      then s!"GMT{toIsoString tz.offset .yes .no true}"
      else tz.abbreviation
  | .z .full =>
    if tz.name.startsWith "+" || tz.name.startsWith "-"
      then s!"GMT{toIsoString tz.offset .yes .no true}"
      else tz.name
  | .v .short =>
    if tz.abbreviation.startsWith "+" || tz.abbreviation.startsWith "-"
      then s!"GMT{toIsoString tz.offset .yes .no true}"
      else tz.abbreviation
  | .v .full =>
    if tz.name.startsWith "+" || tz.name.startsWith "-"
      then s!"GMT{toIsoString tz.offset .yes .no true}"
      else tz.name
  | .O _ => tz.offset
  | .X _ => tz.offset
  | .x _ => tz.offset
  | .Z _ => tz.offset

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantca116233b9896589e3a3479e2762add3736d015fdb23315022934e14b6717d6b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantca116233b9896589e3a3479e2762add3736d015fdb23315022934e14b6717d6b.lean#L495).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4221feb8f385c81a6444dd1322886c149cde7746` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
