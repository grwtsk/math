# oangle_eq_oangle_of_dist_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1b1fffcb-3757-c131-d019-95bdc71d5c1c",
  "kind": "theorem",
  "lexical_name": "oangle_eq_oangle_of_dist_eq",
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
  "slug": "oangle-eq-oangle-of-dist-eq--5936d19755a4ca0ebb6e1738",
  "source": {
    "blob": "adfcc5af2110e389c90fa736052bfc90dd222f7b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 326,
    "line": 318,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Varianta151ff480ce7a6839955f2b34c360fe5a50f87d835468585491d101d14e290d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5936d19755a4ca0ebb6e1738dc6b2083f3d1a1d2a1df8b633ffaa2cd491c2001",
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

Occurrence: `result:1b1fffcb-3757-c131-d019-95bdc71d5c1c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 318–326.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem oangle_eq_oangle_of_dist_eq {p₁ p₂ p₃ : P} (h : dist p₁ p₂ = dist p₁ p₃) :
    ∡ p₁ p₂ p₃ = ∡ p₂ p₃ p₁ := by
  simp_rw [dist_eq_norm_vsub V] at h
  rw [oangle, oangle, ← vsub_sub_vsub_cancel_left p₃ p₂ p₁, ← vsub_sub_vsub_cancel_left p₂ p₃ p₁,
    o.oangle_sub_eq_oangle_sub_rev_of_norm_eq h]
#align euclidean_geometry.oangle_eq_oangle_of_dist_eq EuclideanGeometry.oangle_eq_oangle_of_dist_eq

/-- The angle at the apex of an isosceles triangle is `π` minus twice a base angle, oriented
angle-at-point form. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Varianta151ff480ce7a6839955f2b34c360fe5a50f87d835468585491d101d14e290d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Varianta151ff480ce7a6839955f2b34c360fe5a50f87d835468585491d101d14e290d7.lean#L318).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `adfcc5af2110e389c90fa736052bfc90dd222f7b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
