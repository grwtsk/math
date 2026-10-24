# abs_inner_vsub_altitudeFoot_lt_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2c5bc5abfaadb27fc553500d4a200105f0d1d2c3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 344,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/44/442b9d0de2ae8ac7548f10784f20e76b091b7d814ee05c16505a2a97892f112b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2be98bb8-133b-5d3e-0fc6-856a05bd9ba0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1b97e7ea-516b-73ee-16a4-d4c859bd6c40",
  "kind": "lemma",
  "lexical_name": "abs_inner_vsub_altitudeFoot_lt_mul",
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
  "slug": "abs-inner-vsub-altitudefoot-lt-mul--26e819b7e9ff1643407577c3",
  "source": {
    "blob": "2c5bc5abfaadb27fc553500d4a200105f0d1d2c3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 392,
    "line": 344,
    "path": "GRWTSK/Geometry/ConvexGeometry/Altitude/Variant442b9d0de2ae8ac7548f10784f20e76b091b7d814ee05c16505a2a97892f112b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:26e819b7e9ff1643407577c35c0ae82365ca3a16f07a2138aa4ef4bc1fb31197",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/Altitude/Variant442b9d0de2ae8ac7548f10784f20e76b091b7d814ee05c16505a2a97892f112b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1b97e7ea-516b-73ee-16a4-d4c859bd6c40`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 344–392.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma abs_inner_vsub_altitudeFoot_lt_mul {i j : Fin (n + 1)} (hij : i ≠ j) :
    |⟪s.points i -ᵥ s.altitudeFoot i, s.points j -ᵥ s.altitudeFoot j⟫|
      < s.height i * s.height j := by
  apply lt_of_le_of_ne
  · convert! abs_real_inner_le_norm _ _ using 1
    simp only [dist_eq_norm_vsub, height]
  · simp_rw [height, dist_eq_norm_vsub]
    rw [← Real.norm_eq_abs, ne_eq, norm_inner_eq_norm_iff (by simp) (by simp)]
    rintro ⟨r, hr, h⟩
    suffices s.points j -ᵥ s.altitudeFoot j = 0 by
      simp at this
    rw [← Submodule.mem_bot ℝ,
      ← Submodule.inf_orthogonal_eq_bot (vectorSpan ℝ (Set.range s.points))]
    refine ⟨vsub_mem_vectorSpan_of_mem_affineSpan_of_mem_affineSpan
      (mem_affineSpan _ (Set.mem_range_self _)) ?_, ?_⟩
    · refine SetLike.le_def.1 (affineSpan_mono _ ?_) (Subtype.property _)
      simp
    · rw [SetLike.mem_coe]
      have hk : ∃ k, k ≠ i ∧ k ≠ j := Fin.exists_ne_and_ne_of_two_lt i j
        (by linarith only [Nat.AtLeastTwo.one_lt (n := n)])
      have hs : vectorSpan ℝ (Set.range s.points) =
          vectorSpan ℝ (Set.range (s.faceOpposite i).points) ⊔
            vectorSpan ℝ (Set.range (s.faceOpposite j).points) := by
        rcases hk with ⟨k, hki, hkj⟩
        have hki' : s.points k ∈ Set.range (s.faceOpposite i).points := by
          rw [range_faceOpposite_points]
          exact Set.mem_image_of_mem _ hki
        have hkj' : s.points k ∈ Set.range (s.faceOpposite j).points := by
          rw [range_faceOpposite_points]
          exact Set.mem_image_of_mem _ hkj
        have hs :
            Set.range s.points =
              Set.range (s.faceOpposite i).points ∪ Set.range (s.faceOpposite j).points := by
          simp only [range_faceOpposite_points, ← Set.image_union]
          simp_rw [← Set.image_univ, ← Set.compl_inter]
          rw [Set.inter_singleton_eq_empty.mpr ?_, Set.compl_empty]
          simpa using hij.symm
        convert! AffineSubspace.vectorSpan_union_of_mem_of_mem ℝ hki' hkj'
      rw [hs, ← Submodule.inf_orthogonal, Submodule.mem_inf]
      refine ⟨?_, ?_⟩
      · rw [h, ← direction_affineSpan]
        exact Submodule.smul_mem _ _ (vsub_orthogonalProjection_mem_direction_orthogonal _ _)
      · rw [← direction_affineSpan]
        exact vsub_orthogonalProjection_mem_direction_orthogonal _ _

/--
The inner product of two altitudes has value strictly greater than the negated product of
their lengths.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/Altitude/Variant442b9d0de2ae8ac7548f10784f20e76b091b7d814ee05c16505a2a97892f112b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/Altitude/Variant442b9d0de2ae8ac7548f10784f20e76b091b7d814ee05c16505a2a97892f112b.lean#L344).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c5bc5abfaadb27fc553500d4a200105f0d1d2c3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
