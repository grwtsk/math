# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Tail.Variant3b189de1bec9e254e13b821d1596d430d47f115e1206b23f31a58d16656f1815

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b4d913b40612a2af4d950b0c83ce59cb7d7a0ff3",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Tail/Variant3b189de1bec9e254e13b821d1596d430d47f115e1206b23f31a58d16656f1815.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant3b189de1bec9e254e13b821d1596d430d47f115e1206b23f31a58d16656f1815.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant3b189de1bec9e254e13b821d1596d430d47f115e1206b23f31a58d16656f1815.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b4d913b40612a2af4d950b0c83ce59cb7d7a0ff3`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Tail/Variant3b189de1bec9e254e13b821d1596d430d47f115e1206b23f31a58d16656f1815.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Tail/Variant3b189de1bec9e254e13b821d1596d430d47f115e1206b23f31a58d16656f1815.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.Defs` — import line 34; external provider; requires a separately pinned dependency.
- `Zeta23.Assembly.Inputs` — import line 35; external provider; requires a separately pinned dependency.
- `Zeta23.Tail.Basic` — import line 36; external provider; requires a separately pinned dependency.
- `Zeta23.Tail.Grid` — import line 37; external provider; requires a separately pinned dependency.
- `Zeta23.Tail.Count` — import line 38; external provider; requires a separately pinned dependency.
- `Zeta23.Tail.RankOne` — import line 39; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.Matrix` — import line 40; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.AtTopBot.Field` — import line 41; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [theta0](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant3b189de1bec9e254e13b821d1596d430d47f115e1206b23f31a58d16656f1815.lean/declarations/theta0--e1318c42da59375ea20d772e.md) | 57 | `declaration-track:e1318c42da59375ea20d772eb488fe53a0126bf976a6de9ba1d8848ac6136122` |
| 2 | `lemma` | [theta0_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant3b189de1bec9e254e13b821d1596d430d47f115e1206b23f31a58d16656f1815.lean/declarations/theta0-nonneg--95faa2cf6ae829337641ff55.md) | 59 | `result-track:95faa2cf6ae829337641ff5549df8d2098a903ac785ede57293979a2feb2564a` |
| 3 | `lemma` | [log_four_mul_le_two_mul_l](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant3b189de1bec9e254e13b821d1596d430d47f115e1206b23f31a58d16656f1815.lean/declarations/log-four-mul-le-two-mul-l--6e5ef706770815af5d972303.md) | 65 | `result-track:6e5ef706770815af5d97230390cb9b79c7700c039891f2c06649835da47ed1b2` |
| 4 | `theorem` | [theta0_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant3b189de1bec9e254e13b821d1596d430d47f115e1206b23f31a58d16656f1815.lean/declarations/theta0-le--2e6aff04ffd9a2ffd8ed35e8.md) | 82 | `result-track:2e6aff04ffd9a2ffd8ed35e84c5f48ef26baf159df2353e6642785a6949e3d67` |
| 5 | `theorem` | [LocalCount.ofWindowCount](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant3b189de1bec9e254e13b821d1596d430d47f115e1206b23f31a58d16656f1815.lean/declarations/localcount-ofwindowcount--04ce7804692d2214f76a2b1c.md) | 119 | `result-track:04ce7804692d2214f76a2b1c0b4cfb0a8a3469412a63e643e8b599cc0b5bec91` |
| 6 | `def` | [uvec](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant3b189de1bec9e254e13b821d1596d430d47f115e1206b23f31a58d16656f1815.lean/declarations/uvec--486b4d4d3c7851cc50ae6374.md) | 146 | `declaration-track:486b4d4d3c7851cc50ae63745adfc61b3ebc25f1e3542fe7e0b3cd8c7bd2a352` |
| 7 | `lemma` | [Gsummand_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant3b189de1bec9e254e13b821d1596d430d47f115e1206b23f31a58d16656f1815.lean/declarations/gsummand-eq--97ee6ffc899d94d84a9c97af.md) | 148 | `result-track:97ee6ffc899d94d84a9c97af0085fcb866844f2a952724e5e2b0caec106cc4fb` |
| 8 | `lemma` | [gammaOf_sub_ofReal](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant3b189de1bec9e254e13b821d1596d430d47f115e1206b23f31a58d16656f1815.lean/declarations/gammaof-sub-ofreal--3855e1c1246a02f093922952.md) | 152 | `result-track:3855e1c1246a02f0939229522f5c242a6ab2d4f6dea40cf8e35cf0181fe5e9bd` |
| 9 | `lemma` | [tau_fin](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant3b189de1bec9e254e13b821d1596d430d47f115e1206b23f31a58d16656f1815.lean/declarations/tau-fin--5bc6653860a1d7d16ccb9e92.md) | 159 | `result-track:5bc6653860a1d7d16ccb9e92aa883499cb25676e25f17261048de41b2f729594` |
| 10 | `lemma` | [d_mul_hgrid_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant3b189de1bec9e254e13b821d1596d430d47f115e1206b23f31a58d16656f1815.lean/declarations/d-mul-hgrid-le--55866bf5a017a289434b48b5.md) | 163 | `result-track:55866bf5a017a289434b48b56c32a3692a93afb3c242ec5fa1e50fc7951de19d` |
| 11 | `lemma` | [tau_mem](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant3b189de1bec9e254e13b821d1596d430d47f115e1206b23f31a58d16656f1815.lean/declarations/tau-mem--acff73efcde868a167412238.md) | 173 | `result-track:acff73efcde868a167412238d64b96fad00acd545449c218da656946844ec7ec` |
| 12 | `lemma` | [norm_uvec_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant3b189de1bec9e254e13b821d1596d430d47f115e1206b23f31a58d16656f1815.lean/declarations/norm-uvec-le--730898805b380840dd36b23e.md) | 190 | `result-track:730898805b380840dd36b23e990cc6e7ab569149eb176de319912004ab12d670` |
| 13 | `lemma` | [norm_sq_uvec_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant3b189de1bec9e254e13b821d1596d430d47f115e1206b23f31a58d16656f1815.lean/declarations/norm-sq-uvec-le--c33df7258ad7d03aa33be2ed.md) | 230 | `result-track:c33df7258ad7d03aa33be2ed0e8111b0c216733620c62c7f557ecbd6a2341463` |
| 14 | `structure` | [TailHyp](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant3b189de1bec9e254e13b821d1596d430d47f115e1206b23f31a58d16656f1815.lean/declarations/tailhyp--ace43be88f583596d6cf5546.md) | 272 | `declaration-track:ace43be88f583596d6cf554664dff8f6c6fc67188ba7682fb1feece77cef339b` |
| 15 | `lemma` | [finite_notTail](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant3b189de1bec9e254e13b821d1596d430d47f115e1206b23f31a58d16656f1815.lean/declarations/finite-nottail--0b435b68d8eee587ddfb9c36.md) | 285 | `result-track:0b435b68d8eee587ddfb9c3601a3331b649ef3ba5728cd1128205cb9323ae505` |
| 16 | `lemma` | [T_pos](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant3b189de1bec9e254e13b821d1596d430d47f115e1206b23f31a58d16656f1815.lean/declarations/t-pos--d332e08a5ec46983561bd579.md) | 298 | `result-track:d332e08a5ec46983561bd5792619cbce3199293940a3353922f192cd318f336a` |
| 17 | `lemma` | [L_pos](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant3b189de1bec9e254e13b821d1596d430d47f115e1206b23f31a58d16656f1815.lean/declarations/l-pos--62affcf5b64cc88d208a0e7f.md) | 299 | `result-track:62affcf5b64cc88d208a0e7ff86419755516d35a00a001b4ea674f47e29db6af` |
| 18 | `lemma` | [A₀_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant3b189de1bec9e254e13b821d1596d430d47f115e1206b23f31a58d16656f1815.lean/declarations/a-nonneg--a8e5ee1ffea5dab15d818103.md) | 300 | `result-track:a8e5ee1ffea5dab15d818103fe977547e1df90e158cb9786fdbadac120a7dd55` |
| 19 | `def` | [sA](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant3b189de1bec9e254e13b821d1596d430d47f115e1206b23f31a58d16656f1815.lean/declarations/sa--b922f3cf1f6eeb7498655c82.md) | 303 | `declaration-track:b922f3cf1f6eeb7498655c82d8a3a67429a1192190e385d1f2388d4fcdb833e6` |
| 20 | `lemma` | [not_mem_sA_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant3b189de1bec9e254e13b821d1596d430d47f115e1206b23f31a58d16656f1815.lean/declarations/not-mem-sa-iff--d89fdb906fbc5ab19cc1f6ee.md) | 305 | `result-track:d89fdb906fbc5ab19cc1f6ee1620bb1c35d385e166d14495095130e08c0756ca` |
| 21 | `def` | [K](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant3b189de1bec9e254e13b821d1596d430d47f115e1206b23f31a58d16656f1815.lean/declarations/k--5a6d5953111086c530546a48.md) | 309 | `declaration-track:5a6d5953111086c530546a480ba1a2dd3a1de05484bd9ca44f43ac3f7a13dca1` |
| 22 | `lemma` | [K_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant3b189de1bec9e254e13b821d1596d430d47f115e1206b23f31a58d16656f1815.lean/declarations/k-nonneg--ec9ff06b350f96a5e0621f1d.md) | 311 | `result-track:ec9ff06b350f96a5e0621f1dc512e118d74903f6f35f155e089dc3beed356864` |
| 23 | `lemma` | [partial_sum_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant3b189de1bec9e254e13b821d1596d430d47f115e1206b23f31a58d16656f1815.lean/declarations/partial-sum-le--abc02070e2cfeb6fd0934a3e.md) | 315 | `result-track:abc02070e2cfeb6fd0934a3eec1d8143514416985334bfa4f7253aec27a3b05d` |
| 24 | `lemma` | [summable_tail](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant3b189de1bec9e254e13b821d1596d430d47f115e1206b23f31a58d16656f1815.lean/declarations/summable-tail--e5b7a0bdcfc4f8ae0ab34934.md) | 350 | `result-track:e5b7a0bdcfc4f8ae0ab349344e2c02f975257e78e9d21ffb1ee045dd5bb1eabe` |
| 25 | `lemma` | [tsum_tail_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant3b189de1bec9e254e13b821d1596d430d47f115e1206b23f31a58d16656f1815.lean/declarations/tsum-tail-le--31c71f5764b683badf31638c.md) | 356 | `result-track:31c71f5764b683badf31638c87f25c3d36a6a13fca2cb2cfa5b5f7ecf01d63c3` |
| 26 | `lemma` | [summable_Gsummand](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant3b189de1bec9e254e13b821d1596d430d47f115e1206b23f31a58d16656f1815.lean/declarations/summable-gsummand--0a3a39d9f65d057666aafee1.md) | 365 | `result-track:0a3a39d9f65d057666aafee137c69edbe1509791f95fb202b31f3c82ef648b1b` |
| 27 | `lemma` | [Az_eq_sum](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant3b189de1bec9e254e13b821d1596d430d47f115e1206b23f31a58d16656f1815.lean/declarations/az-eq-sum--eaaf9e4e8dd977166b9195bf.md) | 381 | `result-track:eaaf9e4e8dd977166b9195bf97f831f014d8dcb3237be5bbdb2ab4ce8adc4a1e` |
| 28 | `theorem` | [hasSum_Ez](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant3b189de1bec9e254e13b821d1596d430d47f115e1206b23f31a58d16656f1815.lean/declarations/hassum-ez--492464642c16a8e2c8850ae4.md) | 406 | `result-track:492464642c16a8e2c8850ae4188baf5251aa92565dfe01a15597370c6554c7e4` |
| 29 | `theorem` | [traceNorm_smul_Ez_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant3b189de1bec9e254e13b821d1596d430d47f115e1206b23f31a58d16656f1815.lean/declarations/tracenorm-smul-ez-le--185f0aeb9e8718b47a270cf2.md) | 423 | `result-track:185f0aeb9e8718b47a270cf2d8070a28f779105d853d5ada50263f50a4dd8e1a` |
| 30 | `theorem` | [prop_tail](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant3b189de1bec9e254e13b821d1596d430d47f115e1206b23f31a58d16656f1815.lean/declarations/prop-tail--97e1d599028476c5db72ed49.md) | 450 | `result-track:97e1d599028476c5db72ed49808177191cd6aa02ecdf252a856d65318df74552` |
| 31 | `lemma` | [reflect_im](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant3b189de1bec9e254e13b821d1596d430d47f115e1206b23f31a58d16656f1815.lean/declarations/reflect-im--a97b5da4e621df74747fc5c2.md) | 489 | `result-track:a97b5da4e621df74747fc5c2d4676409bbb60b3e4f555e873a57941c0581e70c` |
| 32 | `lemma` | [reflect_reflect](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant3b189de1bec9e254e13b821d1596d430d47f115e1206b23f31a58d16656f1815.lean/declarations/reflect-reflect--569997e23e9c03cf2b9559e0.md) | 491 | `result-track:569997e23e9c03cf2b9559e0ed3bc0c109718e154aa834b01b158db5eb81cd54` |
| 33 | `lemma` | [gammaOf_reflect](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant3b189de1bec9e254e13b821d1596d430d47f115e1206b23f31a58d16656f1815.lean/declarations/gammaof-reflect--2510084114a7f438e6ac5a4a.md) | 493 | `result-track:2510084114a7f438e6ac5a4ab74da4c1fcbfb76b79587e9ad5818ca66f108b0b` |
| 34 | `lemma` | [uvec_reflect](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant3b189de1bec9e254e13b821d1596d430d47f115e1206b23f31a58d16656f1815.lean/declarations/uvec-reflect--fe474b3d2d54e7a04da4fab3.md) | 500 | `result-track:fe474b3d2d54e7a04da4fab30ab15aaa8c58b2e100207bc35eb437f59634ba30` |
| 35 | `theorem` | [TailHyp.Ez_isHermitian](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant3b189de1bec9e254e13b821d1596d430d47f115e1206b23f31a58d16656f1815.lean/declarations/tailhyp-ez-ishermitian--3208bcd9b809231623d45b03.md) | 510 | `result-track:3208bcd9b809231623d45b039436e0e914957bf52e56b1ee5e3765060d48787a` |
| 36 | `lemma` | [isHermitian_real_smul](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant3b189de1bec9e254e13b821d1596d430d47f115e1206b23f31a58d16656f1815.lean/declarations/ishermitian-real-smul--e948cbb487cfd9bb58141984.md) | 547 | `result-track:e948cbb487cfd9bb58141984d74483ec84582151339c1e433535ddd74d0d4944` |
| 37 | `lemma` | [TailHyp.tilde_Ez_isHermitian](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant3b189de1bec9e254e13b821d1596d430d47f115e1206b23f31a58d16656f1815.lean/declarations/tailhyp-tilde-ez-ishermitian--1b5cc722bc82f6e7d20c1a12.md) | 553 | `result-track:1b5cc722bc82f6e7d20c1a12abfa906af293424f884e39575d18ac7f34d792ce` |
| 38 | `lemma` | [TailHyp.hat_Ez_isHermitian](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant3b189de1bec9e254e13b821d1596d430d47f115e1206b23f31a58d16656f1815.lean/declarations/tailhyp-hat-ez-ishermitian--0848a186241f30e7be7fe07d.md) | 559 | `result-track:0848a186241f30e7be7fe07d442e64d1093da83c6fc0461bf7256dccdba593b9` |
| 39 | `theorem` | [TailHyp.tailInputs](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant3b189de1bec9e254e13b821d1596d430d47f115e1206b23f31a58d16656f1815.lean/declarations/tailhyp-tailinputs--fa0e0ca371325299576760a5.md) | 579 | `result-track:fa0e0ca371325299576760a5855d1e7ecaf87f98952aad25c2165d4af7f51ba1` |
| 40 | `theorem` | [NII_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant3b189de1bec9e254e13b821d1596d430d47f115e1206b23f31a58d16656f1815.lean/declarations/nii-le--09df6dcad0eab942164f98bb.md) | 593 | `result-track:09df6dcad0eab942164f98bbbb78a895691e063094a932b3fa231405f9328a89` |
| 41 | `lemma` | [tendsto_L_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant3b189de1bec9e254e13b821d1596d430d47f115e1206b23f31a58d16656f1815.lean/declarations/tendsto-l-attop--13c23c661197305c636e4114.md) | 641 | `result-track:13c23c661197305c636e4114fb09e4fc89dcad9b5a207e78a5851d60a5b964f7` |
| 42 | `theorem` | [eventually_tailInputs](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant3b189de1bec9e254e13b821d1596d430d47f115e1206b23f31a58d16656f1815.lean/declarations/eventually-tailinputs--cff12368bbe126c00dbd5204.md) | 651 | `result-track:cff12368bbe126c00dbd52044617125ec92b6d9e167eb34433f632970156964a` |
| 43 | `theorem` | [eventually_theta0_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant3b189de1bec9e254e13b821d1596d430d47f115e1206b23f31a58d16656f1815.lean/declarations/eventually-theta0-le--f78913b2d8b172b4ccce7b54.md) | 668 | `result-track:f78913b2d8b172b4ccce7b54a77784aa8a0f15185cd9d8c734d2fd2d9e4cbc8d` |
| 44 | `theorem` | [eventually_NII_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant3b189de1bec9e254e13b821d1596d430d47f115e1206b23f31a58d16656f1815.lean/declarations/eventually-nii-le--81a46cdcd37864cb02c23aa5.md) | 677 | `result-track:81a46cdcd37864cb02c23aa5b009058ec824214ae21a3bb7816eaa7cf58f2f5c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
