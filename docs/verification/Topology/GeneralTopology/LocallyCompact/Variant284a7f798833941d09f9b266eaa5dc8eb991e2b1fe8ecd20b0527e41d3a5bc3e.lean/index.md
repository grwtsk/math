# Verification target: GRWTSK.Topology.GeneralTopology.LocallyCompact.Variant284a7f798833941d09f9b266eaa5dc8eb991e2b1fe8ecd20b0527e41d3a5bc3e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5e21cdfc86a9ba8f5606e257466cd71cc5d3cff2",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/LocallyCompact/Variant284a7f798833941d09f9b266eaa5dc8eb991e2b1fe8ecd20b0527e41d3a5bc3e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variant284a7f798833941d09f9b266eaa5dc8eb991e2b1fe8ecd20b0527e41d3a5bc3e.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variant284a7f798833941d09f9b266eaa5dc8eb991e2b1fe8ecd20b0527e41d3a5bc3e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5e21cdfc86a9ba8f5606e257466cd71cc5d3cff2`.

Source path: `GRWTSK/Topology/GeneralTopology/LocallyCompact/Variant284a7f798833941d09f9b266eaa5dc8eb991e2b1fe8ecd20b0527e41d3a5bc3e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/LocallyCompact/Variant284a7f798833941d09f9b266eaa5dc8eb991e2b1fe8ecd20b0527e41d3a5bc3e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Compactness.Compact` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variant284a7f798833941d09f9b266eaa5dc8eb991e2b1fe8ecd20b0527e41d3a5bc3e.lean/declarations/instance--08eaf2f457f61beeecde4209.md) | 26 | `declaration-track:08eaf2f457f61beeecde420937cd3eb9ef04771b020920ed30181ae052f28774` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variant284a7f798833941d09f9b266eaa5dc8eb991e2b1fe8ecd20b0527e41d3a5bc3e.lean/declarations/instance--7b6ad1c8f9d924df83abf116.md) | 33 | `declaration-track:7b6ad1c8f9d924df83abf11682f40199c973c5e7da6aa28b0c29c0d9eb541daf` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variant284a7f798833941d09f9b266eaa5dc8eb991e2b1fe8ecd20b0527e41d3a5bc3e.lean/declarations/instance--51cb8628b2c83fa177651981.md) | 40 | `declaration-track:51cb8628b2c83fa1776519815472a8cf308cc9e1c4252c541320863fd8838fc2` |
| 4 | `theorem` | [Topology.IsClosedEmbedding.weaklyLocallyCompactSpace](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variant284a7f798833941d09f9b266eaa5dc8eb991e2b1fe8ecd20b0527e41d3a5bc3e.lean/declarations/topology-isclosedembedding-weaklylocallycompactspace--ca2b93c877a13ea1ac74ff3a.md) | 43 | `result-track:ca2b93c877a13ea1ac74ff3a49725b6b6d6a3ae0e22e31ef09370907ddafa916` |
| 5 | `theorem` | [IsClosed.weaklyLocallyCompactSpace](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variant284a7f798833941d09f9b266eaa5dc8eb991e2b1fe8ecd20b0527e41d3a5bc3e.lean/declarations/isclosed-weaklylocallycompactspace--39ec66c88033e590117877dc.md) | 49 | `result-track:39ec66c88033e590117877dc1ed0c465511cc97c3078d5a7190afe401f6e49bd` |
| 6 | `theorem` | [IsOpenQuotientMap.weaklyLocallyCompactSpace](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variant284a7f798833941d09f9b266eaa5dc8eb991e2b1fe8ecd20b0527e41d3a5bc3e.lean/declarations/isopenquotientmap-weaklylocallycompactspace--92b947594baba77a2e015c3c.md) | 53 | `result-track:92b947594baba77a2e015c3ce0f696320229c9691d6f9219bf471882344f4481` |
| 7 | `theorem` | [exists_compact_superset](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variant284a7f798833941d09f9b266eaa5dc8eb991e2b1fe8ecd20b0527e41d3a5bc3e.lean/declarations/exists-compact-superset--ab289a994cf1c075826eae69.md) | 62 | `result-track:ab289a994cf1c075826eae69113cf982324ae4fe2fde91cfa2cfef3b43ac1ad6` |
| 8 | `theorem` | [disjoint_nhds_cocompact](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variant284a7f798833941d09f9b266eaa5dc8eb991e2b1fe8ecd20b0527e41d3a5bc3e.lean/declarations/disjoint-nhds-cocompact--4a6f8035b289076612b145ff.md) | 71 | `result-track:4a6f8035b289076612b145ffcc1728c0053bc87dae4a90f7feeedd69c558760c` |
| 9 | `theorem` | [compact_basis_nhds](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variant284a7f798833941d09f9b266eaa5dc8eb991e2b1fe8ecd20b0527e41d3a5bc3e.lean/declarations/compact-basis-nhds--760bfa74079541c2c39973be.md) | 76 | `result-track:760bfa74079541c2c39973befdec9f08eb7c9f180e68b721f1c20078586104ad` |
| 10 | `theorem` | [local_compact_nhds](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variant284a7f798833941d09f9b266eaa5dc8eb991e2b1fe8ecd20b0527e41d3a5bc3e.lean/declarations/local-compact-nhds--6c637dbd8f8d491cffc2aa88.md) | 80 | `result-track:6c637dbd8f8d491cffc2aa8899c49ef1894b552b85231af4b730f10234be2189` |
| 11 | `theorem` | [LocallyCompactSpace.of_hasBasis](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variant284a7f798833941d09f9b266eaa5dc8eb991e2b1fe8ecd20b0527e41d3a5bc3e.lean/declarations/locallycompactspace-of-hasbasis--fa77e3d4169834faa3b5f920.md) | 84 | `result-track:fa77e3d4169834faa3b5f920bf889bdf6d35246b7df3dc1f967c7ef835b63ac8` |
| 12 | `instance` | [Prod.locallyCompactSpace](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variant284a7f798833941d09f9b266eaa5dc8eb991e2b1fe8ecd20b0527e41d3a5bc3e.lean/declarations/prod-locallycompactspace--2e1b95a3b820560cd558c77c.md) | 91 | `declaration-track:2e1b95a3b820560cd558c77cdf41e58f17ff789713a2c050c5c8a09229cac3c1` |
| 13 | `instance` | [Pi.locallyCompactSpace_of_finite](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variant284a7f798833941d09f9b266eaa5dc8eb991e2b1fe8ecd20b0527e41d3a5bc3e.lean/declarations/pi-locallycompactspace-of-finite--9630dd88b5ce59329ce3c365.md) | 103 | `declaration-track:9630dd88b5ce59329ce3c3655217df94b265afeaa9e1501b1b6aade29c46165e` |
| 14 | `instance` | [Pi.locallyCompactSpace](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variant284a7f798833941d09f9b266eaa5dc8eb991e2b1fe8ecd20b0527e41d3a5bc3e.lean/declarations/pi-locallycompactspace--2f9d74ee16af3ccd2d642446.md) | 114 | `declaration-track:2f9d74ee16af3ccd2d642446cb3ae96bef860ec4e296d907052d184d0404d42c` |
| 15 | `instance` | [Function.locallyCompactSpace_of_finite](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variant284a7f798833941d09f9b266eaa5dc8eb991e2b1fe8ecd20b0527e41d3a5bc3e.lean/declarations/function-locallycompactspace-of-finite--0580b6d7e3100ecc3c072bbb.md) | 132 | `declaration-track:0580b6d7e3100ecc3c072bbb606d31cbe45d757c760ac73ea456e03939138cf7` |
| 16 | `instance` | [Function.locallyCompactSpace](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variant284a7f798833941d09f9b266eaa5dc8eb991e2b1fe8ecd20b0527e41d3a5bc3e.lean/declarations/function-locallycompactspace--07e59694355e2c144deff21c.md) | 136 | `declaration-track:07e59694355e2c144deff21cd8f503bd64b2ba5381cf30501a7d1568a0a0ec04` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variant284a7f798833941d09f9b266eaa5dc8eb991e2b1fe8ecd20b0527e41d3a5bc3e.lean/declarations/instance--75666fc3a596da1654d10de1.md) | 142 | `declaration-track:75666fc3a596da1654d10de103d6b8aaeed31cc85cd4fdbf2b84de7606b324c0` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variant284a7f798833941d09f9b266eaa5dc8eb991e2b1fe8ecd20b0527e41d3a5bc3e.lean/declarations/instance--c423fe54138d011ab7247939.md) | 146 | `declaration-track:c423fe54138d011ab724793987684c50bbf3d2bd35eac0fb2780e9e0a8a7a5c6` |
| 19 | `theorem` | [exists_compact_subset](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variant284a7f798833941d09f9b266eaa5dc8eb991e2b1fe8ecd20b0527e41d3a5bc3e.lean/declarations/exists-compact-subset--1ebaeb440975213de86c8190.md) | 152 | `result-track:1ebaeb440975213de86c819080df78b3d8eeff354440955ed9d19532092729b3` |
| 20 | `lemma` | [exists_mem_nhdsSet_isCompact_mapsTo](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variant284a7f798833941d09f9b266eaa5dc8eb991e2b1fe8ecd20b0527e41d3a5bc3e.lean/declarations/exists-mem-nhdsset-iscompact-mapsto--e6afd9632e06dc7bbe4453eb.md) | 162 | `result-track:e6afd9632e06dc7bbe4453eb2418e457647d68a221cef8d1df9048046e7e2683` |
| 21 | `theorem` | [exists_compact_between](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variant284a7f798833941d09f9b266eaa5dc8eb991e2b1fe8ecd20b0527e41d3a5bc3e.lean/declarations/exists-compact-between--77f5fe04fedd3e3e8f2c6ea7.md) | 176 | `result-track:77f5fe04fedd3e3e8f2c6ea715e35c5a8b257cb95e246aecfe0f9a736c0e8e79` |
| 22 | `theorem` | [IsOpenQuotientMap.locallyCompactSpace](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variant284a7f798833941d09f9b266eaa5dc8eb991e2b1fe8ecd20b0527e41d3a5bc3e.lean/declarations/isopenquotientmap-locallycompactspace--e00cf7572457bbd4bc73f5a2.md) | 181 | `result-track:e00cf7572457bbd4bc73f5a2f5dc311887db4091210c94e33783e9d5f78ae66e` |
| 23 | `theorem` | [Topology.IsInducing.locallyCompactSpace](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variant284a7f798833941d09f9b266eaa5dc8eb991e2b1fe8ecd20b0527e41d3a5bc3e.lean/declarations/topology-isinducing-locallycompactspace--c343e322d00381ca11780b32.md) | 190 | `result-track:c343e322d00381ca11780b32482fc563bb419051e362d8576fffd2af0977025d` |
| 24 | `theorem` | [Topology.IsClosedEmbedding.locallyCompactSpace](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variant284a7f798833941d09f9b266eaa5dc8eb991e2b1fe8ecd20b0527e41d3a5bc3e.lean/declarations/topology-isclosedembedding-locallycompactspace--a2593202fba3f0256d0ff215.md) | 206 | `result-track:a2593202fba3f0256d0ff21589b7e136b1a870977b3848702957e9da07afa037` |
| 25 | `theorem` | [Topology.IsOpenEmbedding.locallyCompactSpace](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variant284a7f798833941d09f9b266eaa5dc8eb991e2b1fe8ecd20b0527e41d3a5bc3e.lean/declarations/topology-isopenembedding-locallycompactspace--34ddb2169e47f0983d410554.md) | 210 | `result-track:34ddb2169e47f0983d410554980dc62133613affc28746e1066da22a07d908d4` |
| 26 | `theorem` | [IsLocallyClosed.locallyCompactSpace](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variant284a7f798833941d09f9b266eaa5dc8eb991e2b1fe8ecd20b0527e41d3a5bc3e.lean/declarations/islocallyclosed-locallycompactspace--95f87daf63af92113f0365a8.md) | 214 | `result-track:95f87daf63af92113f0365a8e7a69acc0b9e2eee30b78adf970944a855788105` |
| 27 | `theorem` | [IsClosed.locallyCompactSpace](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variant284a7f798833941d09f9b266eaa5dc8eb991e2b1fe8ecd20b0527e41d3a5bc3e.lean/declarations/isclosed-locallycompactspace--bacc7ea00670b8cf158afd41.md) | 218 | `result-track:bacc7ea00670b8cf158afd41073b67a567ef8550ca6f63f1ded2b3820aa9938b` |
| 28 | `theorem` | [IsOpen.locallyCompactSpace](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variant284a7f798833941d09f9b266eaa5dc8eb991e2b1fe8ecd20b0527e41d3a5bc3e.lean/declarations/isopen-locallycompactspace--b83a7abebe4bbaa3e8884eed.md) | 222 | `result-track:b83a7abebe4bbaa3e8884eed4a289df55f73810d1ba77c49de60c6797d7caee0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
