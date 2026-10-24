# eq_or_eq_reflection_of_dist_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9b09d2d0277f5d2b6905595e4ed90d616a73c7b8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 772,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9d/9d333fc4c6cf6c9a9998edd9d55709abe0bcb2694169d4e24985c61ea469e9c7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5c065c70-174e-fc4f-ab85-f09c0d8cb3a0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:281a9c7a-fb68-1336-46f0-1863ebd16c0e",
  "kind": "theorem",
  "lexical_name": "eq_or_eq_reflection_of_dist_eq",
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
  "slug": "eq-or-eq-reflection-of-dist-eq--38a67225c99e5723ef500a6b",
  "source": {
    "blob": "9b09d2d0277f5d2b6905595e4ed90d616a73c7b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 818,
    "line": 772,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Circumcenter/Variant9d333fc4c6cf6c9a9998edd9d55709abe0bcb2694169d4e24985c61ea469e9c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:38a67225c99e5723ef500a6ba7e15c915a4e57070252d208949dae14e3ec41c0",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Circumcenter/Variant9d333fc4c6cf6c9a9998edd9d55709abe0bcb2694169d4e24985c61ea469e9c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:281a9c7a-fb68-1336-46f0-1863ebd16c0e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 772–818.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_or_eq_reflection_of_dist_eq {n : ℕ} {s : Simplex ℝ P n} {p p₁ p₂ : P} {r : ℝ}
    (hp₁ : p₁ ∈ affineSpan ℝ (insert p (Set.range s.points)))
    (hp₂ : p₂ ∈ affineSpan ℝ (insert p (Set.range s.points))) (h₁ : ∀ i, dist (s.points i) p₁ = r)
    (h₂ : ∀ i, dist (s.points i) p₂ = r) :
    p₁ = p₂ ∨ p₁ = reflection (affineSpan ℝ (Set.range s.points)) p₂ := by
  set span_s := affineSpan ℝ (Set.range s.points)
  have h₁' := s.orthogonalProjection_eq_circumcenter_of_dist_eq h₁
  have h₂' := s.orthogonalProjection_eq_circumcenter_of_dist_eq h₂
  rw [← affineSpan_insert_affineSpan, mem_affineSpan_insert_iff (orthogonalProjection_mem p)]
    at hp₁ hp₂
  obtain ⟨r₁, p₁o, hp₁o, hp₁⟩ := hp₁
  obtain ⟨r₂, p₂o, hp₂o, hp₂⟩ := hp₂
  obtain rfl : ↑(s.orthogonalProjectionSpan p₁) = p₁o := by
    subst hp₁
    exact s.coe_orthogonalProjection_vadd_smul_vsub_orthogonalProjection hp₁o
  rw [h₁'] at hp₁
  obtain rfl : ↑(s.orthogonalProjectionSpan p₂) = p₂o := by
    subst hp₂
    exact s.coe_orthogonalProjection_vadd_smul_vsub_orthogonalProjection hp₂o
  rw [h₂'] at hp₂
  have h : s.points 0 ∈ span_s := mem_affineSpan ℝ (Set.mem_range_self _)
  have hd₁ :
    dist p₁ s.circumcenter * dist p₁ s.circumcenter = r * r - s.circumradius * s.circumradius :=
    s.dist_circumcenter_sq_eq_sq_sub_circumradius h₁ h₁' h
  have hd₂ :
    dist p₂ s.circumcenter * dist p₂ s.circumcenter = r * r - s.circumradius * s.circumradius :=
    s.dist_circumcenter_sq_eq_sq_sub_circumradius h₂ h₂' h
  rw [← hd₂, hp₁, hp₂, dist_eq_norm_vsub V _ s.circumcenter, dist_eq_norm_vsub V _ s.circumcenter,
    vadd_vsub, vadd_vsub, ← real_inner_self_eq_norm_mul_norm, ← real_inner_self_eq_norm_mul_norm,
    real_inner_smul_left, real_inner_smul_left, real_inner_smul_right, real_inner_smul_right, ←
    mul_assoc, ← mul_assoc] at hd₁
  by_cases hp : p = s.orthogonalProjectionSpan p
  · rw [Simplex.orthogonalProjectionSpan] at hp
    rw [hp₁, hp₂, ← hp]
    simp only [true_or, eq_self_iff_true, smul_zero, vsub_self]
  · have hz : ⟪p -ᵥ orthogonalProjection span_s p, p -ᵥ orthogonalProjection span_s p⟫ ≠ 0 := by
      simpa only [Ne, vsub_eq_zero_iff_eq, inner_self_eq_zero] using hp
    rw [mul_left_inj' hz, mul_self_eq_mul_self_iff] at hd₁
    rw [hp₁, hp₂]
    rcases hd₁ with hd₁ | hd₁
    · left
      rw [hd₁]
    · right
      rw [hd₁, reflection_vadd_smul_vsub_orthogonalProjection p r₂ s.circumcenter_mem_affineSpan,
        neg_smul]

end EuclideanGeometry
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Circumcenter/Variant9d333fc4c6cf6c9a9998edd9d55709abe0bcb2694169d4e24985c61ea469e9c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Circumcenter/Variant9d333fc4c6cf6c9a9998edd9d55709abe0bcb2694169d4e24985c61ea469e9c7.lean#L772).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b09d2d0277f5d2b6905595e4ed90d616a73c7b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
