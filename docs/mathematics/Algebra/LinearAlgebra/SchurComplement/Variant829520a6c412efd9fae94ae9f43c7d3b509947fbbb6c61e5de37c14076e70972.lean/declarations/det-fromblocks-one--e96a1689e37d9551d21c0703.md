# det_fromBlocks_one₂₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "27418df2c626cc39a3a437b5a9d02a4b3c62b3b7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 421,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/82/829520a6c412efd9fae94ae9f43c7d3b509947fbbb6c61e5de37c14076e70972.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:66e177e9-e40b-b764-66d5-9199eab3932c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:82185ace-b772-7d67-0233-0e9d1fd91087",
  "kind": "theorem",
  "lexical_name": "det_fromBlocks_one₂₂",
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
  "slug": "det-fromblocks-one--e96a1689e37d9551d21c0703",
  "source": {
    "blob": "27418df2c626cc39a3a437b5a9d02a4b3c62b3b7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 428,
    "line": 421,
    "path": "GRWTSK/Algebra/LinearAlgebra/SchurComplement/Variant829520a6c412efd9fae94ae9f43c7d3b509947fbbb6c61e5de37c14076e70972.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e96a1689e37d9551d21c070310fc92299d9b310ad02a9eb3f36a576e0864574c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SchurComplement/Variant829520a6c412efd9fae94ae9f43c7d3b509947fbbb6c61e5de37c14076e70972.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:82185ace-b772-7d67-0233-0e9d1fd91087`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 421–428.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem det_fromBlocks_one₂₂ (A : Matrix m m α) (B : Matrix m n α) (C : Matrix n m α) :
    (Matrix.fromBlocks A B C 1).det = det (A - B * C) := by
  haveI : Invertible (1 : Matrix n n α) := invertibleOne
  rw [det_fromBlocks₂₂, invOf_one, Matrix.mul_one, det_one, one_mul]
#align matrix.det_from_blocks_one₂₂ Matrix.det_fromBlocks_one₂₂

/-- The **Weinstein–Aronszajn identity**. Note the `1` on the LHS is of shape m×m, while the `1` on
the RHS is of shape n×n. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SchurComplement/Variant829520a6c412efd9fae94ae9f43c7d3b509947fbbb6c61e5de37c14076e70972.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SchurComplement/Variant829520a6c412efd9fae94ae9f43c7d3b509947fbbb6c61e5de37c14076e70972.lean#L421).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `27418df2c626cc39a3a437b5a9d02a4b3c62b3b7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
