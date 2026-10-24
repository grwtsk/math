# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.OrderedFactor.Variantfe79ad8b8abb563fea21edf94ac25c2b0b7bd347254112c74fb3b93b2199b608

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8a701cef0d14bb2df707caca56f79093d499b2e5",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedFactor/Variantfe79ad8b8abb563fea21edf94ac25c2b0b7bd347254112c74fb3b93b2199b608.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedFactor/Variantfe79ad8b8abb563fea21edf94ac25c2b0b7bd347254112c74fb3b93b2199b608.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedFactor/Variantfe79ad8b8abb563fea21edf94ac25c2b0b7bd347254112c74fb3b93b2199b608.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8a701cef0d14bb2df707caca56f79093d499b2e5`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedFactor/Variantfe79ad8b8abb563fea21edf94ac25c2b0b7bd347254112c74fb3b93b2199b608.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedFactor/Variantfe79ad8b8abb563fea21edf94ac25c2b0b7bd347254112c74fb3b93b2199b608.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Boolean.Tree` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [OrderedFactorAtom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedFactor/Variantfe79ad8b8abb563fea21edf94ac25c2b0b7bd347254112c74fb3b93b2199b608.lean/declarations/orderedfactoratom--db719d38bbde8a6eda544fcf.md) | 35 | `declaration-track:db719d38bbde8a6eda544fcf8940d6f80e7ad18be3beec2f99c4e1da8a27b6e2` |
| 2 | `inductive` | [OrderedFactorTree](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedFactor/Variantfe79ad8b8abb563fea21edf94ac25c2b0b7bd347254112c74fb3b93b2199b608.lean/declarations/orderedfactortree--dbd4e967bbad27bde5664f46.md) | 46 | `declaration-track:dbd4e967bbad27bde5664f46535ccc4f178c677dbe75a979a9c160d3f93659b3` |
| 3 | `def` | [size](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedFactor/Variantfe79ad8b8abb563fea21edf94ac25c2b0b7bd347254112c74fb3b93b2199b608.lean/declarations/size--595525c84ddce92045613a59.md) | 54 | `declaration-track:595525c84ddce92045613a593a9d349c8477108b2b0907c206783fb1b33ad574` |
| 4 | `def` | [depth](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedFactor/Variantfe79ad8b8abb563fea21edf94ac25c2b0b7bd347254112c74fb3b93b2199b608.lean/declarations/depth--47f8ed3d0872c01cb8a73247.md) | 59 | `declaration-track:47f8ed3d0872c01cb8a732473f1c182ed6d03dcd337e129adf72ccfcd7dd8876` |
| 5 | `def` | [compose](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedFactor/Variantfe79ad8b8abb563fea21edf94ac25c2b0b7bd347254112c74fb3b93b2199b608.lean/declarations/compose--8e171ea1c45998d3470c4e83.md) | 64 | `declaration-track:8e171ea1c45998d3470c4e83af367cded9f81800ae404e18a1b4fbe2a09e853d` |
| 6 | `theorem` | [size_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedFactor/Variantfe79ad8b8abb563fea21edf94ac25c2b0b7bd347254112c74fb3b93b2199b608.lean/declarations/size-pos--2a79509538717efe38c59e7d.md) | 67 | `result-track:2a79509538717efe38c59e7dd2c783094ea19c8203653fb271b27c03495039cd` |
| 7 | `theorem` | [depth_le_size](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedFactor/Variantfe79ad8b8abb563fea21edf94ac25c2b0b7bd347254112c74fb3b93b2199b608.lean/declarations/depth-le-size--0689b1e02f3f4d2abe7d7648.md) | 76 | `result-track:0689b1e02f3f4d2abe7d764827deb3bc7d7d27f0de7259718b35d15b416d3fb8` |
| 8 | `theorem` | [compose_eq_node](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedFactor/Variantfe79ad8b8abb563fea21edf94ac25c2b0b7bd347254112c74fb3b93b2199b608.lean/declarations/compose-eq-node--c8740a7ac2d26382b3d48da1.md) | 88 | `result-track:c8740a7ac2d26382b3d48da10331ecfccad8051359881f79f23ae113d7074b2f` |
| 9 | `theorem` | [node_left_right_visible](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedFactor/Variantfe79ad8b8abb563fea21edf94ac25c2b0b7bd347254112c74fb3b93b2199b608.lean/declarations/node-left-right-visible--302e46355cd4ecbc3a7e5f04.md) | 91 | `result-track:302e46355cd4ecbc3a7e5f0493d3d678a586916c970d9e38c7c2332a14500acd` |
| 10 | `theorem` | [bracketing_visible](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedFactor/Variantfe79ad8b8abb563fea21edf94ac25c2b0b7bd347254112c74fb3b93b2199b608.lean/declarations/bracketing-visible--3b921a31b09132bdeacbc5e1.md) | 98 | `result-track:3b921a31b09132bdeacbc5e177edcb6502a4d880ce94e13b149c99bdbb4b5fa3` |
| 11 | `def` | [order_not_quotiented](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedFactor/Variantfe79ad8b8abb563fea21edf94ac25c2b0b7bd347254112c74fb3b93b2199b608.lean/declarations/order-not-quotiented--abd25c3bfd8f52f89a82864a.md) | 106 | `declaration-track:abd25c3bfd8f52f89a82864a3417dda29ccce4121c495b13ea111d4c2df6669f` |
| 12 | `def` | [bracketing_not_quotiented](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedFactor/Variantfe79ad8b8abb563fea21edf94ac25c2b0b7bd347254112c74fb3b93b2199b608.lean/declarations/bracketing-not-quotiented--d02cdbfbf7844e4b19767ba7.md) | 112 | `declaration-track:d02cdbfbf7844e4b19767ba70828f55ff1f4f2e738601ba8837bf16b8508fe8d` |
| 13 | `theorem` | [orderedFactorTree_size_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedFactor/Variantfe79ad8b8abb563fea21edf94ac25c2b0b7bd347254112c74fb3b93b2199b608.lean/declarations/orderedfactortree-size-pos--001f35dc87f5a485878c329d.md) | 119 | `result-track:001f35dc87f5a485878c329d702ce217a7bb90a4129d2ebfd2403f881a58c6c7` |
| 14 | `theorem` | [orderedFactorTree_depth_le_size](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedFactor/Variantfe79ad8b8abb563fea21edf94ac25c2b0b7bd347254112c74fb3b93b2199b608.lean/declarations/orderedfactortree-depth-le-size--0da98f105f9335b364141da5.md) | 123 | `result-track:0da98f105f9335b364141da57cfc53c4cb9f5e8f4b9a773a1b02c877dae03963` |
| 15 | `theorem` | [orderedFactorTree_order_visible](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedFactor/Variantfe79ad8b8abb563fea21edf94ac25c2b0b7bd347254112c74fb3b93b2199b608.lean/declarations/orderedfactortree-order-visible--e33b4fc57c9f0602a5fc4507.md) | 127 | `result-track:e33b4fc57c9f0602a5fc4507420260d540b02dd5c84c1af8a15e2ba8f8c7f3f2` |
| 16 | `theorem` | [orderedFactorTree_bracketing_visible](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedFactor/Variantfe79ad8b8abb563fea21edf94ac25c2b0b7bd347254112c74fb3b93b2199b608.lean/declarations/orderedfactortree-bracketing-visible--2ab12f303b08b47c3ea4f049.md) | 133 | `result-track:2ab12f303b08b47c3ea4f049c633c5b96852f368dec9a5581af24ea5b784ecb4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
