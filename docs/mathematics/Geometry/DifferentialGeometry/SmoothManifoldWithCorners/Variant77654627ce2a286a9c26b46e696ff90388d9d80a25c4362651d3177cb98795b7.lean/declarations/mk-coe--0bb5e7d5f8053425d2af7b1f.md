# mk_coe

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b880836f8624b93932b2b9106b544be39d16096a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 200,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/77/77654627ce2a286a9c26b46e696ff90388d9d80a25c4362651d3177cb98795b7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b5ce6ef6-48e4-46ae-308d-778998451558",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3c52dfd4-6184-b797-9122-4456c7f9fd5c",
  "kind": "theorem",
  "lexical_name": "mk_coe",
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
  "slug": "mk-coe--0bb5e7d5f8053425d2af7b1f",
  "source": {
    "blob": "b880836f8624b93932b2b9106b544be39d16096a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 205,
    "line": 200,
    "path": "GRWTSK/Geometry/DifferentialGeometry/SmoothManifoldWithCorners/Variant77654627ce2a286a9c26b46e696ff90388d9d80a25c4362651d3177cb98795b7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0bb5e7d5f8053425d2af7b1ff1197604c8b9f4672c0fca3456aa17d3d787b19d",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/SmoothManifoldWithCorners/Variant77654627ce2a286a9c26b46e696ff90388d9d80a25c4362651d3177cb98795b7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3c52dfd4-6184-b797-9122-4456c7f9fd5c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 200–205.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mk_coe (e : LocalEquiv H E) (a b c d) :
    ((ModelWithCorners.mk e a b c d : ModelWithCorners 𝕜 E H) : H → E) = (e : H → E) :=
  rfl
#align model_with_corners.mk_coe ModelWithCorners.mk_coe

@[simp, mfld_simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/SmoothManifoldWithCorners/Variant77654627ce2a286a9c26b46e696ff90388d9d80a25c4362651d3177cb98795b7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/SmoothManifoldWithCorners/Variant77654627ce2a286a9c26b46e696ff90388d9d80a25c4362651d3177cb98795b7.lean#L200).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b880836f8624b93932b2b9106b544be39d16096a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
