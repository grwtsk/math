# ExcenterExists.sign_signedInfDist_lineMap_excenter_touchpoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:96149ef6-ac0f-d7e2-ddca-09575239fc66",
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
  "slug": "excenterexists-sign-signedinfdist-linemap-excenter-touchpoint--d271497ca39a1c79229fbf4d",
  "source": {
    "blob": "401cc1ded433db248dd46aeca64cc5cd3edffc93",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1078,
    "line": 1046,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Incenter/Variantd788e3d20838dc2a3b9a9ef623833fe1afb95a3a91847ef45e73cac3280c72fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d271497ca39a1c79229fbf4db6ecb650481969143e5d035bc08f8058e2bd20d9",
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

Occurrence: `result:96149ef6-ac0f-d7e2-ddca-09575239fc66`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1046–1078.

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

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Incenter/Variantd788e3d20838dc2a3b9a9ef623833fe1afb95a3a91847ef45e73cac3280c72fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Incenter/Variantd788e3d20838dc2a3b9a9ef623833fe1afb95a3a91847ef45e73cac3280c72fa.lean#L1046).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `401cc1ded433db248dd46aeca64cc5cd3edffc93` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
