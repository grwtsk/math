# cos_angle_add_of_inner_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2f81705007ce4fb3de6621bd6c5c7adfa6e3c639",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 136,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0e/0e849d5f1a0308d0c289b6ad0a8a57306680731d78d20e28035d9b727ffe73a7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:08d48c35-31de-3162-dc8b-1b172649adfe",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fbc12a94-b025-e40a-0eaf-45c9356eddcc",
  "kind": "theorem",
  "lexical_name": "cos_angle_add_of_inner_eq_zero",
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
  "slug": "cos-angle-add-of-inner-eq-zero--a7bf11ee116c1e8a78c0c673",
  "source": {
    "blob": "2f81705007ce4fb3de6621bd6c5c7adfa6e3c639",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 136,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/RightAngle/Variant0e849d5f1a0308d0c289b6ad0a8a57306680731d78d20e28035d9b727ffe73a7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a7bf11ee116c1e8a78c0c6737a50349bec39faba0431a4b6dc6b5a865171c07f",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/RightAngle/Variant0e849d5f1a0308d0c289b6ad0a8a57306680731d78d20e28035d9b727ffe73a7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fbc12a94-b025-e40a-0eaf-45c9356eddcc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cos_angle_add_of_inner_eq_zero {x y : V} (h : ⟪x, y⟫ = 0) :
    Real.cos (angle x (x + y)) = ‖x‖ / ‖x + y‖ := by
  rw [angle_add_eq_arccos_of_inner_eq_zero h,
    Real.cos_arccos (le_trans (by norm_num) (div_nonneg (norm_nonneg _) (norm_nonneg _)))
      (div_le_one_of_le _ (norm_nonneg _))]
  rw [mul_self_le_mul_self_iff (norm_nonneg _) (norm_nonneg _),
    norm_add_sq_eq_norm_sq_add_norm_sq_real h]
  exact le_add_of_nonneg_right (mul_self_nonneg _)
#align inner_product_geometry.cos_angle_add_of_inner_eq_zero InnerProductGeometry.cos_angle_add_of_inner_eq_zero

/-- The sine of an angle in a right-angled triangle as a ratio of sides. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/RightAngle/Variant0e849d5f1a0308d0c289b6ad0a8a57306680731d78d20e28035d9b727ffe73a7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/RightAngle/Variant0e849d5f1a0308d0c289b6ad0a8a57306680731d78d20e28035d9b727ffe73a7.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f81705007ce4fb3de6621bd6c5c7adfa6e3c639` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
