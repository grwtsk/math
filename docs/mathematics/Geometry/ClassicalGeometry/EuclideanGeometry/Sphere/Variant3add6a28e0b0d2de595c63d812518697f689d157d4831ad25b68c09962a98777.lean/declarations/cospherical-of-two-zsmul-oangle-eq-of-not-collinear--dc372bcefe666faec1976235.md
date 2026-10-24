# cospherical_of_two_zsmul_oangle_eq_of_not_collinear

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c301a782-fb66-d429-9202-0ab44ef6896f",
  "kind": "theorem",
  "lexical_name": "cospherical_of_two_zsmul_oangle_eq_of_not_collinear",
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
  "slug": "cospherical-of-two-zsmul-oangle-eq-of-not-collinear--dc372bcefe666faec1976235",
  "source": {
    "blob": "6e3d1fab0a3bdb8ba96c07eb8402cae6c20879bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 363,
    "line": 346,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant3add6a28e0b0d2de595c63d812518697f689d157d4831ad25b68c09962a98777.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dc372bcefe666faec1976235edf4964fa67d0bec5ae884b4d5da4fec53016da1",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant3add6a28e0b0d2de595c63d812518697f689d157d4831ad25b68c09962a98777.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c301a782-fb66-d429-9202-0ab44ef6896f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 346–363.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cospherical_of_two_zsmul_oangle_eq_of_not_collinear {p₁ p₂ p₃ p₄ : P}
    (h : (2 : ℤ) • ∡ p₁ p₂ p₄ = (2 : ℤ) • ∡ p₁ p₃ p₄) (hn : ¬Collinear ℝ ({p₁, p₂, p₄} : Set P)) :
    Cospherical ({p₁, p₂, p₃, p₄} : Set P) := by
  have hn' : ¬Collinear ℝ ({p₁, p₃, p₄} : Set P) := by
    rwa [← collinear_iff_of_two_zsmul_oangle_eq h]
  let t₁ : Affine.Triangle ℝ P := ⟨![p₁, p₂, p₄], affineIndependent_iff_not_collinear_set.2 hn⟩
  let t₂ : Affine.Triangle ℝ P := ⟨![p₁, p₃, p₄], affineIndependent_iff_not_collinear_set.2 hn'⟩
  rw [cospherical_iff_exists_sphere]
  refine ⟨t₂.circumsphere, ?_⟩
  simp_rw [Set.insert_subset_iff, Set.singleton_subset_iff]
  refine ⟨t₂.mem_circumsphere 0, ?_, t₂.mem_circumsphere 1, t₂.mem_circumsphere 2⟩
  rw [Affine.Triangle.circumsphere_eq_circumsphere_of_eq_of_eq_of_two_zsmul_oangle_eq
    (by decide : (0 : Fin 3) ≠ 1) (by decide : (0 : Fin 3) ≠ 2) (by decide)
    (show t₂.points 0 = t₁.points 0 from rfl) rfl h.symm]
  exact t₁.mem_circumsphere 1

/-- Converse of "angles in same segment are equal" and "opposite angles of a cyclic quadrilateral
add to π", for oriented angles mod π, with a "concyclic" conclusion. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant3add6a28e0b0d2de595c63d812518697f689d157d4831ad25b68c09962a98777.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant3add6a28e0b0d2de595c63d812518697f689d157d4831ad25b68c09962a98777.lean#L346).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e3d1fab0a3bdb8ba96c07eb8402cae6c20879bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
