# TransitionRule

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8f1a2b4eeeb80e70a26c05387e04bc8d77a0d8afbbd088b038171a97dd6e9084",
  "kind": "structure",
  "lexical_name": "TransitionRule",
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
  "slug": "transitionrule--c297ef938dcd2c5943dfee99",
  "source": {
    "blob": "4d9d8845f02af88ba323d75acdbc6914c1b8e96d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 112,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecurringRule/Variant63a1843e865b8922002427e2bc22706a19bd1f90a461100e3aa5f33095d6b204.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c297ef938dcd2c5943dfee99025dd0142b9dc64b6af9c40e0e478d7a76f502bd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecurringRule/Variant63a1843e865b8922002427e2bc22706a19bd1f90a461100e3aa5f33095d6b204.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8f1a2b4eeeb80e70a26c05387e04bc8d77a0d8afbbd088b038171a97dd6e9084`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
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
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecurringRule/Variant63a1843e865b8922002427e2bc22706a19bd1f90a461100e3aa5f33095d6b204.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecurringRule/Variant63a1843e865b8922002427e2bc22706a19bd1f90a461100e3aa5f33095d6b204.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d9d8845f02af88ba323d75acdbc6914c1b8e96d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
