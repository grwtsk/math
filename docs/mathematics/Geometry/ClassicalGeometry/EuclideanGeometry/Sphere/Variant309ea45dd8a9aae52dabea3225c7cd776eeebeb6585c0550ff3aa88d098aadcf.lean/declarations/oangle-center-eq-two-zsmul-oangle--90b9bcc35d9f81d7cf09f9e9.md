# oangle_center_eq_two_zsmul_oangle

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2691b514-6538-2642-37fe-27737e042511",
  "kind": "theorem",
  "lexical_name": "oangle_center_eq_two_zsmul_oangle",
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
  "slug": "oangle-center-eq-two-zsmul-oangle--90b9bcc35d9f81d7cf09f9e9",
  "source": {
    "blob": "e1e49b87fdba5fec3456568da4a5d389d609eded",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 91,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant309ea45dd8a9aae52dabea3225c7cd776eeebeb6585c0550ff3aa88d098aadcf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:90b9bcc35d9f81d7cf09f9e9bc8348e1a417d67e1da0f44ad4858fac327135c6",
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

Occurrence: `result:2691b514-6538-2642-37fe-27737e042511`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem oangle_center_eq_two_zsmul_oangle {s : Sphere P} {p₁ p₂ p₃ : P} (hp₁ : p₁ ∈ s)
    (hp₂ : p₂ ∈ s) (hp₃ : p₃ ∈ s) (hp₂p₁ : p₂ ≠ p₁) (hp₂p₃ : p₂ ≠ p₃) :
    ∡ p₁ s.center p₃ = (2 : ℤ) • ∡ p₁ p₂ p₃ := by
  rw [mem_sphere, @dist_eq_norm_vsub V] at hp₁ hp₂ hp₃
  rw [oangle, oangle, o.oangle_eq_two_zsmul_oangle_sub_of_norm_eq_real _ _ hp₂ hp₁ hp₃] <;>
    simp [hp₂p₁, hp₂p₃]
#align euclidean_geometry.sphere.oangle_center_eq_two_zsmul_oangle EuclideanGeometry.Sphere.oangle_center_eq_two_zsmul_oangle

/-- Oriented angle version of "angles in same segment are equal" and "opposite angles of a
cyclic quadrilateral add to π", for oriented angles mod π (for which those are the same result),
represented here as equality of twice the angles. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant309ea45dd8a9aae52dabea3225c7cd776eeebeb6585c0550ff3aa88d098aadcf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant309ea45dd8a9aae52dabea3225c7cd776eeebeb6585c0550ff3aa88d098aadcf.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e1e49b87fdba5fec3456568da4a5d389d609eded` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
