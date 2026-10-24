# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Std.Variant0b4ade8eafaf7b83bc89cc75571493ca94d286c7d7d8e3070d98e435dd5815a6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f947c853257c7d28122cd4fdb96f797cf5e3b4bb",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Std/Variant0b4ade8eafaf7b83bc89cc75571493ca94d286c7d7d8e3070d98e435dd5815a6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Std/Variant0b4ade8eafaf7b83bc89cc75571493ca94d286c7d7d8e3070d98e435dd5815a6.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Std/Variant0b4ade8eafaf7b83bc89cc75571493ca94d286c7d7d8e3070d98e435dd5815a6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f947c853257c7d28122cd4fdb96f797cf5e3b4bb`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Std/Variant0b4ade8eafaf7b83bc89cc75571493ca94d286c7d7d8e3070d98e435dd5815a6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Std/Variant0b4ade8eafaf7b83bc89cc75571493ca94d286c7d7d8e3070d98e435dd5815a6.lean.json)

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
| 1 | `structure` | [Preorder.OfStdArgs](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Std/Variant0b4ade8eafaf7b83bc89cc75571493ca94d286c7d7d8e3070d98e435dd5815a6.lean/declarations/preorder-ofstdargs--c5d1394308691ecba021b570.md) | 65 | `declaration-track:c5d1394308691ecba021b570d9ddea25253c499b16c7ee9d27dbf18bee1cb992` |
| 2 | `def` | [Preorder.ofStd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Std/Variant0b4ade8eafaf7b83bc89cc75571493ca94d286c7d7d8e3070d98e435dd5815a6.lean/declarations/preorder-ofstd--2bea689440a165143be47e8f.md) | 113 | `declaration-track:2bea689440a165143be47e8fc8ef9a3547c292fd5aec38a428f43ceec4be37d5` |
| 3 | `structure` | [PartialOrder.OfStdArgs](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Std/Variant0b4ade8eafaf7b83bc89cc75571493ca94d286c7d7d8e3070d98e435dd5815a6.lean/declarations/partialorder-ofstdargs--f46284d476e8b90d5de5be8b.md) | 121 | `declaration-track:f46284d476e8b90d5de5be8b69fe80f718ec865707109e84043d464c9c90b3b9` |
| 4 | `def` | [PartialOrder.ofStd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Std/Variant0b4ade8eafaf7b83bc89cc75571493ca94d286c7d7d8e3070d98e435dd5815a6.lean/declarations/partialorder-ofstd--a456b392fed47ac96b27c204.md) | 145 | `declaration-track:a456b392fed47ac96b27c20422cbbdf6b584cf9dc7d95a914df82339ae20a21b` |
| 5 | `theorem` | [Std.LawfulOrderCmp.compareOfLessAndEq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Std/Variant0b4ade8eafaf7b83bc89cc75571493ca94d286c7d7d8e3070d98e435dd5815a6.lean/declarations/std-lawfulordercmp-compareoflessandeq--2187f56f9a7fc34f1a1b2c5b.md) | 152 | `result-track:2187f56f9a7fc34f1a1b2c5ba8dfe823878ab320da6bd2d3fb45189a586e147a` |
| 6 | `structure` | [LinearOrder.OfStdArgs](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Std/Variant0b4ade8eafaf7b83bc89cc75571493ca94d286c7d7d8e3070d98e435dd5815a6.lean/declarations/linearorder-ofstdargs--d91eef4fdfe4350e6c6e3a61.md) | 164 | `declaration-track:d91eef4fdfe4350e6c6e3a619757a9fb780b52eb78d1321a20fd24eb39daf748` |
| 7 | `def` | [LinearOrder.ofStd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Std/Variant0b4ade8eafaf7b83bc89cc75571493ca94d286c7d7d8e3070d98e435dd5815a6.lean/declarations/linearorder-ofstd--f60624f689a7c0e0144f14e3.md) | 265 | `declaration-track:f60624f689a7c0e0144f14e3c0afa9aca17d86610822368612de214790c1567a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
