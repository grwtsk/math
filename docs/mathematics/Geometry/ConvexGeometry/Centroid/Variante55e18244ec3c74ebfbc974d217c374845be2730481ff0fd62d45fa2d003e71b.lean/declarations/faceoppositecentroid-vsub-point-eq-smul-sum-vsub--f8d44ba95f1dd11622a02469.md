# faceOppositeCentroid_vsub_point_eq_smul_sum_vsub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:df39d506-c7fb-874d-e9b6-4f16c2bb46a6",
  "kind": "theorem",
  "lexical_name": "faceOppositeCentroid_vsub_point_eq_smul_sum_vsub",
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
  "slug": "faceoppositecentroid-vsub-point-eq-smul-sum-vsub--f8d44ba95f1dd11622a02469",
  "source": {
    "blob": "fae929affc7bbe346128209bbbae40d38f8a1aa0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 277,
    "line": 262,
    "path": "GRWTSK/Geometry/ConvexGeometry/Centroid/Variante55e18244ec3c74ebfbc974d217c374845be2730481ff0fd62d45fa2d003e71b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f8d44ba95f1dd11622a0246912059017a4122577336d4c19a262992e36ba7956",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/Centroid/Variante55e18244ec3c74ebfbc974d217c374845be2730481ff0fd62d45fa2d003e71b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:df39d506-c7fb-874d-e9b6-4f16c2bb46a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 262–277.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem faceOppositeCentroid_vsub_point_eq_smul_sum_vsub [CharZero k] (s : Affine.Simplex k P n)
    (i : Fin (n + 1)) :
    s.faceOppositeCentroid i -ᵥ (s.points i) = (n : k)⁻¹ • ∑ x, (s.points x -ᵥ s.points i) := by
  rw [faceOppositeCentroid_eq_affineCombination,
    affineCombination_eq_weightedVSubOfPoint_vadd_of_sum_eq_one _ _ _ ?_ (s.points i)]
  · simp only [weightedVSubOfPoint_apply, vadd_vsub]
    have h (i : Fin (n + 1)) : ∑ j ∈ {i}ᶜ, (n : k)⁻¹ • (s.points j -ᵥ s.points i) =
      ∑ j : (Fin (n + 1)), ((n : k)⁻¹ • (s.points j -ᵥ s.points i)) := by
      rw [← Finset.sum_compl_add_sum {i}]
      simp
    rw [h i, smul_sum]
  · simp only [sum_const, card_compl, Fintype.card_fin, card_singleton, add_tsub_cancel_right,
      nsmul_eq_mul]
    rw [mul_inv_cancel₀ (NeZero.ne (n : k))]

/-- The `faceOppositeCentroid` equals the average displacement from a vertex plus that vertex. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/Centroid/Variante55e18244ec3c74ebfbc974d217c374845be2730481ff0fd62d45fa2d003e71b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/Centroid/Variante55e18244ec3c74ebfbc974d217c374845be2730481ff0fd62d45fa2d003e71b.lean#L262).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fae929affc7bbe346128209bbbae40d38f8a1aa0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
