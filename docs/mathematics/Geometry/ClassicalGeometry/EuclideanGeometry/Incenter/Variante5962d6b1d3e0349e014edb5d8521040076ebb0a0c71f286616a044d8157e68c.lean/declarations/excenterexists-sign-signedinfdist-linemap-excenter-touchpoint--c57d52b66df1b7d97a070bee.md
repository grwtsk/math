# ExcenterExists.sign_signedInfDist_lineMap_excenter_touchpoint

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
      "line": 1038,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e5/e5962d6b1d3e0349e014edb5d8521040076ebb0a0c71f286616a044d8157e68c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:529e8400-db51-acca-1091-a7681c2b7f1b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3148cfa8-a34b-fed3-0155-1b5722bc9308",
  "kind": "lemma",
  "lexical_name": "ExcenterExists.sign_signedInfDist_lineMap_excenter_touchpoint",
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
  "slug": "excenterexists-sign-signedinfdist-linemap-excenter-touchpoint--c57d52b66df1b7d97a070bee",
  "source": {
    "blob": "1d7b5902c403049b85d9ff01a8f82d74ea7abe4d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1070,
    "line": 1038,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Incenter/Variante5962d6b1d3e0349e014edb5d8521040076ebb0a0c71f286616a044d8157e68c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c57d52b66df1b7d97a070beeb33a5541f0fede2d8c120ee39df579a827fa1b0d",
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

Occurrence: `result:3148cfa8-a34b-fed3-0155-1b5722bc9308`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1038–1070.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ExcenterExists.sign_signedInfDist_lineMap_excenter_touchpoint {signs : Finset (Fin (n + 1))}
    (h : s.ExcenterExists signs) {i j : Fin (n + 1)} (hne : i ≠ j) {r : ℝ} (hr : r ∈ Set.Icc 0 1) :
    SignType.sign
      (s.signedInfDist j (AffineMap.lineMap (s.excenter signs) (s.touchpoint signs i) r)) =
      SignType.sign (s.signedInfDist j (s.excenter signs)) := by
  have hc : ContinuousOn (fun (t : ℝ) ↦ SignType.sign
      (s.signedInfDist j (AffineMap.lineMap (s.excenter signs) (s.touchpoint signs i) t)))
      (Set.Icc 0 1) := by
    refine continuousOn_of_forall_continuousAt
      fun t ht ↦ ((continuousAt_sign_of_ne_zero ?_).comp
        (((s.signedInfDist j).cont.comp ?_).continuousAt))
    · intro h0
      rw [← abs_eq_zero, abs_signedInfDist_eq_dist_of_mem_affineSpan_range] at h0
      · rw [orthogonalProjectionSpan, dist_orthogonalProjection_eq_zero_iff] at h0
        by_cases ht1 : t = 1
        · subst ht1
          rw [AffineMap.lineMap_apply_one] at h0
          exact h.touchpoint_notMem_affineSpan_of_ne hne h0
        · refine (h.isTangentAt_touchpoint j).isTangent.notMem_of_dist_lt ?_ h0
          simp only [exsphere_center, dist_lineMap_left, Real.norm_eq_abs, h.dist_excenter,
            exsphere_radius, h.exradius_pos, mul_lt_iff_lt_one_left]
          rw [abs_lt]
          rcases ht with ⟨ht0, ht1'⟩
          exact ⟨by linarith, ht1'.lt_of_ne ht1⟩
      · exact AffineMap.lineMap_mem _ h.excenter_mem_affineSpan_range
          (s.touchpoint_mem_affineSpan_simplex _ _)
    · rw [← ContinuousAffineMap.lineMap_toAffineMap]
      exact ContinuousAffineMap.cont _
  refine ((isConnected_Icc zero_le_one).image _ hc).isPreconnected.subsingleton
    (Set.mem_image_of_mem _ hr) ?_
  convert! Set.mem_image_of_mem _ (Set.left_mem_Icc.2 (zero_le_one' ℝ))
  simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Incenter/Variante5962d6b1d3e0349e014edb5d8521040076ebb0a0c71f286616a044d8157e68c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Incenter/Variante5962d6b1d3e0349e014edb5d8521040076ebb0a0c71f286616a044d8157e68c.lean#L1038).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d7b5902c403049b85d9ff01a8f82d74ea7abe4d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
