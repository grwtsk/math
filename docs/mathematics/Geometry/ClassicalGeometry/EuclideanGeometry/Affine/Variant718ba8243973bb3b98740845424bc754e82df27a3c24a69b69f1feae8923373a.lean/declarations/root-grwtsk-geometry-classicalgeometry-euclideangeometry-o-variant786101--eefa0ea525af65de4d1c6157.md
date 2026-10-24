# _root_.GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.O.Variant7861018fd5618cf4117546cbf644b6eab74741772f8c3f48fdc8e1828c60a9e9.Collinear.two_zsmul_oangle_eq_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:701e50c6-860e-904e-1d8e-959ce79238bc",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.O.Variant7861018fd5618cf4117546cbf644b6eab74741772f8c3f48fdc8e1828c60a9e9.Collinear.two_zsmul_oangle_eq_left",
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
  "slug": "root-grwtsk-geometry-classicalgeometry-euclideangeometry-o-variant786101--eefa0ea525af65de4d1c6157",
  "source": {
    "blob": "403e9dfb32f4f11daabf70f6a88c1f254ef47444",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 662,
    "line": 652,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Variant718ba8243973bb3b98740845424bc754e82df27a3c24a69b69f1feae8923373a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eefa0ea525af65de4d1c615709d204fa108c5825938af322ee06663a190ef71a",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Variant718ba8243973bb3b98740845424bc754e82df27a3c24a69b69f1feae8923373a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:701e50c6-860e-904e-1d8e-959ce79238bc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 652–662.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.O.Variant7861018fd5618cf4117546cbf644b6eab74741772f8c3f48fdc8e1828c60a9e9.Collinear.two_zsmul_oangle_eq_left {p₁ p₁' p₂ p₃ : P}
    (h : Collinear ℝ ({p₁, p₂, p₁'} : Set P)) (hp₁p₂ : p₁ ≠ p₂) (hp₁'p₂ : p₁' ≠ p₂) :
    (2 : ℤ) • ∡ p₁ p₂ p₃ = (2 : ℤ) • ∡ p₁' p₂ p₃ := by
  by_cases hp₃p₂ : p₃ = p₂; · simp [hp₃p₂]
  rcases h.wbtw_or_wbtw_or_wbtw with (hw | hw | hw)
  · have hw' : Sbtw ℝ p₁ p₂ p₁' := ⟨hw, hp₁p₂.symm, hp₁'p₂.symm⟩
    rw [hw'.oangle_eq_add_pi_left hp₃p₂, smul_add, Real.Angle.two_zsmul_coe_pi, add_zero]
  · rw [hw.oangle_eq_left hp₁'p₂]
  · rw [hw.symm.oangle_eq_left hp₁p₂]

/-- Replacing the third point by one on the same line does not change twice the oriented angle. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Variant718ba8243973bb3b98740845424bc754e82df27a3c24a69b69f1feae8923373a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Variant718ba8243973bb3b98740845424bc754e82df27a3c24a69b69f1feae8923373a.lean#L652).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `403e9dfb32f4f11daabf70f6a88c1f254ef47444` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
