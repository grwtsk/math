# sum_inv_height_sq_smul_vsub_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:34b7867b-b340-b9ed-6824-b15336af6580",
  "kind": "lemma",
  "lexical_name": "sum_inv_height_sq_smul_vsub_eq_zero",
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
  "slug": "sum-inv-height-sq-smul-vsub-eq-zero--f69656b77d337b7c7bce4c15",
  "source": {
    "blob": "401cc1ded433db248dd46aeca64cc5cd3edffc93",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 263,
    "line": 220,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Incenter/Variantd788e3d20838dc2a3b9a9ef623833fe1afb95a3a91847ef45e73cac3280c72fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f69656b77d337b7c7bce4c1569ece447d4f065be6409a164c41d0db924c30c6c",
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

Occurrence: `result:34b7867b-b340-b9ed-6824-b15336af6580`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 220–263.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sum_inv_height_sq_smul_vsub_eq_zero :
    ∑ i, (s.height i)⁻¹ ^ 2 • (s.points i -ᵥ s.altitudeFoot i) = 0 := by
  suffices ∀ i, i ≠ 0 →
      ∑ j, ⟪s.points i -ᵥ s.points 0, (s.height j)⁻¹ ^ 2 • (s.points j -ᵥ s.altitudeFoot j)⟫ = 0 by
    rw [← Submodule.mem_bot ℝ,
      ← Submodule.inf_orthogonal_eq_bot (vectorSpan ℝ (Set.range s.points))]
    refine ⟨Submodule.sum_smul_mem _ _ fun i hi ↦
              vsub_mem_vectorSpan_of_mem_affineSpan_of_mem_affineSpan
                (mem_affineSpan _ (Set.mem_range_self _))
                (altitudeFoot_mem_affineSpan  _ _),
            ?_⟩
    rw [vectorSpan_range_eq_span_range_vsub_right_ne _ _ 0, Submodule.span_range_eq_iSup,
      ← Submodule.iInf_orthogonal, Submodule.coe_iInf, Set.mem_iInter]
    intro i
    rcases i with ⟨i, hi⟩
    simpa only [SetLike.mem_coe, Submodule.mem_orthogonal_singleton_iff_inner_right, inner_sum]
      using this i hi
  intro i hi
  rw [← Finset.add_sum_erase _ _ (Finset.mem_univ 0),
    ← Finset.add_sum_erase _ _ (Finset.mem_erase.2 ⟨hi, Finset.mem_univ _⟩), ← add_assoc]
  convert! add_zero _
  · convert! Finset.sum_const_zero with j hj
    rw [real_inner_smul_right]
    convert! mul_zero _
    rw [← Submodule.mem_orthogonal_singleton_iff_inner_right]
    refine SetLike.le_def.1 (Submodule.orthogonal_le ?_)
      (vsub_orthogonalProjection_mem_direction_orthogonal _ _)
    rw [Submodule.span_singleton_le_iff_mem, direction_affineSpan]
    simp only [Finset.mem_erase, Finset.mem_univ, and_true] at hj
    refine vsub_mem_vectorSpan _ ?_ ?_ <;>
      simp only [range_faceOpposite_points, Set.mem_image]
    · exact ⟨i, hj.1.symm, rfl⟩
    · exact ⟨0, hj.2.symm, rfl⟩
  · rw [inner_smul_right, inner_smul_right, inner_vsub_vsub_altitudeFoot_eq_height_sq _ hi,
      ← neg_vsub_eq_vsub_rev, inner_neg_left, inner_vsub_vsub_altitudeFoot_eq_height_sq _ hi.symm,
      mul_neg, inv_pow]
    simp [height]

/-- The inverse of the distance from one vertex to the opposite face, expressed as a sum of
multiples of that quantity for the other vertices. The multipliers, expressed here in terms of
inner products, are equal to the cosines of angles between faces (informally, the inverse
distances are proportional to the volumes of the faces and this is equivalent to expressing
the volume of a face as the sum of the signed volumes of projections of the other faces onto that
face). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Incenter/Variantd788e3d20838dc2a3b9a9ef623833fe1afb95a3a91847ef45e73cac3280c72fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Incenter/Variantd788e3d20838dc2a3b9a9ef623833fe1afb95a3a91847ef45e73cac3280c72fa.lean#L220).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `401cc1ded433db248dd46aeca64cc5cd3edffc93` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
