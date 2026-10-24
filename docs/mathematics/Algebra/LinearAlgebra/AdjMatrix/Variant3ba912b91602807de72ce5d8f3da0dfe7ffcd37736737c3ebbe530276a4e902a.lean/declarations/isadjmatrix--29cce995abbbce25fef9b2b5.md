# IsAdjMatrix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e584bb0e693b503fa503d75241332e07caee84771994a659b604f37cb4660470",
  "kind": "structure",
  "lexical_name": "IsAdjMatrix",
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
  "slug": "isadjmatrix--29cce995abbbce25fef9b2b5",
  "source": {
    "blob": "65a506351d7685c4d3f0eda7c9ba229128b16056",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 53,
    "path": "GRWTSK/Algebra/LinearAlgebra/AdjMatrix/Variant3ba912b91602807de72ce5d8f3da0dfe7ffcd37736737c3ebbe530276a4e902a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:29cce995abbbce25fef9b2b5b9eeab97367dc1335fcac981eb003a4648b0d623",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/AdjMatrix/Variant3ba912b91602807de72ce5d8f3da0dfe7ffcd37736737c3ebbe530276a4e902a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e584bb0e693b503fa503d75241332e07caee84771994a659b604f37cb4660470`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure IsAdjMatrix [Zero α] [One α] (A : Matrix V V α) : Prop where
  zero_or_one : ∀ i j, A i j = 0 ∨ A i j = 1 := by aesop
  symm : A.IsSymm := by aesop
  apply_diag : ∀ i, A i i = 0 := by aesop
#align matrix.is_adj_matrix Matrix.IsAdjMatrix

namespace IsAdjMatrix

variable {A : Matrix V V α}

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/AdjMatrix/Variant3ba912b91602807de72ce5d8f3da0dfe7ffcd37736737c3ebbe530276a4e902a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/AdjMatrix/Variant3ba912b91602807de72ce5d8f3da0dfe7ffcd37736737c3ebbe530276a4e902a.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `65a506351d7685c4d3f0eda7c9ba229128b16056` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
