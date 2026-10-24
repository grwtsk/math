# Verification target: GRWTSK.Topology.GeneralTopology.Basic.Variantbbad8ef1151379a2274fd9c8bb05187036d2181da4444e73b0ecd5d47ccbc8e7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6015e3b8d8caf3384c93dc3542187280fd0c352b",
  "lexical_observation_count": 54,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variantbbad8ef1151379a2274fd9c8bb05187036d2181da4444e73b0ecd5d47ccbc8e7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantbbad8ef1151379a2274fd9c8bb05187036d2181da4444e73b0ecd5d47ccbc8e7.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantbbad8ef1151379a2274fd9c8bb05187036d2181da4444e73b0ecd5d47ccbc8e7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6015e3b8d8caf3384c93dc3542187280fd0c352b`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variantbbad8ef1151379a2274fd9c8bb05187036d2181da4444e73b0ecd5d47ccbc8e7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variantbbad8ef1151379a2274fd9c8bb05187036d2181da4444e73b0ecd5d47ccbc8e7.lean.json)

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
| 1 | `theorem` | [isUniformEmbedding_translate_mul](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantbbad8ef1151379a2274fd9c8bb05187036d2181da4444e73b0ecd5d47ccbc8e7.lean/declarations/isuniformembedding-translate-mul--02f12b760f1d96f9ddfe98b7.md) | 47 | `result-track:02f12b760f1d96f9ddfe98b7cb0722de92134f3e422dbe4c3bdf0b3d71ec0c5e` |
| 2 | `lemma` | [cauchy_iff_tendsto](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantbbad8ef1151379a2274fd9c8bb05187036d2181da4444e73b0ecd5d47ccbc8e7.lean/declarations/cauchy-iff-tendsto--b730ac6fbfa901b7e15c7f3b.md) | 61 | `result-track:b730ac6fbfa901b7e15c7f3b798812d555c6488f890829b3fc59c7510d4ad42a` |
| 3 | `lemma` | [cauchy_iff_tendsto_swapped](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantbbad8ef1151379a2274fd9c8bb05187036d2181da4444e73b0ecd5d47ccbc8e7.lean/declarations/cauchy-iff-tendsto-swapped--92a3ffc4cd1aca3b35fe02f8.md) | 66 | `result-track:92a3ffc4cd1aca3b35fe02f81b4260ad3ef2b6561c1613e7248a1783014f412d` |
| 4 | `lemma` | [cauchy_map_iff_tendsto](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantbbad8ef1151379a2274fd9c8bb05187036d2181da4444e73b0ecd5d47ccbc8e7.lean/declarations/cauchy-map-iff-tendsto--bac2b1ead2f80b58aa161981.md) | 71 | `result-track:bac2b1ead2f80b58aa161981cb6ee5ad6759a8e36af12193029630631422a870` |
| 5 | `lemma` | [cauchy_map_iff_tendsto_swapped](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantbbad8ef1151379a2274fd9c8bb05187036d2181da4444e73b0ecd5d47ccbc8e7.lean/declarations/cauchy-map-iff-tendsto-swapped--0f46be8ecad1526aecf5c148.md) | 76 | `result-track:0f46be8ecad1526aecf5c148f12cc79c263d67e33572532acb587de7fbff2183` |
| 6 | `theorem` | [completeSpace_of_weaklyLocallyCompactSpace](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantbbad8ef1151379a2274fd9c8bb05187036d2181da4444e73b0ecd5d47ccbc8e7.lean/declarations/completespace-of-weaklylocallycompactspace--fda03c12e1bfe568d3590e20.md) | 92 | `result-track:fda03c12e1bfe568d3590e2000cc59d7542ae918376a340751cea996aa28a8ed` |
| 7 | `theorem` | [completeSpace_of_weaklyLocallyCompactSpace](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantbbad8ef1151379a2274fd9c8bb05187036d2181da4444e73b0ecd5d47ccbc8e7.lean/declarations/completespace-of-weaklylocallycompactspace--c29d0ca8a83ee11d35b68d99.md) | 115 | `result-track:c29d0ca8a83ee11d35b68d99bf1412f5d0529fafdc4f0211f6421f2de65d6659` |
| 8 | `instance` | [isUniformGroup](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantbbad8ef1151379a2274fd9c8bb05187036d2181da4444e73b0ecd5d47ccbc8e7.lean/declarations/isuniformgroup--97740ec38d7706785962ae03.md) | 125 | `declaration-track:97740ec38d7706785962ae032d956bf428903dcd2786b0043e0ccf9b11b6b9e5` |
| 9 | `theorem` | [CauchySeq.mul](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantbbad8ef1151379a2274fd9c8bb05187036d2181da4444e73b0ecd5d47ccbc8e7.lean/declarations/cauchyseq-mul--43954ca13f31ab438a7fc780.md) | 130 | `result-track:43954ca13f31ab438a7fc780856b6e412960a731038680fcbc0a8ac886f244f2` |
| 10 | `theorem` | [CauchySeq.mul_const](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantbbad8ef1151379a2274fd9c8bb05187036d2181da4444e73b0ecd5d47ccbc8e7.lean/declarations/cauchyseq-mul-const--33dee222ee14a97709cdcbb0.md) | 135 | `result-track:33dee222ee14a97709cdcbb0de25cae6e368023743c434ac7ea0df3a2bbfdfc3` |
| 11 | `theorem` | [CauchySeq.const_mul](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantbbad8ef1151379a2274fd9c8bb05187036d2181da4444e73b0ecd5d47ccbc8e7.lean/declarations/cauchyseq-const-mul--3a5b8a20e2f97bb5133f1524.md) | 140 | `result-track:3a5b8a20e2f97bb5133f1524cb0283140a56c2dee5ab7e947ef9494f60840d78` |
| 12 | `theorem` | [CauchySeq.inv](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantbbad8ef1151379a2274fd9c8bb05187036d2181da4444e73b0ecd5d47ccbc8e7.lean/declarations/cauchyseq-inv--c521e8d313e503611ca15acf.md) | 145 | `result-track:c521e8d313e503611ca15acf96c96b4349909f89aa833cfaa07d3c23243f7096` |
| 13 | `theorem` | [totallyBounded_iff_subset_finite_iUnion_nhds_one](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantbbad8ef1151379a2274fd9c8bb05187036d2181da4444e73b0ecd5d47ccbc8e7.lean/declarations/totallybounded-iff-subset-finite-iunion-nhds-one--0c30407aa3becbe2a2fc247d.md) | 150 | `result-track:0c30407aa3becbe2a2fc247d0b23494d134bdbb3b638267c94afdc6d76bce83e` |
| 14 | `lemma` | [TotallyBounded.inv](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantbbad8ef1151379a2274fd9c8bb05187036d2181da4444e73b0ecd5d47ccbc8e7.lean/declarations/totallybounded-inv--1472b18c07dc33b7da5a1cb2.md) | 156 | `result-track:1472b18c07dc33b7da5a1cb22ee6cff28528fe9308082bb9ccb61e4fd9c8a418` |
| 15 | `lemma` | [totallyBounded_inv](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantbbad8ef1151379a2274fd9c8bb05187036d2181da4444e73b0ecd5d47ccbc8e7.lean/declarations/totallybounded-inv--59d092e7aa28926bd3c382d5.md) | 160 | `result-track:59d092e7aa28926bd3c382d5fad62cdae5a6e579bb53be343ece7bdffc36dbdd` |
| 16 | `theorem` | [TendstoUniformlyOnFilter.mul](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantbbad8ef1151379a2274fd9c8bb05187036d2181da4444e73b0ecd5d47ccbc8e7.lean/declarations/tendstouniformlyonfilter-mul--45711a393de5a97ccd8c370f.md) | 169 | `result-track:45711a393de5a97ccd8c370fd4fe9906ea3f2019734d867aed1275b2d7eca4ee` |
| 17 | `theorem` | [TendstoUniformlyOnFilter.div](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantbbad8ef1151379a2274fd9c8bb05187036d2181da4444e73b0ecd5d47ccbc8e7.lean/declarations/tendstouniformlyonfilter-div--6ad76020b6a907292f324f23.md) | 175 | `result-track:6ad76020b6a907292f324f23f5df62b1478b8f6fb7ba4444a02651d4e67449e7` |
| 18 | `theorem` | [TendstoUniformlyOnFilter.inv](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantbbad8ef1151379a2274fd9c8bb05187036d2181da4444e73b0ecd5d47ccbc8e7.lean/declarations/tendstouniformlyonfilter-inv--720146f0edfe06428647fb35.md) | 181 | `result-track:720146f0edfe06428647fb35e2d8acfe7b484fca017312cba082dfea0d78793d` |
| 19 | `theorem` | [TendstoUniformlyOn.mul](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantbbad8ef1151379a2274fd9c8bb05187036d2181da4444e73b0ecd5d47ccbc8e7.lean/declarations/tendstouniformlyon-mul--108a2381ba92bc2e14492c74.md) | 186 | `result-track:108a2381ba92bc2e14492c74da0c8da42ccb5e3376410c18d0b98b67ea39915f` |
| 20 | `theorem` | [TendstoUniformlyOn.div](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantbbad8ef1151379a2274fd9c8bb05187036d2181da4444e73b0ecd5d47ccbc8e7.lean/declarations/tendstouniformlyon-div--9ef3b2726874e1e6c6b4fba2.md) | 191 | `result-track:9ef3b2726874e1e6c6b4fba2e2406e7535acebdeaefa66153327887eccebe71c` |
| 21 | `theorem` | [TendstoUniformlyOn.inv](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantbbad8ef1151379a2274fd9c8bb05187036d2181da4444e73b0ecd5d47ccbc8e7.lean/declarations/tendstouniformlyon-inv--3c5e5955597321b65a974191.md) | 196 | `result-track:3c5e5955597321b65a9741918bf6754cdf62502395ff96e7e7f53c4f0ab50d0b` |
| 22 | `theorem` | [TendstoUniformly.mul](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantbbad8ef1151379a2274fd9c8bb05187036d2181da4444e73b0ecd5d47ccbc8e7.lean/declarations/tendstouniformly-mul--32262e62d8e3a4ace40bd9d6.md) | 201 | `result-track:32262e62d8e3a4ace40bd9d625aeb4aba0778b6faacfa5733e6b69860d417647` |
| 23 | `theorem` | [TendstoUniformly.div](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantbbad8ef1151379a2274fd9c8bb05187036d2181da4444e73b0ecd5d47ccbc8e7.lean/declarations/tendstouniformly-div--3ed0f7b621c820b743115116.md) | 206 | `result-track:3ed0f7b621c820b743115116770c58c1a58da9a4593278705c445fabbe340a36` |
| 24 | `theorem` | [TendstoUniformly.inv](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantbbad8ef1151379a2274fd9c8bb05187036d2181da4444e73b0ecd5d47ccbc8e7.lean/declarations/tendstouniformly-inv--6ac49b10b2bc41f44dc7744e.md) | 211 | `result-track:6ac49b10b2bc41f44dc7744e98615314466934fa05d64d174ddfc254fd957b5f` |
| 25 | `theorem` | [UniformCauchySeqOn.mul](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantbbad8ef1151379a2274fd9c8bb05187036d2181da4444e73b0ecd5d47ccbc8e7.lean/declarations/uniformcauchyseqon-mul--5d21f418657e6f4f96df57d0.md) | 216 | `result-track:5d21f418657e6f4f96df57d024c56d70be070b28a9edc054d0cb03ece6385ad0` |
| 26 | `theorem` | [UniformCauchySeqOn.div](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantbbad8ef1151379a2274fd9c8bb05187036d2181da4444e73b0ecd5d47ccbc8e7.lean/declarations/uniformcauchyseqon-div--0d5cebcb5b4588b3930446cc.md) | 221 | `result-track:0d5cebcb5b4588b3930446cc63884180a874724f1e38ea35885189ec898782e4` |
| 27 | `theorem` | [UniformCauchySeqOn.inv](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantbbad8ef1151379a2274fd9c8bb05187036d2181da4444e73b0ecd5d47ccbc8e7.lean/declarations/uniformcauchyseqon-inv--c0587798cf3e86364d60aaa7.md) | 226 | `result-track:c0587798cf3e86364d60aaa7df37db3e10a5fbf58f1a5ff027557d2196a07795` |
| 28 | `theorem` | [TendstoLocallyUniformlyOn.mul](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantbbad8ef1151379a2274fd9c8bb05187036d2181da4444e73b0ecd5d47ccbc8e7.lean/declarations/tendstolocallyuniformlyon-mul--070dc5c9ee5a689a3804a958.md) | 238 | `result-track:070dc5c9ee5a689a3804a9588e85714ca099e5e84200cb95a2b88a0cf31ff717` |
| 29 | `theorem` | [TendstoLocallyUniformlyOn.div](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantbbad8ef1151379a2274fd9c8bb05187036d2181da4444e73b0ecd5d47ccbc8e7.lean/declarations/tendstolocallyuniformlyon-div--5bdc3136e5d943c2913aa491.md) | 244 | `result-track:5bdc3136e5d943c2913aa49148d8783f22ede30ab989e2b119c7558c121fedc0` |
| 30 | `theorem` | [TendstoLocallyUniformlyOn.inv](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantbbad8ef1151379a2274fd9c8bb05187036d2181da4444e73b0ecd5d47ccbc8e7.lean/declarations/tendstolocallyuniformlyon-inv--f0bd76ecaa7d8fa139b3e183.md) | 250 | `result-track:f0bd76ecaa7d8fa139b3e18378f4341664907ea7d18984907f54b2c5d51879cc` |
| 31 | `theorem` | [TendstoLocallyUniformly.mul](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantbbad8ef1151379a2274fd9c8bb05187036d2181da4444e73b0ecd5d47ccbc8e7.lean/declarations/tendstolocallyuniformly-mul--202aab7a994bb6590d1fe8e4.md) | 255 | `result-track:202aab7a994bb6590d1fe8e454a50ae0c1dd252fb660fb9cda85a700148c47f2` |
| 32 | `theorem` | [TendstoLocallyUniformly.div](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantbbad8ef1151379a2274fd9c8bb05187036d2181da4444e73b0ecd5d47ccbc8e7.lean/declarations/tendstolocallyuniformly-div--fccf2c5c4aee44e6fbb6780f.md) | 261 | `result-track:fccf2c5c4aee44e6fbb6780f32eef3a06b054231e54cdc9139dd35d0c6361251` |
| 33 | `theorem` | [TendstoLocallyUniformly.inv](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantbbad8ef1151379a2274fd9c8bb05187036d2181da4444e73b0ecd5d47ccbc8e7.lean/declarations/tendstolocallyuniformly-inv--069c7c4763a919c0e29605de.md) | 267 | `result-track:069c7c4763a919c0e29605de56bba7075975ad355775336ac5672e6fb48a2727` |
| 34 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantbbad8ef1151379a2274fd9c8bb05187036d2181da4444e73b0ecd5d47ccbc8e7.lean/declarations/instance--cb5a4e7afe33bd3bf4b1aa3f.md) | 275 | `declaration-track:cb5a4e7afe33bd3bf4b1aa3fb6dc4b11ff5c96f3a1c1f6ae5dd53e9321caf27c` |
| 35 | `lemma` | [comap_op_rightUniformSpace](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantbbad8ef1151379a2274fd9c8bb05187036d2181da4444e73b0ecd5d47ccbc8e7.lean/declarations/comap-op-rightuniformspace--cc20da506ff037c9bafdf541.md) | 286 | `result-track:cc20da506ff037c9bafdf541b4f44ab0bce85f980a65285496e847ae97cd0d91` |
| 36 | `lemma` | [comap_op_leftUniformSpace](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantbbad8ef1151379a2274fd9c8bb05187036d2181da4444e73b0ecd5d47ccbc8e7.lean/declarations/comap-op-leftuniformspace--9aa33edf23baf5f3ab808593.md) | 298 | `result-track:9aa33edf23baf5f3ab8085930f10813445df000e709ac0322ce02b6b4e9e3512` |
| 37 | `def` | [opUniformEquivRight](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantbbad8ef1151379a2274fd9c8bb05187036d2181da4444e73b0ecd5d47ccbc8e7.lean/declarations/opuniformequivright--3b0e91df1a1474d5e6668ac6.md) | 314 | `declaration-track:3b0e91df1a1474d5e6668ac647b6656742e2b836a0357844c890fc261cc7f330` |
| 38 | `def` | [opUniformEquivLeft](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantbbad8ef1151379a2274fd9c8bb05187036d2181da4444e73b0ecd5d47ccbc8e7.lean/declarations/opuniformequivleft--3a1164d2ac80b2bd00f97ecc.md) | 328 | `declaration-track:3a1164d2ac80b2bd00f97ecc140251be0c59bc6a2f31ce368b32bffaab60eebd` |
| 39 | `lemma` | [comap_inv_leftUniformSpace](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantbbad8ef1151379a2274fd9c8bb05187036d2181da4444e73b0ecd5d47ccbc8e7.lean/declarations/comap-inv-leftuniformspace--cff12a8a304d2c9c5c8668b2.md) | 345 | `result-track:cff12a8a304d2c9c5c8668b24231fc601ce264d2dd22a8951ce38555d5ab79d6` |
| 40 | `def` | [UniformEquiv.inv](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantbbad8ef1151379a2274fd9c8bb05187036d2181da4444e73b0ecd5d47ccbc8e7.lean/declarations/uniformequiv-inv--21dec2006786daa00588dc4b.md) | 360 | `declaration-track:21dec2006786daa00588dc4bb83573df6538774d6738bbc0542544f004e95067` |
| 41 | `lemma` | [IsTopologicalGroup.completeSpace_rightUniformSpace_iff_leftUniformSpace](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantbbad8ef1151379a2274fd9c8bb05187036d2181da4444e73b0ecd5d47ccbc8e7.lean/declarations/istopologicalgroup-completespace-rightuniformspace-iff-leftuniformspace--fb3c8d17f2746de146cfff52.md) | 375 | `result-track:fb3c8d17f2746de146cfff5218826064de97c92b2cafe3d10043468f6d440d0c` |
| 42 | `theorem` | [uniformCauchySeqOn_iff](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantbbad8ef1151379a2274fd9c8bb05187036d2181da4444e73b0ecd5d47ccbc8e7.lean/declarations/uniformcauchyseqon-iff--6c1dc481110941183654be27.md) | 388 | `result-track:6c1dc481110941183654be2706f3a1f5863c17cb96e7d69447ddfba4a4b3eda8` |
| 43 | `theorem` | [tendstoUniformly_iff](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantbbad8ef1151379a2274fd9c8bb05187036d2181da4444e73b0ecd5d47ccbc8e7.lean/declarations/tendstouniformly-iff--b75e8282d00aa7027b2065cb.md) | 396 | `result-track:b75e8282d00aa7027b2065cb58dd013da7bcc620034f9f97d1a5a59de028b7d1` |
| 44 | `theorem` | [tendstoUniformlyOn_iff](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantbbad8ef1151379a2274fd9c8bb05187036d2181da4444e73b0ecd5d47ccbc8e7.lean/declarations/tendstouniformlyon-iff--73218e87d12cc971197730dc.md) | 404 | `result-track:73218e87d12cc971197730dce3a5a9a02f1366fc3212165612d66864bd0b2399` |
| 45 | `theorem` | [tendstoLocallyUniformly_iff](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantbbad8ef1151379a2274fd9c8bb05187036d2181da4444e73b0ecd5d47ccbc8e7.lean/declarations/tendstolocallyuniformly-iff--4f2728351912436f2f50cee0.md) | 412 | `result-track:4f2728351912436f2f50cee0949f802215e637792e117ffe3f0db0813697f1d5` |
| 46 | `theorem` | [tendstoLocallyUniformlyOn_iff](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantbbad8ef1151379a2274fd9c8bb05187036d2181da4444e73b0ecd5d47ccbc8e7.lean/declarations/tendstolocallyuniformlyon-iff--a407ba86de2e109703f6354d.md) | 422 | `result-track:a407ba86de2e109703f6354d83becae959d3b823b66fe1cc19a88560e312ebfd` |
| 47 | `theorem` | [tendsto_div_comap_self](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantbbad8ef1151379a2274fd9c8bb05187036d2181da4444e73b0ecd5d47ccbc8e7.lean/declarations/tendsto-div-comap-self--53b59669ee7d753ca5c5ea5a.md) | 445 | `result-track:53b59669ee7d753ca5c5ea5acfffb42d799a1ee3c9737c450686d94834c21948` |
| 48 | `theorem` | [extend_Z_bilin_aux](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantbbad8ef1151379a2274fd9c8bb05187036d2181da4444e73b0ecd5d47ccbc8e7.lean/declarations/extend-z-bilin-aux--8610e6e0718b82ab099cc941.md) | 478 | `result-track:8610e6e0718b82ab099cc9419ce94ea8480a1a1181f3d7b96cddc61d98f70521` |
| 49 | `theorem` | [extend_Z_bilin_key](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantbbad8ef1151379a2274fd9c8bb05187036d2181da4444e73b0ecd5d47ccbc8e7.lean/declarations/extend-z-bilin-key--b71eaa991c1c26cc0718c2cd.md) | 498 | `result-track:b71eaa991c1c26cc0718c2cd156dce312eaa3a66bbbe13c8a18879e844e7bb45` |
| 50 | `theorem` | [extend_Z_bilin](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantbbad8ef1151379a2274fd9c8bb05187036d2181da4444e73b0ecd5d47ccbc8e7.lean/declarations/extend-z-bilin--cadfee336b7dd1ede9e5a269.md) | 552 | `result-track:cadfee336b7dd1ede9e5a26968d2737170118e21db87391d516aa012ba216855` |
| 51 | `instance` | [QuotientGroup.completeSpace_right'](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantbbad8ef1151379a2274fd9c8bb05187036d2181da4444e73b0ecd5d47ccbc8e7.lean/declarations/quotientgroup-completespace-right--94135a8eb365af94cd1b1f10.md) | 603 | `declaration-track:94135a8eb365af94cd1b1f10f37c5534460336f7e2acfb318857389dc55a7943` |
| 52 | `instance` | [QuotientGroup.completeSpace_right](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantbbad8ef1151379a2274fd9c8bb05187036d2181da4444e73b0ecd5d47ccbc8e7.lean/declarations/quotientgroup-completespace-right--81c2e4da345dbcc3c1cd90a8.md) | 701 | `declaration-track:81c2e4da345dbcc3c1cd90a8d9ece9dcb694475965dc645a82d99331d59a4b45` |
| 53 | `instance` | [QuotientGroup.completeSpace_left'](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantbbad8ef1151379a2274fd9c8bb05187036d2181da4444e73b0ecd5d47ccbc8e7.lean/declarations/quotientgroup-completespace-left--cb5082b404ae6de25584ffd0.md) | 726 | `declaration-track:cb5082b404ae6de25584ffd0a33a9ffb84b21031fc016fbbff868091f3a265db` |
| 54 | `instance` | [QuotientGroup.completeSpace_left](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantbbad8ef1151379a2274fd9c8bb05187036d2181da4444e73b0ecd5d47ccbc8e7.lean/declarations/quotientgroup-completespace-left--5b15ddd3e80c631c3dce40e5.md) | 753 | `declaration-track:5b15ddd3e80c631c3dce40e52fe49a87e8368d5c163b86f6b6eab58c973cb1a4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
