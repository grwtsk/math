# affineMap_ext

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "410f1a6b7d3dd5f2a29635257deeab8ca582aa04",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 86,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/50/50991e9e9acd7e54d99553f9c36bd4f2e45da6ae5c34157628e515e48dcc3d85.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a29afd25-b311-4065-6f3a-15f9be4bb620",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:85c8ec13-c574-1eb9-3412-c4f92910facb",
  "kind": "lemma",
  "lexical_name": "affineMap_ext",
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
  "slug": "affinemap-ext--f3ff2ed1760e3e5fee4c615f",
  "source": {
    "blob": "410f1a6b7d3dd5f2a29635257deeab8ca582aa04",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 86,
    "path": "GRWTSK/Geometry/ConvexGeometry/AffineMap/Variant50991e9e9acd7e54d99553f9c36bd4f2e45da6ae5c34157628e515e48dcc3d85.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f3ff2ed1760e3e5fee4c615f6a7ac4aa5e1a202e106a4ce3d2dc912039fb2da1",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/AffineMap/Variant50991e9e9acd7e54d99553f9c36bd4f2e45da6ae5c34157628e515e48dcc3d85.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:85c8ec13-c574-1eb9-3412-c4f92910facb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma affineMap_ext {M : Type*} {Y : Type*} [ConvexSpace R Y]
    {f g : ConvexSpace.AffineMap R (StdSimplex R M) Y}
    (h : ∀ (i : M), f (.single i) = g (.single i)) : f = g := by
  ext x
  conv_lhs => rw [← iConvexComb_single x]
  conv_rhs => rw [← iConvexComb_single x]
  rw [f.isAffineMap.map_iConvexComb, g.isAffineMap.map_iConvexComb]
  aesop

/-- The (bundled) affine map `StdSimplex R M → StdSimplex R N` induced
by a map `f : M → N`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/AffineMap/Variant50991e9e9acd7e54d99553f9c36bd4f2e45da6ae5c34157628e515e48dcc3d85.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/AffineMap/Variant50991e9e9acd7e54d99553f9c36bd4f2e45da6ae5c34157628e515e48dcc3d85.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `410f1a6b7d3dd5f2a29635257deeab8ca582aa04` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
