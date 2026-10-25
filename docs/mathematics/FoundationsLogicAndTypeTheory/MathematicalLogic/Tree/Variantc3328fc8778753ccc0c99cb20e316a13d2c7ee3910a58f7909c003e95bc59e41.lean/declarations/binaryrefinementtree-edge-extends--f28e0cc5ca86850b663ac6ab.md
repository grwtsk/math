# BinaryRefinementTree.edge_extends

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5ed38020f535eb41af9471a84da70c870f9b3704",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 86,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c3/c3328fc8778753ccc0c99cb20e316a13d2c7ee3910a58f7909c003e95bc59e41.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:49d4fcb3-5253-dc8b-6ede-1a009126b9aa",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:695b88f6-0e20-a642-4d3f-5da9a0e78ff1",
  "kind": "theorem",
  "lexical_name": "BinaryRefinementTree.edge_extends",
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
  "slug": "binaryrefinementtree-edge-extends--f28e0cc5ca86850b663ac6ab",
  "source": {
    "blob": "5ed38020f535eb41af9471a84da70c870f9b3704",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 86,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Tree/Variantc3328fc8778753ccc0c99cb20e316a13d2c7ee3910a58f7909c003e95bc59e41.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f28e0cc5ca86850b663ac6ab37ef8dbe135664537b4c1dc6f0105ab8333a65c2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Tree/Variantc3328fc8778753ccc0c99cb20e316a13d2c7ee3910a58f7909c003e95bc59e41.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:695b88f6-0e20-a642-4d3f-5da9a0e78ff1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem BinaryRefinementTree.edge_extends
    {Node : Type uNode}
    [Fintype Node]
    [DecidableEq Node]
    {width : Nat}
    (tree :
      BinaryRefinementTree Node width)
    {parentNode childNode : Node}
    (edge :
      tree.parent childNode =
        some parentNode) :
    Extends
      (tree.state parentNode)
      (tree.state childNode) :=
  oneCoordinateResolution_extends
    (tree.parent_refines edge)

end Mathematics.BinaryFrontier.Refinement
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Tree/Variantc3328fc8778753ccc0c99cb20e316a13d2c7ee3910a58f7909c003e95bc59e41.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Tree/Variantc3328fc8778753ccc0c99cb20e316a13d2c7ee3910a58f7909c003e95bc59e41.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ed38020f535eb41af9471a84da70c870f9b3704` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
