# ExcenterExists.touchpoint_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1d7b5902c403049b85d9ff01a8f82d74ea7abe4d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 987,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e5/e5962d6b1d3e0349e014edb5d8521040076ebb0a0c71f286616a044d8157e68c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:809d0dcd-3417-0381-5b14-0a418fbd5c65",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:acee9487-356c-a0c0-071d-2fbd9e2d83e4",
  "kind": "lemma",
  "lexical_name": "ExcenterExists.touchpoint_injective",
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
  "slug": "excenterexists-touchpoint-injective--7e1c4d5a7320fc7d3d8fbda1",
  "source": {
    "blob": "1d7b5902c403049b85d9ff01a8f82d74ea7abe4d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1022,
    "line": 987,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Incenter/Variante5962d6b1d3e0349e014edb5d8521040076ebb0a0c71f286616a044d8157e68c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7e1c4d5a7320fc7d3d8fbda1b77b2a3a5e44eace7569c2189ff9b3ce8739e043",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Incenter/Variante5962d6b1d3e0349e014edb5d8521040076ebb0a0c71f286616a044d8157e68c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:acee9487-356c-a0c0-071d-2fbd9e2d83e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 987–1022.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ExcenterExists.touchpoint_injective {signs : Finset (Fin (n + 1))}
    (h : s.ExcenterExists signs) : Function.Injective (s.touchpoint signs) := by
  intro i j hij
  by_contra hne
  by_cases hn1 : n = 1
  · subst hn1
    rw [s.touchpoint_eq_point_rev signs i, s.touchpoint_eq_point_rev signs j] at hij
    apply s.independent.injective.ne hne
    convert! hij.symm <;> clear hij <;> decide +revert
  · suffices s.excenter signs -ᵥ s.touchpoint signs i ∈ (vectorSpan ℝ (Set.range s.points))ᗮ by
      have h' : s.excenter signs -ᵥ s.touchpoint signs i ∈ (vectorSpan ℝ (Set.range s.points)) := by
        rw [← direction_affineSpan]
        exact AffineSubspace.vsub_mem_direction h.excenter_mem_affineSpan_range
          (s.touchpoint_mem_affineSpan_simplex _ _)
      have h0 : s.excenter signs -ᵥ s.touchpoint signs i = 0 := by
        rw [← Submodule.mem_bot ℝ,
          ← Submodule.inf_orthogonal_eq_bot (vectorSpan ℝ (Set.range s.points))]
        exact ⟨h', this⟩
      rw [← norm_eq_zero, ← dist_eq_norm_vsub, h.dist_excenter] at h0
      exact h.exradius_pos.ne' h0
    obtain ⟨k, hki, hkj⟩ : ∃ k, k ≠ i ∧ k ≠ j := Fin.exists_ne_and_ne_of_two_lt i j (by lia)
    have hu : Set.range s.points =
        Set.range (s.faceOpposite i).points ∪ Set.range (s.faceOpposite j).points := by
      simp only [range_faceOpposite_points, ← Set.image_union, ← Set.compl_inter]
      convert! Set.image_univ.symm
      simp [Ne.symm hne]
    rw [hu, range_faceOpposite_points, range_faceOpposite_points,
      AffineSubspace.vectorSpan_union_of_mem_of_mem ℝ (p := s.points k)
        (Set.mem_image_of_mem _ (by simp [hki])) (Set.mem_image_of_mem _ (by simp [hkj])),
      ← Submodule.inf_orthogonal]
    refine ⟨?_, ?_⟩
    · rw [← direction_affineSpan, ← range_faceOpposite_points]
      exact vsub_orthogonalProjection_mem_direction_orthogonal _ _
    · rw [hij, ← direction_affineSpan, ← range_faceOpposite_points]
      exact vsub_orthogonalProjection_mem_direction_orthogonal _ _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Incenter/Variante5962d6b1d3e0349e014edb5d8521040076ebb0a0c71f286616a044d8157e68c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Incenter/Variante5962d6b1d3e0349e014edb5d8521040076ebb0a0c71f286616a044d8157e68c.lean#L987).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d7b5902c403049b85d9ff01a8f82d74ea7abe4d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
