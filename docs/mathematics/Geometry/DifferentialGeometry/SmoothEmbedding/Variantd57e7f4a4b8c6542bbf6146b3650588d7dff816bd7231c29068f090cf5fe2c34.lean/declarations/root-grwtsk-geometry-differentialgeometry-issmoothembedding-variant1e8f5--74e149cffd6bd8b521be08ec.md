# _root_.GRWTSK.Geometry.DifferentialGeometry.IsSmoothEmbedding.Variant1e8f55f9356afff4567e18d31b3b493aa6eb8768a80ee94597e13a23d88518a4.ModelWithCorners.isSmoothEmbedding

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e11b1b1c-628e-b8de-263e-e07b4f7377fd",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.Geometry.DifferentialGeometry.IsSmoothEmbedding.Variant1e8f55f9356afff4567e18d31b3b493aa6eb8768a80ee94597e13a23d88518a4.ModelWithCorners.isSmoothEmbedding",
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
  "slug": "root-grwtsk-geometry-differentialgeometry-issmoothembedding-variant1e8f5--74e149cffd6bd8b521be08ec",
  "source": {
    "blob": "b7c82c4ceb23e9dd0bc52b19c762f5d0b83732e9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 106,
    "path": "GRWTSK/Geometry/DifferentialGeometry/SmoothEmbedding/Variantd57e7f4a4b8c6542bbf6146b3650588d7dff816bd7231c29068f090cf5fe2c34.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:74e149cffd6bd8b521be08ecdcc568ad6dc564a82528ba375d3ce88a8452d022",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/SmoothEmbedding/Variantd57e7f4a4b8c6542bbf6146b3650588d7dff816bd7231c29068f090cf5fe2c34.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e11b1b1c-628e-b8de-263e-e07b4f7377fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected lemma _root_.GRWTSK.Geometry.DifferentialGeometry.IsSmoothEmbedding.Variant1e8f55f9356afff4567e18d31b3b493aa6eb8768a80ee94597e13a23d88518a4.ModelWithCorners.isSmoothEmbedding {n : ℕ} :
    IsSmoothEmbedding I (modelWithCornersSelf 𝕜 E₁) n I :=
  ⟨I.isImmersion, I.isClosedEmbedding.isEmbedding⟩

/-- Given `C^n` manifolds `M` and `N`, `Sum.inl : M → M ⊕ N` is a `C^n` embedding. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/SmoothEmbedding/Variantd57e7f4a4b8c6542bbf6146b3650588d7dff816bd7231c29068f090cf5fe2c34.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/SmoothEmbedding/Variantd57e7f4a4b8c6542bbf6146b3650588d7dff816bd7231c29068f090cf5fe2c34.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b7c82c4ceb23e9dd0bc52b19c762f5d0b83732e9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
