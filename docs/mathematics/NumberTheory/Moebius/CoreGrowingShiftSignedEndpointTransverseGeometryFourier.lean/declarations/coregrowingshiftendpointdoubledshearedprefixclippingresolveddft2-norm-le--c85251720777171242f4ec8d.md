# coreGrowingShiftEndpointDoubledShearedPrefixClippingResolvedDFT2_norm_le_regularEnvelope

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ff52f3f3-1b9a-3fcd-10ee-ec710ec8b599",
  "kind": "theorem",
  "lexical_name": "coreGrowingShiftEndpointDoubledShearedPrefixClippingResolvedDFT2_norm_le_regularEnvelope",
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
  "slug": "coregrowingshiftendpointdoubledshearedprefixclippingresolveddft2-norm-le--c85251720777171242f4ec8d",
  "source": {
    "blob": "ed2e17c534a6ea65d89e1f860e2d36a8699f9e75",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 312,
    "line": 295,
    "path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointTransverseGeometryFourier.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c85251720777171242f4ec8dc726dac8f4c7c5f6697f56019f7937bc46043de4",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointTransverseGeometryFourier.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ff52f3f3-1b9a-3fcd-10ee-ec710ec8b599`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 295–312.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coreGrowingShiftEndpointDoubledShearedPrefixClippingResolvedDFT2_norm_le_regularEnvelope
    {j L : ℕ}
    {u s : CoreGrowingShiftEndpointDoubledFourierIndex j}
    (hu : u ∈ coreGrowingShiftEndpointTransverseRegularFrequencySet j L) :
    ‖coreGrowingShiftEndpointDoubledShearedPrefixClippingResolvedDFT2 j u s‖ ≤
      coreGrowingShiftEndpointTransverseRegularResolventEnvelope j L *
        ‖coreGrowingShiftEndpointDoubledShearedPrefixClippingIncrementDFT2
            j u s +
          coreGrowingShiftEndpointDoubledShearedPrefixClippingRightBoundaryDFT2
            j u s‖ := by
  unfold coreGrowingShiftEndpointDoubledShearedPrefixClippingResolvedDFT2
  rw [norm_mul]
  exact mul_le_mul_of_nonneg_right
    (coreGrowingShiftEndpointTransverseMultiplier_inv_norm_le_regularEnvelope
      hu)
    (norm_nonneg _)

/-- Canonical regular resolved-kernel estimate at the logarithmic cutoff. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointTransverseGeometryFourier.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointTransverseGeometryFourier.lean#L295).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed2e17c534a6ea65d89e1f860e2d36a8699f9e75` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
