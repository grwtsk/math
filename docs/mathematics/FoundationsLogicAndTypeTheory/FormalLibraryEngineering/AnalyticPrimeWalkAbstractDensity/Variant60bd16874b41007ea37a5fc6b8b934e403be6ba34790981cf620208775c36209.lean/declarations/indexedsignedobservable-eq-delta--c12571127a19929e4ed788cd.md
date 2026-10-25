# indexedSignedObservable_eq_delta

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3435db97-55c8-315f-7430-f1bd489dff72",
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
  "slug": "indexedsignedobservable-eq-delta--c12571127a19929e4ed788cd",
  "source": {
    "blob": "427795df8bd4b3df31b54eb022f12949346c33bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 73,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AnalyticPrimeWalkAbstractDensity/Variant60bd16874b41007ea37a5fc6b8b934e403be6ba34790981cf620208775c36209.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c12571127a19929e4ed788cd512ac3795c6b326704080b28ee6ed788357dc89a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AnalyticPrimeWalkAbstractDensity/Variant60bd16874b41007ea37a5fc6b8b934e403be6ba34790981cf620208775c36209.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3435db97-55c8-315f-7430-f1bd489dff72`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–90.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AnalyticPrimeWalkAbstractDensity/Variant60bd16874b41007ea37a5fc6b8b934e403be6ba34790981cf620208775c36209.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AnalyticPrimeWalkAbstractDensity/Variant60bd16874b41007ea37a5fc6b8b934e403be6ba34790981cf620208775c36209.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `427795df8bd4b3df31b54eb022f12949346c33bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
