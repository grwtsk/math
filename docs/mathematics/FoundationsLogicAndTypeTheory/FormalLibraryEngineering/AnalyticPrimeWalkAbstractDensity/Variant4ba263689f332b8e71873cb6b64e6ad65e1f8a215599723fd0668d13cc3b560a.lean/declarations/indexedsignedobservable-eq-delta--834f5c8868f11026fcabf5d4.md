# indexedSignedObservable_eq_delta

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "959fece17ed5f6ba6ee2b9cb40e8befd7547f209",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 65,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4b/4ba263689f332b8e71873cb6b64e6ad65e1f8a215599723fd0668d13cc3b560a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7546d79d-bd69-fba7-a8c8-3c917b58e6ab",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:627257b3-8529-385a-9ce6-9000caaaafb5",
  "kind": "theorem",
  "lexical_name": "indexedSignedObservable_eq_delta",
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
  "slug": "indexedsignedobservable-eq-delta--834f5c8868f11026fcabf5d4",
  "source": {
    "blob": "959fece17ed5f6ba6ee2b9cb40e8befd7547f209",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 65,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AnalyticPrimeWalkAbstractDensity/Variant4ba263689f332b8e71873cb6b64e6ad65e1f8a215599723fd0668d13cc3b560a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:834f5c8868f11026fcabf5d4bc02a61ae606201e479c90eebd729cd55f675d0b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AnalyticPrimeWalkAbstractDensity/Variant4ba263689f332b8e71873cb6b64e6ad65e1f8a215599723fd0668d13cc3b560a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:627257b3-8529-385a-9ce6-9000caaaafb5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem indexedSignedObservable_eq_delta
    (model : AnalyticBridgeHypotheses) (K : ℕ) (hK : 0 < K) :
    indexedSignedObservable model K =
      model.delta (model.cutoffAtEligibleIndex K) := by
  have hcount :
      eligibleCount model.counts (model.cutoffAtEligibleIndex K) = K :=
    model.cutoff_indexes_eligibleCount K hK
  have heligible :
      0 < eligibleCount model.counts (model.cutoffAtEligibleIndex K) := by
    rw [hcount]
    exact hK
  exact frobeniusPairing_errorOperatorAt
    model (model.cutoffAtEligibleIndex K) heligible

/-- The eligible-step sign event written directly in the checked matrix
coordinates.  The lower bound `2 <= K` matches the conventional normalization
of logarithmic density over positive nontrivial indices. -/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AnalyticPrimeWalkAbstractDensity/Variant4ba263689f332b8e71873cb6b64e6ad65e1f8a215599723fd0668d13cc3b560a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AnalyticPrimeWalkAbstractDensity/Variant4ba263689f332b8e71873cb6b64e6ad65e1f8a215599723fd0668d13cc3b560a.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `959fece17ed5f6ba6ee2b9cb40e8befd7547f209` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
