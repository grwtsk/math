# coreGrowingShiftEndpointDifferenceIntervalKernel_eq_boundary

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:51c52aa5-39e4-29d4-f1ae-97bb85f95431",
  "kind": "theorem",
  "lexical_name": "coreGrowingShiftEndpointDifferenceIntervalKernel_eq_boundary",
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
  "slug": "coregrowingshiftendpointdifferenceintervalkernel-eq-boundary--5a8afc7bc0205902295b79a0",
  "source": {
    "blob": "9a2d6f38f580ce97dd70fe012f8edbfa818654ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 287,
    "line": 273,
    "path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointToeplitzEdgeFourier.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5a8afc7bc0205902295b79a027ba08b88a4d72741f8ac00aea5f8e15f34d14ec",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointToeplitzEdgeFourier.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:51c52aa5-39e4-29d4-f1ae-97bb85f95431`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 273–287.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coreGrowingShiftEndpointDifferenceIntervalKernel_eq_boundary
    (j h A B : ℕ) :
    coreGrowingShiftEndpointDifferenceIntervalKernel j h A B =
      coreGrowingShiftEndpointDifferenceIntervalBoundaryKernel j h A B := by
  unfold coreGrowingShiftEndpointDifferenceIntervalKernel
    coreGrowingShiftEndpointDifferenceIntervalBoundaryKernel
  rw [coreGrowingShiftEndpointDifferenceInterval_eq_anchor_union_tail,
    Finset.sum_union
      (coreGrowingShiftEndpointDifferenceIntervalAnchor_disjoint_tail
        j h A B),
    coreGrowingShiftEndpointDifferenceIntervalAnchorSum,
    coreGrowingShiftEndpointDifferenceIntervalTailSum]

/-- Translation-invariant strict-Toeplitz bulk coefficient.  It depends only
on the endpoint difference. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointToeplitzEdgeFourier.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointToeplitzEdgeFourier.lean#L273).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a2d6f38f580ce97dd70fe012f8edbfa818654ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
