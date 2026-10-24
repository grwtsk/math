# cospherical_of_mul_dist_eq_mul_dist_of_angle_eq_pi_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:31edfd04-2865-db1a-372c-0b28d51d8f5e",
  "kind": "lemma",
  "lexical_name": "cospherical_of_mul_dist_eq_mul_dist_of_angle_eq_pi_aux",
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
  "slug": "cospherical-of-mul-dist-eq-mul-dist-of-angle-eq-pi-aux--4e7ef8f32a6a6d7d0f370e74",
  "source": {
    "blob": "7c1075bf15e3e0bfe98d8cd97bd080ba9ca8b7df",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 134,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Power/Variant91a8ee02767f22cbc3a7db4c57cb8312b404d83fd9c995660204312063f544f1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4e7ef8f32a6a6d7d0f370e747dd2025b7bfafbad8a33fbfc18e53fd743566667",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Power/Variant91a8ee02767f22cbc3a7db4c57cb8312b404d83fd9c995660204312063f544f1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:31edfd04-2865-db1a-372c-0b28d51d8f5e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma cospherical_of_mul_dist_eq_mul_dist_of_angle_eq_pi_aux
    [Fact (finrank ℝ V = 2)] [Oriented ℝ V (Fin 2)] {p₁ p₂ p₃ p₄ p : P}
    (h : dist p₁ p * dist p₂ p = dist p₃ p * dist p₄ p)
    (hp₁p₂ : ∠ p₁ p p₂ = π) (hp₃p₄ : ∠ p₃ p p₄ = π) (hn : ¬ Collinear ℝ ({p₁, p, p₃} : Set P)) :
    Cospherical ({p₁, p₂, p₃, p₄} : Set P) := by
  suffices h_equiv : Cospherical ({p₁, p₂, p₄, p₃} : Set P) by grind [Set.pair_comm p₄ p₃]
  have h_angle_eq : ∠ p₁ p p₄ = ∠ p₃ p p₂ := by
    grind [angle_comm, angle_eq_angle_of_angle_eq_pi_of_angle_eq_pi hp₃p₄]
  rw [angle_eq_pi_iff_sbtw] at hp₁p₂ hp₃p₄
  have hcol_p₁pp₂ := hp₁p₂.wbtw.collinear
  have hcol_p₃pp₄ := hp₃p₄.wbtw.collinear
  have h_notcol_p₁p₂p₃ : ¬ Collinear ℝ ({p₁, p₂, p₃} : Set P) := by
    have : AffineIndependent ℝ ![p₁, p, p₃] := affineIndependent_iff_not_collinear_set.mpr hn
    rw [← affineIndependent_iff_not_collinear_set]
    grind [hp₁p₂.left_ne_right, affineIndependent_of_affineIndependent_collinear_ne,
      AffineIndependent.comm_left, AffineIndependent.comm_right]
  apply cospherical_of_two_zsmul_oangle_eq_of_not_collinear ?_ h_notcol_p₁p₂p₃
  suffices ∡ p₁ p₂ p₃ = ∡ p₁ p₄ p₃ by grind
  suffices ∠ p₁ p₂ p₃ = ∠ p₁ p₄ p₃ by
    grind [oangle_eq_of_angle_eq_of_sign_eq, Sbtw.oangle_sign_eq_of_sbtw]
  rw [angle_comm, ← angle_eq_angle_of_angle_eq_pi p₃ hp₁p₂.angle₃₂₁_eq_pi,
    ← angle_eq_angle_of_angle_eq_pi p₁ hp₃p₄.angle₃₂₁_eq_pi]
  suffices h_sim : Similar ![p₁, p, p₄] ![p₃, p, p₂] by
    grind [angle_comm, h_sim.angle_eq_all.right.left]
  have h_notcol_p₁pp₄ : ¬ Collinear ℝ ({p₁, p, p₄} : Set P) := by
    intro hcol
    suffices hcol : Collinear ℝ ({p₁, p, p₃} : Set P) by grind
    suffices hcol : Collinear ℝ ({p₁, p₃, p, p₄} : Set P) by grind [Collinear.subset _ hcol]
    have hne_pp₄ := hp₃p₄.ne_right
    grind [collinear_insert_insert_of_mem_affineSpan_pair, Collinear.mem_affineSpan_of_mem_of_ne]
  have h_notcol_p₃pp₂ : ¬ Collinear ℝ ({p₃, p, p₂} : Set P) := by
    intro hcol
    suffices hcol : Collinear ℝ ({p₁, p, p₃} : Set P) by grind
    suffices hcol : Collinear ℝ ({p₃, p₁, p, p₂} : Set P) by grind [Collinear.subset _ hcol]
    have hne_pp₂ := hp₁p₂.ne_right
    grind [collinear_insert_insert_of_mem_affineSpan_pair, Collinear.mem_affineSpan_of_mem_of_ne]
  apply similar_of_side_angle_side h_notcol_p₁pp₄ h_notcol_p₃pp₂ h_angle_eq ?_
  grind [dist_comm]

open scoped Affine.Simplex Module.Oriented.Arbitrary in
/-- If `p` lies strictly between `p₁` and `p₂` on one line and strictly between `p₃` and `p₄`
on another line, and if `dist p₁ p * dist p₂ p = dist p₃ p * dist p₄ p`,
then the points `p₁`, `p₂`, `p₃`, and `p₄` are cospherical. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Power/Variant91a8ee02767f22cbc3a7db4c57cb8312b404d83fd9c995660204312063f544f1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Power/Variant91a8ee02767f22cbc3a7db4c57cb8312b404d83fd9c995660204312063f544f1.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c1075bf15e3e0bfe98d8cd97bd080ba9ca8b7df` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
