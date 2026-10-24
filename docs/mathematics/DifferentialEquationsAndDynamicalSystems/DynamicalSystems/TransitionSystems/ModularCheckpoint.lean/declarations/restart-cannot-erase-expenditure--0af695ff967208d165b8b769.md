# restart_cannot_erase_expenditure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:17711d7a-d178-8dfc-9f91-5b4e1d7c7aae",
  "kind": "theorem",
  "lexical_name": "restart_cannot_erase_expenditure",
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
  "slug": "restart-cannot-erase-expenditure--0af695ff967208d165b8b769",
  "source": {
    "blob": "865bc64a18d69d2cf4325229ea08e0931dd0e1a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 681,
    "line": 673,
    "path": "GRWTSK/DynamicalSystems/TransitionSystems/ModularCheckpoint.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0af695ff967208d165b8b769e6d0f993e1f9000d708bb88cf6471d8cd71073a0",
  "verification": {
    "reference": "docs/verification/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/ModularCheckpoint.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:17711d7a-d178-8dfc-9f91-5b4e1d7c7aae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 673–681.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem restart_cannot_erase_expenditure {policy : Policy} (tracked : TrackedSession policy I)
    (freshAllowance : ℕ) (spent : 0 < totalExpenditure tracked.searchHistory) :
    totalExpenditure (tracked.restart freshAllowance).searchHistory ≠ 0 := by
  rw [tracked_restart_expenditure]
  omega

end TrackedRestart

end GRWTSK.ModularCheckpoint
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/ModularCheckpoint.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/DynamicalSystems/TransitionSystems/ModularCheckpoint.lean#L673).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `865bc64a18d69d2cf4325229ea08e0931dd0e1a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
