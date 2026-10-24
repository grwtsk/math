# coreGrowingShiftEndpointBoundaryKernelDFT2_eq_toeplitz_sub_leftEdge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2463a789-fb45-b69e-8e2e-a64d09baf21a",
  "kind": "theorem",
  "lexical_name": "coreGrowingShiftEndpointBoundaryKernelDFT2_eq_toeplitz_sub_leftEdge",
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
  "slug": "coregrowingshiftendpointboundarykerneldft2-eq-toeplitz-sub-leftedge--5df235baaf74594c11f4d7c7",
  "source": {
    "blob": "9a2d6f38f580ce97dd70fe012f8edbfa818654ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 521,
    "line": 497,
    "path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointToeplitzEdgeFourier.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5df235baaf74594c11f4d7c745f209d7c078073a4b73664872699c1dade780da",
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

Occurrence: `result:2463a789-fb45-b69e-8e2e-a64d09baf21a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 497–521.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coreGrowingShiftEndpointBoundaryKernelDFT2_eq_toeplitz_sub_leftEdge
    (j : ℕ)
    (r s : CoreGrowingShiftEndpointFourierIndex j) :
    coreGrowingShiftEndpointBoundaryKernelDFT2 j r s =
      coreGrowingShiftEndpointToeplitzBulkKernelDFT2 j r s -
        coreGrowingShiftEndpointLeftEdgeCorrectionKernelDFT2 j r s := by
  unfold coreGrowingShiftEndpointBoundaryKernelDFT2
    coreGrowingShiftEndpointToeplitzBulkKernelDFT2
    coreGrowingShiftEndpointLeftEdgeCorrectionKernelDFT2
  have hkernel :
      coreGrowingShiftEndpointBoundaryKernelZeroPad j =
        fun x y =>
          coreGrowingShiftEndpointToeplitzBulkKernelZeroPad j x y -
            coreGrowingShiftEndpointLeftEdgeCorrectionKernelZeroPad j x y := by
    funext x y
    exact
      coreGrowingShiftEndpointBoundaryKernelZeroPad_eq_toeplitz_sub_leftEdge
        j x y
  rw [hkernel]
  exact finiteZModKernelDFT2_sub
    (coreGrowingShiftEndpointToeplitzBulkKernelZeroPad j)
    (coreGrowingShiftEndpointLeftEdgeCorrectionKernelZeroPad j) r s

/-- Complete complex signed packet with the Toeplitz bulk and left-edge
correction retained inside one frequency sum. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointToeplitzEdgeFourier.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointToeplitzEdgeFourier.lean#L497).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a2d6f38f580ce97dd70fe012f8edbfa818654ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
