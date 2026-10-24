# angle_eq_iff_oangle_eq_of_sign_eq

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
      "line": 380,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e0/e06c2089e7cc1ed6c7cdf44ff12a902a91f702fa8bad2739f6c03db2d8131a71.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ed35483c-075a-e83f-f264-6f9ee949bcd7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1a2524dc-cf52-3da6-044b-4dde44c5a288",
  "kind": "theorem",
  "lexical_name": "angle_eq_iff_oangle_eq_of_sign_eq",
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
  "slug": "angle-eq-iff-oangle-eq-of-sign-eq--c1719ed4b76c46bd440def21",
  "source": {
    "blob": "4a1b712e025fb3531119c58185664f8e5fcc4069",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 388,
    "line": 380,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Variante06c2089e7cc1ed6c7cdf44ff12a902a91f702fa8bad2739f6c03db2d8131a71.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c1719ed4b76c46bd440def21ea8c47a71342f199e16452ef86e7abd27755cbda",
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

Occurrence: `result:1a2524dc-cf52-3da6-044b-4dde44c5a288`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 380–388.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem angle_eq_iff_oangle_eq_of_sign_eq {p₁ p₂ p₃ p₄ p₅ p₆ : P} (hp₁ : p₁ ≠ p₂) (hp₃ : p₃ ≠ p₂)
    (hp₄ : p₄ ≠ p₅) (hp₆ : p₆ ≠ p₅) (hs : (∡ p₁ p₂ p₃).sign = (∡ p₄ p₅ p₆).sign) :
    ∠ p₁ p₂ p₃ = ∠ p₄ p₅ p₆ ↔ ∡ p₁ p₂ p₃ = ∡ p₄ p₅ p₆ :=
  o.angle_eq_iff_oangle_eq_of_sign_eq (vsub_ne_zero.2 hp₁) (vsub_ne_zero.2 hp₃) (vsub_ne_zero.2 hp₄)
    (vsub_ne_zero.2 hp₆) hs
#align euclidean_geometry.angle_eq_iff_oangle_eq_of_sign_eq EuclideanGeometry.angle_eq_iff_oangle_eq_of_sign_eq

/-- The oriented angle between three points equals the unoriented angle if the sign is
positive. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Variante06c2089e7cc1ed6c7cdf44ff12a902a91f702fa8bad2739f6c03db2d8131a71.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Variante06c2089e7cc1ed6c7cdf44ff12a902a91f702fa8bad2739f6c03db2d8131a71.lean#L380).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a1b712e025fb3531119c58185664f8e5fcc4069` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
