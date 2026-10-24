# faceOppositeCentroid_vsub_faceOppositeCentroid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a3f544ddd5b2df9607fde34278c23a9dc64cc9f5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 299,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/eb/eb93e635f44839695dc93bd33326ba244e023429041e72d089eb7d3b85793775.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8b811920-ccf4-6421-0419-64ed5def8448",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:421f5ef6-6bd5-2428-b84e-f60b67aaba5e",
  "kind": "theorem",
  "lexical_name": "faceOppositeCentroid_vsub_faceOppositeCentroid",
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
  "slug": "faceoppositecentroid-vsub-faceoppositecentroid--66fc847539b6cfbfefd10d11",
  "source": {
    "blob": "a3f544ddd5b2df9607fde34278c23a9dc64cc9f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 321,
    "line": 299,
    "path": "GRWTSK/Geometry/ConvexGeometry/Centroid/Varianteb93e635f44839695dc93bd33326ba244e023429041e72d089eb7d3b85793775.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:66fc847539b6cfbfefd10d11a3c630d3eae289b1d6183d158b95781ee0bca8cd",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/Centroid/Varianteb93e635f44839695dc93bd33326ba244e023429041e72d089eb7d3b85793775.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:421f5ef6-6bd5-2428-b84e-f60b67aaba5e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 299–321.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem faceOppositeCentroid_vsub_faceOppositeCentroid [CharZero k] (s : Affine.Simplex k P n)
    (i j : Fin (n + 1)) :
    s.faceOppositeCentroid i -ᵥ s.faceOppositeCentroid j =
    (n : k)⁻¹ • (s.points j -ᵥ s.points i) := by
  rw [faceOppositeCentroid_eq_sum_vsub_vadd s i, faceOppositeCentroid_eq_sum_vsub_vadd s j,
    vadd_vsub_vadd_comm _ _ (s.points i) (s.points j)]
  have h1 (i : Fin (n + 1)) : ∑ x, (s.points x -ᵥ s.points i) =
      ∑ x, (s.points x -ᵥ s.points 0 - (s.points i -ᵥ s.points 0)) := by
    apply sum_congr rfl
    simp
  simp_rw [h1 i, h1 j, sum_sub_distrib]
  rw [smul_sub, smul_sub, sub_sub_sub_cancel_left, ← smul_sub, ← sum_sub_distrib,
    vsub_sub_vsub_cancel_right, sum_const, card_univ, Fintype.card_fin]
  have : (s.points i -ᵥ s.points j) = -(s.points j -ᵥ s.points i) := by simp
  rw [this, ← sub_eq_add_neg, add_smul, sub_eq_iff_eq_add, one_smul, smul_add, add_comm]
  have : (n : k)⁻¹ • n • (s.points j -ᵥ s.points i) =
      (n : k)⁻¹ • (n : k) • (s.points j -ᵥ s.points i) := by
    norm_cast0
    congr 1
  rw [this, smul_smul, inv_eq_one_div, one_div_mul_cancel (NeZero.ne (n : k)), one_smul]

/-- The vector from a vertex to its `faceOppositeCentroid` is `(n+1)` times the vector from the
`centroid` to that `faceOppositeCentroid`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/Centroid/Varianteb93e635f44839695dc93bd33326ba244e023429041e72d089eb7d3b85793775.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/Centroid/Varianteb93e635f44839695dc93bd33326ba244e023429041e72d089eb7d3b85793775.lean#L299).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3f544ddd5b2df9607fde34278c23a9dc64cc9f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
