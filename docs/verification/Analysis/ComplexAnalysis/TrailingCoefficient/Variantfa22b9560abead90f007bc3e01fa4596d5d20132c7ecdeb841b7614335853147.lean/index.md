# Verification target: GRWTSK.Analysis.ComplexAnalysis.TrailingCoefficient.Variantfa22b9560abead90f007bc3e01fa4596d5d20132c7ecdeb841b7614335853147

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "08af297ac40595f40cd661bbc3bd6a1515042026",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/TrailingCoefficient/Variantfa22b9560abead90f007bc3e01fa4596d5d20132c7ecdeb841b7614335853147.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/ComplexAnalysis/TrailingCoefficient/Variantfa22b9560abead90f007bc3e01fa4596d5d20132c7ecdeb841b7614335853147.lean/index.md) · [Full source](../../../../../mathematics/Analysis/ComplexAnalysis/TrailingCoefficient/Variantfa22b9560abead90f007bc3e01fa4596d5d20132c7ecdeb841b7614335853147.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `08af297ac40595f40cd661bbc3bd6a1515042026`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/TrailingCoefficient/Variantfa22b9560abead90f007bc3e01fa4596d5d20132c7ecdeb841b7614335853147.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/TrailingCoefficient/Variantfa22b9560abead90f007bc3e01fa4596d5d20132c7ecdeb841b7614335853147.lean.json)

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
| 1 | `def` | [meromorphicTrailingCoeffAt](../../../../../mathematics/Analysis/ComplexAnalysis/TrailingCoefficient/Variantfa22b9560abead90f007bc3e01fa4596d5d20132c7ecdeb841b7614335853147.lean/declarations/meromorphictrailingcoeffat--3f2d1aa22497aa1191a87897.md) | 38 | `declaration-track:3f2d1aa22497aa1191a8789705cbe709f9f0170c4cdad76f15c50b6d163a136b` |
| 2 | `lemma` | [meromorphicTrailingCoeffAt_of_not_MeromorphicAt](../../../../../mathematics/Analysis/ComplexAnalysis/TrailingCoefficient/Variantfa22b9560abead90f007bc3e01fa4596d5d20132c7ecdeb841b7614335853147.lean/declarations/meromorphictrailingcoeffat-of-not-meromorphicat--51a69c6d770c18f9038fae1f.md) | 48 | `result-track:51a69c6d770c18f9038fae1f09c088f6628a82d640805770bbd1ff37ff7087cd` |
| 3 | `lemma` | [MeromorphicAt.meromorphicTrailingCoeffAt_of_order_eq_top](../../../../../mathematics/Analysis/ComplexAnalysis/TrailingCoefficient/Variantfa22b9560abead90f007bc3e01fa4596d5d20132c7ecdeb841b7614335853147.lean/declarations/meromorphicat-meromorphictrailingcoeffat-of-order-eq-top--9fbcedda0fdc1f8f88967e6c.md) | 54 | `result-track:9fbcedda0fdc1f8f88967e6c72cabdb12f0b7365effddf2bd36cd1cfa23deebf` |
| 4 | `lemma` | [AnalyticAt.meromorphicTrailingCoeffAt_of_eq_nhdsNE](../../../../../mathematics/Analysis/ComplexAnalysis/TrailingCoefficient/Variantfa22b9560abead90f007bc3e01fa4596d5d20132c7ecdeb841b7614335853147.lean/declarations/analyticat-meromorphictrailingcoeffat-of-eq-nhdsne--e27a2e42f3718575ac3e38f5.md) | 66 | `result-track:e27a2e42f3718575ac3e38f53f7f35ad520ec040573b4ebd655718ff529e6cb0` |
| 5 | `lemma` | [AnalyticAt.meromorphicTrailingCoeffAt_of_ne_zero_of_eq_nhdsNE](../../../../../mathematics/Analysis/ComplexAnalysis/TrailingCoefficient/Variantfa22b9560abead90f007bc3e01fa4596d5d20132c7ecdeb841b7614335853147.lean/declarations/analyticat-meromorphictrailingcoeffat-of-ne-zero-of-eq-nhdsne--194ac56cee82d5ddf1ec7fe6.md) | 92 | `result-track:194ac56cee82d5ddf1ec7fe67f159c3e448b856a2742d9f30216346c728a720c` |
| 6 | `lemma` | [AnalyticAt.meromorphicTrailingCoeffAt_of_ne_zero](../../../../../mathematics/Analysis/ComplexAnalysis/TrailingCoefficient/Variantfa22b9560abead90f007bc3e01fa4596d5d20132c7ecdeb841b7614335853147.lean/declarations/analyticat-meromorphictrailingcoeffat-of-ne-zero--146617b9981bc255a9681bca.md) | 108 | `result-track:146617b9981bc255a9681bcae407fb61cc95254378aabed72941ee3f6a2a64f2` |
| 7 | `lemma` | [MeromorphicAt.tendsto_nhds_meromorphicTrailingCoeffAt](../../../../../mathematics/Analysis/ComplexAnalysis/TrailingCoefficient/Variantfa22b9560abead90f007bc3e01fa4596d5d20132c7ecdeb841b7614335853147.lean/declarations/meromorphicat-tendsto-nhds-meromorphictrailingcoeffat--9154fd23af1b75220f4115ec.md) | 118 | `result-track:9154fd23af1b75220f4115ec1ff366aec6a58ac0ae9a6e280db0f2c64ae541f1` |
| 8 | `lemma` | [MeromorphicAt.meromorphicTrailingCoeffAt_ne_zero](../../../../../mathematics/Analysis/ComplexAnalysis/TrailingCoefficient/Variantfa22b9560abead90f007bc3e01fa4596d5d20132c7ecdeb841b7614335853147.lean/declarations/meromorphicat-meromorphictrailingcoeffat-ne-zero--6cfe8028360195eee9961820.md) | 145 | `result-track:6cfe8028360195eee9961820d2ce3a4272c91dfd19ddcb66058f362bc75ff1d8` |
| 9 | `theorem` | [meromorphicTrailingCoeffAt_const](../../../../../mathematics/Analysis/ComplexAnalysis/TrailingCoefficient/Variantfa22b9560abead90f007bc3e01fa4596d5d20132c7ecdeb841b7614335853147.lean/declarations/meromorphictrailingcoeffat-const--1678d603389f167f46856c6e.md) | 155 | `result-track:1678d603389f167f46856c6e61e67343e0538bef0fa69e0c8a2a103e1335c8d9` |
| 10 | `theorem` | [meromorphicTrailingCoeffAt_id_sub_const](../../../../../mathematics/Analysis/ComplexAnalysis/TrailingCoefficient/Variantfa22b9560abead90f007bc3e01fa4596d5d20132c7ecdeb841b7614335853147.lean/declarations/meromorphictrailingcoeffat-id-sub-const--827fff0fcccc909428974374.md) | 168 | `result-track:827fff0fcccc9094289743740b00b597b6d31261073e96e97587a498b46ec289` |
| 11 | `lemma` | [meromorphicTrailingCoeffAt_congr_nhdsNE](../../../../../mathematics/Analysis/ComplexAnalysis/TrailingCoefficient/Variantfa22b9560abead90f007bc3e01fa4596d5d20132c7ecdeb841b7614335853147.lean/declarations/meromorphictrailingcoeffat-congr-nhdsne--5e05100317b3292da8056b7c.md) | 186 | `result-track:5e05100317b3292da8056b7c4d88a6a588130517a1f8168b75c7d463e6c4a3f3` |
| 12 | `theorem` | [meromorphicTrailingCoeffAt_neg](../../../../../mathematics/Analysis/ComplexAnalysis/TrailingCoefficient/Variantfa22b9560abead90f007bc3e01fa4596d5d20132c7ecdeb841b7614335853147.lean/declarations/meromorphictrailingcoeffat-neg--1a1232a4253429a994f0d5b6.md) | 204 | `result-track:1a1232a4253429a994f0d5b69faf1868b8f4c18aa34913cfdc388b14bb401d25` |
| 13 | `theorem` | [meromorphicTrailingCoeffAt_fun_neg](../../../../../mathematics/Analysis/ComplexAnalysis/TrailingCoefficient/Variantfa22b9560abead90f007bc3e01fa4596d5d20132c7ecdeb841b7614335853147.lean/declarations/meromorphictrailingcoeffat-fun-neg--e8695280d14874404a7e4cbd.md) | 222 | `result-track:e8695280d14874404a7e4cbd75145db85cc20450e1c707d7f27dcb264720a327` |
| 14 | `theorem` | [MeromorphicAt.meromorphicTrailingCoeffAt_add_eq_left_of_lt](../../../../../mathematics/Analysis/ComplexAnalysis/TrailingCoefficient/Variantfa22b9560abead90f007bc3e01fa4596d5d20132c7ecdeb841b7614335853147.lean/declarations/meromorphicat-meromorphictrailingcoeffat-add-eq-left-of-lt--46a12ae56ca724906008c8a6.md) | 230 | `result-track:46a12ae56ca724906008c8a62e465a05d56dbfb52ceadccca4f6cff9516b8964` |
| 15 | `theorem` | [MeromorphicAt.meromorphicTrailingCoeffAt_fun_add_eq_left_of_lt](../../../../../mathematics/Analysis/ComplexAnalysis/TrailingCoefficient/Variantfa22b9560abead90f007bc3e01fa4596d5d20132c7ecdeb841b7614335853147.lean/declarations/meromorphicat-meromorphictrailingcoeffat-fun-add-eq-left-of-lt--f99294098f37c77676888e86.md) | 269 | `result-track:f99294098f37c77676888e8627e33e48e0ca2966b8d5fc46c6c62401f6ba6e14` |
| 16 | `theorem` | [MeromorphicAt.meromorphicTrailingCoeffAt_sub_eq_left_of_lt](../../../../../mathematics/Analysis/ComplexAnalysis/TrailingCoefficient/Variantfa22b9560abead90f007bc3e01fa4596d5d20132c7ecdeb841b7614335853147.lean/declarations/meromorphicat-meromorphictrailingcoeffat-sub-eq-left-of-lt--3f557100eaa598e848d8154f.md) | 278 | `result-track:3f557100eaa598e848d8154f49441ec83962d06d889c729d9c43ee393e734c6b` |
| 17 | `theorem` | [MeromorphicAt.meromorphicTrailingCoeffAt_fun_sub_eq_left_of_lt](../../../../../mathematics/Analysis/ComplexAnalysis/TrailingCoefficient/Variantfa22b9560abead90f007bc3e01fa4596d5d20132c7ecdeb841b7614335853147.lean/declarations/meromorphicat-meromorphictrailingcoeffat-fun-sub-eq-left-of-lt--9ce5fdd3495ab01d6a46ba6b.md) | 289 | `result-track:9ce5fdd3495ab01d6a46ba6b5dda718054403551c0aa9f3a529f829ce8511a90` |
| 18 | `theorem` | [MeromorphicAt.meromorphicTrailingCoeffAt_add_eq_add](../../../../../mathematics/Analysis/ComplexAnalysis/TrailingCoefficient/Variantfa22b9560abead90f007bc3e01fa4596d5d20132c7ecdeb841b7614335853147.lean/declarations/meromorphicat-meromorphictrailingcoeffat-add-eq-add--b5ac2f12eebaaac875d2da01.md) | 298 | `result-track:b5ac2f12eebaaac875d2da018447c370cc85f5a626466374024e401b831c3eb7` |
| 19 | `theorem` | [MeromorphicAt.meromorphicTrailingCoeffAt_fun_add_eq_add](../../../../../mathematics/Analysis/ComplexAnalysis/TrailingCoefficient/Variantfa22b9560abead90f007bc3e01fa4596d5d20132c7ecdeb841b7614335853147.lean/declarations/meromorphicat-meromorphictrailingcoeffat-fun-add-eq-add--7794aa8ded2d7ef39720ab4a.md) | 327 | `result-track:7794aa8ded2d7ef39720ab4ad763750f60f2f956b4db127649b662a7c13d9d81` |
| 20 | `theorem` | [MeromorphicAt.meromorphicTrailingCoeffAt_sub_eq_sub](../../../../../mathematics/Analysis/ComplexAnalysis/TrailingCoefficient/Variantfa22b9560abead90f007bc3e01fa4596d5d20132c7ecdeb841b7614335853147.lean/declarations/meromorphicat-meromorphictrailingcoeffat-sub-eq-sub--a53f0bc6277276040f3d7d5e.md) | 339 | `result-track:a53f0bc6277276040f3d7d5eb53399baca633a44c1bc5fce220e6cee11463f26` |
| 21 | `theorem` | [MeromorphicAt.meromorphicTrailingCoeffAt_fun_sub_eq_sub](../../../../../mathematics/Analysis/ComplexAnalysis/TrailingCoefficient/Variantfa22b9560abead90f007bc3e01fa4596d5d20132c7ecdeb841b7614335853147.lean/declarations/meromorphicat-meromorphictrailingcoeffat-fun-sub-eq-sub--b5c6fd8e56e97d4f9a7a54e8.md) | 354 | `result-track:b5c6fd8e56e97d4f9a7a54e888aaa9d38e04ec8fc1dc2724744ca553055241aa` |
| 22 | `lemma` | [MeromorphicAt.meromorphicTrailingCoeffAt_smul](../../../../../mathematics/Analysis/ComplexAnalysis/TrailingCoefficient/Variantfa22b9560abead90f007bc3e01fa4596d5d20132c7ecdeb841b7614335853147.lean/declarations/meromorphicat-meromorphictrailingcoeffat-smul--03cd2aaf128d51037622ca97.md) | 365 | `result-track:03cd2aaf128d51037622ca9742c1242ceef08633d71c616460064032faa529b9` |
| 23 | `lemma` | [MeromorphicAt.meromorphicTrailingCoeffAt_fun_smul](../../../../../mathematics/Analysis/ComplexAnalysis/TrailingCoefficient/Variantfa22b9560abead90f007bc3e01fa4596d5d20132c7ecdeb841b7614335853147.lean/declarations/meromorphicat-meromorphictrailingcoeffat-fun-smul--13717db076a757387b035f8b.md) | 388 | `result-track:13717db076a757387b035f8bc7ef317b9bc8dc7cc1f103e83b6368fc9ccfa50b` |
| 24 | `lemma` | [MeromorphicAt.meromorphicTrailingCoeffAt_mul](../../../../../mathematics/Analysis/ComplexAnalysis/TrailingCoefficient/Variantfa22b9560abead90f007bc3e01fa4596d5d20132c7ecdeb841b7614335853147.lean/declarations/meromorphicat-meromorphictrailingcoeffat-mul--0d9e53452bce5f85e6eddc1d.md) | 397 | `result-track:0d9e53452bce5f85e6eddc1dd8da9b9c7413591c398d2df34954e6f3fc15f219` |
| 25 | `lemma` | [MeromorphicAt.meromorphicTrailingCoeffAt_fun_mul](../../../../../mathematics/Analysis/ComplexAnalysis/TrailingCoefficient/Variantfa22b9560abead90f007bc3e01fa4596d5d20132c7ecdeb841b7614335853147.lean/declarations/meromorphicat-meromorphictrailingcoeffat-fun-mul--42af4e480ac101c9f7cb9417.md) | 406 | `result-track:42af4e480ac101c9f7cb941772e11891de6d1d905dbdc0a5d7250fd404e1a1d5` |
| 26 | `theorem` | [meromorphicTrailingCoeffAt_prod](../../../../../mathematics/Analysis/ComplexAnalysis/TrailingCoefficient/Variantfa22b9560abead90f007bc3e01fa4596d5d20132c7ecdeb841b7614335853147.lean/declarations/meromorphictrailingcoeffat-prod--5ca39b39221b73595a99e837.md) | 415 | `result-track:5ca39b39221b73595a99e8370be1354bba2ddfb0cdf812c628b67fa745938829` |
| 27 | `theorem` | [meromorphicTrailingCoeffAt_fun_prod](../../../../../mathematics/Analysis/ComplexAnalysis/TrailingCoefficient/Variantfa22b9560abead90f007bc3e01fa4596d5d20132c7ecdeb841b7614335853147.lean/declarations/meromorphictrailingcoeffat-fun-prod--ab9464597b174a4391806ae2.md) | 433 | `result-track:ab9464597b174a4391806ae2dc2c2dc9c0af37a740dc23f2ee0fb590056058ad` |
| 28 | `lemma` | [meromorphicTrailingCoeffAt_inv](../../../../../mathematics/Analysis/ComplexAnalysis/TrailingCoefficient/Variantfa22b9560abead90f007bc3e01fa4596d5d20132c7ecdeb841b7614335853147.lean/declarations/meromorphictrailingcoeffat-inv--5aa4a8a98c11c4a5b4a880b0.md) | 443 | `result-track:5aa4a8a98c11c4a5b4a880b047fd95585bd662f11db1db880f66b67efe9dec01` |
| 29 | `lemma` | [meromorphicTrailingCoeffAt_fun_inv](../../../../../mathematics/Analysis/ComplexAnalysis/TrailingCoefficient/Variantfa22b9560abead90f007bc3e01fa4596d5d20132c7ecdeb841b7614335853147.lean/declarations/meromorphictrailingcoeffat-fun-inv--2db07b4260c9932ba64ee9eb.md) | 462 | `result-track:2db07b4260c9932ba64ee9eb8531036b8b78a902d91956f68190cbb1163c3623` |
| 30 | `lemma` | [MeromorphicAt.meromorphicTrailingCoeffAt_zpow](../../../../../mathematics/Analysis/ComplexAnalysis/TrailingCoefficient/Variantfa22b9560abead90f007bc3e01fa4596d5d20132c7ecdeb841b7614335853147.lean/declarations/meromorphicat-meromorphictrailingcoeffat-zpow--b91b50b4ea61dcba3a211aa9.md) | 469 | `result-track:b91b50b4ea61dcba3a211aa915943171036193368d5adf890fed156314044326` |
| 31 | `lemma` | [MeromorphicAt.meromorphicTrailingCoeffAt_fun_zpow](../../../../../mathematics/Analysis/ComplexAnalysis/TrailingCoefficient/Variantfa22b9560abead90f007bc3e01fa4596d5d20132c7ecdeb841b7614335853147.lean/declarations/meromorphicat-meromorphictrailingcoeffat-fun-zpow--3cccb69e34c6b40c6e6c866d.md) | 489 | `result-track:3cccb69e34c6b40c6e6c866de7e8200b03148facd663b972e3151c233530c579` |
| 32 | `lemma` | [MeromorphicAt.meromorphicTrailingCoeffAt_pow](../../../../../mathematics/Analysis/ComplexAnalysis/TrailingCoefficient/Variantfa22b9560abead90f007bc3e01fa4596d5d20132c7ecdeb841b7614335853147.lean/declarations/meromorphicat-meromorphictrailingcoeffat-pow--9ddcfaa475fb07f1a050e4b1.md) | 497 | `result-track:9ddcfaa475fb07f1a050e4b18be3984e0d7c04468e50fd9be00839df04dfbabc` |
| 33 | `lemma` | [MeromorphicAt.meromorphicTrailingCoeffAt_fun_pow](../../../../../mathematics/Analysis/ComplexAnalysis/TrailingCoefficient/Variantfa22b9560abead90f007bc3e01fa4596d5d20132c7ecdeb841b7614335853147.lean/declarations/meromorphicat-meromorphictrailingcoeffat-fun-pow--9f9bab3d0fe3c4a6854d1f05.md) | 505 | `result-track:9f9bab3d0fe3c4a6854d1f057ffefa0318e1ba88cb96c34f16ddd5c592e83e98` |
| 34 | `theorem` | [MeromorphicAt.meromorphicTrailingCoeffAt_comp](../../../../../mathematics/Analysis/ComplexAnalysis/TrailingCoefficient/Variantfa22b9560abead90f007bc3e01fa4596d5d20132c7ecdeb841b7614335853147.lean/declarations/meromorphicat-meromorphictrailingcoeffat-comp--1b89615dad9facf2c9bb4bf9.md) | 518 | `result-track:1b89615dad9facf2c9bb4bf9f7b5f62a4045873abe46f2ad1d0760eb8a8ec488` |
| 35 | `theorem` | [meromorphicTrailingCoeffAt_comp_add_const_eq_meromorphicTrailingCoeffAt](../../../../../mathematics/Analysis/ComplexAnalysis/TrailingCoefficient/Variantfa22b9560abead90f007bc3e01fa4596d5d20132c7ecdeb841b7614335853147.lean/declarations/meromorphictrailingcoeffat-comp-add-const-eq-meromorphictrailingcoeffat--b9b776df0c4dd42e0ad57462.md) | 543 | `result-track:b9b776df0c4dd42e0ad574622c707e194901ef6d573a02706ae7156349b72d1f` |
| 36 | `theorem` | [meromorphicTrailingCoeffAt_comp_sub_const_eq_meromorphicTrailingCoeffAt](../../../../../mathematics/Analysis/ComplexAnalysis/TrailingCoefficient/Variantfa22b9560abead90f007bc3e01fa4596d5d20132c7ecdeb841b7614335853147.lean/declarations/meromorphictrailingcoeffat-comp-sub-const-eq-meromorphictrailingcoeffat--b94f0b072ed1f8bb7ddf38cd.md) | 554 | `result-track:b94f0b072ed1f8bb7ddf38cd243108241a003c5f6a597ab634e9057b4af25f97` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
