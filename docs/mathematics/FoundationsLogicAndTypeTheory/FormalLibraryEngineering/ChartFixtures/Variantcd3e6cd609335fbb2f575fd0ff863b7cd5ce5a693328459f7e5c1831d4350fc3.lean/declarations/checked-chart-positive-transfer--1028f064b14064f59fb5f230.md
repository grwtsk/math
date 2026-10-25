# checked_chart_positive_transfer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "643039b7193415145fe37c4279748638086fbd0e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 145,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cd/cd3e6cd609335fbb2f575fd0ff863b7cd5ce5a693328459f7e5c1831d4350fc3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ab16a9a3-5cd9-44b1-6e25-546736e005cd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:485af5c5-20cc-a4db-3306-fdf85d7f6fff",
  "kind": "theorem",
  "lexical_name": "checked_chart_positive_transfer",
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
  "slug": "checked-chart-positive-transfer--1028f064b14064f59fb5f230",
  "source": {
    "blob": "643039b7193415145fe37c4279748638086fbd0e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 145,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ChartFixtures/Variantcd3e6cd609335fbb2f575fd0ff863b7cd5ce5a693328459f7e5c1831d4350fc3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1028f064b14064f59fb5f230caf869abccab6fabe2360b05341fce188c5263e0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ChartFixtures/Variantcd3e6cd609335fbb2f575fd0ff863b7cd5ce5a693328459f7e5c1831d4350fc3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:485af5c5-20cc-a4db-3306-fdf85d7f6fff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem checked_chart_positive_transfer :
    chartRank {0} emptyAtlas targetChart = some 1 ∧
    chartRank {0} (attachChart emptyAtlas sharedChart) targetChart = some 0 ∧
    chartResidual (attachChart emptyAtlas sharedChart) targetChart = ∅ ∧
    chartTransferGain {0} emptyAtlas sharedChart targetChart = some 1 := by
  exact ⟨ClosureFixtures.shared_rank_before, ClosureFixtures.shared_rank_after,
    ClosureFixtures.shared_residual_reduction.2, ClosureFixtures.positive_transfer_gain⟩

/-- A second checked chart may add accepted material with no transfer to these targets. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ChartFixtures/Variantcd3e6cd609335fbb2f575fd0ff863b7cd5ce5a693328459f7e5c1831d4350fc3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ChartFixtures/Variantcd3e6cd609335fbb2f575fd0ff863b7cd5ce5a693328459f7e5c1831d4350fc3.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `643039b7193415145fe37c4279748638086fbd0e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
