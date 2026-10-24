# oangle_eq_pi_iff_oangle_rev_eq_pi

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
      "line": 211,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e0/e06c2089e7cc1ed6c7cdf44ff12a902a91f702fa8bad2739f6c03db2d8131a71.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1e5ed529-6cc2-0069-9eed-b670f077c045",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9449a775-fb0c-1b96-f096-9c7224cc5049",
  "kind": "theorem",
  "lexical_name": "oangle_eq_pi_iff_oangle_rev_eq_pi",
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
  "slug": "oangle-eq-pi-iff-oangle-rev-eq-pi--841182f33f1bbdcd50c9d8e5",
  "source": {
    "blob": "4a1b712e025fb3531119c58185664f8e5fcc4069",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 216,
    "line": 211,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Variante06c2089e7cc1ed6c7cdf44ff12a902a91f702fa8bad2739f6c03db2d8131a71.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:841182f33f1bbdcd50c9d8e5113e07449d1545c5dad478c0eb08a40a6e13c220",
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

Occurrence: `result:9449a775-fb0c-1b96-f096-9c7224cc5049`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 211–216.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem oangle_eq_pi_iff_oangle_rev_eq_pi {p₁ p₂ p₃ : P} : ∡ p₁ p₂ p₃ = π ↔ ∡ p₃ p₂ p₁ = π :=
  o.oangle_eq_pi_iff_oangle_rev_eq_pi
#align euclidean_geometry.oangle_eq_pi_iff_oangle_rev_eq_pi EuclideanGeometry.oangle_eq_pi_iff_oangle_rev_eq_pi

/-- An oriented angle is not zero or `π` if and only if the three points are affinely
independent. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Variante06c2089e7cc1ed6c7cdf44ff12a902a91f702fa8bad2739f6c03db2d8131a71.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Variante06c2089e7cc1ed6c7cdf44ff12a902a91f702fa8bad2739f6c03db2d8131a71.lean#L211).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a1b712e025fb3531119c58185664f8e5fcc4069` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
