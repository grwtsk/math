# _root_.AffineSubspace.SSameSide.oangle_sign_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4a1b712e025fb3531119c58185664f8e5fcc4069",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 800,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e0/e06c2089e7cc1ed6c7cdf44ff12a902a91f702fa8bad2739f6c03db2d8131a71.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2d64d452-7fe7-76b2-71a0-495964c81eca",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ba459905-3dc3-0749-0273-8e86a545d327",
  "kind": "theorem",
  "lexical_name": "_root_.AffineSubspace.SSameSide.oangle_sign_eq",
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
  "slug": "root-affinesubspace-ssameside-oangle-sign-eq--b62362cbf00675ee6fea87c9",
  "source": {
    "blob": "4a1b712e025fb3531119c58185664f8e5fcc4069",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 830,
    "line": 800,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Variante06c2089e7cc1ed6c7cdf44ff12a902a91f702fa8bad2739f6c03db2d8131a71.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b62362cbf00675ee6fea87c9dbdc19e46dd978632acaaa95cd3eabd8d38f0a99",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Variante06c2089e7cc1ed6c7cdf44ff12a902a91f702fa8bad2739f6c03db2d8131a71.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ba459905-3dc3-0749-0273-8e86a545d327`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 800–830.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.AffineSubspace.SSameSide.oangle_sign_eq {s : AffineSubspace ℝ P} {p₁ p₂ p₃ p₄ : P}
    (hp₁ : p₁ ∈ s) (hp₂ : p₂ ∈ s) (hp₃p₄ : s.SSameSide p₃ p₄) :
    (∡ p₁ p₄ p₂).sign = (∡ p₁ p₃ p₂).sign := by
  by_cases h : p₁ = p₂; · simp [h]
  let sp : Set (P × P × P) := (fun p : P => (p₁, p, p₂)) '' {p | s.SSameSide p₃ p}
  have hc : IsConnected sp := (isConnected_setOf_sSameSide hp₃p₄.2.1 hp₃p₄.nonempty).image _
    (continuous_const.prod_mk (Continuous.Prod.mk_left _)).continuousOn
  have hf : ContinuousOn (fun p : P × P × P => ∡ p.1 p.2.1 p.2.2) sp := by
    refine' ContinuousAt.continuousOn fun p hp => continuousAt_oangle _ _
    all_goals
      simp_rw [Set.mem_image, Set.mem_setOf] at hp
      obtain ⟨p', hp', rfl⟩ := hp
      dsimp only
      rintro rfl
    · exact hp'.2.2 hp₁
    · exact hp'.2.2 hp₂
  have hsp : ∀ p : P × P × P, p ∈ sp → ∡ p.1 p.2.1 p.2.2 ≠ 0 ∧ ∡ p.1 p.2.1 p.2.2 ≠ π := by
    intro p hp
    simp_rw [Set.mem_image, Set.mem_setOf] at hp
    obtain ⟨p', hp', rfl⟩ := hp
    dsimp only
    rw [oangle_ne_zero_and_ne_pi_iff_affineIndependent]
    exact affineIndependent_of_ne_of_mem_of_not_mem_of_mem h hp₁ hp'.2.2 hp₂
  have hp₃ : (p₁, p₃, p₂) ∈ sp :=
    Set.mem_image_of_mem _ (sSameSide_self_iff.2 ⟨hp₃p₄.nonempty, hp₃p₄.2.1⟩)
  have hp₄ : (p₁, p₄, p₂) ∈ sp := Set.mem_image_of_mem _ hp₃p₄
  convert Real.Angle.sign_eq_of_continuousOn hc hf hsp hp₃ hp₄
#align affine_subspace.s_same_side.oangle_sign_eq AffineSubspace.SSameSide.oangle_sign_eq

/-- Given two points in an affine subspace, the angles between those two points at two other
points on opposite sides of that subspace have opposite signs. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Variante06c2089e7cc1ed6c7cdf44ff12a902a91f702fa8bad2739f6c03db2d8131a71.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Variante06c2089e7cc1ed6c7cdf44ff12a902a91f702fa8bad2739f6c03db2d8131a71.lean#L800).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a1b712e025fb3531119c58185664f8e5fcc4069` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
