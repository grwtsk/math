# coreGrowingShiftEndpointTransverseInteriorTailLower_eq_rightEndpoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eccf844a-367d-9cbc-2372-679a74149bc9",
  "kind": "theorem",
  "lexical_name": "coreGrowingShiftEndpointTransverseInteriorTailLower_eq_rightEndpoint",
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
  "slug": "coregrowingshiftendpointtransverseinteriortaillower-eq-rightendpoint--6253f70122133f5bbd0fbe32",
  "source": {
    "blob": "64f490dc18a0e344c1cf99964cc3df081447714e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 76,
    "path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointRightEndpointHarmonicEstimate.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6253f70122133f5bbd0fbe32cb5129172e7ccee0825e20b49a095ee4b1de3ff3",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointRightEndpointHarmonicEstimate.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eccf844a-367d-9cbc-2372-679a74149bc9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coreGrowingShiftEndpointTransverseInteriorTailLower_eq_rightEndpoint
    {j h : ℕ}
    (hh : logarithmicShiftThreshold j < h) :
    coreGrowingShiftEndpointTransverseInteriorTailLower j h =
      max (logarithmicShiftThreshold j + 1)
        (2 ^ j + logarithmicShiftThreshold j - h) := by
  unfold coreGrowingShiftEndpointTransverseInteriorTailLower
    coreGrowingShiftEndpointIntervalTailLower
    coreGrowingShiftEndpointDifferencePrefixLower
    coreGrowingShiftEndpointAggregateTailStart
  rw [coreGrowingShiftEndpointAggregateEffectiveShift_eq_difference_of_threshold_lt
    hh]
  omega

/-- On the genuine branch the strict interior upper endpoint is `Y-h-1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointRightEndpointHarmonicEstimate.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointRightEndpointHarmonicEstimate.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `64f490dc18a0e344c1cf99964cc3df081447714e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
