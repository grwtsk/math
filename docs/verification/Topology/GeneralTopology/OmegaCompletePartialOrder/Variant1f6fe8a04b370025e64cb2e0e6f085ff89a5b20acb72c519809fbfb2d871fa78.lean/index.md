# Verification target: GRWTSK.Topology.GeneralTopology.OmegaCompletePartialOrder.Variant1f6fe8a04b370025e64cb2e0e6f085ff89a5b20acb72c519809fbfb2d871fa78

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9360ba2bbc3cc38d043701fbb960249ebefea568",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/OmegaCompletePartialOrder/Variant1f6fe8a04b370025e64cb2e0e6f085ff89a5b20acb72c519809fbfb2d871fa78.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/OmegaCompletePartialOrder/Variant1f6fe8a04b370025e64cb2e0e6f085ff89a5b20acb72c519809fbfb2d871fa78.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/OmegaCompletePartialOrder/Variant1f6fe8a04b370025e64cb2e0e6f085ff89a5b20acb72c519809fbfb2d871fa78.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9360ba2bbc3cc38d043701fbb960249ebefea568`.

Source path: `GRWTSK/Topology/GeneralTopology/OmegaCompletePartialOrder/Variant1f6fe8a04b370025e64cb2e0e6f085ff89a5b20acb72c519809fbfb2d871fa78.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/OmegaCompletePartialOrder/Variant1f6fe8a04b370025e64cb2e0e6f085ff89a5b20acb72c519809fbfb2d871fa78.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.OmegaCompletePartialOrder` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.ScottTopology` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [Topology.IsScott.ωscottContinuous_iff_continuous](../../../../../mathematics/Topology/GeneralTopology/OmegaCompletePartialOrder/Variant1f6fe8a04b370025e64cb2e0e6f085ff89a5b20acb72c519809fbfb2d871fa78.lean/declarations/topology-isscott-scottcontinuous-iff-continuous--2a275e5dfd27e04e72021332.md) | 34 | `result-track:2a275e5dfd27e04e72021332e4d0ad0e6dc46a33bd50f9b8441efe7e2f31611b` |
| 2 | `def` | [IsωSup](../../../../../mathematics/Topology/GeneralTopology/OmegaCompletePartialOrder/Variant1f6fe8a04b370025e64cb2e0e6f085ff89a5b20acb72c519809fbfb2d871fa78.lean/declarations/is-sup--0809a9b4d027e48d9a1f08fe.md) | 45 | `declaration-track:0809a9b4d027e48d9a1f08fe8476a7b1712e9b241f80a42a1d8a01a0547d8bef` |
| 3 | `theorem` | [isωSup_iff_isLUB](../../../../../mathematics/Topology/GeneralTopology/OmegaCompletePartialOrder/Variant1f6fe8a04b370025e64cb2e0e6f085ff89a5b20acb72c519809fbfb2d871fa78.lean/declarations/is-sup-iff-islub--60371cfc213b29f5bb4e6c15.md) | 48 | `result-track:60371cfc213b29f5bb4e6c152570f12e164407de7db4f85d592d25c0fa70eb13` |
| 4 | `def` | [IsOpen](../../../../../mathematics/Topology/GeneralTopology/OmegaCompletePartialOrder/Variant1f6fe8a04b370025e64cb2e0e6f085ff89a5b20acb72c519809fbfb2d871fa78.lean/declarations/isopen--bd929457b332ef1824bbdcdc.md) | 56 | `declaration-track:bd929457b332ef1824bbdcdc8d722f1c4369cfadcc695dcd040cd67a2d3dd08f` |
| 5 | `theorem` | [isOpen_univ](../../../../../mathematics/Topology/GeneralTopology/OmegaCompletePartialOrder/Variant1f6fe8a04b370025e64cb2e0e6f085ff89a5b20acb72c519809fbfb2d871fa78.lean/declarations/isopen-univ--37057fe5f3a71285f3bf0061.md) | 59 | `result-track:37057fe5f3a71285f3bf0061fd98478d9c11a553157e9e86bcb08cf0b75738cb` |
| 6 | `theorem` | [IsOpen.inter](../../../../../mathematics/Topology/GeneralTopology/OmegaCompletePartialOrder/Variant1f6fe8a04b370025e64cb2e0e6f085ff89a5b20acb72c519809fbfb2d871fa78.lean/declarations/isopen-inter--a9ad4db2fe0c9dcb74209ba0.md) | 61 | `result-track:a9ad4db2fe0c9dcb74209ba0d04d5589bd2ca3b618230f8ff3fdb84a58a7d4f3` |
| 7 | `theorem` | [isOpen_sUnion](../../../../../mathematics/Topology/GeneralTopology/OmegaCompletePartialOrder/Variant1f6fe8a04b370025e64cb2e0e6f085ff89a5b20acb72c519809fbfb2d871fa78.lean/declarations/isopen-sunion--e6bac10b69e405d78e2c6399.md) | 64 | `result-track:e6bac10b69e405d78e2c6399e6ae9020fde59c7d4ddfc76f91e00d9f8347deda` |
| 8 | `theorem` | [IsOpen.isUpperSet](../../../../../mathematics/Topology/GeneralTopology/OmegaCompletePartialOrder/Variant1f6fe8a04b370025e64cb2e0e6f085ff89a5b20acb72c519809fbfb2d871fa78.lean/declarations/isopen-isupperset--6bbf7282ad62eb41d6d74df9.md) | 69 | `result-track:6bbf7282ad62eb41d6d74df9b74dda8b562fcb47294327b840a8f177c95ec70b` |
| 9 | `abbrev` | [Scott](../../../../../mathematics/Topology/GeneralTopology/OmegaCompletePartialOrder/Variant1f6fe8a04b370025e64cb2e0e6f085ff89a5b20acb72c519809fbfb2d871fa78.lean/declarations/scott--179fdd46bc5318aee68f13c4.md) | 76 | `declaration-track:179fdd46bc5318aee68f13c4493238336032e8430bd239454e54268142ba339f` |
| 10 | `instance` | [Scott.topologicalSpace](../../../../../mathematics/Topology/GeneralTopology/OmegaCompletePartialOrder/Variant1f6fe8a04b370025e64cb2e0e6f085ff89a5b20acb72c519809fbfb2d871fa78.lean/declarations/scott-topologicalspace--a1c926efa523662fac4e74ca.md) | 78 | `declaration-track:a1c926efa523662fac4e74ca128da575279372e21da3320be434ee9131d35d4b` |
| 11 | `lemma` | [isOpen_iff_ωScottContinuous_mem](../../../../../mathematics/Topology/GeneralTopology/OmegaCompletePartialOrder/Variant1f6fe8a04b370025e64cb2e0e6f085ff89a5b20acb72c519809fbfb2d871fa78.lean/declarations/isopen-iff-scottcontinuous-mem--758e184dc7508e7b00ccd1bc.md) | 85 | `result-track:758e184dc7508e7b00ccd1bcbcfbf3d096aae63304de5a4776363116d2d010d3` |
| 12 | `lemma` | [scott_eq_Scott](../../../../../mathematics/Topology/GeneralTopology/OmegaCompletePartialOrder/Variant1f6fe8a04b370025e64cb2e0e6f085ff89a5b20acb72c519809fbfb2d871fa78.lean/declarations/scott-eq-scott--dbfc7112e5d81141ba17cefa.md) | 88 | `result-track:dbfc7112e5d81141ba17cefa290dd9daf046f202d41954f4e51b7417af086339` |
| 13 | `def` | [notBelow](../../../../../mathematics/Topology/GeneralTopology/OmegaCompletePartialOrder/Variant1f6fe8a04b370025e64cb2e0e6f085ff89a5b20acb72c519809fbfb2d871fa78.lean/declarations/notbelow--504d4e92611cc69d548de5bf.md) | 102 | `declaration-track:504d4e92611cc69d548de5bf8d2d94b73f48489ed99d1ced989faa280e0b43a6` |
| 14 | `theorem` | [notBelow_isOpen](../../../../../mathematics/Topology/GeneralTopology/OmegaCompletePartialOrder/Variant1f6fe8a04b370025e64cb2e0e6f085ff89a5b20acb72c519809fbfb2d871fa78.lean/declarations/notbelow-isopen--9658c5484513033310a0a034.md) | 105 | `result-track:9658c5484513033310a0a034cde69d563ad21c72c1c699fa6b6619bf7270b31a` |
| 15 | `theorem` | [isωSup_ωSup](../../../../../mathematics/Topology/GeneralTopology/OmegaCompletePartialOrder/Variant1f6fe8a04b370025e64cb2e0e6f085ff89a5b20acb72c519809fbfb2d871fa78.lean/declarations/is-sup-sup--4e5e040cbb86439e5f1c38d6.md) | 119 | `result-track:4e5e040cbb86439e5f1c38d63a058be1dd04e8907531a7aa23e3a80913ff7ba5` |
| 16 | `theorem` | [scottContinuous_of_continuous](../../../../../mathematics/Topology/GeneralTopology/OmegaCompletePartialOrder/Variant1f6fe8a04b370025e64cb2e0e6f085ff89a5b20acb72c519809fbfb2d871fa78.lean/declarations/scottcontinuous-of-continuous--ce8fb8604f0dd763be3f1671.md) | 124 | `result-track:ce8fb8604f0dd763be3f167135a6236c0b14dd3e9324b643346786d302f6a6b5` |
| 17 | `theorem` | [continuous_of_scottContinuous](../../../../../mathematics/Topology/GeneralTopology/OmegaCompletePartialOrder/Variant1f6fe8a04b370025e64cb2e0e6f085ff89a5b20acb72c519809fbfb2d871fa78.lean/declarations/continuous-of-scottcontinuous--6bf0a99483040f8f5e9e6e60.md) | 141 | `result-track:6bf0a99483040f8f5e9e6e60980dbdd3fe286e2543c7d3de4d013645eb58ecdc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
