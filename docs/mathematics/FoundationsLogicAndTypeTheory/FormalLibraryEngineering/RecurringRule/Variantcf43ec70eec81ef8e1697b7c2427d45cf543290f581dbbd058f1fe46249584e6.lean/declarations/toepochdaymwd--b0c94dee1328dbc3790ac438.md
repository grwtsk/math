# toEpochDayMWD

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:08abb04f723591d46e8b01627e12217a3805453e8c859f081584e1e4a6ac8aad",
  "kind": "def",
  "lexical_name": "toEpochDayMWD",
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
  "slug": "toepochdaymwd--b0c94dee1328dbc3790ac438",
  "source": {
    "blob": "56e413d5e7f46ccecffacc4685ac395fc0f151ae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 53,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecurringRule/Variantcf43ec70eec81ef8e1697b7c2427d45cf543290f581dbbd058f1fe46249584e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b0c94dee1328dbc3790ac4381c2494dc41df9a9ca7bbeec405d9d13dd85db257",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecurringRule/Variantcf43ec70eec81ef8e1697b7c2427d45cf543290f581dbbd058f1fe46249584e6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:08abb04f723591d46e8b01627e12217a3805453e8c859f081584e1e4a6ac8aad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
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
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecurringRule/Variantcf43ec70eec81ef8e1697b7c2427d45cf543290f581dbbd058f1fe46249584e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecurringRule/Variantcf43ec70eec81ef8e1697b7c2427d45cf543290f581dbbd058f1fe46249584e6.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `56e413d5e7f46ccecffacc4685ac395fc0f151ae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
