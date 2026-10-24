# expectedValuation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b227eada54fe02f78f982ebfe0d89d626cbeed33f26b8206be07fa9310c1477a",
  "kind": "def",
  "lexical_name": "expectedValuation",
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
  "slug": "expectedvaluation--7da7d61e0164e980bf2c4b48",
  "source": {
    "blob": "034e188a7be0ef8d407c8793ad7dc4cf5423c748",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 55,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Ledger/Varianta44e3720db5529dad3dc39d96d0e7281b095e30643ec2e51ee83964b7e4c0db9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7da7d61e0164e980bf2c4b4833d246cc0628ccf02628d9d00bf61adb9ac6a3ff",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Ledger/Varianta44e3720db5529dad3dc39d96d0e7281b095e30643ec2e51ee83964b7e4c0db9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b227eada54fe02f78f982ebfe0d89d626cbeed33f26b8206be07fa9310c1477a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def expectedValuation (snapshot : Snapshot) (nodes : List SyntaxNode)
    (rows : List LedgerRow) (node : NodeId) : List ℕ :=
  let syntaxNode := nodeAt nodes node
  let contribution := (constructorAt snapshot syntaxNode.constructor).primitiveContribution
  (List.range snapshot.primitives.length).map fun index =>
    ((contribution[index]?).getD 0) +
      (syntaxNode.children.map fun child =>
        (((ledgerRowAt rows child).valuation[index]?).getD 0)).sum

/-- Require exact constructor conservation, bounded coordinates and both independent projections. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Ledger/Varianta44e3720db5529dad3dc39d96d0e7281b095e30643ec2e51ee83964b7e4c0db9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Ledger/Varianta44e3720db5529dad3dc39d96d0e7281b095e30643ec2e51ee83964b7e4c0db9.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `034e188a7be0ef8d407c8793ad7dc4cf5423c748` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
