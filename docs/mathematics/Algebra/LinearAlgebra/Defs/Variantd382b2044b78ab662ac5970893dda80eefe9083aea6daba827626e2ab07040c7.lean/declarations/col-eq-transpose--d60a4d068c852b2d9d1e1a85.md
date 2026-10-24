# col_eq_transpose

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:da129f59-31a1-51cc-1cce-e2ef8537be0e",
  "kind": "lemma",
  "lexical_name": "col_eq_transpose",
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
  "slug": "col-eq-transpose--d60a4d068c852b2d9d1e1a85",
  "source": {
    "blob": "1c379601feb71604b3dba775a4cb4afe1e27a628",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 622,
    "line": 620,
    "path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variantd382b2044b78ab662ac5970893dda80eefe9083aea6daba827626e2ab07040c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d60a4d068c852b2d9d1e1a855b15faf651ef811a91fb701caefee3f136a4e425",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Defs/Variantd382b2044b78ab662ac5970893dda80eefe9083aea6daba827626e2ab07040c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:da129f59-31a1-51cc-1cce-e2ef8537be0e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 620–622.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma col_eq_transpose (A : Matrix m n α) : A.col = of.symm Aᵀ := rfl

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Defs/Variantd382b2044b78ab662ac5970893dda80eefe9083aea6daba827626e2ab07040c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Defs/Variantd382b2044b78ab662ac5970893dda80eefe9083aea6daba827626e2ab07040c7.lean#L620).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1c379601feb71604b3dba775a4cb4afe1e27a628` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
