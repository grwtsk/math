# parseWith

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b0125589816a6683e3d6fc02b4f3146370d5be73f0130855ee1d9759cc319c9f",
  "kind": "def",
  "lexical_name": "parseWith",
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
  "slug": "parsewith--cfa87b3e1cfc4f08b3b49d57",
  "source": {
    "blob": "4221feb8f385c81a6444dd1322886c149cde7746",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 880,
    "line": 742,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantca116233b9896589e3a3479e2762add3736d015fdb23315022934e14b6717d6b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cfa87b3e1cfc4f08b3b49d5778320b74dfa1dabfcf9fe8f3c2209ae950b6b0e5",
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

Occurrence: `declaration:b0125589816a6683e3d6fc02b4f3146370d5be73f0130855ee1d9759cc319c9f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 742–880.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def parseWith (config : FormatConfig) : (mod : Modifier) → Parser (TypeFormat mod)
  | .G format =>
    match format with
    | .short | .twoLetterShort => parseEraShort config.dateformat.symbols
    | .full => parseEraLong config.dateformat.symbols
    | .narrow => parseEraNarrow config.dateformat.symbols
  | .y format =>
    match format with
    | .any => Int.ofNat <$> parseAtLeastNum 1
    | .twoDigit => (2000 + ·) <$> Int.ofNat <$> parseNum 2
    | .fourDigit => Int.ofNat <$> parseNum 4
    | .extended n => Int.ofNat <$> parseNum n
  | .u format =>
    match format with
    | .any => parseSigned <| parseAtLeastNum 1
    | .twoDigit => (2000 + ·) <$> Int.ofNat <$> parseNum 2
    | .fourDigit => parseSigned <| parseNum 4
    | .extended n => parseSigned <| parseNum n
  | .Y format =>
    match format with
    | .any => parseSigned <| parseAtLeastNum 1
    | .twoDigit => (2000 + ·) <$> Int.ofNat <$> parseNum 2
    | .fourDigit => parseSigned <| parseNum 4
    | .extended n => parseSigned <| parseNum n
  | .D format => Sigma.mk true <$> parseNatToBounded (parseFlexibleNum format.padding)
  | .M format | .L format =>
    match format with
    | .inl fmt  => parseNatToBounded (parseFlexibleNum fmt.padding)
    | .inr .short | .inr .twoLetterShort => parseMonthShort config.dateformat.symbols
    | .inr .full   => parseMonthLong config.dateformat.symbols
    | .inr .narrow => parseMonthNarrow config.dateformat.symbols
  | .d format => parseNatToBounded (parseFlexibleNum format.padding)
  | .Q format | .q format =>
    match format with
    | .inl fmt  => parseNatToBounded (parseFlexibleNum fmt.padding)
    | .inr .short => parseQuarterShort config.dateformat.symbols
    | .inr .full  => parseQuarterLong config.dateformat.symbols
    | .inr .narrow | .inr .twoLetterShort => parseQuarterNarrow config.dateformat.symbols
  | .w format => parseNatToBounded (parseFlexibleNum format.padding)
  | .W format => parseNatToBounded (parseFlexibleNum format.padding)
  | .E format =>
    match format with
    | .short | .twoLetterShort => parseWeekdayShort config.dateformat.symbols
    | .full => parseWeekdayLong config.dateformat.symbols
    | .narrow => parseWeekdayNarrow config.dateformat.symbols
  | .e format | .c format =>
    match format with
    | .inl fmt => do
      let n ← parseFlexibleNum fmt.padding
      if ¬ (1 ≤ n ∧ n ≤ 7) then fail "need a natural number in the interval of 1 to 7"
      let firstOrd : Int := config.dateformat.firstDayOfWeek.toOrdinal.val
      let absOrd : Int := ((n : Int) - 1 + firstOrd - 1) % 7 + 1
      return Weekday.ofOrdinal (Bounded.LE.ofNatWrapping absOrd (by decide))
    | .inr .short => parseWeekdayShort config.dateformat.symbols
    | .inr .full  => parseWeekdayLong config.dateformat.symbols
    | .inr .narrow => parseWeekdayNarrow config.dateformat.symbols
    | .inr .twoLetterShort => parseWeekdayTwoLetter config.dateformat.symbols
  | .F format => parseNatToBounded (parseFlexibleNum format.padding)
  | .a format =>
    match format with
    | .short | .twoLetterShort => parseMarkerShort config.dateformat.symbols
    | .full => parseMarkerLong config.dateformat.symbols
    | .narrow => parseMarkerNarrow config.dateformat.symbols
  | .b format =>
    match format with
    | .short | .twoLetterShort => parseDayPeriodFrom config.dateformat.symbols.dayPeriodShort
    | .full => parseDayPeriodFrom config.dateformat.symbols.dayPeriodLong
    | .narrow => parseDayPeriodFrom config.dateformat.symbols.dayPeriodNarrow
  | .B format =>
    match format with
    | .short | .twoLetterShort => parseExtendedDayPeriodFrom config.dateformat.symbols.extendedDayPeriodShort
    | .full => parseExtendedDayPeriodFrom config.dateformat.symbols.extendedDayPeriodLong
    | .narrow => parseExtendedDayPeriodFrom config.dateformat.symbols.extendedDayPeriodNarrow
  | .h format => parseNatToBounded (parseFlexibleNum format.padding)
  | .K format => parseNatToBounded (parseFlexibleNum format.padding)
  | .k format => parseNatToBounded (parseFlexibleNum format.padding)
  | .H format => parseNatToBounded (parseFlexibleNum format.padding)
  | .m format => parseNatToBounded (parseFlexibleNum format.padding)
  | .s format =>
    if config.allowLeapSeconds then
      parseNatToBounded (parseFlexibleNum format.padding)
    else do
      let res : Bounded.LE 0 59 ← parseNatToBounded (parseFlexibleNum format.padding)
      return res.expandTop (by decide)
  | .S format =>
    match format with
    | .nano => parseNatToBounded (parseFlexibleNum 9)
    | .truncated n => parseNatToBounded (parseFractionNum n 9)
  | .A format => Millisecond.Offset.ofNat <$> (parseFlexibleNum format.padding)
  | .n format => parseNatToBounded (parseFlexibleNum format.padding)
  | .N format => Nanosecond.Offset.ofNat <$> (parseFlexibleNum format.padding)
  | .V format =>
    match format with
    | .unknown => pstring "unk" *> pure "unk"
    | .short | .full => parseIdentifier
  | .z format =>
    match format with
    | .short | .full => parseIdentifier
  | .v format =>
    match format with
    | .short | .full => parseIdentifier
  | .O format =>
    match format with
    | .short => pstring "GMT" *> parseOffset .optional .no true
    | .full  => pstring "GMT" *> parseOffset .yes .optional true
  | .X format =>
    let p : Parser Offset :=
      match format with
        | .hour => parseOffset .optional .no false
        | .hourMinute => parseOffset .yes .no false
        | .hourMinuteColon => parseOffset .yes .no true
        | .hourMinuteSecond => parseOffset .yes .optional false
        | .hourMinuteSecondColon => parseOffset .yes .optional true
    p <|> (pstring "Z" *> pure (Offset.ofSeconds 0))
  | .x format =>
    match format with
    | .hour =>
      parseOffset .optional .no false
    | .hourMinute =>
      parseOffset .yes .no false
    | .hourMinuteColon =>
      parseOffset .yes .optional true
    | .hourMinuteSecond =>
      parseOffset .yes .optional false
    | .hourMinuteSecondColon =>
      parseOffset .yes .yes true
  | .Z format =>
    match format with
    | .hourMinute =>
      parseOffset .yes .no false
    | .full => do
      skipString "GMT"
      let res ← optional (parseOffset .yes .no true)
      return res.getD Offset.zero
    | .hourMinuteSecondColon =>
      (skipString "Z" *> pure Offset.zero)
      <|> (parseOffset .yes .optional true)


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantca116233b9896589e3a3479e2762add3736d015fdb23315022934e14b6717d6b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantca116233b9896589e3a3479e2762add3736d015fdb23315022934e14b6717d6b.lean#L742).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4221feb8f385c81a6444dd1322886c149cde7746` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
