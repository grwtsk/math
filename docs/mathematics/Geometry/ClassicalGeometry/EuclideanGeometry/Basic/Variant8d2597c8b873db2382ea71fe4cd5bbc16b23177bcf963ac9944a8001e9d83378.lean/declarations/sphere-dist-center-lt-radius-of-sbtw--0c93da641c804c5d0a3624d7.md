# Sphere.dist_center_lt_radius_of_sbtw

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7c66683d-2934-d810-1503-a9ca79b293ad",
  "kind": "theorem",
  "lexical_name": "Sphere.dist_center_lt_radius_of_sbtw",
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
  "slug": "sphere-dist-center-lt-radius-of-sbtw--0c93da641c804c5d0a3624d7",
  "source": {
    "blob": "c2b3b099402443851352843d8c69e5e283214b89",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 496,
    "line": 468,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant8d2597c8b873db2382ea71fe4cd5bbc16b23177bcf963ac9944a8001e9d83378.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0c93da641c804c5d0a3624d7c00d71fd557acac8d0fb734ae9d7d85b6f9b2d7e",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant8d2597c8b873db2382ea71fe4cd5bbc16b23177bcf963ac9944a8001e9d83378.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7c66683d-2934-d810-1503-a9ca79b293ad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 468–496.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Sphere.dist_center_lt_radius_of_sbtw {p₁ p₂ p : P} {s : Sphere P}
    (hp₁ : p₁ ∈ s) (hp₂ : p₂ ∈ s) (hp : Sbtw ℝ p₁ p p₂) :
    dist s.center p < s.radius := by
  set o := s.center
  obtain ⟨⟨t, ⟨ht₀, ht₁⟩, hpt⟩, hne₁, hne₂⟩ := hp
  have ht₀' : 0 < t := lt_of_le_of_ne ht₀ fun h => hne₁ <| by
    rw [← hpt, ← h, AffineMap.lineMap_apply_zero]
  have ht₁' : t < 1 := lt_of_le_of_ne ht₁ fun h => hne₂ <| by
    rw [← hpt, h, AffineMap.lineMap_apply_one]
  set u := p₁ -ᵥ o; set v := p₂ -ᵥ o
  have hu : ‖u‖ = s.radius := norm_vsub_center_eq_radius hp₁
  have hv : ‖v‖ = s.radius := norm_vsub_center_eq_radius hp₂
  have huv : u ≠ v := fun h => hne₁ <| by
    rw [← hpt, vsub_left_cancel h, AffineMap.lineMap_same, AffineMap.const_apply]
  have hpo : p -ᵥ o = (1 - t) • u + t • v := by
    rw [show p = (AffineMap.lineMap p₁ p₂) t from hpt.symm, AffineMap.lineMap_apply,
      vadd_vsub_assoc, show (p₂ -ᵥ p₁ : V) = v - u from
      (vsub_sub_vsub_cancel_right p₂ p₁ o).symm]
    module
  rw [dist_comm, dist_eq_norm_vsub, hpo]
  have hmem := (strictConvex_closedBall ℝ (0 : V) s.radius)
    (by simp [Metric.mem_closedBall, hu]) (by simp [Metric.mem_closedBall, hv])
    huv (sub_pos.mpr ht₁') ht₀' (sub_add_cancel 1 t)
  rwa [interior_closedBall _ (fun h : s.radius = 0 => huv <|
      (norm_eq_zero.mp (hu.trans h)).trans (norm_eq_zero.mp (hv.trans h)).symm),
    Metric.mem_ball, dist_zero_right] at hmem

/-- The distance from the center of a sphere to the midpoint of a chord
with distinct endpoints is strictly less than the radius. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant8d2597c8b873db2382ea71fe4cd5bbc16b23177bcf963ac9944a8001e9d83378.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant8d2597c8b873db2382ea71fe4cd5bbc16b23177bcf963ac9944a8001e9d83378.lean#L468).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c2b3b099402443851352843d8c69e5e283214b89` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
