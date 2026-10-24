# mem_circumsphere_of_two_zsmul_oangle_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:69dc6fc2-1e84-42e9-bd81-19e4d41d5848",
  "kind": "theorem",
  "lexical_name": "mem_circumsphere_of_two_zsmul_oangle_eq",
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
  "slug": "mem-circumsphere-of-two-zsmul-oangle-eq--1c477ef15d984b13540d89fe",
  "source": {
    "blob": "e1e49b87fdba5fec3456568da4a5d389d609eded",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 372,
    "line": 336,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant309ea45dd8a9aae52dabea3225c7cd776eeebeb6585c0550ff3aa88d098aadcf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1c477ef15d984b13540d89fef02647178ecd1513228b743865376b6c9fa022cb",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant309ea45dd8a9aae52dabea3225c7cd776eeebeb6585c0550ff3aa88d098aadcf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:69dc6fc2-1e84-42e9-bd81-19e4d41d5848`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 336–372.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_circumsphere_of_two_zsmul_oangle_eq {t : Triangle ℝ P} {p : P} {i₁ i₂ i₃ : Fin 3}
    (h₁₂ : i₁ ≠ i₂) (h₁₃ : i₁ ≠ i₃) (h₂₃ : i₂ ≠ i₃)
    (h : (2 : ℤ) • ∡ (t.points i₁) p (t.points i₃) =
      (2 : ℤ) • ∡ (t.points i₁) (t.points i₂) (t.points i₃)) : p ∈ t.circumsphere := by
  let t'p : Fin 3 → P := Function.update t.points i₂ p
  have h₁ : t'p i₁ = t.points i₁ := by simp [h₁₂]
  have h₂ : t'p i₂ = p := by simp
  have h₃ : t'p i₃ = t.points i₃ := by simp [h₂₃.symm]
  have ha : AffineIndependent ℝ t'p := by
    rw [affineIndependent_iff_not_collinear_of_ne h₁₂ h₁₃ h₂₃, h₁, h₂, h₃,
      collinear_iff_of_two_zsmul_oangle_eq h, ←
      affineIndependent_iff_not_collinear_of_ne h₁₂ h₁₃ h₂₃]
    exact t.Independent
  let t' : Triangle ℝ P := ⟨t'p, ha⟩
  have h₁' : t'.points i₁ = t.points i₁ := h₁
  have h₂' : t'.points i₂ = p := h₂
  have h₃' : t'.points i₃ = t.points i₃ := h₃
  have h' : (2 : ℤ) • ∡ (t'.points i₁) (t'.points i₂) (t'.points i₃) =
      (2 : ℤ) • ∡ (t.points i₁) (t.points i₂) (t.points i₃) := by rwa [h₁', h₂', h₃']
  rw [← circumsphere_eq_circumsphere_of_eq_of_eq_of_two_zsmul_oangle_eq h₁₂ h₁₃ h₂₃ h₁' h₃' h', ←
    h₂']
  exact Simplex.mem_circumsphere _ _
#align affine.triangle.mem_circumsphere_of_two_zsmul_oangle_eq Affine.Triangle.mem_circumsphere_of_two_zsmul_oangle_eq

end Triangle

end Affine

namespace EuclideanGeometry

variable {V : Type*} {P : Type*} [NormedAddCommGroup V] [InnerProductSpace ℝ V] [MetricSpace P]
  [NormedAddTorsor V P] [hd2 : Fact (finrank ℝ V = 2)] [Module.Oriented ℝ V (Fin 2)]

local notation "o" => Module.Oriented.positiveOrientation

/-- Converse of "angles in same segment are equal" and "opposite angles of a cyclic quadrilateral
add to π", for oriented angles mod π. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant309ea45dd8a9aae52dabea3225c7cd776eeebeb6585c0550ff3aa88d098aadcf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant309ea45dd8a9aae52dabea3225c7cd776eeebeb6585c0550ff3aa88d098aadcf.lean#L336).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e1e49b87fdba5fec3456568da4a5d389d609eded` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
