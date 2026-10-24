# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Tail.Variant04a0397d4c765e873747598e5aa9ab9ad7cc445f7fd0e63909e3e472d30e8329

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aeeed052f300b43537382b09eeef04f0a8dcb49a",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Tail/Variant04a0397d4c765e873747598e5aa9ab9ad7cc445f7fd0e63909e3e472d30e8329.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant04a0397d4c765e873747598e5aa9ab9ad7cc445f7fd0e63909e3e472d30e8329.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant04a0397d4c765e873747598e5aa9ab9ad7cc445f7fd0e63909e3e472d30e8329.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aeeed052f300b43537382b09eeef04f0a8dcb49a`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Tail/Variant04a0397d4c765e873747598e5aa9ab9ad7cc445f7fd0e63909e3e472d30e8329.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Tail/Variant04a0397d4c765e873747598e5aa9ab9ad7cc445f7fd0e63909e3e472d30e8329.lean.json)

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
| 1 | `def` | [theta0](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant04a0397d4c765e873747598e5aa9ab9ad7cc445f7fd0e63909e3e472d30e8329.lean/declarations/theta0--f2f94917a4c95cbf439e67a6.md) | 65 | `declaration-track:f2f94917a4c95cbf439e67a6f3a9bba6042c9009cfc1c6a174c5bb9e4b480be8` |
| 2 | `lemma` | [theta0_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant04a0397d4c765e873747598e5aa9ab9ad7cc445f7fd0e63909e3e472d30e8329.lean/declarations/theta0-nonneg--bce982db43961dbdddf3a543.md) | 67 | `result-track:bce982db43961dbdddf3a54397b1ed2f252fbacfb6cc5b1edaefa435d6d870b2` |
| 3 | `lemma` | [log_four_mul_le_two_mul_l](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant04a0397d4c765e873747598e5aa9ab9ad7cc445f7fd0e63909e3e472d30e8329.lean/declarations/log-four-mul-le-two-mul-l--12fef1cfc5253f64e2443dc6.md) | 73 | `result-track:12fef1cfc5253f64e2443dc6effeb124dd4cf127dcd144139c92c1d97292e370` |
| 4 | `theorem` | [theta0_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant04a0397d4c765e873747598e5aa9ab9ad7cc445f7fd0e63909e3e472d30e8329.lean/declarations/theta0-le--46760f680bac982315a32e05.md) | 90 | `result-track:46760f680bac982315a32e05993185bddb6bfe3703d094a56da37c8f3625f161` |
| 5 | `theorem` | [LocalCount.ofWindowCount](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant04a0397d4c765e873747598e5aa9ab9ad7cc445f7fd0e63909e3e472d30e8329.lean/declarations/localcount-ofwindowcount--4c8d25ecb8c4fc33fd9b30f5.md) | 127 | `result-track:4c8d25ecb8c4fc33fd9b30f596b05605f90d4b1f6ab0e1bbe2c28bcad729e4e4` |
| 6 | `def` | [uvec](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant04a0397d4c765e873747598e5aa9ab9ad7cc445f7fd0e63909e3e472d30e8329.lean/declarations/uvec--49c384cafb3fa806114c4272.md) | 154 | `declaration-track:49c384cafb3fa806114c4272c1022ea6f53577945f49329077ac6e527f1b45d5` |
| 7 | `lemma` | [Gsummand_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant04a0397d4c765e873747598e5aa9ab9ad7cc445f7fd0e63909e3e472d30e8329.lean/declarations/gsummand-eq--98f83da743612c3d76622ef9.md) | 156 | `result-track:98f83da743612c3d76622ef997f4d4ef4964513dee24c6d72a9a95fc8bfdcd61` |
| 8 | `lemma` | [gammaOf_sub_ofReal](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant04a0397d4c765e873747598e5aa9ab9ad7cc445f7fd0e63909e3e472d30e8329.lean/declarations/gammaof-sub-ofreal--9f0cae5e47cf9e46c5cf10f9.md) | 160 | `result-track:9f0cae5e47cf9e46c5cf10f950f2791db57b9e9af94db02e8d07b578a86e5637` |
| 9 | `lemma` | [tau_fin](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant04a0397d4c765e873747598e5aa9ab9ad7cc445f7fd0e63909e3e472d30e8329.lean/declarations/tau-fin--217e5031c9351d3fe89a5f3f.md) | 167 | `result-track:217e5031c9351d3fe89a5f3fe4a8e6bbc456dceb6502fe38eb2ef1cee1ad1d29` |
| 10 | `lemma` | [d_mul_hgrid_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant04a0397d4c765e873747598e5aa9ab9ad7cc445f7fd0e63909e3e472d30e8329.lean/declarations/d-mul-hgrid-le--22aecfbc5fc4966b53a48f00.md) | 171 | `result-track:22aecfbc5fc4966b53a48f003d0a7d70c26556366d89266f055ebc698e3b06e7` |
| 11 | `lemma` | [tau_mem](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant04a0397d4c765e873747598e5aa9ab9ad7cc445f7fd0e63909e3e472d30e8329.lean/declarations/tau-mem--8aa571cc7c0b06a2d65f13f7.md) | 181 | `result-track:8aa571cc7c0b06a2d65f13f75d049e0da69532c9fac6261d9bdd79ac21279c22` |
| 12 | `lemma` | [norm_uvec_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant04a0397d4c765e873747598e5aa9ab9ad7cc445f7fd0e63909e3e472d30e8329.lean/declarations/norm-uvec-le--b183c061c15f7735e0071caa.md) | 198 | `result-track:b183c061c15f7735e0071caae13af626df3b736ef9142325c44bd2e4fc5db796` |
| 13 | `lemma` | [norm_sq_uvec_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant04a0397d4c765e873747598e5aa9ab9ad7cc445f7fd0e63909e3e472d30e8329.lean/declarations/norm-sq-uvec-le--92addd89bef30bf6e8d1a5ef.md) | 238 | `result-track:92addd89bef30bf6e8d1a5ef0d21f8b9a8b9afd15aea81eb2d6b9e9afe943774` |
| 14 | `structure` | [TailHyp](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant04a0397d4c765e873747598e5aa9ab9ad7cc445f7fd0e63909e3e472d30e8329.lean/declarations/tailhyp--f8085566f2b10e5ba0d4a722.md) | 280 | `declaration-track:f8085566f2b10e5ba0d4a722bd529f4aa15ba1afc2246d55dc5c007c4acfabf6` |
| 15 | `lemma` | [finite_notTail](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant04a0397d4c765e873747598e5aa9ab9ad7cc445f7fd0e63909e3e472d30e8329.lean/declarations/finite-nottail--f037793eaef5e8f9fdf93161.md) | 293 | `result-track:f037793eaef5e8f9fdf9316186240d16c8ae5dd177f520a3781ee3d8f1e93250` |
| 16 | `lemma` | [T_pos](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant04a0397d4c765e873747598e5aa9ab9ad7cc445f7fd0e63909e3e472d30e8329.lean/declarations/t-pos--d23bbebb533bfa190d0113c5.md) | 306 | `result-track:d23bbebb533bfa190d0113c51fbe92be03183c6308aa172eb06254f94d4c48c1` |
| 17 | `lemma` | [L_pos](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant04a0397d4c765e873747598e5aa9ab9ad7cc445f7fd0e63909e3e472d30e8329.lean/declarations/l-pos--d70d3b3a6f988e1d833c590a.md) | 307 | `result-track:d70d3b3a6f988e1d833c590a81d876e9587fe36bf0056a641af4cebd613d4e8d` |
| 18 | `lemma` | [A₀_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant04a0397d4c765e873747598e5aa9ab9ad7cc445f7fd0e63909e3e472d30e8329.lean/declarations/a-nonneg--71e5e95b71c874b70e4f8226.md) | 308 | `result-track:71e5e95b71c874b70e4f822644a2153910b4b228160941240b9f85bec05179dc` |
| 19 | `def` | [sA](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant04a0397d4c765e873747598e5aa9ab9ad7cc445f7fd0e63909e3e472d30e8329.lean/declarations/sa--faf287d81a7aaae137042558.md) | 311 | `declaration-track:faf287d81a7aaae1370425583592ed8386cb6f5f6c2cd87d28fce3f3c76051db` |
| 20 | `lemma` | [not_mem_sA_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant04a0397d4c765e873747598e5aa9ab9ad7cc445f7fd0e63909e3e472d30e8329.lean/declarations/not-mem-sa-iff--cfaa964a3e4488f934b43d91.md) | 313 | `result-track:cfaa964a3e4488f934b43d91c45182f860a0ff5f400ff7ba43be3e12de2ed8c7` |
| 21 | `def` | [K](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant04a0397d4c765e873747598e5aa9ab9ad7cc445f7fd0e63909e3e472d30e8329.lean/declarations/k--41ac847ec1765a4ef659015c.md) | 317 | `declaration-track:41ac847ec1765a4ef659015c4f5bc2f1c909253784f879e636822c0a00e91153` |
| 22 | `lemma` | [K_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant04a0397d4c765e873747598e5aa9ab9ad7cc445f7fd0e63909e3e472d30e8329.lean/declarations/k-nonneg--3f8c67c366cb579834294a86.md) | 319 | `result-track:3f8c67c366cb579834294a86fb0051001aac9b0c29ed10f9688b9c342c937cf7` |
| 23 | `lemma` | [partial_sum_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant04a0397d4c765e873747598e5aa9ab9ad7cc445f7fd0e63909e3e472d30e8329.lean/declarations/partial-sum-le--10c388bdeb5d208c5d255d68.md) | 323 | `result-track:10c388bdeb5d208c5d255d68fb441196e264e6ea151d99996e8450a327c4c2cf` |
| 24 | `lemma` | [summable_tail](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant04a0397d4c765e873747598e5aa9ab9ad7cc445f7fd0e63909e3e472d30e8329.lean/declarations/summable-tail--b71dc467775b3eaadde32788.md) | 358 | `result-track:b71dc467775b3eaadde3278814f2a2e8987a13708b4c27f0d5aff6afcba7ebaa` |
| 25 | `lemma` | [tsum_tail_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant04a0397d4c765e873747598e5aa9ab9ad7cc445f7fd0e63909e3e472d30e8329.lean/declarations/tsum-tail-le--df9b5eaf55bf21c7bfe168f6.md) | 364 | `result-track:df9b5eaf55bf21c7bfe168f6c4917877063e3527b71a940d02a5389d6d7b1f8f` |
| 26 | `lemma` | [summable_Gsummand](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant04a0397d4c765e873747598e5aa9ab9ad7cc445f7fd0e63909e3e472d30e8329.lean/declarations/summable-gsummand--fd49aa4b4b205573f70f67be.md) | 373 | `result-track:fd49aa4b4b205573f70f67bee40bf90d0c3e9e7f89c8e98104927430c75e2331` |
| 27 | `lemma` | [Az_eq_sum](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant04a0397d4c765e873747598e5aa9ab9ad7cc445f7fd0e63909e3e472d30e8329.lean/declarations/az-eq-sum--e9f877fc6c7f8fb663d25be8.md) | 389 | `result-track:e9f877fc6c7f8fb663d25be8ac669a554ca1799b6d495de3d7e10538889d44d1` |
| 28 | `theorem` | [hasSum_Ez](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant04a0397d4c765e873747598e5aa9ab9ad7cc445f7fd0e63909e3e472d30e8329.lean/declarations/hassum-ez--effc6f9a601e0d48b44316f9.md) | 414 | `result-track:effc6f9a601e0d48b44316f910f7a2fa810b7f50fb47d7d47f14951c73b48602` |
| 29 | `theorem` | [traceNorm_smul_Ez_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant04a0397d4c765e873747598e5aa9ab9ad7cc445f7fd0e63909e3e472d30e8329.lean/declarations/tracenorm-smul-ez-le--cadb2b9e53e36d668f4c2aad.md) | 431 | `result-track:cadb2b9e53e36d668f4c2aad2bf02be1259867d0a8c52d3fdcac578bbfea86e8` |
| 30 | `theorem` | [prop_tail](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant04a0397d4c765e873747598e5aa9ab9ad7cc445f7fd0e63909e3e472d30e8329.lean/declarations/prop-tail--6ce1da9aa0312ab7509b737c.md) | 458 | `result-track:6ce1da9aa0312ab7509b737cf965b75d1961fcf5848f21baa12330dd0d728ee0` |
| 31 | `lemma` | [reflect_im](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant04a0397d4c765e873747598e5aa9ab9ad7cc445f7fd0e63909e3e472d30e8329.lean/declarations/reflect-im--7212e94133125e151d2170d6.md) | 497 | `result-track:7212e94133125e151d2170d65d306019b79ee4355f69315ac4e9f5aca6bec3ed` |
| 32 | `lemma` | [reflect_reflect](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant04a0397d4c765e873747598e5aa9ab9ad7cc445f7fd0e63909e3e472d30e8329.lean/declarations/reflect-reflect--f2efa9acbac2dc58ed2abbf0.md) | 499 | `result-track:f2efa9acbac2dc58ed2abbf09f7baa532f3efd9e12c2ce9114f577086d044e1c` |
| 33 | `lemma` | [gammaOf_reflect](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant04a0397d4c765e873747598e5aa9ab9ad7cc445f7fd0e63909e3e472d30e8329.lean/declarations/gammaof-reflect--44e2081cecedbf83c8b49fe7.md) | 501 | `result-track:44e2081cecedbf83c8b49fe78f8e2412bc3ac264877f2f0a8d6a3a96158cced8` |
| 34 | `lemma` | [uvec_reflect](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant04a0397d4c765e873747598e5aa9ab9ad7cc445f7fd0e63909e3e472d30e8329.lean/declarations/uvec-reflect--40a11b7e5dcf0e613fe4e30b.md) | 508 | `result-track:40a11b7e5dcf0e613fe4e30bffb36ce3eefbdadba4c87d729593017c919639f7` |
| 35 | `theorem` | [TailHyp.Ez_isHermitian](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant04a0397d4c765e873747598e5aa9ab9ad7cc445f7fd0e63909e3e472d30e8329.lean/declarations/tailhyp-ez-ishermitian--36d6a09cad9a900dd8b50a76.md) | 518 | `result-track:36d6a09cad9a900dd8b50a76730818496aabdba658fc6442103a05a62f4d2416` |
| 36 | `lemma` | [isHermitian_real_smul](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant04a0397d4c765e873747598e5aa9ab9ad7cc445f7fd0e63909e3e472d30e8329.lean/declarations/ishermitian-real-smul--bed835336be44a454f9d0fd6.md) | 555 | `result-track:bed835336be44a454f9d0fd654792ea25d1e21f03cdd53f8c4d24b2ed65a1ffb` |
| 37 | `lemma` | [TailHyp.tilde_Ez_isHermitian](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant04a0397d4c765e873747598e5aa9ab9ad7cc445f7fd0e63909e3e472d30e8329.lean/declarations/tailhyp-tilde-ez-ishermitian--f9164897efb18d743f051331.md) | 561 | `result-track:f9164897efb18d743f051331c15964eb0af50da3ef763cba9259552986181763` |
| 38 | `lemma` | [TailHyp.hat_Ez_isHermitian](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant04a0397d4c765e873747598e5aa9ab9ad7cc445f7fd0e63909e3e472d30e8329.lean/declarations/tailhyp-hat-ez-ishermitian--f6732a3027c64a3c13790e92.md) | 567 | `result-track:f6732a3027c64a3c13790e9293cfe84f9ee5addab32a36f2ffc3165ebec0efea` |
| 39 | `theorem` | [TailHyp.tailInputs](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant04a0397d4c765e873747598e5aa9ab9ad7cc445f7fd0e63909e3e472d30e8329.lean/declarations/tailhyp-tailinputs--b2cd7d05e225e0db79b98735.md) | 587 | `result-track:b2cd7d05e225e0db79b987359aed13779481616b358cc45157cfd2d3b1a52ce8` |
| 40 | `theorem` | [NII_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant04a0397d4c765e873747598e5aa9ab9ad7cc445f7fd0e63909e3e472d30e8329.lean/declarations/nii-le--3998931af9463ef04add99ea.md) | 601 | `result-track:3998931af9463ef04add99ea2403127b854e2a5807341c86e7459cf5ffdfca04` |
| 41 | `lemma` | [tendsto_L_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant04a0397d4c765e873747598e5aa9ab9ad7cc445f7fd0e63909e3e472d30e8329.lean/declarations/tendsto-l-attop--63421724d9edb5212773e19f.md) | 649 | `result-track:63421724d9edb5212773e19f929f6a6bec2eb661b6973ae2782122b2d2b08b2c` |
| 42 | `theorem` | [eventually_tailInputs](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant04a0397d4c765e873747598e5aa9ab9ad7cc445f7fd0e63909e3e472d30e8329.lean/declarations/eventually-tailinputs--006fbd58ed68696c309a96b6.md) | 659 | `result-track:006fbd58ed68696c309a96b637d33d0b0f1acd7da80da74af3ce1a635c9f392d` |
| 43 | `theorem` | [eventually_theta0_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant04a0397d4c765e873747598e5aa9ab9ad7cc445f7fd0e63909e3e472d30e8329.lean/declarations/eventually-theta0-le--02d0d405b7c78224dfb5e902.md) | 676 | `result-track:02d0d405b7c78224dfb5e9025fecc01167bfe4b92d6916c70de809c068c9e927` |
| 44 | `theorem` | [eventually_NII_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant04a0397d4c765e873747598e5aa9ab9ad7cc445f7fd0e63909e3e472d30e8329.lean/declarations/eventually-nii-le--7fd8c5eda71e711c9b7344fc.md) | 685 | `result-track:7fd8c5eda71e711c9b7344fca999fb112e801ea26f9df19733825469fc69cca9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
