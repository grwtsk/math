# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Tail.Variant204950604152478e899858b7445220c21700e83b5ad3e38095e5aa7d40fa5485

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2b4f18d0facc79b76677a7ad506b0a698a7fc21b",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Tail/Variant204950604152478e899858b7445220c21700e83b5ad3e38095e5aa7d40fa5485.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant204950604152478e899858b7445220c21700e83b5ad3e38095e5aa7d40fa5485.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant204950604152478e899858b7445220c21700e83b5ad3e38095e5aa7d40fa5485.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2b4f18d0facc79b76677a7ad506b0a698a7fc21b`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Tail/Variant204950604152478e899858b7445220c21700e83b5ad3e38095e5aa7d40fa5485.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Tail/Variant204950604152478e899858b7445220c21700e83b5ad3e38095e5aa7d40fa5485.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.Defs` — import line 39; external provider; requires a separately pinned dependency.
- `Zeta23.Assembly.Inputs` — import line 40; external provider; requires a separately pinned dependency.
- `Zeta23.Tail.Basic` — import line 41; external provider; requires a separately pinned dependency.
- `Zeta23.Tail.Grid` — import line 42; external provider; requires a separately pinned dependency.
- `Zeta23.Tail.Count` — import line 43; external provider; requires a separately pinned dependency.
- `Zeta23.Tail.RankOne` — import line 44; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.Matrix` — import line 45; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.AtTopBot.Field` — import line 46; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [theta0](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant204950604152478e899858b7445220c21700e83b5ad3e38095e5aa7d40fa5485.lean/declarations/theta0--6ede22ea609be3867401d090.md) | 65 | `declaration-track:6ede22ea609be3867401d0907fc4787d5f4497e18694f2352aeb2d878ee6a9a9` |
| 2 | `lemma` | [theta0_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant204950604152478e899858b7445220c21700e83b5ad3e38095e5aa7d40fa5485.lean/declarations/theta0-nonneg--3735327f4c2c473bdb29ea5a.md) | 67 | `result-track:3735327f4c2c473bdb29ea5ac99d0df6eb5417b355d0b3dc776820ce2589d659` |
| 3 | `lemma` | [log_four_mul_le_two_mul_l](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant204950604152478e899858b7445220c21700e83b5ad3e38095e5aa7d40fa5485.lean/declarations/log-four-mul-le-two-mul-l--d74b86ded4e63f79c99f7b0e.md) | 73 | `result-track:d74b86ded4e63f79c99f7b0e8210e19c8d9a95b7bad9760993159fbee591b4ff` |
| 4 | `theorem` | [theta0_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant204950604152478e899858b7445220c21700e83b5ad3e38095e5aa7d40fa5485.lean/declarations/theta0-le--efd2b322b7bd63dd0095c7c5.md) | 90 | `result-track:efd2b322b7bd63dd0095c7c523988a3a9af6ca9db2ba5c30b9048ca4c386955b` |
| 5 | `theorem` | [LocalCount.ofWindowCount](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant204950604152478e899858b7445220c21700e83b5ad3e38095e5aa7d40fa5485.lean/declarations/localcount-ofwindowcount--e107975f0128ad07a91fd733.md) | 127 | `result-track:e107975f0128ad07a91fd733c0e31cd86b47360a003a7e7233d5ce7c73feb68b` |
| 6 | `def` | [uvec](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant204950604152478e899858b7445220c21700e83b5ad3e38095e5aa7d40fa5485.lean/declarations/uvec--4ee5b02198d654d17aa483c1.md) | 154 | `declaration-track:4ee5b02198d654d17aa483c1855f89bee360291e78764a3963dffaaaf6e52d9e` |
| 7 | `lemma` | [Gsummand_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant204950604152478e899858b7445220c21700e83b5ad3e38095e5aa7d40fa5485.lean/declarations/gsummand-eq--9ec2b81403de3b54b59e8dbf.md) | 156 | `result-track:9ec2b81403de3b54b59e8dbfbd2b7ef63bcd8ca29418bc8b325892537608876e` |
| 8 | `lemma` | [gammaOf_sub_ofReal](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant204950604152478e899858b7445220c21700e83b5ad3e38095e5aa7d40fa5485.lean/declarations/gammaof-sub-ofreal--62a2b7c91734344df3e7d78a.md) | 160 | `result-track:62a2b7c91734344df3e7d78aa891b62bd3ed97ee1106fa3d32433513613689fd` |
| 9 | `lemma` | [tau_fin](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant204950604152478e899858b7445220c21700e83b5ad3e38095e5aa7d40fa5485.lean/declarations/tau-fin--2de452a95959867743f2f7b2.md) | 167 | `result-track:2de452a95959867743f2f7b20d19d83cd99be5c1e26511299efa89bea305674f` |
| 10 | `lemma` | [d_mul_hgrid_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant204950604152478e899858b7445220c21700e83b5ad3e38095e5aa7d40fa5485.lean/declarations/d-mul-hgrid-le--8b78c2d9a495a594bb67b949.md) | 171 | `result-track:8b78c2d9a495a594bb67b9491e48702af3b3b5a48d5f8b90a5a6a61f586f8333` |
| 11 | `lemma` | [tau_mem](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant204950604152478e899858b7445220c21700e83b5ad3e38095e5aa7d40fa5485.lean/declarations/tau-mem--0d237273170a75dd9cd38cac.md) | 181 | `result-track:0d237273170a75dd9cd38cac4b4f2c703e3386a154f11c12d1c3cfdbf09bcebf` |
| 12 | `lemma` | [norm_uvec_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant204950604152478e899858b7445220c21700e83b5ad3e38095e5aa7d40fa5485.lean/declarations/norm-uvec-le--8579f249280da222c8cfac02.md) | 198 | `result-track:8579f249280da222c8cfac021d49167bacbfbd4ca7ce88a8502db05a6486da36` |
| 13 | `lemma` | [norm_sq_uvec_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant204950604152478e899858b7445220c21700e83b5ad3e38095e5aa7d40fa5485.lean/declarations/norm-sq-uvec-le--1911cf44959251dc440826f9.md) | 238 | `result-track:1911cf44959251dc440826f9132475ab0b05452f4668d2a23db561f172f052da` |
| 14 | `structure` | [TailHyp](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant204950604152478e899858b7445220c21700e83b5ad3e38095e5aa7d40fa5485.lean/declarations/tailhyp--fa59b4dea44a75f922c15030.md) | 280 | `declaration-track:fa59b4dea44a75f922c150300a2f8230c390df3390d4df34b51f33f546b96f4a` |
| 15 | `lemma` | [finite_notTail](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant204950604152478e899858b7445220c21700e83b5ad3e38095e5aa7d40fa5485.lean/declarations/finite-nottail--bc1c69a49ae849a8c58f8eb1.md) | 293 | `result-track:bc1c69a49ae849a8c58f8eb1bdbcede9338d3fa33925465305c87533b321656c` |
| 16 | `lemma` | [T_pos](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant204950604152478e899858b7445220c21700e83b5ad3e38095e5aa7d40fa5485.lean/declarations/t-pos--a052936a3adaf260d248d2db.md) | 306 | `result-track:a052936a3adaf260d248d2db4b8199c1345884fd7e15165cde405b5ac079c34c` |
| 17 | `lemma` | [L_pos](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant204950604152478e899858b7445220c21700e83b5ad3e38095e5aa7d40fa5485.lean/declarations/l-pos--b4483a1193654fe9947f9cb9.md) | 307 | `result-track:b4483a1193654fe9947f9cb95ffb75984cd000b22a1fb373006c78a242b4c531` |
| 18 | `lemma` | [A₀_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant204950604152478e899858b7445220c21700e83b5ad3e38095e5aa7d40fa5485.lean/declarations/a-nonneg--56503ac0abdd28ad4fa0ed47.md) | 308 | `result-track:56503ac0abdd28ad4fa0ed47bee6f270e1d687664e9ac2f47367ac53b599885d` |
| 19 | `def` | [sA](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant204950604152478e899858b7445220c21700e83b5ad3e38095e5aa7d40fa5485.lean/declarations/sa--41a6f4ea4bd717da61949914.md) | 311 | `declaration-track:41a6f4ea4bd717da61949914e893922768584957eb17e9df9c5215b31897d26e` |
| 20 | `lemma` | [not_mem_sA_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant204950604152478e899858b7445220c21700e83b5ad3e38095e5aa7d40fa5485.lean/declarations/not-mem-sa-iff--ada120f5254aebd2f195dfed.md) | 313 | `result-track:ada120f5254aebd2f195dfed6fbd3cdda43f7471f8f318e53e443c481fd1dd6e` |
| 21 | `def` | [K](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant204950604152478e899858b7445220c21700e83b5ad3e38095e5aa7d40fa5485.lean/declarations/k--a74c11eb6a1223fd841481c4.md) | 317 | `declaration-track:a74c11eb6a1223fd841481c4d62e77c352d8dae79ae4356fd5036fc2150081f1` |
| 22 | `lemma` | [K_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant204950604152478e899858b7445220c21700e83b5ad3e38095e5aa7d40fa5485.lean/declarations/k-nonneg--a601e597684eb915d96d5655.md) | 319 | `result-track:a601e597684eb915d96d56556efd673707b0919e0c56e76f403f1244da0cd87d` |
| 23 | `lemma` | [partial_sum_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant204950604152478e899858b7445220c21700e83b5ad3e38095e5aa7d40fa5485.lean/declarations/partial-sum-le--6944947f559711ea9e7f15ff.md) | 323 | `result-track:6944947f559711ea9e7f15ff1f69f77c2eb3c7da1f80b1723ad6fcd63f6b27c4` |
| 24 | `lemma` | [summable_tail](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant204950604152478e899858b7445220c21700e83b5ad3e38095e5aa7d40fa5485.lean/declarations/summable-tail--96f4416c6482fa6a59f0e823.md) | 358 | `result-track:96f4416c6482fa6a59f0e8237c77b236d32eb115ff2603ec99b6a0aaf365663d` |
| 25 | `lemma` | [tsum_tail_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant204950604152478e899858b7445220c21700e83b5ad3e38095e5aa7d40fa5485.lean/declarations/tsum-tail-le--bdbba5ae1622f4e915d4d49c.md) | 364 | `result-track:bdbba5ae1622f4e915d4d49c2915aa8a1ed017d01fe7160494ed50f17257e9e1` |
| 26 | `lemma` | [summable_Gsummand](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant204950604152478e899858b7445220c21700e83b5ad3e38095e5aa7d40fa5485.lean/declarations/summable-gsummand--94aeb93db863f67ea793c700.md) | 373 | `result-track:94aeb93db863f67ea793c700fc0a03f4f0a979eef2b86a93de0d9dbe34fbb776` |
| 27 | `lemma` | [Az_eq_sum](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant204950604152478e899858b7445220c21700e83b5ad3e38095e5aa7d40fa5485.lean/declarations/az-eq-sum--88bab1e6fee0bb4ca6490f92.md) | 389 | `result-track:88bab1e6fee0bb4ca6490f9275c64161e603907ff6195fad67da75290b5102e9` |
| 28 | `theorem` | [hasSum_Ez](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant204950604152478e899858b7445220c21700e83b5ad3e38095e5aa7d40fa5485.lean/declarations/hassum-ez--4a9b8205d38747bad15b59f3.md) | 414 | `result-track:4a9b8205d38747bad15b59f3d4e754b525fe4413950a55eb16265c913ec29ccb` |
| 29 | `theorem` | [traceNorm_smul_Ez_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant204950604152478e899858b7445220c21700e83b5ad3e38095e5aa7d40fa5485.lean/declarations/tracenorm-smul-ez-le--654ff95dc3accca5d1c7ca47.md) | 431 | `result-track:654ff95dc3accca5d1c7ca47e9b16b9529d8f3dfde33799bcb95e4df2ab00572` |
| 30 | `theorem` | [prop_tail](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant204950604152478e899858b7445220c21700e83b5ad3e38095e5aa7d40fa5485.lean/declarations/prop-tail--c6601fc804452b436229de44.md) | 458 | `result-track:c6601fc804452b436229de44277641894b739b3350077f91ab9b7d306df6459d` |
| 31 | `lemma` | [reflect_im](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant204950604152478e899858b7445220c21700e83b5ad3e38095e5aa7d40fa5485.lean/declarations/reflect-im--c6c496bd12462ae905587b51.md) | 497 | `result-track:c6c496bd12462ae905587b51034d46278dbef4ddee0fa62bfac673a65b2f4683` |
| 32 | `lemma` | [reflect_reflect](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant204950604152478e899858b7445220c21700e83b5ad3e38095e5aa7d40fa5485.lean/declarations/reflect-reflect--5226d5ebc2d806f435b3cc3b.md) | 499 | `result-track:5226d5ebc2d806f435b3cc3b3ea31b4341ff2cd1ab8bd54d01692925823fafeb` |
| 33 | `lemma` | [gammaOf_reflect](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant204950604152478e899858b7445220c21700e83b5ad3e38095e5aa7d40fa5485.lean/declarations/gammaof-reflect--896bdf83af36b701f5cf5490.md) | 501 | `result-track:896bdf83af36b701f5cf54903b4de8a50f58cd0619a5630d52ebaf86bd0154c6` |
| 34 | `lemma` | [uvec_reflect](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant204950604152478e899858b7445220c21700e83b5ad3e38095e5aa7d40fa5485.lean/declarations/uvec-reflect--4dcaf7fcabab03a86cd64fad.md) | 508 | `result-track:4dcaf7fcabab03a86cd64fade40b7caa76608df10bf54a56d5826e2d45fca5f1` |
| 35 | `theorem` | [TailHyp.Ez_isHermitian](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant204950604152478e899858b7445220c21700e83b5ad3e38095e5aa7d40fa5485.lean/declarations/tailhyp-ez-ishermitian--55b7d48686787c2d296bc840.md) | 518 | `result-track:55b7d48686787c2d296bc84039263a68aebe274e27542ba681b63dfdf3475017` |
| 36 | `lemma` | [isHermitian_real_smul](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant204950604152478e899858b7445220c21700e83b5ad3e38095e5aa7d40fa5485.lean/declarations/ishermitian-real-smul--2cf157fd326a76045a7976b8.md) | 555 | `result-track:2cf157fd326a76045a7976b804aa7e4f3155c0e81492dc83cde565d9821c0688` |
| 37 | `lemma` | [TailHyp.tilde_Ez_isHermitian](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant204950604152478e899858b7445220c21700e83b5ad3e38095e5aa7d40fa5485.lean/declarations/tailhyp-tilde-ez-ishermitian--77bef3c89941736a6b2b7862.md) | 561 | `result-track:77bef3c89941736a6b2b786211a48707bf2158625e3041e41adaa3cc2d3c8b92` |
| 38 | `lemma` | [TailHyp.hat_Ez_isHermitian](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant204950604152478e899858b7445220c21700e83b5ad3e38095e5aa7d40fa5485.lean/declarations/tailhyp-hat-ez-ishermitian--a9cbefe08f3420b48a853320.md) | 567 | `result-track:a9cbefe08f3420b48a8533209ff8f879028ed8f5da0c7bb1f5c962d09cc6f197` |
| 39 | `theorem` | [TailHyp.tailInputs](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant204950604152478e899858b7445220c21700e83b5ad3e38095e5aa7d40fa5485.lean/declarations/tailhyp-tailinputs--97ad14f93806272eee307b3b.md) | 587 | `result-track:97ad14f93806272eee307b3b875c0cd2d5f9518c32b7f1f0d8697ecbd7bcebb1` |
| 40 | `theorem` | [NII_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant204950604152478e899858b7445220c21700e83b5ad3e38095e5aa7d40fa5485.lean/declarations/nii-le--6856c6a0c91c5a7fb07761ca.md) | 601 | `result-track:6856c6a0c91c5a7fb07761ca56dec53e2dd4944e4b3b2eda39a6687f50f26f2e` |
| 41 | `lemma` | [tendsto_L_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant204950604152478e899858b7445220c21700e83b5ad3e38095e5aa7d40fa5485.lean/declarations/tendsto-l-attop--392abde6c263253f8c2a2859.md) | 649 | `result-track:392abde6c263253f8c2a2859092dfcb463324367d331861fcb43551457da2889` |
| 42 | `theorem` | [eventually_tailInputs](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant204950604152478e899858b7445220c21700e83b5ad3e38095e5aa7d40fa5485.lean/declarations/eventually-tailinputs--3a6ea74a944b9748714bf97e.md) | 659 | `result-track:3a6ea74a944b9748714bf97e7677e77f3dcb853061a53bb71dbdf779942b6d9d` |
| 43 | `theorem` | [eventually_theta0_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant204950604152478e899858b7445220c21700e83b5ad3e38095e5aa7d40fa5485.lean/declarations/eventually-theta0-le--9aef85d5bbd086b429639b6a.md) | 676 | `result-track:9aef85d5bbd086b429639b6ad40f0d7f232b9155978b08ecf8fa50ca21ae88c0` |
| 44 | `theorem` | [eventually_NII_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant204950604152478e899858b7445220c21700e83b5ad3e38095e5aa7d40fa5485.lean/declarations/eventually-nii-le--4e26308551584ee58090b7fa.md) | 685 | `result-track:4e26308551584ee58090b7fa8c9f952d220d214c15a1fbc3a903d1f6be750662` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
