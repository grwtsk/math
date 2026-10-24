# AffineBasis.centroid_mem_interior_convexHull

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a20149adf21bf52aabae70ba6da519213f7325fa",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 127,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4e/4e2f407365aa790d76d9db78ae0a6d6e284791b669ac4e8674e7b06a22b59338.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:db13db2c-814d-3042-0bcf-b6a809e230f3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:94b2d76b-1b5e-3283-899d-83cdea1c5a65",
  "kind": "theorem",
  "lexical_name": "AffineBasis.centroid_mem_interior_convexHull",
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
  "slug": "affinebasis-centroid-mem-interior-convexhull--562ab486063e8af8efae05cf",
  "source": {
    "blob": "a20149adf21bf52aabae70ba6da519213f7325fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 127,
    "path": "GRWTSK/Geometry/ConvexGeometry/AddTorsorBases/Variant4e2f407365aa790d76d9db78ae0a6d6e284791b669ac4e8674e7b06a22b59338.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:562ab486063e8af8efae05cf4300d290f9ef8280497de0a922f1731a921d1ff9",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/AddTorsorBases/Variant4e2f407365aa790d76d9db78ae0a6d6e284791b669ac4e8674e7b06a22b59338.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:94b2d76b-1b5e-3283-899d-83cdea1c5a65`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem AffineBasis.centroid_mem_interior_convexHull {ι} [Fintype ι] (b : AffineBasis ι ℝ V) :
    Finset.univ.centroid ℝ b ∈ interior (convexHull ℝ (range b)) := by
  have := b.nonempty
  simp only [b.interior_convexHull, mem_ofPred_eq, b.coord_apply_centroid (Finset.mem_univ _),
    inv_pos, Nat.cast_pos, Finset.card_pos, Finset.univ_nonempty, forall_true_iff]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/AddTorsorBases/Variant4e2f407365aa790d76d9db78ae0a6d6e284791b669ac4e8674e7b06a22b59338.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/AddTorsorBases/Variant4e2f407365aa790d76d9db78ae0a6d6e284791b669ac4e8674e7b06a22b59338.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a20149adf21bf52aabae70ba6da519213f7325fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
