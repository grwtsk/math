# _root_.GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.O.Variant7861018fd5618cf4117546cbf644b6eab74741772f8c3f48fdc8e1828c60a9e9.Sbtw.oangle_sign_eq_of_sbtw

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6a531817-f52a-3ce8-a06c-bcb9944d1a8e",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.O.Variant7861018fd5618cf4117546cbf644b6eab74741772f8c3f48fdc8e1828c60a9e9.Sbtw.oangle_sign_eq_of_sbtw",
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
  "slug": "root-grwtsk-geometry-classicalgeometry-euclideangeometry-o-variant786101--ce66ce4a29043d9ac795ce05",
  "source": {
    "blob": "403e9dfb32f4f11daabf70f6a88c1f254ef47444",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 821,
    "line": 813,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Variant718ba8243973bb3b98740845424bc754e82df27a3c24a69b69f1feae8923373a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ce66ce4a29043d9ac795ce0541140807d0d2f9d266cdcc9498934f59c76d89ef",
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

Occurrence: `result:6a531817-f52a-3ce8-a06c-bcb9944d1a8e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 813–821.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.O.Variant7861018fd5618cf4117546cbf644b6eab74741772f8c3f48fdc8e1828c60a9e9.Sbtw.oangle_sign_eq_of_sbtw {p p₁ p₂ p₃ p₄ : P} (hp₁₃ : Sbtw ℝ p₁ p p₃)
    (hp₂₄ : Sbtw ℝ p₂ p p₄) :
    (∡ p₁ p₄ p₂).sign = (∡ p₁ p₃ p₂).sign := by
  rw [← Sbtw.oangle_eq_right hp₂₄.symm, Sbtw.oangle_sign_eq _ hp₁₃, ← oangle_rotate_sign,
    Sbtw.oangle_sign_eq _ hp₂₄.symm, Sbtw.oangle_eq_left hp₁₃.symm]

/-- Given two lines sharing a common point lying strictly outside the segments determined by the
defining points. Fixing one point from each line as the endpoints, choosing either remaining point
as the vertex yields oriented angles with the same sign. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Variant718ba8243973bb3b98740845424bc754e82df27a3c24a69b69f1feae8923373a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Variant718ba8243973bb3b98740845424bc754e82df27a3c24a69b69f1feae8923373a.lean#L813).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `403e9dfb32f4f11daabf70f6a88c1f254ef47444` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
