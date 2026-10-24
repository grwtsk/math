# Cospherical.affineIndependent_of_ne

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8017fc00e9cc0acf0c364420ca3b36ce0197ebb7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 287,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/58/58649477cf4ec9d302af21c4dd9a3c5c4b5dc4a7b6778ac120c9f664a2974b89.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c526bc8d-2d99-09b1-efac-7444379bc361",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ad41c5b1-8a1c-0e46-3e91-9b9fb29aa254",
  "kind": "theorem",
  "lexical_name": "Cospherical.affineIndependent_of_ne",
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
  "slug": "cospherical-affineindependent-of-ne--640a3b47d8555f800863b630",
  "source": {
    "blob": "8017fc00e9cc0acf0c364420ca3b36ce0197ebb7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 297,
    "line": 287,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant58649477cf4ec9d302af21c4dd9a3c5c4b5dc4a7b6778ac120c9f664a2974b89.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:640a3b47d8555f800863b6300388d144965206f8818522f7d86f808951f3ffdf",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant58649477cf4ec9d302af21c4dd9a3c5c4b5dc4a7b6778ac120c9f664a2974b89.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ad41c5b1-8a1c-0e46-3e91-9b9fb29aa254`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 287–297.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Cospherical.affineIndependent_of_ne {p₁ p₂ p₃ : P} (hs : Cospherical ({p₁, p₂, p₃} : Set P))
    (h₁₂ : p₁ ≠ p₂) (h₁₃ : p₁ ≠ p₃) (h₂₃ : p₂ ≠ p₃) : AffineIndependent ℝ ![p₁, p₂, p₃] :=
  hs.affineIndependent_of_mem_of_ne (Set.mem_insert _ _)
    (Set.mem_insert_of_mem _ (Set.mem_insert _ _))
    (Set.mem_insert_of_mem _ (Set.mem_insert_of_mem _ (Set.mem_singleton _))) h₁₂ h₁₃ h₂₃
#align euclidean_geometry.cospherical.affine_independent_of_ne EuclideanGeometry.Cospherical.affineIndependent_of_ne

/-- Suppose that `p₁` and `p₂` lie in spheres `s₁` and `s₂`. Then the vector between the centers
of those spheres is orthogonal to that between `p₁` and `p₂`; this is a version of
`inner_vsub_vsub_of_dist_eq_of_dist_eq` for bundled spheres. (In two dimensions, this says that
the diagonals of a kite are orthogonal.) -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant58649477cf4ec9d302af21c4dd9a3c5c4b5dc4a7b6778ac120c9f664a2974b89.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant58649477cf4ec9d302af21c4dd9a3c5c4b5dc4a7b6778ac120c9f664a2974b89.lean#L287).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8017fc00e9cc0acf0c364420ca3b36ce0197ebb7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
