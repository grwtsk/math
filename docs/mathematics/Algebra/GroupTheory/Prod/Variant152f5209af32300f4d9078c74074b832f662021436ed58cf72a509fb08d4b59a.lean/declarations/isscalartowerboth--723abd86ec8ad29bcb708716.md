# isScalarTowerBoth

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9c2b103637e99e55eb2a9847660928dacecd1484c12fb269b07d640a7d419e0b",
  "kind": "instance",
  "lexical_name": "isScalarTowerBoth",
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
  "slug": "isscalartowerboth--723abd86ec8ad29bcb708716",
  "source": {
    "blob": "9e9dcb721f1ee9b5b6668b61b1d7a83fe2a2c2fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 91,
    "path": "GRWTSK/Algebra/GroupTheory/Prod/Variant152f5209af32300f4d9078c74074b832f662021436ed58cf72a509fb08d4b59a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:723abd86ec8ad29bcb70871601656afa1fdc5cb1d7409bc4088d66f5c8a650a0",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Prod/Variant152f5209af32300f4d9078c74074b832f662021436ed58cf72a509fb08d4b59a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9c2b103637e99e55eb2a9847660928dacecd1484c12fb269b07d640a7d419e0b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance isScalarTowerBoth [Mul N] [Mul P] [SMul M N] [SMul M P] [IsScalarTower M N N]
    [IsScalarTower M P P] : IsScalarTower M (N × P) (N × P) where
  smul_assoc c x y := by simp [smul_def, mul_def, smul_mul_assoc]

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Prod/Variant152f5209af32300f4d9078c74074b832f662021436ed58cf72a509fb08d4b59a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Prod/Variant152f5209af32300f4d9078c74074b832f662021436ed58cf72a509fb08d4b59a.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e9dcb721f1ee9b5b6668b61b1d7a83fe2a2c2fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
