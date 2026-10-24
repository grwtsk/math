# build

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3f871ff58a6d36b3587c0409e40373dc96b3ed35ae07a63aff88a2164e1597b8",
  "kind": "def",
  "lexical_name": "build",
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
  "slug": "build--2afcb1147f64f76b37ca475e",
  "source": {
    "blob": "4221feb8f385c81a6444dd1322886c149cde7746",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1057,
    "line": 993,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantca116233b9896589e3a3479e2762add3736d015fdb23315022934e14b6717d6b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2afcb1147f64f76b37ca475ec21a2b8804d384c994c14047a6a4a7eccc157311",
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

Occurrence: `declaration:3f871ff58a6d36b3587c0409e40373dc96b3ed35ae07a63aff88a2164e1597b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 993–1057.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def build (builder : DateBuilder) (aw : Awareness) : Option DateTime :=
  let offset := builder.O <|> builder.X <|> builder.x <|> builder.Z |>.getD Offset.zero

  let tz : TimeZone := {
    offset,
    name := builder.V <|> builder.v <|> builder.z |>.getD (offset.toIsoString true),
    abbreviation := builder.zabbrev |>.getD (offset.toIsoString true),
    isDST := false,
  }

  let month := builder.M <|> builder.L |>.getD 0
  let day := builder.d |>.getD 0
  let era := (builder.G.getD .ce)

  let year
    := builder.u
    <|> ((convertYearAndEra · era) <$> builder.y)
    <|> builder.Y
    |>.getD 0

  -- Derive hour marker from `a`, then fall back to `b` and `B`.
  let markerOpt : Option HourMarker :=
    builder.a
    <|> (markerOfDayPeriod <$> builder.b)
    <|> (markerOfExtendedDayPeriod <$> builder.B)

  let hour : Option (Bounded.LE 0 23) :=
    if let some marker := markerOpt then
      marker.toAbsolute <$> builder.h
      <|> marker.toAbsolute <$> ((Bounded.LE.add · 1) <$> builder.K)
    else
      none

  let hour :=
    hour <|> (
      let one : Option (Bounded.LE 0 23) := builder.H
      let other : Option (Bounded.LE 0 23) := (Bounded.LE.sub · 1) <$> builder.k
      (one <|> other))
      |>.getD ⟨0, by decide⟩

  let minute := builder.m |>.getD 0
  let second := builder.s |>.getD 0
  let nano := (builder.n <|> builder.S) |>.getD 0

  let time
    :=  PlainTime.ofNanoseconds <$> builder.N
    <|> PlainTime.ofMilliseconds <$> builder.A
    |>.getD (PlainTime.mk hour minute second nano)

  let datetime : Option PlainDateTime :=
    if valid : year.Valid month day then
      let date : PlainDate := { year, month, day, valid }
      some { date, time }
    else
      none

  let zoneTz :=
    match aw with
    | .only newTz => newTz
    | .any => tz

  (DateTime.ofPlainDateTime · (ZoneRules.ofTimeZone zoneTz)) <$> datetime

end DateBuilder

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantca116233b9896589e3a3479e2762add3736d015fdb23315022934e14b6717d6b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantca116233b9896589e3a3479e2762add3736d015fdb23315022934e14b6717d6b.lean#L993).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4221feb8f385c81a6444dd1322886c149cde7746` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
