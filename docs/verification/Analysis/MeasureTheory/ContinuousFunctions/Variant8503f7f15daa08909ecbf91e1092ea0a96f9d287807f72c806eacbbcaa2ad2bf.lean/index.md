# Verification target: GRWTSK.Analysis.MeasureTheory.ContinuousFunctions.Variant8503f7f15daa08909ecbf91e1092ea0a96f9d287807f72c806eacbbcaa2ad2bf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ea76d7a3150911f8d0fb61fd79d65d943fa87385",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/ContinuousFunctions/Variant8503f7f15daa08909ecbf91e1092ea0a96f9d287807f72c806eacbbcaa2ad2bf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/ContinuousFunctions/Variant8503f7f15daa08909ecbf91e1092ea0a96f9d287807f72c806eacbbcaa2ad2bf.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/ContinuousFunctions/Variant8503f7f15daa08909ecbf91e1092ea0a96f9d287807f72c806eacbbcaa2ad2bf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ea76d7a3150911f8d0fb61fd79d65d943fa87385`.

Source path: `GRWTSK/Analysis/MeasureTheory/ContinuousFunctions/Variant8503f7f15daa08909ecbf91e1092ea0a96f9d287807f72c806eacbbcaa2ad2bf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/ContinuousFunctions/Variant8503f7f15daa08909ecbf91e1092ea0a96f9d287807f72c806eacbbcaa2ad2bf.lean.json)

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
| 1 | `def` | [MeasureTheory.Lp.boundedContinuousFunction](../../../../../mathematics/Analysis/MeasureTheory/ContinuousFunctions/Variant8503f7f15daa08909ecbf91e1092ea0a96f9d287807f72c806eacbbcaa2ad2bf.lean/declarations/measuretheory-lp-boundedcontinuousfunction--08f6ed3e38cff95da841dd2f.md) | 40 | `declaration-track:08f6ed3e38cff95da841dd2fb09f4d6f286a8ed4b373b749755a1223fea0e95b` |
| 2 | `theorem` | [MeasureTheory.Lp.mem_boundedContinuousFunction_iff](../../../../../mathematics/Analysis/MeasureTheory/ContinuousFunctions/Variant8503f7f15daa08909ecbf91e1092ea0a96f9d287807f72c806eacbbcaa2ad2bf.lean/declarations/measuretheory-lp-mem-boundedcontinuousfunction-iff--44c440348376359404a8ffad.md) | 46 | `result-track:44c440348376359404a8ffadc1302a2f8844a04eb62a793d6861e7b8ea4c114f` |
| 3 | `theorem` | [memLp_top](../../../../../mathematics/Analysis/MeasureTheory/ContinuousFunctions/Variant8503f7f15daa08909ecbf91e1092ea0a96f9d287807f72c806eacbbcaa2ad2bf.lean/declarations/memlp-top--3a6c621342de25a2dc566cba.md) | 54 | `result-track:3a6c621342de25a2dc566cbae310a1db0269fcaad6d58fb679efb37347b52c81` |
| 4 | `theorem` | [mem_Lp](../../../../../mathematics/Analysis/MeasureTheory/ContinuousFunctions/Variant8503f7f15daa08909ecbf91e1092ea0a96f9d287807f72c806eacbbcaa2ad2bf.lean/declarations/mem-lp--f393d0340e0823c65fd8f6a6.md) | 61 | `result-track:f393d0340e0823c65fd8f6a66fdf220030dbe461507fbdb153ccb8af7b39ad3e` |
| 5 | `theorem` | [Lp_nnnorm_le](../../../../../mathematics/Analysis/MeasureTheory/ContinuousFunctions/Variant8503f7f15daa08909ecbf91e1092ea0a96f9d287807f72c806eacbbcaa2ad2bf.lean/declarations/lp-nnnorm-le--1a820bc2e6569cd0863887e6.md) | 68 | `result-track:1a820bc2e6569cd0863887e688e8370e5bd0d14bded0b38dc1935fc9ef9fd7b1` |
| 6 | `theorem` | [Lp_norm_le](../../../../../mathematics/Analysis/MeasureTheory/ContinuousFunctions/Variant8503f7f15daa08909ecbf91e1092ea0a96f9d287807f72c806eacbbcaa2ad2bf.lean/declarations/lp-norm-le--daca36707a5472dec76301c5.md) | 79 | `result-track:daca36707a5472dec76301c5998430dbcf2be06f81376f195505ee3b203c6bb6` |
| 7 | `def` | [toLpHom](../../../../../mathematics/Analysis/MeasureTheory/ContinuousFunctions/Variant8503f7f15daa08909ecbf91e1092ea0a96f9d287807f72c806eacbbcaa2ad2bf.lean/declarations/tolphom--2e484ccb14383053026dbb67.md) | 88 | `declaration-track:2e484ccb14383053026dbb679af3148e1b2cd5006bd469e4536cbee66de4ff66` |
| 8 | `theorem` | [range_toLpHom](../../../../../mathematics/Analysis/MeasureTheory/ContinuousFunctions/Variant8503f7f15daa08909ecbf91e1092ea0a96f9d287807f72c806eacbbcaa2ad2bf.lean/declarations/range-tolphom--834edccb5e1f7008548c6ddd.md) | 93 | `result-track:834edccb5e1f7008548c6ddde84354a26276c34543f2a33e9af6a8cc11a2f167` |
| 9 | `def` | [toLp](../../../../../mathematics/Analysis/MeasureTheory/ContinuousFunctions/Variant8503f7f15daa08909ecbf91e1092ea0a96f9d287807f72c806eacbbcaa2ad2bf.lean/declarations/tolp--4b4bbf4d2885412d851a41c7.md) | 105 | `declaration-track:4b4bbf4d2885412d851a41c76dd4737f22d8d6fb4aa9ce6b64270ffd3b7c9238` |
| 10 | `theorem` | [coeFn_toLp](../../../../../mathematics/Analysis/MeasureTheory/ContinuousFunctions/Variant8503f7f15daa08909ecbf91e1092ea0a96f9d287807f72c806eacbbcaa2ad2bf.lean/declarations/coefn-tolp--a8df28a9a46d1f0a41f229be.md) | 111 | `result-track:a8df28a9a46d1f0a41f229be2848c4ae758b492ff46905467947a796ba957103` |
| 11 | `theorem` | [range_toLp](../../../../../mathematics/Analysis/MeasureTheory/ContinuousFunctions/Variant8503f7f15daa08909ecbf91e1092ea0a96f9d287807f72c806eacbbcaa2ad2bf.lean/declarations/range-tolp--6020915508d51b8b0cc538c0.md) | 117 | `result-track:6020915508d51b8b0cc538c091b08313ae0f9ab500f333a87111020fba66044f` |
| 12 | `theorem` | [toLp_norm_le](../../../../../mathematics/Analysis/MeasureTheory/ContinuousFunctions/Variant8503f7f15daa08909ecbf91e1092ea0a96f9d287807f72c806eacbbcaa2ad2bf.lean/declarations/tolp-norm-le--7049ee14f787408178f805f5.md) | 124 | `result-track:7049ee14f787408178f805f598d0e2a9fda275c9cb2cb001bfcc244361aa1ac5` |
| 13 | `theorem` | [toLp_inj](../../../../../mathematics/Analysis/MeasureTheory/ContinuousFunctions/Variant8503f7f15daa08909ecbf91e1092ea0a96f9d287807f72c806eacbbcaa2ad2bf.lean/declarations/tolp-inj--1a805fcf0ae9aafd8724347b.md) | 128 | `result-track:1a805fcf0ae9aafd8724347b95afaae7c18abefecdadb7bde493438aba6d36e5` |
| 14 | `theorem` | [toLp_injective](../../../../../mathematics/Analysis/MeasureTheory/ContinuousFunctions/Variant8503f7f15daa08909ecbf91e1092ea0a96f9d287807f72c806eacbbcaa2ad2bf.lean/declarations/tolp-injective--8562fc6cb27a9ae893dcab2c.md) | 135 | `result-track:8562fc6cb27a9ae893dcab2ce04d46f0bff4c3923648e8fe234d9bb192c31d41` |
| 15 | `def` | [toLp](../../../../../mathematics/Analysis/MeasureTheory/ContinuousFunctions/Variant8503f7f15daa08909ecbf91e1092ea0a96f9d287807f72c806eacbbcaa2ad2bf.lean/declarations/tolp--fd2d4e1e1015be3e29a4caf1.md) | 151 | `declaration-track:fd2d4e1e1015be3e29a4caf1fb3966da2e4a60aa81426ea3535d405bcb238315` |
| 16 | `theorem` | [range_toLp](../../../../../mathematics/Analysis/MeasureTheory/ContinuousFunctions/Variant8503f7f15daa08909ecbf91e1092ea0a96f9d287807f72c806eacbbcaa2ad2bf.lean/declarations/range-tolp--4571a24e5d3f574a286d1461.md) | 157 | `result-track:4571a24e5d3f574a286d1461612ef17889fec0bd53c939c613e4f9a00793018e` |
| 17 | `theorem` | [coeFn_toLp](../../../../../mathematics/Analysis/MeasureTheory/ContinuousFunctions/Variant8503f7f15daa08909ecbf91e1092ea0a96f9d287807f72c806eacbbcaa2ad2bf.lean/declarations/coefn-tolp--c5223ce00df8fd0c8044b00d.md) | 168 | `result-track:c5223ce00df8fd0c8044b00ddc847c76807dcb1347d196b75a563e77b90767da` |
| 18 | `theorem` | [toLp_def](../../../../../mathematics/Analysis/MeasureTheory/ContinuousFunctions/Variant8503f7f15daa08909ecbf91e1092ea0a96f9d287807f72c806eacbbcaa2ad2bf.lean/declarations/tolp-def--7d9ab6de07a8440e86352d06.md) | 172 | `result-track:7d9ab6de07a8440e86352d06295319d578a9eb93de43d312598f4f9418bb0540` |
| 19 | `theorem` | [toLp_comp_toContinuousMap](../../../../../mathematics/Analysis/MeasureTheory/ContinuousFunctions/Variant8503f7f15daa08909ecbf91e1092ea0a96f9d287807f72c806eacbbcaa2ad2bf.lean/declarations/tolp-comp-tocontinuousmap--ccc86d2f1559993ae1aa3d1f.md) | 178 | `result-track:ccc86d2f1559993ae1aa3d1f429ff7f35d05dfca53e6bce33d9bfefd117df553` |
| 20 | `theorem` | [coe_toLp](../../../../../mathematics/Analysis/MeasureTheory/ContinuousFunctions/Variant8503f7f15daa08909ecbf91e1092ea0a96f9d287807f72c806eacbbcaa2ad2bf.lean/declarations/coe-tolp--7b40bd9b67ef25c46f0bf723.md) | 183 | `result-track:7b40bd9b67ef25c46f0bf723d345032ccff5747bf54bdf0d90fdcc80d624d358` |
| 21 | `theorem` | [toLp_injective](../../../../../mathematics/Analysis/MeasureTheory/ContinuousFunctions/Variant8503f7f15daa08909ecbf91e1092ea0a96f9d287807f72c806eacbbcaa2ad2bf.lean/declarations/tolp-injective--37f282b7089900a37e792b35.md) | 187 | `result-track:37f282b7089900a37e792b352f885a9189f44659b4577480e5e89ed8ea014288` |
| 22 | `theorem` | [toLp_inj](../../../../../mathematics/Analysis/MeasureTheory/ContinuousFunctions/Variant8503f7f15daa08909ecbf91e1092ea0a96f9d287807f72c806eacbbcaa2ad2bf.lean/declarations/tolp-inj--1b1eb1e57a42c44631dc48b8.md) | 191 | `result-track:1b1eb1e57a42c44631dc48b8b1a5a86719dd5aeec8ba74b8ee92166877cc422b` |
| 23 | `theorem` | [hasSum_of_hasSum_Lp](../../../../../mathematics/Analysis/MeasureTheory/ContinuousFunctions/Variant8503f7f15daa08909ecbf91e1092ea0a96f9d287807f72c806eacbbcaa2ad2bf.lean/declarations/hassum-of-hassum-lp--a678ea4217327d34642c6c17.md) | 199 | `result-track:a678ea4217327d34642c6c1722379ab4228b2b379ad690353f673525fb1eeb32` |
| 24 | `theorem` | [toLp_norm_eq_toLp_norm_coe](../../../../../mathematics/Analysis/MeasureTheory/ContinuousFunctions/Variant8503f7f15daa08909ecbf91e1092ea0a96f9d287807f72c806eacbbcaa2ad2bf.lean/declarations/tolp-norm-eq-tolp-norm-coe--cdf1a4aeecff398f56122072.md) | 207 | `result-track:cdf1a4aeecff398f56122072b508edcdb85311dea14585f8622f4cbbf5cd1530` |
| 25 | `theorem` | [toLp_norm_le](../../../../../mathematics/Analysis/MeasureTheory/ContinuousFunctions/Variant8503f7f15daa08909ecbf91e1092ea0a96f9d287807f72c806eacbbcaa2ad2bf.lean/declarations/tolp-norm-le--4030ead2886d29d615f6b7cc.md) | 213 | `result-track:4030ead2886d29d615f6b7ccfc8efe27c662dbfab3e1640e44e7e01a2d8c4fd5` |
| 26 | `lemma` | [memLp](../../../../../mathematics/Analysis/MeasureTheory/ContinuousFunctions/Variant8503f7f15daa08909ecbf91e1092ea0a96f9d287807f72c806eacbbcaa2ad2bf.lean/declarations/memlp--8fb4663fa0749d1994ab894c.md) | 218 | `result-track:8fb4663fa0749d1994ab894c358a1e512e1a581a95f5cd512f1513c70a61b288` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
