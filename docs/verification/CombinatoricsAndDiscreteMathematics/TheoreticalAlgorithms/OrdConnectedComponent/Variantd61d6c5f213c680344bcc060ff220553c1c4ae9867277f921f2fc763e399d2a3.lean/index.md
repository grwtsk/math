# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.OrdConnectedComponent.Variantd61d6c5f213c680344bcc060ff220553c1c4ae9867277f921f2fc763e399d2a3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c8e13b53815fff6ed87c75688a3a17341e005bca",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrdConnectedComponent/Variantd61d6c5f213c680344bcc060ff220553c1c4ae9867277f921f2fc763e399d2a3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrdConnectedComponent/Variantd61d6c5f213c680344bcc060ff220553c1c4ae9867277f921f2fc763e399d2a3.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrdConnectedComponent/Variantd61d6c5f213c680344bcc060ff220553c1c4ae9867277f921f2fc763e399d2a3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c8e13b53815fff6ed87c75688a3a17341e005bca`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrdConnectedComponent/Variantd61d6c5f213c680344bcc060ff220553c1c4ae9867277f921f2fc763e399d2a3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrdConnectedComponent/Variantd61d6c5f213c680344bcc060ff220553c1c4ae9867277f921f2fc763e399d2a3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Intervals.OrdConnected` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ordConnectedComponent](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrdConnectedComponent/Variantd61d6c5f213c680344bcc060ff220553c1c4ae9867277f921f2fc763e399d2a3.lean/declarations/ordconnectedcomponent--18a123d34b245a749d4007c5.md) | 28 | `declaration-track:18a123d34b245a749d4007c554971c2404be6485e659007fc85ea2e2e8c1ca2e` |
| 2 | `theorem` | [mem_ordConnectedComponent](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrdConnectedComponent/Variantd61d6c5f213c680344bcc060ff220553c1c4ae9867277f921f2fc763e399d2a3.lean/declarations/mem-ordconnectedcomponent--4632cd57608057b77e363738.md) | 32 | `result-track:4632cd57608057b77e36373877921b20adfbae202ccd0e432c19e0a45b5a0a0b` |
| 3 | `theorem` | [dual_ordConnectedComponent](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrdConnectedComponent/Variantd61d6c5f213c680344bcc060ff220553c1c4ae9867277f921f2fc763e399d2a3.lean/declarations/dual-ordconnectedcomponent--ed062573819f5190f81d41d8.md) | 36 | `result-track:ed062573819f5190f81d41d8fca3f423954847301243808563a7dcfe4003707c` |
| 4 | `theorem` | [ordConnectedComponent_subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrdConnectedComponent/Variantd61d6c5f213c680344bcc060ff220553c1c4ae9867277f921f2fc763e399d2a3.lean/declarations/ordconnectedcomponent-subset--b6d5f341e3307c1f660c9133.md) | 43 | `result-track:b6d5f341e3307c1f660c91335449fa6c2fa2a6303474f982de3cefbb3834f3a9` |
| 5 | `theorem` | [subset_ordConnectedComponent](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrdConnectedComponent/Variantd61d6c5f213c680344bcc060ff220553c1c4ae9867277f921f2fc763e399d2a3.lean/declarations/subset-ordconnectedcomponent--9fd3146b5aad751245ad6101.md) | 47 | `result-track:9fd3146b5aad751245ad61018bf39b4176efcba5b3cff5c45dd5710a1d59f64f` |
| 6 | `theorem` | [self_mem_ordConnectedComponent](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrdConnectedComponent/Variantd61d6c5f213c680344bcc060ff220553c1c4ae9867277f921f2fc763e399d2a3.lean/declarations/self-mem-ordconnectedcomponent--26ab1d8b191270c615e45122.md) | 52 | `result-track:26ab1d8b191270c615e45122d24b75c4822806bb7ccc38d28b781a712d70c472` |
| 7 | `theorem` | [nonempty_ordConnectedComponent](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrdConnectedComponent/Variantd61d6c5f213c680344bcc060ff220553c1c4ae9867277f921f2fc763e399d2a3.lean/declarations/nonempty-ordconnectedcomponent--57148a7754e480cbf1c5d284.md) | 57 | `result-track:57148a7754e480cbf1c5d284e4dabda489e3ae9dea26f562c8b742fdef7c9b54` |
| 8 | `theorem` | [ordConnectedComponent_eq_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrdConnectedComponent/Variantd61d6c5f213c680344bcc060ff220553c1c4ae9867277f921f2fc763e399d2a3.lean/declarations/ordconnectedcomponent-eq-empty--9b8546c1aaf0178bc788d665.md) | 62 | `result-track:9b8546c1aaf0178bc788d665409a624191821076267e0e39e1f978e391d42d3a` |
| 9 | `theorem` | [ordConnectedComponent_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrdConnectedComponent/Variantd61d6c5f213c680344bcc060ff220553c1c4ae9867277f921f2fc763e399d2a3.lean/declarations/ordconnectedcomponent-empty--d777c61abf1458722241008e.md) | 67 | `result-track:d777c61abf1458722241008e86ece53e68780d1fb6e3831541037a9f9bc6a69b` |
| 10 | `theorem` | [ordConnectedComponent_univ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrdConnectedComponent/Variantd61d6c5f213c680344bcc060ff220553c1c4ae9867277f921f2fc763e399d2a3.lean/declarations/ordconnectedcomponent-univ--e7638dc7d6b8de7d41ebac66.md) | 72 | `result-track:e7638dc7d6b8de7d41ebac668daf93a1108070c2b5914f81b807644cc53004c4` |
| 11 | `theorem` | [ordConnectedComponent_inter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrdConnectedComponent/Variantd61d6c5f213c680344bcc060ff220553c1c4ae9867277f921f2fc763e399d2a3.lean/declarations/ordconnectedcomponent-inter--7ccdc3cfa94860c164e15d0d.md) | 76 | `result-track:7ccdc3cfa94860c164e15d0d4006f61f209bc7b5d498e48a084b983a509d29de` |
| 12 | `theorem` | [mem_ordConnectedComponent_comm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrdConnectedComponent/Variantd61d6c5f213c680344bcc060ff220553c1c4ae9867277f921f2fc763e399d2a3.lean/declarations/mem-ordconnectedcomponent-comm--f16009b78517e46c3c305595.md) | 81 | `result-track:f16009b78517e46c3c3055954441fe3ec709d2a5491e55e92c457bc8a81b6cd1` |
| 13 | `theorem` | [mem_ordConnectedComponent_trans](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrdConnectedComponent/Variantd61d6c5f213c680344bcc060ff220553c1c4ae9867277f921f2fc763e399d2a3.lean/declarations/mem-ordconnectedcomponent-trans--a780b670bfd6850d3e41bb1b.md) | 86 | `result-track:a780b670bfd6850d3e41bb1bd05bf3c232e3653a53511e08d395c622bc9938f9` |
| 14 | `theorem` | [ordConnectedComponent_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrdConnectedComponent/Variantd61d6c5f213c680344bcc060ff220553c1c4ae9867277f921f2fc763e399d2a3.lean/declarations/ordconnectedcomponent-eq--3b4604c2a8cfa3b6dc8fb422.md) | 93 | `result-track:3b4604c2a8cfa3b6dc8fb422cd3c740b4fffd6e292c9f62c08463b8a43185623` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrdConnectedComponent/Variantd61d6c5f213c680344bcc060ff220553c1c4ae9867277f921f2fc763e399d2a3.lean/declarations/instance--4845b2ad565a01669d3fbf6e.md) | 100 | `declaration-track:4845b2ad565a01669d3fbf6eec38d1d3251b1846c7547541d75ccd6fb70b8f13` |
| 16 | `def` | [ordConnectedProj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrdConnectedComponent/Variantd61d6c5f213c680344bcc060ff220553c1c4ae9867277f921f2fc763e399d2a3.lean/declarations/ordconnectedproj--725bc98849dc273331bcfddf.md) | 105 | `declaration-track:725bc98849dc273331bcfddf57d6470024722cffb5f52fc6d1e4fa0bcce8f42d` |
| 17 | `theorem` | [ordConnectedProj_mem_ordConnectedComponent](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrdConnectedComponent/Variantd61d6c5f213c680344bcc060ff220553c1c4ae9867277f921f2fc763e399d2a3.lean/declarations/ordconnectedproj-mem-ordconnectedcomponent--08132cabf80767b93982135f.md) | 109 | `result-track:08132cabf80767b93982135f25cf6f8c9f5d145020fe8bd357d5d6aadd922da0` |
| 18 | `theorem` | [mem_ordConnectedComponent_ordConnectedProj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrdConnectedComponent/Variantd61d6c5f213c680344bcc060ff220553c1c4ae9867277f921f2fc763e399d2a3.lean/declarations/mem-ordconnectedcomponent-ordconnectedproj--f1b040416a227fea8d8cefcc.md) | 114 | `result-track:f1b040416a227fea8d8cefcc2e4c375ad8cfafd7b4b8cd0f263695fea18d0f6a` |
| 19 | `theorem` | [ordConnectedComponent_ordConnectedProj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrdConnectedComponent/Variantd61d6c5f213c680344bcc060ff220553c1c4ae9867277f921f2fc763e399d2a3.lean/declarations/ordconnectedcomponent-ordconnectedproj--c2e6947cc2aee65795a0bfff.md) | 120 | `result-track:c2e6947cc2aee65795a0bfff74f69a8cc081d7f0e5d24ac58f43930b42aa063e` |
| 20 | `theorem` | [ordConnectedProj_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrdConnectedComponent/Variantd61d6c5f213c680344bcc060ff220553c1c4ae9867277f921f2fc763e399d2a3.lean/declarations/ordconnectedproj-eq--3e2aeef10e113e5e80e2b6c3.md) | 126 | `result-track:3e2aeef10e113e5e80e2b6c3874549397b07c52ad8f48756658f69b113aeab8c` |
| 21 | `def` | [ordConnectedSection](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrdConnectedComponent/Variantd61d6c5f213c680344bcc060ff220553c1c4ae9867277f921f2fc763e399d2a3.lean/declarations/ordconnectedsection--1ceaa0b40e52b7b289c47b4a.md) | 137 | `declaration-track:1ceaa0b40e52b7b289c47b4afbf6800f3653ff283f53bbb3f9165b935aff88a1` |
| 22 | `theorem` | [dual_ordConnectedSection](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrdConnectedComponent/Variantd61d6c5f213c680344bcc060ff220553c1c4ae9867277f921f2fc763e399d2a3.lean/declarations/dual-ordconnectedsection--03825283378f539cad6dadb4.md) | 141 | `result-track:03825283378f539cad6dadb42bd0a478870eb37698bdc7db6ab6ac213b318d1e` |
| 23 | `theorem` | [ordConnectedSection_subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrdConnectedComponent/Variantd61d6c5f213c680344bcc060ff220553c1c4ae9867277f921f2fc763e399d2a3.lean/declarations/ordconnectedsection-subset--7b3f32f0226fb8c8ef8aa7fb.md) | 149 | `result-track:7b3f32f0226fb8c8ef8aa7fb9fa80c9fff74a434d9ce602414f46b48d712d481` |
| 24 | `theorem` | [eq_of_mem_ordConnectedSection_of_uIcc_subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrdConnectedComponent/Variantd61d6c5f213c680344bcc060ff220553c1c4ae9867277f921f2fc763e399d2a3.lean/declarations/eq-of-mem-ordconnectedsection-of-uicc-subset--eeb89f9e4f91769ba1151f64.md) | 153 | `result-track:eeb89f9e4f91769ba1151f644d9a0f8de21c75223f85ed89becc5828d017b104` |
| 25 | `def` | [ordSeparatingSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrdConnectedComponent/Variantd61d6c5f213c680344bcc060ff220553c1c4ae9867277f921f2fc763e399d2a3.lean/declarations/ordseparatingset--f6cce9caefad37f796211bff.md) | 167 | `declaration-track:f6cce9caefad37f796211bffaadd8bdf7c80634430cd9b5f0d132be7701b5d3c` |
| 26 | `theorem` | [ordSeparatingSet_comm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrdConnectedComponent/Variantd61d6c5f213c680344bcc060ff220553c1c4ae9867277f921f2fc763e399d2a3.lean/declarations/ordseparatingset-comm--dacbb16ca012064523847d99.md) | 171 | `result-track:dacbb16ca012064523847d993a068a4fe116a37ce7ed9e731e23f4c857c5bc6e` |
| 27 | `theorem` | [disjoint_left_ordSeparatingSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrdConnectedComponent/Variantd61d6c5f213c680344bcc060ff220553c1c4ae9867277f921f2fc763e399d2a3.lean/declarations/disjoint-left-ordseparatingset--680a1623735381127fe37628.md) | 175 | `result-track:680a1623735381127fe376280653285f4371e14e221e6888766c707f0f6ebb18` |
| 28 | `theorem` | [disjoint_right_ordSeparatingSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrdConnectedComponent/Variantd61d6c5f213c680344bcc060ff220553c1c4ae9867277f921f2fc763e399d2a3.lean/declarations/disjoint-right-ordseparatingset--350b7f1528b0b894221303db.md) | 181 | `result-track:350b7f1528b0b894221303db8b39fecf7f661754e96f6bccc3bc2e8de9593981` |
| 29 | `theorem` | [dual_ordSeparatingSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrdConnectedComponent/Variantd61d6c5f213c680344bcc060ff220553c1c4ae9867277f921f2fc763e399d2a3.lean/declarations/dual-ordseparatingset--0539f38575da8c011da8a96e.md) | 185 | `result-track:0539f38575da8c011da8a96e9fb96e65e0a0c0fe47590f5ce019e4263c164ff6` |
| 30 | `def` | [ordT5Nhd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrdConnectedComponent/Variantd61d6c5f213c680344bcc060ff220553c1c4ae9867277f921f2fc763e399d2a3.lean/declarations/ordt5nhd--0ba1e3292a8abb83776ee425.md) | 192 | `declaration-track:0ba1e3292a8abb83776ee425962a4e464e22a86128c466e6b2a57801789459ff` |
| 31 | `theorem` | [disjoint_ordT5Nhd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrdConnectedComponent/Variantd61d6c5f213c680344bcc060ff220553c1c4ae9867277f921f2fc763e399d2a3.lean/declarations/disjoint-ordt5nhd--ad5ee9900bbd785f96aaeaf0.md) | 196 | `result-track:ad5ee9900bbd785f96aaeaf0811655ec5e424ef4125f3ef377a5a42dc77a3aeb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
