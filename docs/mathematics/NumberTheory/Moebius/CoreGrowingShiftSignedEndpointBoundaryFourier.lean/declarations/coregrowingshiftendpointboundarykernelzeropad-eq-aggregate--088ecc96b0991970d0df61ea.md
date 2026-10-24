# coreGrowingShiftEndpointBoundaryKernelZeroPad_eq_aggregate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f2ae9a5c-22e7-78b5-0ba4-8044b7ea7abe",
  "kind": "theorem",
  "lexical_name": "coreGrowingShiftEndpointBoundaryKernelZeroPad_eq_aggregate",
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
  "slug": "coregrowingshiftendpointboundarykernelzeropad-eq-aggregate--088ecc96b0991970d0df61ea",
  "source": {
    "blob": "b7340cf74940c51ce8871c52d340d8277fc03e94",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 395,
    "line": 375,
    "path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointBoundaryFourier.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:088ecc96b0991970d0df61ea7039857ad2609d7ee7db7b36d2424d65783d31e6",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointBoundaryFourier.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f2ae9a5c-22e7-78b5-0ba4-8044b7ea7abe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 375–395.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coreGrowingShiftEndpointBoundaryKernelZeroPad_eq_aggregate
    (j : ℕ)
    (x y : CoreGrowingShiftEndpointFourierIndex j) :
    coreGrowingShiftEndpointBoundaryKernelZeroPad j x y =
      coreGrowingShiftEndpointAggregateKernelZeroPad j x y := by
  by_cases hsupport : 1 ≤ x.val ∧ x.val < y.val
  · rw [coreGrowingShiftEndpointAggregateKernelZeroPad_eq_cast,
      coreGrowingShiftEndpointAggregateKernel_eq_boundary
        hsupport.1 hsupport.2 (ZMod.val_lt y)]
    simp [coreGrowingShiftEndpointBoundaryKernelZeroPad, hsupport]
  · have hzero :
        coreGrowingShiftEndpointAggregateKernelZeroPad j x y = 0 := by
      by_cases hxy : x.val < y.val
      · have hx0 : x.val = 0 := by omega
        exact coreGrowingShiftEndpointAggregateKernelZeroPad_eq_zero_of_left_zero hx0
      · exact
          coreGrowingShiftEndpointAggregateKernelZeroPad_eq_zero_of_not_lt hxy
    rw [hzero]
    simp [coreGrowingShiftEndpointBoundaryKernelZeroPad, hsupport]

/-- Two-dimensional DFT of the closed boundary kernel. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointBoundaryFourier.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointBoundaryFourier.lean#L375).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b7340cf74940c51ce8871c52d340d8277fc03e94` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
