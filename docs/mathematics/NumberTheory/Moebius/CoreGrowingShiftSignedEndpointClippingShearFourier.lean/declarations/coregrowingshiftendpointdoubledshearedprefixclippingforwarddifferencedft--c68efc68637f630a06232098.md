# coreGrowingShiftEndpointDoubledShearedPrefixClippingForwardDifferenceDFT2_eq_increment_add_boundary

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7352442c-edbf-6c57-01b0-9566a57c1c50",
  "kind": "theorem",
  "lexical_name": "coreGrowingShiftEndpointDoubledShearedPrefixClippingForwardDifferenceDFT2_eq_increment_add_boundary",
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
  "slug": "coregrowingshiftendpointdoubledshearedprefixclippingforwarddifferencedft--c68efc68637f630a06232098",
  "source": {
    "blob": "d40696d8b6117656219d0dc4812e2efe42c1a57a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 510,
    "line": 494,
    "path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointClippingShearFourier.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c68efc68637f630a0623209874b48c29da8039365b08ae348cab042d1fa06c24",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointClippingShearFourier.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7352442c-edbf-6c57-01b0-9566a57c1c50`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 494–510.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coreGrowingShiftEndpointDoubledShearedPrefixClippingForwardDifferenceDFT2_eq_increment_add_boundary
    (j : ℕ)
    (u s : CoreGrowingShiftEndpointDoubledFourierIndex j) :
    coreGrowingShiftEndpointDoubledShearedPrefixClippingForwardDifferenceDFT2
        j u s =
      coreGrowingShiftEndpointDoubledShearedPrefixClippingIncrementDFT2 j u s +
        coreGrowingShiftEndpointDoubledShearedPrefixClippingRightBoundaryDFT2
          j u s := by
  unfold coreGrowingShiftEndpointDoubledShearedPrefixClippingForwardDifferenceDFT2
    coreGrowingShiftEndpointDoubledShearedPrefixClippingIncrementDFT2
    coreGrowingShiftEndpointDoubledShearedPrefixClippingRightBoundaryDFT2
    finiteZModKernelDFT2
  simp_rw [coreGrowingShiftEndpointDoubledShearedPrefixClippingForwardDifference_eq_increment_add_boundary]
  rw [map_add]
  rfl

/-- Exact transverse multiplier formula for the sheared clipping kernel. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointClippingShearFourier.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointClippingShearFourier.lean#L494).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d40696d8b6117656219d0dc4812e2efe42c1a57a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
