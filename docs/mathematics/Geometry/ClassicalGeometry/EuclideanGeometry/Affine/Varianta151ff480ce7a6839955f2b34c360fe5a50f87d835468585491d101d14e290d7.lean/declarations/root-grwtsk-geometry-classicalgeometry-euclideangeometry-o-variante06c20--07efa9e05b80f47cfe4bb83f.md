# _root_.GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.O.Variante06c2089e7cc1ed6c7cdf44ff12a902a91f702fa8bad2739f6c03db2d8131a71.AffineSubspace.SSameSide.oangle_sign_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8d23d090-ff79-9b3c-fb04-5c4a0b99e4f4",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.O.Variante06c2089e7cc1ed6c7cdf44ff12a902a91f702fa8bad2739f6c03db2d8131a71.AffineSubspace.SSameSide.oangle_sign_eq",
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
  "slug": "root-grwtsk-geometry-classicalgeometry-euclideangeometry-o-variante06c20--07efa9e05b80f47cfe4bb83f",
  "source": {
    "blob": "adfcc5af2110e389c90fa736052bfc90dd222f7b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 838,
    "line": 808,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Varianta151ff480ce7a6839955f2b34c360fe5a50f87d835468585491d101d14e290d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:07efa9e05b80f47cfe4bb83f68751691a1fc279c74322ba17715bb238bdf4a6c",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Varianta151ff480ce7a6839955f2b34c360fe5a50f87d835468585491d101d14e290d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8d23d090-ff79-9b3c-fb04-5c4a0b99e4f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 808–838.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.O.Variante06c2089e7cc1ed6c7cdf44ff12a902a91f702fa8bad2739f6c03db2d8131a71.AffineSubspace.SSameSide.oangle_sign_eq {s : AffineSubspace ℝ P} {p₁ p₂ p₃ p₄ : P}
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

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Varianta151ff480ce7a6839955f2b34c360fe5a50f87d835468585491d101d14e290d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Varianta151ff480ce7a6839955f2b34c360fe5a50f87d835468585491d101d14e290d7.lean#L808).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `adfcc5af2110e389c90fa736052bfc90dd222f7b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
