# sourceMovingTail_eq_sum_centered_blocks

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d160f77c-c922-ea58-e090-42cd51b70492",
  "kind": "theorem",
  "lexical_name": "sourceMovingTail_eq_sum_centered_blocks",
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
  "slug": "sourcemovingtail-eq-sum-centered-blocks--b08e87595a314ef12498a75a",
  "source": {
    "blob": "3a1636fa127fc7d31c88c67a39c81aeacdbad9ce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 132,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant885df8e909293d9539ef5bb488717b9212f5504c8e43b54eafc35e505a66b5de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b08e87595a314ef12498a75a394b0114ddc7d44fc2c2a7e367da72f0e833d221",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant885df8e909293d9539ef5bb488717b9212f5504c8e43b54eafc35e505a66b5de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d160f77c-c922-ea58-e090-42cd51b70492`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceMovingTail_eq_sum_centered_blocks (A : ℝ) (hA : 1 ≤ A) :
    sourceMovingTail A = ∑ j ∈ Finset.range (movingBlockCount A),
      (-weightedMobiusPrimitive (movingBlockPoint A j) *
        (sourceLogKernel A (movingBlockPoint A (j + 1)) -
          sourceLogKernel A (movingBlockPoint A j)) -
        ∫ s in (movingBlockPoint A j)..(movingBlockPoint A (j + 1)),
          (weightedMobiusPrimitive s - weightedMobiusPrimitive (movingBlockPoint A j)) *
            deriv (sourceLogKernel A) s) := by
  rw [sourceMovingTail_eq_sum_blocks A hA]
  exact Finset.sum_congr rfl fun j _ ↦ movingSignedBlock_centering A hA j

/-- A common upper bound on complete signed cells gives an explicit bound on their aggregate.
No bound on a centered remainder alone is substituted for the cell hypothesis. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant885df8e909293d9539ef5bb488717b9212f5504c8e43b54eafc35e505a66b5de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant885df8e909293d9539ef5bb488717b9212f5504c8e43b54eafc35e505a66b5de.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3a1636fa127fc7d31c88c67a39c81aeacdbad9ce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
