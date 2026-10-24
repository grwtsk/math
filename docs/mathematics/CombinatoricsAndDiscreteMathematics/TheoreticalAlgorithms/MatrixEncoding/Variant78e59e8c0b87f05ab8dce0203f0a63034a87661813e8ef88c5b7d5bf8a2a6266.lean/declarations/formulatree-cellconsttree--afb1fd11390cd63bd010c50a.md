# FormulaTree.cellConstTree

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5e46ae74904c5cf3a8aad834da6a32e5ba1eecfe585a2dc0ea7bff3ef2113b09",
  "kind": "def",
  "lexical_name": "FormulaTree.cellConstTree",
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
  "slug": "formulatree-cellconsttree--afb1fd11390cd63bd010c50a",
  "source": {
    "blob": "1df9e985db07f234ab9d7bcb7ca06360650c1039",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 26,
    "line": 16,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MatrixEncoding/Variant78e59e8c0b87f05ab8dce0203f0a63034a87661813e8ef88c5b7d5bf8a2a6266.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:afb1fd11390cd63bd010c50a598c49935dd9e10f219c93e8c621642c6b80e734",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MatrixEncoding/Variant78e59e8c0b87f05ab8dce0203f0a63034a87661813e8ef88c5b7d5bf8a2a6266.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5e46ae74904c5cf3a8aad834da6a32e5ba1eecfe585a2dc0ea7bff3ef2113b09`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 16–26.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def FormulaTree.cellConstTree
    {rows cols : Nat}
    (A : BoolMatrix rows cols)
    (i : Fin rows)
    (j : Fin cols) :
    FormulaTree (Fin rows × Fin cols) :=
  match A i j with
  | true => .truth
  | false => .falsum

/-- A matrix as a network of constant Boolean trees, one tree per cell. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MatrixEncoding/Variant78e59e8c0b87f05ab8dce0203f0a63034a87661813e8ef88c5b7d5bf8a2a6266.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MatrixEncoding/Variant78e59e8c0b87f05ab8dce0203f0a63034a87661813e8ef88c5b7d5bf8a2a6266.lean#L16).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1df9e985db07f234ab9d7bcb7ca06360650c1039` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
