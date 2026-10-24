# isTwoBlockDiagonal_listTransvecCol_mul_mul_listTransvecRow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "94a833d7617ebdd929a9f7c1680f2089a38431c2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 524,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bb/bbccf75870906be1d90d309cacec6fb748d513fbc59a2a71b21fa526ef4a7286.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:58052d03-e0e8-df3b-e023-c27232040dca",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cac00808-c5a2-4b27-25ee-30c598e7c979",
  "kind": "theorem",
  "lexical_name": "isTwoBlockDiagonal_listTransvecCol_mul_mul_listTransvecRow",
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
  "slug": "istwoblockdiagonal-listtransveccol-mul-mul-listtransvecrow--f55cff0d9c170ec9d00ee3c0",
  "source": {
    "blob": "94a833d7617ebdd929a9f7c1680f2089a38431c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 536,
    "line": 524,
    "path": "GRWTSK/Algebra/LinearAlgebra/Transvection/Variantbbccf75870906be1d90d309cacec6fb748d513fbc59a2a71b21fa526ef4a7286.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f55cff0d9c170ec9d00ee3c05f5a57340a3a5413df1da4c5e5d2e82ea3b4027e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Transvection/Variantbbccf75870906be1d90d309cacec6fb748d513fbc59a2a71b21fa526ef4a7286.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cac00808-c5a2-4b27-25ee-30c598e7c979`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 524–536.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isTwoBlockDiagonal_listTransvecCol_mul_mul_listTransvecRow
    (hM : M (inr unit) (inr unit) ≠ 0) :
    IsTwoBlockDiagonal ((listTransvecCol M).prod * M * (listTransvecRow M).prod) := by
  constructor
  · ext i j
    have : j = unit := by simp only
    simp [toBlocks₁₂, this, listTransvecCol_mul_mul_listTransvecRow_last_row M hM]
  · ext i j
    have : i = unit := by simp only
    simp [toBlocks₂₁, this, listTransvecCol_mul_mul_listTransvecRow_last_col M hM]

/-- There exist two lists of `TransvectionStruct` such that multiplying by them on the left and
on the right makes a matrix block-diagonal, when the last coefficient is nonzero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Transvection/Variantbbccf75870906be1d90d309cacec6fb748d513fbc59a2a71b21fa526ef4a7286.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Transvection/Variantbbccf75870906be1d90d309cacec6fb748d513fbc59a2a71b21fa526ef4a7286.lean#L524).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `94a833d7617ebdd929a9f7c1680f2089a38431c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
