# inv_height_eq_sum_mul_inv_dist

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5ec86a2a-9d9f-09d1-4f4f-ee6b34dab3a5",
  "kind": "lemma",
  "lexical_name": "inv_height_eq_sum_mul_inv_dist",
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
  "slug": "inv-height-eq-sum-mul-inv-dist--26a7bccdaf8fedea8dad89b8",
  "source": {
    "blob": "401cc1ded433db248dd46aeca64cc5cd3edffc93",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 287,
    "line": 264,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Incenter/Variantd788e3d20838dc2a3b9a9ef623833fe1afb95a3a91847ef45e73cac3280c72fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:26a7bccdaf8fedea8dad89b83b7368f03afbac12d6f6e8eefaa54806ff1be39f",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Incenter/Variantd788e3d20838dc2a3b9a9ef623833fe1afb95a3a91847ef45e73cac3280c72fa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5ec86a2a-9d9f-09d1-4f4f-ee6b34dab3a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 264–287.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma inv_height_eq_sum_mul_inv_dist (i : Fin (n + 1)) :
    (s.height i)⁻¹ =
      ∑ j ∈ {k | k ≠ i},
        -(⟪s.points i -ᵥ s.altitudeFoot i, s.points j -ᵥ s.altitudeFoot j⟫ /
          (s.height i * s.height j)) *
        (s.height j)⁻¹ := by
  rw [← sub_eq_zero]
  simp_rw [neg_mul]
  rw [Finset.sum_neg_distrib, sub_neg_eq_add, Finset.filter_ne',
    Finset.sum_erase_eq_sub (Finset.mem_univ _), real_inner_self_eq_norm_mul_norm,
    ← dist_eq_norm_vsub]
  simp only [height, ne_eq, mul_eq_zero, dist_eq_zero, ne_altitudeFoot, or_self,
    not_false_eq_true, div_self, one_mul, add_sub_cancel]
  have h := s.sum_inv_height_sq_smul_vsub_eq_zero
  apply_fun fun v ↦ (s.height i)⁻¹ * ⟪s.points i -ᵥ s.altitudeFoot i, v⟫ at h
  rw [inner_sum, Finset.mul_sum] at h
  simp only [inner_zero_right, mul_zero, inner_smul_right, height] at h
  convert! h using 2 with j
  ring

/-- The inverse of the distance from one vertex to the opposite face is less than the sum of that
quantity for the other vertices. This implies the existence of the excenter opposite that vertex;
it also gives information about the location of the incenter (see
`excenterWeights_empty_lt_inv_two`). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Incenter/Variantd788e3d20838dc2a3b9a9ef623833fe1afb95a3a91847ef45e73cac3280c72fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Incenter/Variantd788e3d20838dc2a3b9a9ef623833fe1afb95a3a91847ef45e73cac3280c72fa.lean#L264).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `401cc1ded433db248dd46aeca64cc5cd3edffc93` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
