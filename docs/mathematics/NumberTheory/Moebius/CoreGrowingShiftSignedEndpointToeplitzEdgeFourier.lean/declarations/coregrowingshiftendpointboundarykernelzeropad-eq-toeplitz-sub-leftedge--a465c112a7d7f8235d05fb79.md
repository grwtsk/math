# coreGrowingShiftEndpointBoundaryKernelZeroPad_eq_toeplitz_sub_leftEdge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:adf83007-9b29-23f5-e02d-439ae1d7acf3",
  "kind": "theorem",
  "lexical_name": "coreGrowingShiftEndpointBoundaryKernelZeroPad_eq_toeplitz_sub_leftEdge",
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
  "slug": "coregrowingshiftendpointboundarykernelzeropad-eq-toeplitz-sub-leftedge--a465c112a7d7f8235d05fb79",
  "source": {
    "blob": "9a2d6f38f580ce97dd70fe012f8edbfa818654ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 458,
    "line": 438,
    "path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointToeplitzEdgeFourier.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a465c112a7d7f8235d05fb7932ccc12306cd20bfe1ead5396364e5676692aa25",
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

Occurrence: `result:adf83007-9b29-23f5-e02d-439ae1d7acf3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 438–458.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coreGrowingShiftEndpointBoundaryKernelZeroPad_eq_toeplitz_sub_leftEdge
    (j : ℕ)
    (x y : CoreGrowingShiftEndpointFourierIndex j) :
    coreGrowingShiftEndpointBoundaryKernelZeroPad j x y =
      coreGrowingShiftEndpointToeplitzBulkKernelZeroPad j x y -
        coreGrowingShiftEndpointLeftEdgeCorrectionKernelZeroPad j x y := by
  by_cases hsupport : 1 ≤ x.val ∧ x.val < y.val
  · have hcoef :=
      coreGrowingShiftEndpointAggregateBoundaryKernel_eq_toeplitz_sub_leftEdge
        (j := j) (n := x.val) (m := y.val)
        hsupport.1 hsupport.2 (ZMod.val_lt y)
    simp [coreGrowingShiftEndpointBoundaryKernelZeroPad,
      coreGrowingShiftEndpointToeplitzBulkKernelZeroPad,
      coreGrowingShiftEndpointLeftEdgeCorrectionKernelZeroPad,
      hsupport, hcoef]
  · simp [coreGrowingShiftEndpointBoundaryKernelZeroPad,
      coreGrowingShiftEndpointToeplitzBulkKernelZeroPad,
      coreGrowingShiftEndpointLeftEdgeCorrectionKernelZeroPad,
      hsupport]

/-- Iterated finite DFT is linear over kernel subtraction. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointToeplitzEdgeFourier.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointToeplitzEdgeFourier.lean#L438).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a2d6f38f580ce97dd70fe012f8edbfa818654ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
