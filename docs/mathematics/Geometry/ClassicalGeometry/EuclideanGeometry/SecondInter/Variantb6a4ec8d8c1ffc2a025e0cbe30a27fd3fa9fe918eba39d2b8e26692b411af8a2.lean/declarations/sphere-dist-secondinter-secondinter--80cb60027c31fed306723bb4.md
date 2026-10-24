# Sphere.dist_secondInter_secondInter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "88edce432fae89f953ae3092237e9f45be20bccd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 164,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b6/b6a4ec8d8c1ffc2a025e0cbe30a27fd3fa9fe918eba39d2b8e26692b411af8a2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0ea0c8e2-7095-16e6-7246-628dea52d01e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cafeff27-e385-74de-1524-0e0b78c7b2ad",
  "kind": "theorem",
  "lexical_name": "Sphere.dist_secondInter_secondInter",
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
  "slug": "sphere-dist-secondinter-secondinter--80cb60027c31fed306723bb4",
  "source": {
    "blob": "88edce432fae89f953ae3092237e9f45be20bccd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 164,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/SecondInter/Variantb6a4ec8d8c1ffc2a025e0cbe30a27fd3fa9fe918eba39d2b8e26692b411af8a2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:80cb60027c31fed306723bb440dcecf2d611a0aea4fe91a1b37f28aa03aef4e0",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/SecondInter/Variantb6a4ec8d8c1ffc2a025e0cbe30a27fd3fa9fe918eba39d2b8e26692b411af8a2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cafeff27-e385-74de-1524-0e0b78c7b2ad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 164–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Sphere.dist_secondInter_secondInter (s₁ s₂ : Sphere P) (p : P) (v : V) :
    dist (s₁.secondInter p v) (s₂.secondInter p v) = 2 * |⟪v, s₁.center -ᵥ s₂.center⟫| / ‖v‖ := by
  rcases eq_or_ne v 0 with rfl | hv
  · simp
  simp [dist_eq_norm_vsub, secondInter_vsub_secondInter, norm_smul]
  grind

/-- The distance between the second intersections of two spheres along a common
unit direction `v` is `2 * |⟪v, s₁.center -ᵥ s₂.center⟫|`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/SecondInter/Variantb6a4ec8d8c1ffc2a025e0cbe30a27fd3fa9fe918eba39d2b8e26692b411af8a2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/SecondInter/Variantb6a4ec8d8c1ffc2a025e0cbe30a27fd3fa9fe918eba39d2b8e26692b411af8a2.lean#L164).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88edce432fae89f953ae3092237e9f45be20bccd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
