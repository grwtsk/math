# angle_midpoint_eq_pi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "665c31e008a1ea5ed7fb11dd6c3c16e2a340b34f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 243,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f4/f4382dcb4d93f7a22bb4f0ee85117e3e0338f39e823e2ce3bd918c6e7c7a8362.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bed0cb49-7207-f9b2-66a8-f8875dd9df33",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fbbf716e-41b5-91bf-7755-bf55125ce8de",
  "kind": "theorem",
  "lexical_name": "angle_midpoint_eq_pi",
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
  "slug": "angle-midpoint-eq-pi--462f4bc61cb75e789f11c22f",
  "source": {
    "blob": "665c31e008a1ea5ed7fb11dd6c3c16e2a340b34f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 249,
    "line": 243,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Variantf4382dcb4d93f7a22bb4f0ee85117e3e0338f39e823e2ce3bd918c6e7c7a8362.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:462f4bc61cb75e789f11c22f21bb2c58631d9e3dd41ee1e52f1255c9adc14102",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Variantf4382dcb4d93f7a22bb4f0ee85117e3e0338f39e823e2ce3bd918c6e7c7a8362.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fbbf716e-41b5-91bf-7755-bf55125ce8de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 243–249.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem angle_midpoint_eq_pi (p₁ p₂ : P) (hp₁p₂ : p₁ ≠ p₂) : ∠ p₁ (midpoint ℝ p₁ p₂) p₂ = π := by
  suffices dist p₁ p₂ = dist p₁ (midpoint ℝ p₁ p₂) + dist (midpoint ℝ p₁ p₂) p₂ by
    rwa [← dist_eq_add_dist_iff_angle_eq_pi (by simpa) (by simpa), dist_comm p₂]
  simp [dist_eq_norm_vsub V, left_vsub_midpoint, midpoint_vsub_right, norm_smul, ← two_mul]

/-- If M is the midpoint of the segment AB and C is the same distance from A as it is from B
then ∠CMA = π / 2. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Variantf4382dcb4d93f7a22bb4f0ee85117e3e0338f39e823e2ce3bd918c6e7c7a8362.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Variantf4382dcb4d93f7a22bb4f0ee85117e3e0338f39e823e2ce3bd918c6e7c7a8362.lean#L243).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `665c31e008a1ea5ed7fb11dd6c3c16e2a340b34f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
