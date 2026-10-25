# BinaryRefinementTree

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:035b36602c5762b0bde42738d99d6015b55eb80c295b364a9dae1184452b6865",
  "kind": "structure",
  "lexical_name": "BinaryRefinementTree",
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
  "slug": "binaryrefinementtree--d7804c5c3a72fe1df84ca11d",
  "source": {
    "blob": "5ed38020f535eb41af9471a84da70c870f9b3704",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 17,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Tree/Variantc3328fc8778753ccc0c99cb20e316a13d2c7ee3910a58f7909c003e95bc59e41.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d7804c5c3a72fe1df84ca11dc8bf3c4017b84ecba9e69d9115c77c14eaf07c09",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Tree/Variantc3328fc8778753ccc0c99cb20e316a13d2c7ee3910a58f7909c003e95bc59e41.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:035b36602c5762b0bde42738d99d6015b55eb80c295b364a9dae1184452b6865`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 17–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure BinaryRefinementTree
    (Node : Type uNode)
    [Fintype Node]
    [DecidableEq Node]
    (width : Nat) where
  root : Node
  parent : Node → Option Node
  state : Node → PartialBitfield width
  root_parent :
    parent root = none
  nonroot_parent :
    ∀ node,
      node ≠ root →
      ∃ parentNode,
        parent node = some parentNode
  parent_refines :
    ∀ {parentNode childNode},
      parent childNode = some parentNode →
      OneCoordinateResolution
        (state parentNode)
        (state childNode)
  acyclic :
    ∀ node,
      ¬Relation.TransGen
        (fun child ancestor =>
          parent child = some ancestor)
        node node

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Tree/Variantc3328fc8778753ccc0c99cb20e316a13d2c7ee3910a58f7909c003e95bc59e41.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Tree/Variantc3328fc8778753ccc0c99cb20e316a13d2c7ee3910a58f7909c003e95bc59e41.lean#L17).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ed38020f535eb41af9471a84da70c870f9b3704` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
