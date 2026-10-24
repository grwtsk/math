# coreGrowingShiftSignedStaircaseWeight_eq_closedAnchorDrop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7f1e93ab-97b5-4a64-56e5-2a99753edbed",
  "kind": "theorem",
  "lexical_name": "coreGrowingShiftSignedStaircaseWeight_eq_closedAnchorDrop",
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
  "slug": "coregrowingshiftsignedstaircaseweight-eq-closedanchordrop--85cea31fece4bc54c7ee09e6",
  "source": {
    "blob": "62f56bfbe4f46eec878fa44bd00e298ae782a08f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 99,
    "path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointDifferenceCorrectionFourier.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:85cea31fece4bc54c7ee09e6b5e539fd15b2f1d27e8a4c7f8c3a1a9d75d5d91f",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointDifferenceCorrectionFourier.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7f1e93ab-97b5-4a64-56e5-2a99753edbed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coreGrowingShiftSignedStaircaseWeight_eq_closedAnchorDrop
    {j h A B N : ℕ}
    (hN : N ∈ coreGrowingShiftEndpointClosedIntervalAnchorSet j h A B) :
    coreGrowingShiftSignedStaircaseWeight j N h =
      coreGrowingShiftEndpointReciprocalDrop
        (coreGrowingShiftEndpointAggregateAnchorDenominator j) := by
  have hmem := hN
  simp only [coreGrowingShiftEndpointClosedIntervalAnchorSet,
    Finset.mem_Ico] at hmem
  unfold coreGrowingShiftSignedStaircaseWeight
    coreGrowingShiftEndpointReciprocalDrop
  rw [coreGrowingShiftSignedStaircaseDenominator_eq_max]
  have hmax :
      max (coreGrowingShiftEndpointAggregateAnchorDenominator j)
          (N + coreGrowingShiftEndpointAggregateEffectiveShift j h) =
        coreGrowingShiftEndpointAggregateAnchorDenominator j := by
    unfold coreGrowingShiftEndpointAggregateTailStart
      coreGrowingShiftEndpointAggregateAnchorDenominator at hmem ⊢
    apply max_eq_left
    omega
  rw [hmax]

/-- On the tail part of an arbitrary interval, the inherited staircase weight
is the literal affine reciprocal drop. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointDifferenceCorrectionFourier.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointDifferenceCorrectionFourier.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `62f56bfbe4f46eec878fa44bd00e298ae782a08f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
