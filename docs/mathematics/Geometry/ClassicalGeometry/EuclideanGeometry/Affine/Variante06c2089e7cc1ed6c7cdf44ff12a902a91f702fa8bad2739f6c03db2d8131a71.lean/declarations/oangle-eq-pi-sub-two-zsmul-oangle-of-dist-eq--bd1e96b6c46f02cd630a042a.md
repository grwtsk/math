# oangle_eq_pi_sub_two_zsmul_oangle_of_dist_eq

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
      "line": 319,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e0/e06c2089e7cc1ed6c7cdf44ff12a902a91f702fa8bad2739f6c03db2d8131a71.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ed497b9f-f85b-3e6d-68ae-fdd5b0b9f6d1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4778167a-dea1-267c-888a-f375eb878928",
  "kind": "theorem",
  "lexical_name": "oangle_eq_pi_sub_two_zsmul_oangle_of_dist_eq",
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
  "slug": "oangle-eq-pi-sub-two-zsmul-oangle-of-dist-eq--bd1e96b6c46f02cd630a042a",
  "source": {
    "blob": "4a1b712e025fb3531119c58185664f8e5fcc4069",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 329,
    "line": 319,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Variante06c2089e7cc1ed6c7cdf44ff12a902a91f702fa8bad2739f6c03db2d8131a71.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bd1e96b6c46f02cd630a042a1b99e6fc97054fa1c6f8b8ea1b68160d65b9e7a2",
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

Occurrence: `result:4778167a-dea1-267c-888a-f375eb878928`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 319–329.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem oangle_eq_pi_sub_two_zsmul_oangle_of_dist_eq {p₁ p₂ p₃ : P} (hn : p₂ ≠ p₃)
    (h : dist p₁ p₂ = dist p₁ p₃) : ∡ p₃ p₁ p₂ = π - (2 : ℤ) • ∡ p₁ p₂ p₃ := by
  simp_rw [dist_eq_norm_vsub V] at h
  rw [oangle, oangle]
  convert o.oangle_eq_pi_sub_two_zsmul_oangle_sub_of_norm_eq _ h using 1
  · rw [← neg_vsub_eq_vsub_rev p₁ p₃, ← neg_vsub_eq_vsub_rev p₁ p₂, o.oangle_neg_neg]
  · rw [← o.oangle_sub_eq_oangle_sub_rev_of_norm_eq h]; simp
  · simpa using hn
#align euclidean_geometry.oangle_eq_pi_sub_two_zsmul_oangle_of_dist_eq EuclideanGeometry.oangle_eq_pi_sub_two_zsmul_oangle_of_dist_eq

/-- A base angle of an isosceles triangle is acute, oriented angle-at-point form. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Variante06c2089e7cc1ed6c7cdf44ff12a902a91f702fa8bad2739f6c03db2d8131a71.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Variante06c2089e7cc1ed6c7cdf44ff12a902a91f702fa8bad2739f6c03db2d8131a71.lean#L319).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a1b712e025fb3531119c58185664f8e5fcc4069` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
