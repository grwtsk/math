# TransitionRule

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:504d1ae3d1b269a48fd0c1f1d755224dcb8b9e7eeead3cff0724c07b2405263c",
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
  "slug": "transitionrule--35fd5488a7c28dbec322eeda",
  "source": {
    "blob": "56e413d5e7f46ccecffacc4685ac395fc0f151ae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 104,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecurringRule/Variantcf43ec70eec81ef8e1697b7c2427d45cf543290f581dbbd058f1fe46249584e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:35fd5488a7c28dbec322eeda9fd3d77e5272658af09d1ce685dc0861db42b1fa",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecurringRule/Variantcf43ec70eec81ef8e1697b7c2427d45cf543290f581dbbd058f1fe46249584e6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:504d1ae3d1b269a48fd0c1f1d755224dcb8b9e7eeead3cff0724c07b2405263c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–122.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecurringRule/Variantcf43ec70eec81ef8e1697b7c2427d45cf543290f581dbbd058f1fe46249584e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecurringRule/Variantcf43ec70eec81ef8e1697b7c2427d45cf543290f581dbbd058f1fe46249584e6.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `56e413d5e7f46ccecffacc4685ac395fc0f151ae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
