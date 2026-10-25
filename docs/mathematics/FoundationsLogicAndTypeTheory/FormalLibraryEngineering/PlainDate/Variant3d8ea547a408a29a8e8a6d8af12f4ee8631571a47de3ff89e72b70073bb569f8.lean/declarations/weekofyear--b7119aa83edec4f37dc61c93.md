# weekOfYear

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5ec9a8d7b6ecccafe544c99dcf63722e621e93700137b36f60e586b8b82dc44d",
  "kind": "def",
  "lexical_name": "weekOfYear",
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
  "slug": "weekofyear--b7119aa83edec4f37dc61c93",
  "source": {
    "blob": "afc3accd1c04f275c3d9b7d480b868946930cf10",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 394,
    "line": 371,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PlainDate/Variant3d8ea547a408a29a8e8a6d8af12f4ee8631571a47de3ff89e72b70073bb569f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b7119aa83edec4f37dc61c938a2a82044f2c130e9872c58b695fdb8b916024f6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PlainDate/Variant3d8ea547a408a29a8e8a6d8af12f4ee8631571a47de3ff89e72b70073bb569f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5ec9a8d7b6ecccafe544c99dcf63722e621e93700137b36f60e586b8b82dc44d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 371–394.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def weekOfYear (date : PlainDate) (firstDay : Weekday := .monday) (minDaysBounded : Bounded.LE 0 6 := .mk 4 (by decide)) : Week.OfYear.Ordinal :=
  let year := date.year
  let thisYearStart := startOfWeekBasedYear year firstDay minDaysBounded

  if date.toEpochDay < thisYearStart.toEpochDay then
    let prevYearStart := startOfWeekBasedYear (year - 1) firstDay minDaysBounded
    let interval := date.toEpochDay - prevYearStart.toEpochDay
    let interval := Bounded.LE.ofNatWrapping interval.val (by decide) (lo := 0) (hi := 370)
    let w := interval.ediv 7 (by decide)
    w.add 1
  else
    let nextYearStart := startOfWeekBasedYear (year + 1) firstDay minDaysBounded
    if date.toEpochDay >= nextYearStart.toEpochDay then
      1
    else
      let interval := date.toEpochDay - thisYearStart.toEpochDay
      let interval := Bounded.LE.ofNatWrapping interval.val (by decide) (lo := 0) (hi := 370)
      let w := interval.ediv 7 (by decide)
      w.add 1

/--
Returns the week-based year for the given `PlainDate`, using `firstDay` as the start of the week
and `minDays` as the minimum number of days in the first week of the year (default 4 for ISO 8601).
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PlainDate/Variant3d8ea547a408a29a8e8a6d8af12f4ee8631571a47de3ff89e72b70073bb569f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PlainDate/Variant3d8ea547a408a29a8e8a6d8af12f4ee8631571a47de3ff89e72b70073bb569f8.lean#L371).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `afc3accd1c04f275c3d9b7d480b868946930cf10` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
