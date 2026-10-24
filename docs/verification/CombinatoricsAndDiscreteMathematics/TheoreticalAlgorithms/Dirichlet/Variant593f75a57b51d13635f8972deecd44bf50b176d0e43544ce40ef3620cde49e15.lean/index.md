# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Dirichlet.Variant593f75a57b51d13635f8972deecd44bf50b176d0e43544ce40ef3620cde49e15

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bed7b5de8c7de96a526fea0e5f5d0f0b85ec0b4f",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dirichlet/Variant593f75a57b51d13635f8972deecd44bf50b176d0e43544ce40ef3620cde49e15.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dirichlet/Variant593f75a57b51d13635f8972deecd44bf50b176d0e43544ce40ef3620cde49e15.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dirichlet/Variant593f75a57b51d13635f8972deecd44bf50b176d0e43544ce40ef3620cde49e15.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bed7b5de8c7de96a526fea0e5f5d0f0b85ec0b4f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dirichlet/Variant593f75a57b51d13635f8972deecd44bf50b176d0e43544ce40ef3620cde49e15.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dirichlet/Variant593f75a57b51d13635f8972deecd44bf50b176d0e43544ce40ef3620cde49e15.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Boolean.Cube.WalshFourier.Analysis` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [edgeDifferenceProduct](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dirichlet/Variant593f75a57b51d13635f8972deecd44bf50b176d0e43544ce40ef3620cde49e15.lean/declarations/edgedifferenceproduct--94b37cc536748c7b3bfb9214.md) | 16 | `declaration-track:94b37cc536748c7b3bfb92141da806524f18cfbbf37564e59de8b0a6d16c1991` |
| 2 | `def` | [orderedDirichletNumerator](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dirichlet/Variant593f75a57b51d13635f8972deecd44bf50b176d0e43544ce40ef3620cde49e15.lean/declarations/ordereddirichletnumerator--846a840696a42d511fa91780.md) | 29 | `declaration-track:846a840696a42d511fa9178046794b1b2c280e845f1cf932437ac62c99483671` |
| 3 | `def` | [unorderedDirichletNumerator](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dirichlet/Variant593f75a57b51d13635f8972deecd44bf50b176d0e43544ce40ef3620cde49e15.lean/declarations/unordereddirichletnumerator--e8a2f5e345536aabf264e292.md) | 43 | `declaration-track:e8a2f5e345536aabf264e29219d7980897ba2fe61829bcae843236fbb0b34a15` |
| 4 | `inductive` | [DirichletConvention](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dirichlet/Variant593f75a57b51d13635f8972deecd44bf50b176d0e43544ce40ef3620cde49e15.lean/declarations/dirichletconvention--1afdedd8f5a921880373705f.md) | 56 | `declaration-track:1afdedd8f5a921880373705fda6d1aea72cf0ec9d8030b6868c0bd16ab70e3e7` |
| 5 | `def` | [dirichletNumerator](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dirichlet/Variant593f75a57b51d13635f8972deecd44bf50b176d0e43544ce40ef3620cde49e15.lean/declarations/dirichletnumerator--2df4f4172b9fd67cad4fd7cb.md) | 62 | `declaration-track:2df4f4172b9fd67cad4fd7cb667a4163538ea1b0babb650f7eccbf20b3073862` |
| 6 | `theorem` | [dirichletNumerator_orderedEdges](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dirichlet/Variant593f75a57b51d13635f8972deecd44bf50b176d0e43544ce40ef3620cde49e15.lean/declarations/dirichletnumerator-orderededges--0302a3d3beb65d14c0c3ee74.md) | 69 | `result-track:0302a3d3beb65d14c0c3ee74acf8b9b1bc36fef0f6d23df7d80378bbb07e61c3` |
| 7 | `theorem` | [dirichletNumerator_unorderedEdges](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dirichlet/Variant593f75a57b51d13635f8972deecd44bf50b176d0e43544ce40ef3620cde49e15.lean/declarations/dirichletnumerator-unorderededges--0f2e01d66ea68208e9ff2776.md) | 74 | `result-track:0f2e01d66ea68208e9ff27760e4eb5ce53d7c128f9034bdb3bd6f5c8ab41c44b` |
| 8 | `def` | [orderedDirichletEnergyNumerator](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dirichlet/Variant593f75a57b51d13635f8972deecd44bf50b176d0e43544ce40ef3620cde49e15.lean/declarations/ordereddirichletenergynumerator--cf5121862581082d0624473e.md) | 80 | `declaration-track:cf5121862581082d0624473eef15b54d6ae5406d0b76d2c1f6183b48afdaa94d` |
| 9 | `def` | [unorderedDirichletEnergyNumerator](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dirichlet/Variant593f75a57b51d13635f8972deecd44bf50b176d0e43544ce40ef3620cde49e15.lean/declarations/unordereddirichletenergynumerator--4e44f8bc7683dea709a51993.md) | 85 | `declaration-track:4e44f8bc7683dea709a5199350f56dc74dc4ddc8a8d808cc45abe145caefbc03` |
| 10 | `theorem` | [orderedDirichletEnergy_eq_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dirichlet/Variant593f75a57b51d13635f8972deecd44bf50b176d0e43544ce40ef3620cde49e15.lean/declarations/ordereddirichletenergy-eq-self--ba509039d3de7d5ffe37e46e.md) | 89 | `result-track:ba509039d3de7d5ffe37e46e2fa7ae3932eae1ad579f427dc3c45f63fcb58b25` |
| 11 | `theorem` | [unorderedDirichletEnergy_eq_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dirichlet/Variant593f75a57b51d13635f8972deecd44bf50b176d0e43544ce40ef3620cde49e15.lean/declarations/unordereddirichletenergy-eq-self--e237a18fd4774d362e2e902b.md) | 94 | `result-track:e237a18fd4774d362e2e902bbbf354cb8a61abbdd94a770f3951033b939c0f2a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
