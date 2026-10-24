# coreGrowingShiftEndpointAggregateEffectiveShift_eq_difference_of_threshold_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2200d065-565e-59f9-0953-78450bf686ce",
  "kind": "theorem",
  "lexical_name": "coreGrowingShiftEndpointAggregateEffectiveShift_eq_difference_of_threshold_lt",
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
  "slug": "coregrowingshiftendpointaggregateeffectiveshift-eq-difference-of-thresho--a8a464dc43df34a4671c29d8",
  "source": {
    "blob": "28caa935325254ab091fb86c332abd052be70fbe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 39,
    "line": 31,
    "path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointTransverseEffectiveShiftSplitFourier.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a8a464dc43df34a4671c29d89c762e2666052a5c31bf5e01762b7d185ec69881",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointTransverseEffectiveShiftSplitFourier.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2200d065-565e-59f9-0953-78450bf686ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–39.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coreGrowingShiftEndpointAggregateEffectiveShift_eq_difference_of_threshold_lt
    {j h : ℕ}
    (hh : logarithmicShiftThreshold j < h) :
    coreGrowingShiftEndpointAggregateEffectiveShift j h = h := by
  unfold coreGrowingShiftEndpointAggregateEffectiveShift
  exact max_eq_left hh.le

/-- Positive ordinary differences whose effective shift remains capped at the
logarithmic threshold. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointTransverseEffectiveShiftSplitFourier.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointTransverseEffectiveShiftSplitFourier.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28caa935325254ab091fb86c332abd052be70fbe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
