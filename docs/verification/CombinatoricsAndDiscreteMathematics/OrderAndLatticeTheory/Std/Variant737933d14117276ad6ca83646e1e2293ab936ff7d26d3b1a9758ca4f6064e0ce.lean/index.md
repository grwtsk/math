# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Std.Variant737933d14117276ad6ca83646e1e2293ab936ff7d26d3b1a9758ca4f6064e0ce

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "04b53b95d03eb7cb7c209d8f46012eb4a7ad691e",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Std/Variant737933d14117276ad6ca83646e1e2293ab936ff7d26d3b1a9758ca4f6064e0ce.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Std/Variant737933d14117276ad6ca83646e1e2293ab936ff7d26d3b1a9758ca4f6064e0ce.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Std/Variant737933d14117276ad6ca83646e1e2293ab936ff7d26d3b1a9758ca4f6064e0ce.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `04b53b95d03eb7cb7c209d8f46012eb4a7ad691e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Std/Variant737933d14117276ad6ca83646e1e2293ab936ff7d26d3b1a9758ca4f6064e0ce.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Std/Variant737933d14117276ad6ca83646e1e2293ab936ff7d26d3b1a9758ca4f6064e0ce.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Preorder.OfStdArgs](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Std/Variant737933d14117276ad6ca83646e1e2293ab936ff7d26d3b1a9758ca4f6064e0ce.lean/declarations/preorder-ofstdargs--48e6160c23d4592dc29928a4.md) | 57 | `declaration-track:48e6160c23d4592dc29928a42bc5189dcc7eb1177fb6d9ff1d72030cc90c1975` |
| 2 | `def` | [Preorder.ofStd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Std/Variant737933d14117276ad6ca83646e1e2293ab936ff7d26d3b1a9758ca4f6064e0ce.lean/declarations/preorder-ofstd--69c18a7c48519db8b9c5c0f3.md) | 105 | `declaration-track:69c18a7c48519db8b9c5c0f3736c15664ed549bcf0b59dd8f8fec884bc231d04` |
| 3 | `structure` | [PartialOrder.OfStdArgs](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Std/Variant737933d14117276ad6ca83646e1e2293ab936ff7d26d3b1a9758ca4f6064e0ce.lean/declarations/partialorder-ofstdargs--21a1ba77dd1fefece931b195.md) | 113 | `declaration-track:21a1ba77dd1fefece931b1954b7bc86f558ec2efcfd4e9a7889796fe367e97f8` |
| 4 | `def` | [PartialOrder.ofStd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Std/Variant737933d14117276ad6ca83646e1e2293ab936ff7d26d3b1a9758ca4f6064e0ce.lean/declarations/partialorder-ofstd--a7dd08e5cf5e407ff542b9f2.md) | 137 | `declaration-track:a7dd08e5cf5e407ff542b9f2a00aec23c5d35316e28adcc1000806f245b4ad9b` |
| 5 | `theorem` | [Std.LawfulOrderCmp.compareOfLessAndEq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Std/Variant737933d14117276ad6ca83646e1e2293ab936ff7d26d3b1a9758ca4f6064e0ce.lean/declarations/std-lawfulordercmp-compareoflessandeq--64685438a9becb6738537847.md) | 144 | `result-track:64685438a9becb6738537847aa0f5a206c0686b23e94caf0654b3d9ee7d41a19` |
| 6 | `structure` | [LinearOrder.OfStdArgs](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Std/Variant737933d14117276ad6ca83646e1e2293ab936ff7d26d3b1a9758ca4f6064e0ce.lean/declarations/linearorder-ofstdargs--f99a6a25721c5a6451a5380c.md) | 156 | `declaration-track:f99a6a25721c5a6451a5380cf934dd1ab37302b58fd85379cbf370fdbb0af1bb` |
| 7 | `def` | [LinearOrder.ofStd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Std/Variant737933d14117276ad6ca83646e1e2293ab936ff7d26d3b1a9758ca4f6064e0ce.lean/declarations/linearorder-ofstd--837d7b1405141c448a9ba373.md) | 257 | `declaration-track:837d7b1405141c448a9ba3736d4dc13efeeb5112315a65b3cccb35a23a3d1a35` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
