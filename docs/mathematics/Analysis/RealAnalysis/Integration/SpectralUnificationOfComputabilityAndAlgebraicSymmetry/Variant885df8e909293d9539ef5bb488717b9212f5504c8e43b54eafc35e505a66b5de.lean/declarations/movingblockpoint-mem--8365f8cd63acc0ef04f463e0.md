# movingBlockPoint_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d6dd8dff-f2c0-053d-6665-98f5149d0135",
  "kind": "theorem",
  "lexical_name": "movingBlockPoint_mem",
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
  "slug": "movingblockpoint-mem--8365f8cd63acc0ef04f463e0",
  "source": {
    "blob": "3a1636fa127fc7d31c88c67a39c81aeacdbad9ce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 44,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant885df8e909293d9539ef5bb488717b9212f5504c8e43b54eafc35e505a66b5de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8365f8cd63acc0ef04f463e093309ba6409df68318337d09f9591446c612f82a",
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

Occurrence: `result:d6dd8dff-f2c0-053d-6665-98f5149d0135`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem movingBlockPoint_mem (A : ℝ) (hA : 1 ≤ A) (j : ℕ) :
    movingBlockPoint A j ∈ Icc (2 * Real.log A) (2 * A) := by
  constructor
  · apply le_min
    · have hlog : 0 ≤ Real.log 2 := (Real.log_pos (by norm_num : (1 : ℝ) < 2)).le
      exact le_add_of_nonneg_right (mul_nonneg (Nat.cast_nonneg j) hlog)
    · exact (square_front_mem A hA).2
  · exact min_le_right _ _

/-- The clipped nodes increase, including any degenerate final cells. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant885df8e909293d9539ef5bb488717b9212f5504c8e43b54eafc35e505a66b5de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant885df8e909293d9539ef5bb488717b9212f5504c8e43b54eafc35e505a66b5de.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3a1636fa127fc7d31c88c67a39c81aeacdbad9ce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
