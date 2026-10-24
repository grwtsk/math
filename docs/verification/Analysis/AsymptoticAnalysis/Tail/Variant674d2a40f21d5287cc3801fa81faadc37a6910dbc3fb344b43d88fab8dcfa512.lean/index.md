# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Tail.Variant674d2a40f21d5287cc3801fa81faadc37a6910dbc3fb344b43d88fab8dcfa512

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f16a23db0fa1f46fe9574b8968d63c6913836676",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Tail/Variant674d2a40f21d5287cc3801fa81faadc37a6910dbc3fb344b43d88fab8dcfa512.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant674d2a40f21d5287cc3801fa81faadc37a6910dbc3fb344b43d88fab8dcfa512.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant674d2a40f21d5287cc3801fa81faadc37a6910dbc3fb344b43d88fab8dcfa512.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f16a23db0fa1f46fe9574b8968d63c6913836676`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Tail/Variant674d2a40f21d5287cc3801fa81faadc37a6910dbc3fb344b43d88fab8dcfa512.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Tail/Variant674d2a40f21d5287cc3801fa81faadc37a6910dbc3fb344b43d88fab8dcfa512.lean.json)

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
| 1 | `def` | [theta0](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant674d2a40f21d5287cc3801fa81faadc37a6910dbc3fb344b43d88fab8dcfa512.lean/declarations/theta0--dcd590edf0973bc561db6b77.md) | 57 | `declaration-track:dcd590edf0973bc561db6b77b4c20f0e90d585af5de061c3c58fed9769c0dc3d` |
| 2 | `lemma` | [theta0_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant674d2a40f21d5287cc3801fa81faadc37a6910dbc3fb344b43d88fab8dcfa512.lean/declarations/theta0-nonneg--115a7dd60bee095ce99d1645.md) | 59 | `result-track:115a7dd60bee095ce99d16451805342793c049def49237594d4a0282e1a4652c` |
| 3 | `lemma` | [log_four_mul_le_two_mul_l](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant674d2a40f21d5287cc3801fa81faadc37a6910dbc3fb344b43d88fab8dcfa512.lean/declarations/log-four-mul-le-two-mul-l--fce9c86af1de7022f4a8607c.md) | 65 | `result-track:fce9c86af1de7022f4a8607cbca9296eb268d2c7bf7e7219666f0cee8ab005c8` |
| 4 | `theorem` | [theta0_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant674d2a40f21d5287cc3801fa81faadc37a6910dbc3fb344b43d88fab8dcfa512.lean/declarations/theta0-le--3568937e64640bc5608dab3d.md) | 82 | `result-track:3568937e64640bc5608dab3dc93c39a56febd2ef3d53ad5a9c7e3d47a26d909b` |
| 5 | `theorem` | [LocalCount.ofWindowCount](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant674d2a40f21d5287cc3801fa81faadc37a6910dbc3fb344b43d88fab8dcfa512.lean/declarations/localcount-ofwindowcount--9a57b4a7e0b4976c29efd3af.md) | 119 | `result-track:9a57b4a7e0b4976c29efd3afdc46e6ca24c15079d6037cc300d1d6d3e638c537` |
| 6 | `def` | [uvec](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant674d2a40f21d5287cc3801fa81faadc37a6910dbc3fb344b43d88fab8dcfa512.lean/declarations/uvec--7efaa5c9ef9d0f17530263f2.md) | 146 | `declaration-track:7efaa5c9ef9d0f17530263f243552368d371d426d01b0f3a7985769ac14123b2` |
| 7 | `lemma` | [Gsummand_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant674d2a40f21d5287cc3801fa81faadc37a6910dbc3fb344b43d88fab8dcfa512.lean/declarations/gsummand-eq--5717d17bb38199a903ab3c55.md) | 148 | `result-track:5717d17bb38199a903ab3c55717116dde7b289df6432b654a709e917de97f869` |
| 8 | `lemma` | [gammaOf_sub_ofReal](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant674d2a40f21d5287cc3801fa81faadc37a6910dbc3fb344b43d88fab8dcfa512.lean/declarations/gammaof-sub-ofreal--1b6772662dff486fe64cca99.md) | 152 | `result-track:1b6772662dff486fe64cca99aa0ce4428e3e8c1482d8053c320b3288a7b40100` |
| 9 | `lemma` | [tau_fin](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant674d2a40f21d5287cc3801fa81faadc37a6910dbc3fb344b43d88fab8dcfa512.lean/declarations/tau-fin--fb04d71e3a31322b54a25add.md) | 159 | `result-track:fb04d71e3a31322b54a25add3f0a01fd1f3faf3fc37986a530b2d6d182a70ba2` |
| 10 | `lemma` | [d_mul_hgrid_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant674d2a40f21d5287cc3801fa81faadc37a6910dbc3fb344b43d88fab8dcfa512.lean/declarations/d-mul-hgrid-le--a108f58066366cf128b1b095.md) | 163 | `result-track:a108f58066366cf128b1b0956fadd4e6ec67b7f5d95deed75df88403bae219d6` |
| 11 | `lemma` | [tau_mem](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant674d2a40f21d5287cc3801fa81faadc37a6910dbc3fb344b43d88fab8dcfa512.lean/declarations/tau-mem--1730a2d9c51728a58770f0e4.md) | 173 | `result-track:1730a2d9c51728a58770f0e4b41860f9085dae2b344af88a41656e5917a59b71` |
| 12 | `lemma` | [norm_uvec_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant674d2a40f21d5287cc3801fa81faadc37a6910dbc3fb344b43d88fab8dcfa512.lean/declarations/norm-uvec-le--f95aa0e45c3e00b9c2cd9d3a.md) | 190 | `result-track:f95aa0e45c3e00b9c2cd9d3ac015157ae943225cd08cf119148ca017dca25647` |
| 13 | `lemma` | [norm_sq_uvec_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant674d2a40f21d5287cc3801fa81faadc37a6910dbc3fb344b43d88fab8dcfa512.lean/declarations/norm-sq-uvec-le--6038482e4528e486d0725023.md) | 230 | `result-track:6038482e4528e486d0725023458541ee419ac8282f0e3ca905776198515a9e86` |
| 14 | `structure` | [TailHyp](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant674d2a40f21d5287cc3801fa81faadc37a6910dbc3fb344b43d88fab8dcfa512.lean/declarations/tailhyp--df293502aad6450a28d0b1a3.md) | 272 | `declaration-track:df293502aad6450a28d0b1a307abc52f6426aa4185f4080942601f16da1719d2` |
| 15 | `lemma` | [finite_notTail](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant674d2a40f21d5287cc3801fa81faadc37a6910dbc3fb344b43d88fab8dcfa512.lean/declarations/finite-nottail--9764df5c07c0aa16e6d3c20d.md) | 285 | `result-track:9764df5c07c0aa16e6d3c20da1eef2fe2194b1a8f6ad0a66565f70e8cb077aa6` |
| 16 | `lemma` | [T_pos](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant674d2a40f21d5287cc3801fa81faadc37a6910dbc3fb344b43d88fab8dcfa512.lean/declarations/t-pos--e1174867e7df88d292b1343a.md) | 298 | `result-track:e1174867e7df88d292b1343a1d4a21ee06e3764ba319b90ca5378ef9350d6db8` |
| 17 | `lemma` | [L_pos](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant674d2a40f21d5287cc3801fa81faadc37a6910dbc3fb344b43d88fab8dcfa512.lean/declarations/l-pos--073a223018afed76f622e02e.md) | 299 | `result-track:073a223018afed76f622e02eb8a7b2744e377beea91e2268fd3010f93fb4a2c2` |
| 18 | `lemma` | [A₀_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant674d2a40f21d5287cc3801fa81faadc37a6910dbc3fb344b43d88fab8dcfa512.lean/declarations/a-nonneg--86765d5261c2338f58659ae2.md) | 300 | `result-track:86765d5261c2338f58659ae26ba313ad4bd9f63bda1fb9c89b13e7452a3b4bbf` |
| 19 | `def` | [sA](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant674d2a40f21d5287cc3801fa81faadc37a6910dbc3fb344b43d88fab8dcfa512.lean/declarations/sa--c33f499b23eca7b7e727e0ea.md) | 303 | `declaration-track:c33f499b23eca7b7e727e0ea06a9103464a309d5dcb7774f9c9a8c81b11a2358` |
| 20 | `lemma` | [not_mem_sA_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant674d2a40f21d5287cc3801fa81faadc37a6910dbc3fb344b43d88fab8dcfa512.lean/declarations/not-mem-sa-iff--a6c95c2aca52e32922f80135.md) | 305 | `result-track:a6c95c2aca52e32922f80135d9c0cb94eac275a8ad8be57897007daf78b2c36d` |
| 21 | `def` | [K](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant674d2a40f21d5287cc3801fa81faadc37a6910dbc3fb344b43d88fab8dcfa512.lean/declarations/k--ca2b5688ebdd18c4ffd06714.md) | 309 | `declaration-track:ca2b5688ebdd18c4ffd0671497530f5ce5618bf7fccd10144883063c04c8ee1f` |
| 22 | `lemma` | [K_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant674d2a40f21d5287cc3801fa81faadc37a6910dbc3fb344b43d88fab8dcfa512.lean/declarations/k-nonneg--e6efb833de85c5936f2446d1.md) | 311 | `result-track:e6efb833de85c5936f2446d1e0c0ee654a5aec671cd00e1b90a5ed9adfbd9c3b` |
| 23 | `lemma` | [partial_sum_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant674d2a40f21d5287cc3801fa81faadc37a6910dbc3fb344b43d88fab8dcfa512.lean/declarations/partial-sum-le--c0b3adbdb2341dc683927e48.md) | 315 | `result-track:c0b3adbdb2341dc683927e48fcb7c0f4253ec4701f2bdbab646ec08901a8f899` |
| 24 | `lemma` | [summable_tail](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant674d2a40f21d5287cc3801fa81faadc37a6910dbc3fb344b43d88fab8dcfa512.lean/declarations/summable-tail--77e34d05a23ea3473ad3efac.md) | 350 | `result-track:77e34d05a23ea3473ad3efac19b75f6ee1bb2aba8ffe4b1bfac17b6381d448e6` |
| 25 | `lemma` | [tsum_tail_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant674d2a40f21d5287cc3801fa81faadc37a6910dbc3fb344b43d88fab8dcfa512.lean/declarations/tsum-tail-le--deb53d0210a6a4022be7aa71.md) | 356 | `result-track:deb53d0210a6a4022be7aa7175cbb84af20710ce83193c54559eb017d50b16a4` |
| 26 | `lemma` | [summable_Gsummand](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant674d2a40f21d5287cc3801fa81faadc37a6910dbc3fb344b43d88fab8dcfa512.lean/declarations/summable-gsummand--cf59a4f6a7ea9396bbf56feb.md) | 365 | `result-track:cf59a4f6a7ea9396bbf56feb066066a7cc259bde653e93605e36ba07200ff272` |
| 27 | `lemma` | [Az_eq_sum](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant674d2a40f21d5287cc3801fa81faadc37a6910dbc3fb344b43d88fab8dcfa512.lean/declarations/az-eq-sum--af97e16c5b0413f6b6aa36fd.md) | 381 | `result-track:af97e16c5b0413f6b6aa36fd5f2fcdfb93bff79e972abd73aa5d5c6467a320e5` |
| 28 | `theorem` | [hasSum_Ez](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant674d2a40f21d5287cc3801fa81faadc37a6910dbc3fb344b43d88fab8dcfa512.lean/declarations/hassum-ez--dd30ee5db3e5a5d8be35cc69.md) | 406 | `result-track:dd30ee5db3e5a5d8be35cc69503791a2c62a61fabaaed1f6c521d93bf55634be` |
| 29 | `theorem` | [traceNorm_smul_Ez_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant674d2a40f21d5287cc3801fa81faadc37a6910dbc3fb344b43d88fab8dcfa512.lean/declarations/tracenorm-smul-ez-le--24593d926a5fb6a60e865cb4.md) | 423 | `result-track:24593d926a5fb6a60e865cb400e6d3dc563374e80f9a09afae850887bc69a467` |
| 30 | `theorem` | [prop_tail](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant674d2a40f21d5287cc3801fa81faadc37a6910dbc3fb344b43d88fab8dcfa512.lean/declarations/prop-tail--b31730447ea9fe788258813b.md) | 450 | `result-track:b31730447ea9fe788258813b2481f777d9094c56b17ab2c52b148e48b0797304` |
| 31 | `lemma` | [reflect_im](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant674d2a40f21d5287cc3801fa81faadc37a6910dbc3fb344b43d88fab8dcfa512.lean/declarations/reflect-im--6810d99d7cdb4a42a4d8a308.md) | 489 | `result-track:6810d99d7cdb4a42a4d8a3083c8b681b97ffde393047d19308dd144b6aae41d0` |
| 32 | `lemma` | [reflect_reflect](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant674d2a40f21d5287cc3801fa81faadc37a6910dbc3fb344b43d88fab8dcfa512.lean/declarations/reflect-reflect--3206fdee67924c7878a4839f.md) | 491 | `result-track:3206fdee67924c7878a4839f96b8e0eccd260d4d41883fd3368462ba54ca06ba` |
| 33 | `lemma` | [gammaOf_reflect](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant674d2a40f21d5287cc3801fa81faadc37a6910dbc3fb344b43d88fab8dcfa512.lean/declarations/gammaof-reflect--d7ced713e51b85fc6b2504da.md) | 493 | `result-track:d7ced713e51b85fc6b2504da16dd62cfbc9ab293b3888245438d959c68f756ef` |
| 34 | `lemma` | [uvec_reflect](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant674d2a40f21d5287cc3801fa81faadc37a6910dbc3fb344b43d88fab8dcfa512.lean/declarations/uvec-reflect--3442f79f44e11b06404e3d45.md) | 500 | `result-track:3442f79f44e11b06404e3d458130798d6b0a34cdb67d62d3838f12563f2cda30` |
| 35 | `theorem` | [TailHyp.Ez_isHermitian](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant674d2a40f21d5287cc3801fa81faadc37a6910dbc3fb344b43d88fab8dcfa512.lean/declarations/tailhyp-ez-ishermitian--6a887adc6df331af4c003104.md) | 510 | `result-track:6a887adc6df331af4c00310441e4b6e8b0a0a349d8ece14998da41fe9c854d05` |
| 36 | `lemma` | [isHermitian_real_smul](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant674d2a40f21d5287cc3801fa81faadc37a6910dbc3fb344b43d88fab8dcfa512.lean/declarations/ishermitian-real-smul--7b83f341feb85a4f63c11512.md) | 547 | `result-track:7b83f341feb85a4f63c1151280bfc0ce908ced93ff3db7a2b2f10c273550a938` |
| 37 | `lemma` | [TailHyp.tilde_Ez_isHermitian](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant674d2a40f21d5287cc3801fa81faadc37a6910dbc3fb344b43d88fab8dcfa512.lean/declarations/tailhyp-tilde-ez-ishermitian--4ef5cf8bf1fed314f5d9e673.md) | 553 | `result-track:4ef5cf8bf1fed314f5d9e673f56005df0ed26f601e542b5a7a790ac7fe4bb5c6` |
| 38 | `lemma` | [TailHyp.hat_Ez_isHermitian](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant674d2a40f21d5287cc3801fa81faadc37a6910dbc3fb344b43d88fab8dcfa512.lean/declarations/tailhyp-hat-ez-ishermitian--6ad8e71160c2bfee1953e1b9.md) | 559 | `result-track:6ad8e71160c2bfee1953e1b967dadaa3214aed0dc40416f891d8b3b8684c00f4` |
| 39 | `theorem` | [TailHyp.tailInputs](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant674d2a40f21d5287cc3801fa81faadc37a6910dbc3fb344b43d88fab8dcfa512.lean/declarations/tailhyp-tailinputs--82caa9c586e9858cc98b86d5.md) | 579 | `result-track:82caa9c586e9858cc98b86d5444dbcc8a93d67c843a27c791c8c73d5ffd38190` |
| 40 | `theorem` | [NII_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant674d2a40f21d5287cc3801fa81faadc37a6910dbc3fb344b43d88fab8dcfa512.lean/declarations/nii-le--de356c8219287a3155188dde.md) | 593 | `result-track:de356c8219287a3155188dde3eb8f7e501f355cc4240c73028d3a6ed45340413` |
| 41 | `lemma` | [tendsto_L_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant674d2a40f21d5287cc3801fa81faadc37a6910dbc3fb344b43d88fab8dcfa512.lean/declarations/tendsto-l-attop--0f87df426fe913e780083459.md) | 641 | `result-track:0f87df426fe913e7800834599767941686095d0c9984b740eb59c389d20ce704` |
| 42 | `theorem` | [eventually_tailInputs](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant674d2a40f21d5287cc3801fa81faadc37a6910dbc3fb344b43d88fab8dcfa512.lean/declarations/eventually-tailinputs--19beb86059eb9156e411a5ae.md) | 651 | `result-track:19beb86059eb9156e411a5aeb2038aa480a6d13d6896549522fdae38aba0bb07` |
| 43 | `theorem` | [eventually_theta0_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant674d2a40f21d5287cc3801fa81faadc37a6910dbc3fb344b43d88fab8dcfa512.lean/declarations/eventually-theta0-le--548c313422bc16a1aa592e60.md) | 668 | `result-track:548c313422bc16a1aa592e6008f16a300a2c288ffe32c3242bc0e90bcc008f12` |
| 44 | `theorem` | [eventually_NII_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant674d2a40f21d5287cc3801fa81faadc37a6910dbc3fb344b43d88fab8dcfa512.lean/declarations/eventually-nii-le--09b6f9b7b5c09093b9e353e5.md) | 677 | `result-track:09b6f9b7b5c09093b9e353e52a439b16b7100154cf88fa08acdc3602afae7967` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
