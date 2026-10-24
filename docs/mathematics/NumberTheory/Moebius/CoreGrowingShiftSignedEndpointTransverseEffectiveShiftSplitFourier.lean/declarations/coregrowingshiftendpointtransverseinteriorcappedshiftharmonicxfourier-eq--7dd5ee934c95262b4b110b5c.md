# coreGrowingShiftEndpointTransverseInteriorCappedShiftHarmonicXFourier_eq_zero_of_not_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c350ea5c-82cc-8d4f-bee2-0a874e4d7292",
  "kind": "theorem",
  "lexical_name": "coreGrowingShiftEndpointTransverseInteriorCappedShiftHarmonicXFourier_eq_zero_of_not_mem",
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
  "slug": "coregrowingshiftendpointtransverseinteriorcappedshiftharmonicxfourier-eq--7dd5ee934c95262b4b110b5c",
  "source": {
    "blob": "28caa935325254ab091fb86c332abd052be70fbe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 124,
    "path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointTransverseEffectiveShiftSplitFourier.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7dd5ee934c95262b4b110b5c5442c0961604c98fd1a45d2dcfa10667aa80f413",
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

Occurrence: `result:c350ea5c-82cc-8d4f-bee2-0a874e4d7292`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coreGrowingShiftEndpointTransverseInteriorCappedShiftHarmonicXFourier_eq_zero_of_not_mem
    {j : ℕ}
    {h u : CoreGrowingShiftEndpointDoubledFourierIndex j}
    (hh : h ∉ coreGrowingShiftEndpointTransverseCappedDifferenceSet j) :
    coreGrowingShiftEndpointTransverseInteriorCappedShiftHarmonicXFourier
        j h u = 0 := by
  have hcap :
      ¬ (1 ≤ h.val ∧ h.val ≤ logarithmicShiftThreshold j) := by
    simpa [coreGrowingShiftEndpointTransverseCappedDifferenceSet] using hh
  unfold coreGrowingShiftEndpointTransverseInteriorCappedShiftHarmonicXFourier
  simp [hcap]

/-- The right-endpoint harmonic term vanishes away from the genuine
right-endpoint difference set. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointTransverseEffectiveShiftSplitFourier.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointTransverseEffectiveShiftSplitFourier.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28caa935325254ab091fb86c332abd052be70fbe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
