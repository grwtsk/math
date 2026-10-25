# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Tree.Variantc3328fc8778753ccc0c99cb20e316a13d2c7ee3910a58f7909c003e95bc59e41

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5ed38020f535eb41af9471a84da70c870f9b3704",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Tree/Variantc3328fc8778753ccc0c99cb20e316a13d2c7ee3910a58f7909c003e95bc59e41.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Tree/Variantc3328fc8778753ccc0c99cb20e316a13d2c7ee3910a58f7909c003e95bc59e41.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Tree/Variantc3328fc8778753ccc0c99cb20e316a13d2c7ee3910a58f7909c003e95bc59e41.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5ed38020f535eb41af9471a84da70c870f9b3704`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Tree/Variantc3328fc8778753ccc0c99cb20e316a13d2c7ee3910a58f7909c003e95bc59e41.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Tree/Variantc3328fc8778753ccc0c99cb20e316a13d2c7ee3910a58f7909c003e95bc59e41.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Relation` — import line 1; external provider; requires a separately pinned dependency.
- `Mathematics.BinaryFrontier.PartialBitfield.Order` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BinaryRefinementTree](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Tree/Variantc3328fc8778753ccc0c99cb20e316a13d2c7ee3910a58f7909c003e95bc59e41.lean/declarations/binaryrefinementtree--d7804c5c3a72fe1df84ca11d.md) | 17 | `declaration-track:d7804c5c3a72fe1df84ca11dc8bf3c4017b84ecba9e69d9115c77c14eaf07c09` |
| 2 | `def` | [BinaryRefinementTree.ParentEdge](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Tree/Variantc3328fc8778753ccc0c99cb20e316a13d2c7ee3910a58f7909c003e95bc59e41.lean/declarations/binaryrefinementtree-parentedge--4a93c895d169ea56158341e3.md) | 45 | `declaration-track:4a93c895d169ea56158341e335ac98d00c997b2d6401574704fd8f44c3b74ebb` |
| 3 | `structure` | [CompleteSplitRegistry](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Tree/Variantc3328fc8778753ccc0c99cb20e316a13d2c7ee3910a58f7909c003e95bc59e41.lean/declarations/completesplitregistry--15bae115f72a1493e742606c.md) | 55 | `declaration-track:15bae115f72a1493e742606cecc3c35dfa32c13681483eea7bc21f7ec59be232` |
| 4 | `theorem` | [BinaryRefinementTree.edge_extends](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Tree/Variantc3328fc8778753ccc0c99cb20e316a13d2c7ee3910a58f7909c003e95bc59e41.lean/declarations/binaryrefinementtree-edge-extends--f28e0cc5ca86850b663ac6ab.md) | 86 | `result-track:f28e0cc5ca86850b663ac6ab37ef8dbe135664537b4c1dc6f0105ab8333a65c2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
