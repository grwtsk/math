# Verification target: GRWTSK.Topology.GeneralTopology.CompactOpen.Variantda77117ea183bc7ce038669a8de437fd647157f9d18c618e6cc2944d3659ec42

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "590ae39e7aab26e6d3953f21e6e38a9938ce61dd",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/CompactOpen/Variantda77117ea183bc7ce038669a8de437fd647157f9d18c618e6cc2944d3659ec42.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variantda77117ea183bc7ce038669a8de437fd647157f9d18c618e6cc2944d3659ec42.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variantda77117ea183bc7ce038669a8de437fd647157f9d18c618e6cc2944d3659ec42.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `590ae39e7aab26e6d3953f21e6e38a9938ce61dd`.

Source path: `GRWTSK/Topology/GeneralTopology/CompactOpen/Variantda77117ea183bc7ce038669a8de437fd647157f9d18c618e6cc2944d3659ec42.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/CompactOpen/Variantda77117ea183bc7ce038669a8de437fd647157f9d18c618e6cc2944d3659ec42.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.ContinuousMonoidHom` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Equicontinuity` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Group.Compact` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.Algebra` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.Ascoli` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variantda77117ea183bc7ce038669a8de437fd647157f9d18c618e6cc2944d3659ec42.lean/declarations/instance--7a05417c6ae674d4f6222ec2.md) | 34 | `declaration-track:7a05417c6ae674d4f6222ec2fcda3ac0493aa25d327e2bb53d9bb18c7178482b` |
| 2 | `theorem` | [isInducing_toContinuousMap](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variantda77117ea183bc7ce038669a8de437fd647157f9d18c618e6cc2944d3659ec42.lean/declarations/isinducing-tocontinuousmap--e239fbbef018c6c8ca91b5c2.md) | 38 | `result-track:e239fbbef018c6c8ca91b5c2c0ef721bf216d7aacf93813a6e2edfc53ea1d757` |
| 3 | `theorem` | [isEmbedding_toContinuousMap](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variantda77117ea183bc7ce038669a8de437fd647157f9d18c618e6cc2944d3659ec42.lean/declarations/isembedding-tocontinuousmap--2620454a937858a602316b06.md) | 44 | `result-track:2620454a937858a602316b06880cd8678fab3fc9acc8780f3dac2fb67132eccf` |
| 4 | `instance` | [instContinuousEvalConst](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variantda77117ea183bc7ce038669a8de437fd647157f9d18c618e6cc2944d3659ec42.lean/declarations/instcontinuousevalconst--d9b209689d8c41ed7bd8bd7d.md) | 52 | `declaration-track:d9b209689d8c41ed7bd8bd7dc1282f1ebd5b56a675ca40049429df929c919cbc` |
| 5 | `instance` | [instContinuousEval](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variantda77117ea183bc7ce038669a8de437fd647157f9d18c618e6cc2944d3659ec42.lean/declarations/instcontinuouseval--d9a5015ef0490adf435a6b6f.md) | 56 | `declaration-track:d9a5015ef0490adf435a6b6fcb52bc27542b03da3c5cae2bc83cfc1f875afa74` |
| 6 | `lemma` | [range_toContinuousMap](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variantda77117ea183bc7ce038669a8de437fd647157f9d18c618e6cc2944d3659ec42.lean/declarations/range-tocontinuousmap--ed373b45660fd8281f113714.md) | 61 | `result-track:ed373b45660fd8281f113714f222a1195f907250f35c93884ecd9f0a5e0ab1e9` |
| 7 | `theorem` | [isClosedEmbedding_toContinuousMap](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variantda77117ea183bc7ce038669a8de437fd647157f9d18c618e6cc2944d3659ec42.lean/declarations/isclosedembedding-tocontinuousmap--8493ee1a4967b6b50da1511e.md) | 69 | `result-track:8493ee1a4967b6b50da1511ea047cba6466fceb62db9e89bc6a4200fa8c564a0` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variantda77117ea183bc7ce038669a8de437fd647157f9d18c618e6cc2944d3659ec42.lean/declarations/instance--1dca5dedef4956036be596af.md) | 82 | `declaration-track:1dca5dedef4956036be596afd6a9822dfa9008468da0e69e6b84a7d0b69a7ece` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variantda77117ea183bc7ce038669a8de437fd647157f9d18c618e6cc2944d3659ec42.lean/declarations/instance--77f8c83a93c09abbecbf2452.md) | 86 | `declaration-track:77f8c83a93c09abbecbf24525fde687806a88c1f3c5ed23037cfcfff41d0e2f7` |
| 10 | `theorem` | [continuous_of_continuous_uncurry](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variantda77117ea183bc7ce038669a8de437fd647157f9d18c618e6cc2944d3659ec42.lean/declarations/continuous-of-continuous-uncurry--73b76fd7ce03bae76efd4fee.md) | 93 | `result-track:73b76fd7ce03bae76efd4feee8a0a501db134b451e2615107e20ffbfa3e487f0` |
| 11 | `theorem` | [continuous_comp](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variantda77117ea183bc7ce038669a8de437fd647157f9d18c618e6cc2944d3659ec42.lean/declarations/continuous-comp--ce3ee135d743a2c7ed4bf109.md) | 100 | `result-track:ce3ee135d743a2c7ed4bf109bb731ad642c2d990d177d45f0eee3f8cfe665332` |
| 12 | `theorem` | [continuous_comp_left](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variantda77117ea183bc7ce038669a8de437fd647157f9d18c618e6cc2944d3659ec42.lean/declarations/continuous-comp-left--b08b3ce4e3512262f94e610c.md) | 107 | `result-track:b08b3ce4e3512262f94e610cf9e88d329c233e4bff08ec5a7243237a1995a89a` |
| 13 | `theorem` | [continuous_comp_right](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variantda77117ea183bc7ce038669a8de437fd647157f9d18c618e6cc2944d3659ec42.lean/declarations/continuous-comp-right--a9eb305d276d3b3df7872410.md) | 113 | `result-track:a9eb305d276d3b3df78724108383034156e73fa942a7af42600adca1bbcdbba3` |
| 14 | `def` | [compLeft](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variantda77117ea183bc7ce038669a8de437fd647157f9d18c618e6cc2944d3659ec42.lean/declarations/compleft--50a4d1c6ad73e39da62de6f0.md) | 121 | `declaration-track:50a4d1c6ad73e39da62de6f02b085782c89343d631054984c007a6383e226a92` |
| 15 | `def` | [compRight](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variantda77117ea183bc7ce038669a8de437fd647157f9d18c618e6cc2944d3659ec42.lean/declarations/compright--06545d4688167fb3b2137d2b.md) | 131 | `declaration-track:06545d4688167fb3b2137d2b08edea152e136b748cf0b2d82a19c12e46b26c09` |
| 16 | `lemma` | [isClosedEmbedding_coe](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variantda77117ea183bc7ce038669a8de437fd647157f9d18c618e6cc2944d3659ec42.lean/declarations/isclosedembedding-coe--5e6c384ae2af3d28163ca392.md) | 143 | `result-track:5e6c384ae2af3d28163ca39231e44d09d6b2f6460fa8a4dfb4c222e47716f5bf` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variantda77117ea183bc7ce038669a8de437fd647157f9d18c618e6cc2944d3659ec42.lean/declarations/instance--f4369f3669cf5c9c18f07361.md) | 147 | `declaration-track:f4369f3669cf5c9c18f07361a33d4f720c2819726f99cf1243a588c9141d4fd4` |
| 18 | `theorem` | [locallyCompactSpace_of_equicontinuousAt](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variantda77117ea183bc7ce038669a8de437fd647157f9d18c618e6cc2944d3659ec42.lean/declarations/locallycompactspace-of-equicontinuousat--56ddbb0e38f6777386eb9579.md) | 158 | `result-track:56ddbb0e38f6777386eb95799f9165a465ebb60383a5ef7d3a8cbd9542a00476` |
| 19 | `theorem` | [locallyCompactSpace_of_hasBasis](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variantda77117ea183bc7ce038669a8de437fd647157f9d18c618e6cc2944d3659ec42.lean/declarations/locallycompactspace-of-hasbasis--42433d1ba7919c4ced743457.md) | 198 | `result-track:42433d1ba7919c4ced743457584fbc9d674ec7d3dc784848f4bd56471ca104a2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
