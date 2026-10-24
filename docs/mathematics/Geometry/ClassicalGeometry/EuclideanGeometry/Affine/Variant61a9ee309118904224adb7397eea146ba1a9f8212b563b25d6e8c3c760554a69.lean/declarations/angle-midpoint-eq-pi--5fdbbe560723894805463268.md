# angle_midpoint_eq_pi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c47f89eb022195ac8ec51f64594c27ba33981657",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 221,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/61/61a9ee309118904224adb7397eea146ba1a9f8212b563b25d6e8c3c760554a69.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b37cd7af-e9e7-7bc7-8b37-afc3996eb901",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b70adf6c-4c21-a7fd-9a65-b9f4fdc3ebb0",
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
  "slug": "angle-midpoint-eq-pi--5fdbbe560723894805463268",
  "source": {
    "blob": "c47f89eb022195ac8ec51f64594c27ba33981657",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 229,
    "line": 221,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Variant61a9ee309118904224adb7397eea146ba1a9f8212b563b25d6e8c3c760554a69.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5fdbbe560723894805463268a45e3a02870bbbf814529c0eb0df75a415da9f65",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Variant61a9ee309118904224adb7397eea146ba1a9f8212b563b25d6e8c3c760554a69.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b70adf6c-4c21-a7fd-9a65-b9f4fdc3ebb0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 221–229.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem angle_midpoint_eq_pi (p₁ p₂ : P) (hp₁p₂ : p₁ ≠ p₂) : ∠ p₁ (midpoint ℝ p₁ p₂) p₂ = π := by
  simp only [angle, left_vsub_midpoint, invOf_eq_inv, right_vsub_midpoint, inv_pos, zero_lt_two,
    angle_smul_right_of_pos, angle_smul_left_of_pos]
  rw [← neg_vsub_eq_vsub_rev p₁ p₂]
  apply angle_self_neg_of_nonzero
  simpa only [ne_eq, vsub_eq_zero_iff_eq]

/-- If M is the midpoint of the segment AB and C is the same distance from A as it is from B
then ∠CMA = π / 2. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Variant61a9ee309118904224adb7397eea146ba1a9f8212b563b25d6e8c3c760554a69.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Variant61a9ee309118904224adb7397eea146ba1a9f8212b563b25d6e8c3c760554a69.lean#L221).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c47f89eb022195ac8ec51f64594c27ba33981657` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
