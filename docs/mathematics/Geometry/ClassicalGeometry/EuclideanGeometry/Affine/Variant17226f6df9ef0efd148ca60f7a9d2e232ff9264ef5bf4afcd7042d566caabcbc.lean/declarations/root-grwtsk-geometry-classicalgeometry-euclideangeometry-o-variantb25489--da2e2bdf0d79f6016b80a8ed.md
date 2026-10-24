# _root_.GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.O.Variantb25489c209d02072e2179461e7f39837bd0240322bb3cfd2128debb4476a05eb.Sbtw.oangle_eq_add_pi_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8dbbd2d2-ff0d-19eb-9e93-f4efa5905a15",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.O.Variantb25489c209d02072e2179461e7f39837bd0240322bb3cfd2128debb4476a05eb.Sbtw.oangle_eq_add_pi_left",
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
  "slug": "root-grwtsk-geometry-classicalgeometry-euclideangeometry-o-variantb25489--da2e2bdf0d79f6016b80a8ed",
  "source": {
    "blob": "865abc9f8f6a0a7473995d10d0a560913e9f4621",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 539,
    "line": 533,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Variant17226f6df9ef0efd148ca60f7a9d2e232ff9264ef5bf4afcd7042d566caabcbc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:da2e2bdf0d79f6016b80a8ed87be4ce8cbfe73d69f499b7306863008cf29acb1",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Variant17226f6df9ef0efd148ca60f7a9d2e232ff9264ef5bf4afcd7042d566caabcbc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8dbbd2d2-ff0d-19eb-9e93-f4efa5905a15`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 533–539.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.O.Variantb25489c209d02072e2179461e7f39837bd0240322bb3cfd2128debb4476a05eb.Sbtw.oangle_eq_add_pi_left
    {p₁ p₁' p₂ p₃ : P} (h : Sbtw ℝ p₁ p₂ p₁') (hp₃p₂ : p₃ ≠ p₂) :
    ∡ p₁ p₂ p₃ = ∡ p₁' p₂ p₃ + π := by
  rw [← h.oangle₁₂₃_eq_pi, oangle_add_swap h.left_ne h.right_ne hp₃p₂]

/-- Replacing the third point by one on the same line but the opposite ray adds π to the oriented
angle. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Variant17226f6df9ef0efd148ca60f7a9d2e232ff9264ef5bf4afcd7042d566caabcbc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Variant17226f6df9ef0efd148ca60f7a9d2e232ff9264ef5bf4afcd7042d566caabcbc.lean#L533).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `865abc9f8f6a0a7473995d10d0a560913e9f4621` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
