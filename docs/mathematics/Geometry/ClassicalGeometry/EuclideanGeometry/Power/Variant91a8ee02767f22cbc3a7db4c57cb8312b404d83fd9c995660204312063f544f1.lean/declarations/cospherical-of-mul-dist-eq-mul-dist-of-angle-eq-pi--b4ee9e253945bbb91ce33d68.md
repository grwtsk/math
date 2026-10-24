# cospherical_of_mul_dist_eq_mul_dist_of_angle_eq_pi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1b3a8521-e114-2c34-c936-0b7302fefe51",
  "kind": "theorem",
  "lexical_name": "cospherical_of_mul_dist_eq_mul_dist_of_angle_eq_pi",
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
  "slug": "cospherical-of-mul-dist-eq-mul-dist-of-angle-eq-pi--b4ee9e253945bbb91ce33d68",
  "source": {
    "blob": "7c1075bf15e3e0bfe98d8cd97bd080ba9ca8b7df",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 217,
    "line": 177,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Power/Variant91a8ee02767f22cbc3a7db4c57cb8312b404d83fd9c995660204312063f544f1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b4ee9e253945bbb91ce33d684a35bd1dc065bf1b5f51ebb9c27dee81d7fa5fb8",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Power/Variant91a8ee02767f22cbc3a7db4c57cb8312b404d83fd9c995660204312063f544f1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1b3a8521-e114-2c34-c936-0b7302fefe51`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 177–217.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cospherical_of_mul_dist_eq_mul_dist_of_angle_eq_pi {p₁ p₂ p₃ p₄ p : P}
    (h : dist p₁ p * dist p₂ p = dist p₃ p * dist p₄ p)
    (hp₁p₂ : ∠ p₁ p p₂ = π) (hp₃p₄ : ∠ p₃ p p₄ = π) (hn : ¬ Collinear ℝ ({p₁, p, p₃} : Set P)) :
    Cospherical ({p₁, p₂, p₃, p₄} : Set P) := by
  have hp₁p₂_sbtw : Sbtw ℝ p₁ p p₂ := angle_eq_pi_iff_sbtw.mp hp₁p₂
  have hp₃p₄_sbtw : Sbtw ℝ p₃ p p₄ := angle_eq_pi_iff_sbtw.mp hp₃p₄
  have hindep : AffineIndependent ℝ ![p₁, p, p₃] := affineIndependent_iff_not_collinear_set.mpr hn
  set t : Affine.Triangle ℝ P := ⟨_, hindep⟩ with ht
  let S : AffineSubspace ℝ P := affineSpan ℝ (Set.range t.points)
  have hp₂ : p₂ ∈ S := by
    suffices hmem : p₂ ∈ affineSpan ℝ {p₁, p} by exact affineSpan_mono ℝ (by simp [ht]; grind) hmem
    simp [hp₁p₂_sbtw.wbtw.collinear.mem_affineSpan_of_mem_of_ne _ _ _ hp₁p₂_sbtw.left_ne]
  have hp₄ : p₄ ∈ S := by
    suffices hmem : p₄ ∈ affineSpan ℝ {p₃, p} by exact affineSpan_mono ℝ (by simp [ht]; grind) hmem
    simp [hp₃p₄_sbtw.wbtw.collinear.mem_affineSpan_of_mem_of_ne _ _ _ hp₃p₄_sbtw.left_ne]
  let s_isom : AffineIsometry ℝ S P := S.subtypeₐᵢ
  let p₁' : S := ⟨p₁, mem_affineSpan ℝ (s := Set.range t.points) (by aesop)⟩
  let p' : S := ⟨p, mem_affineSpan ℝ (s := Set.range t.points) (by aesop)⟩
  let p₃' : S := ⟨p₃, mem_affineSpan ℝ (s := Set.range t.points) (by aesop)⟩
  let p₂' : S := ⟨p₂, hp₂⟩
  let p₄' : S := ⟨p₄, hp₄⟩
  have h_dist' : dist p₁' p' * dist p₂' p' = dist p₃' p' * dist p₄' p' := by
    simpa [dist_eq_norm_vsub, ← s_isom.dist_map] using h
  have hp₁'p₂' : ∠ p₁' p' p₂' = π := by simpa [AffineIsometry.angle_map s_isom]
  have hp₃'p₄' : ∠ p₃' p' p₄' = π := by simpa [AffineIsometry.angle_map s_isom]
  suffices h_cospherical' : Cospherical {p₁', p₂', p₃', p₄'} by
    #adaptation_note /-- Before https://github.com/leanprover/lean4/pull/13166
    (replacing grind's canonicalizer with a type-directed normalizer), `grind` closed this goal.
    It is not yet clear whether this is due to defeq abuse in Mathlib or a problem in the new
    canonicalizer; a minimization would help. The original proof was:
    `grind [Set.image_insert_eq, Set.image_singleton]` -/
    simpa using Cospherical.subtype_val h_cospherical'
  have hncol : ¬ Collinear ℝ {p₁', p', p₃'} := by
    rw [← affineIndependent_iff_not_collinear_set,
      ← s_isom.toAffineMap.affineIndependent_iff s_isom.injective]
    convert! hindep
    ext i; fin_cases i <;> rfl
  have : Fact (finrank ℝ S.direction = 2) := Affine.Simplex.fact_finrank_direction_affineSpan_eq
  exact cospherical_of_mul_dist_eq_mul_dist_of_angle_eq_pi_aux h_dist' hp₁'p₂' hp₃'p₄' hncol

/-- **Intersecting Secants Theorem**. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Power/Variant91a8ee02767f22cbc3a7db4c57cb8312b404d83fd9c995660204312063f544f1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Power/Variant91a8ee02767f22cbc3a7db4c57cb8312b404d83fd9c995660204312063f544f1.lean#L177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c1075bf15e3e0bfe98d8cd97bd080ba9ca8b7df` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
