# top_mul_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "63014fb466cb6b48331eecaedf7d9840b6b427fa",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 569,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b7/b759cfc69c8606b8f2f75171c610b24dd107be39204c0b737e5f55b9a30ce7d9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3558e11d-4721-0b39-0f17-83ab184c1aec",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fff6b812-2d29-5df0-5772-3859d1afc835",
  "kind": "theorem",
  "lexical_name": "top_mul_top",
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
  "slug": "top-mul-top--85b31996b7dd230c8bc3da60",
  "source": {
    "blob": "63014fb466cb6b48331eecaedf7d9840b6b427fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 572,
    "line": 569,
    "path": "GRWTSK/Topology/GeneralTopology/Pointwise/Variantb759cfc69c8606b8f2f75171c610b24dd107be39204c0b737e5f55b9a30ce7d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:85b31996b7dd230c8bc3da60f46dd49d35ba6f4413299d3617d81d491351e21f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Pointwise/Variantb759cfc69c8606b8f2f75171c610b24dd107be39204c0b737e5f55b9a30ce7d9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fff6b812-2d29-5df0-5772-3859d1afc835`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 569–572.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem top_mul_top : (⊤ : Filter α) * ⊤ = ⊤ :=
  mul_top_of_one_le le_top

@[to_additive nsmul_top]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Pointwise/Variantb759cfc69c8606b8f2f75171c610b24dd107be39204c0b737e5f55b9a30ce7d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Pointwise/Variantb759cfc69c8606b8f2f75171c610b24dd107be39204c0b737e5f55b9a30ce7d9.lean#L569).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63014fb466cb6b48331eecaedf7d9840b6b427fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
