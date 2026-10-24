# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.MeanInequalities.Varianta6cdbf7e09fe72f24d292249c195f98c29aaef0517f06ba8b8059657d47e1e50

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2bb832774232101bddaad4985ac7ca896646bb97",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/MeanInequalities/Varianta6cdbf7e09fe72f24d292249c195f98c29aaef0517f06ba8b8059657d47e1e50.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/MeanInequalities/Varianta6cdbf7e09fe72f24d292249c195f98c29aaef0517f06ba8b8059657d47e1e50.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/MeanInequalities/Varianta6cdbf7e09fe72f24d292249c195f98c29aaef0517f06ba8b8059657d47e1e50.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2bb832774232101bddaad4985ac7ca896646bb97`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/MeanInequalities/Varianta6cdbf7e09fe72f24d292249c195f98c29aaef0517f06ba8b8059657d47e1e50.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/MeanInequalities/Varianta6cdbf7e09fe72f24d292249c195f98c29aaef0517f06ba8b8059657d47e1e50.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Jensen` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.SpecificFunctions.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.NNReal` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.ConjugateExponents` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/MeanInequalities/Varianta6cdbf7e09fe72f24d292249c195f98c29aaef0517f06ba8b8059657d47e1e50.lean/declarations/macro-rules--310b5df5cd9ce8c2b5b7e0af.md) | 101 | `declaration-track:310b5df5cd9ce8c2b5b7e0af7cc36f7320894a224f47ac072ef26f94ead2ce84` |
| 2 | `theorem` | [geom_mean_le_arith_mean_weighted](../../../../../mathematics/Analysis/AsymptoticAnalysis/MeanInequalities/Varianta6cdbf7e09fe72f24d292249c195f98c29aaef0517f06ba8b8059657d47e1e50.lean/declarations/geom-mean-le-arith-mean-weighted--07635b918b5262a85859f8f4.md) | 114 | `result-track:07635b918b5262a85859f8f43ad0ac7da5ef51099e3e0393384d4da0d1c71be9` |
| 3 | `theorem` | [geom_mean_weighted_of_constant](../../../../../mathematics/Analysis/AsymptoticAnalysis/MeanInequalities/Varianta6cdbf7e09fe72f24d292249c195f98c29aaef0517f06ba8b8059657d47e1e50.lean/declarations/geom-mean-weighted-of-constant--4082998b7f4a95deacd7ef08.md) | 138 | `result-track:4082998b7f4a95deacd7ef089cd2acf77e92ed66141a3931058e36a09eb23dc5` |
| 4 | `theorem` | [arith_mean_weighted_of_constant](../../../../../mathematics/Analysis/AsymptoticAnalysis/MeanInequalities/Varianta6cdbf7e09fe72f24d292249c195f98c29aaef0517f06ba8b8059657d47e1e50.lean/declarations/arith-mean-weighted-of-constant--342363d0bc5eedc444b563c8.md) | 157 | `result-track:342363d0bc5eedc444b563c8501ed1780029de84e701ca663b44b561f43b151d` |
| 5 | `theorem` | [geom_mean_eq_arith_mean_weighted_of_constant](../../../../../mathematics/Analysis/AsymptoticAnalysis/MeanInequalities/Varianta6cdbf7e09fe72f24d292249c195f98c29aaef0517f06ba8b8059657d47e1e50.lean/declarations/geom-mean-eq-arith-mean-weighted-of-constant--51fc38a07b8b41dd526b2e7c.md) | 168 | `result-track:51fc38a07b8b41dd526b2e7ca43c0af39c7bd1e4e5eb422aabfba92d9ab19468` |
| 6 | `theorem` | [geom_mean_le_arith_mean_weighted](../../../../../mathematics/Analysis/AsymptoticAnalysis/MeanInequalities/Varianta6cdbf7e09fe72f24d292249c195f98c29aaef0517f06ba8b8059657d47e1e50.lean/declarations/geom-mean-le-arith-mean-weighted--97c7fe4dd1791b3d773d1a2d.md) | 180 | `result-track:97c7fe4dd1791b3d773d1a2dc4f95736f44071828c8454598a38dda2ffa1b8c5` |
| 7 | `theorem` | [geom_mean_le_arith_mean2_weighted](../../../../../mathematics/Analysis/AsymptoticAnalysis/MeanInequalities/Varianta6cdbf7e09fe72f24d292249c195f98c29aaef0517f06ba8b8059657d47e1e50.lean/declarations/geom-mean-le-arith-mean2-weighted--cee76f4bb4be52720438979f.md) | 189 | `result-track:cee76f4bb4be52720438979f25deb85535193a172d69a47ce3de51a9d26760b6` |
| 8 | `theorem` | [geom_mean_le_arith_mean3_weighted](../../../../../mathematics/Analysis/AsymptoticAnalysis/MeanInequalities/Varianta6cdbf7e09fe72f24d292249c195f98c29aaef0517f06ba8b8059657d47e1e50.lean/declarations/geom-mean-le-arith-mean3-weighted--a0c6e6db9756fff3edac734b.md) | 196 | `result-track:a0c6e6db9756fff3edac734b353309da0e37cf9cd197e2f0f96775fdf7628ca3` |
| 9 | `theorem` | [geom_mean_le_arith_mean4_weighted](../../../../../mathematics/Analysis/AsymptoticAnalysis/MeanInequalities/Varianta6cdbf7e09fe72f24d292249c195f98c29aaef0517f06ba8b8059657d47e1e50.lean/declarations/geom-mean-le-arith-mean4-weighted--ba62ba8a3f4883860b297cac.md) | 204 | `result-track:ba62ba8a3f4883860b297cac3512657be8859e002f8a2ffe72247e627ff781f8` |
| 10 | `theorem` | [geom_mean_le_arith_mean2_weighted](../../../../../mathematics/Analysis/AsymptoticAnalysis/MeanInequalities/Varianta6cdbf7e09fe72f24d292249c195f98c29aaef0517f06ba8b8059657d47e1e50.lean/declarations/geom-mean-le-arith-mean2-weighted--afee6748c8fec5d4e3470ac3.md) | 217 | `result-track:afee6748c8fec5d4e3470ac3ae2b9d490da78295d612d2bed931fb72b45140bb` |
| 11 | `theorem` | [geom_mean_le_arith_mean3_weighted](../../../../../mathematics/Analysis/AsymptoticAnalysis/MeanInequalities/Varianta6cdbf7e09fe72f24d292249c195f98c29aaef0517f06ba8b8059657d47e1e50.lean/declarations/geom-mean-le-arith-mean3-weighted--e3cc30b641c5f9d2520dfa55.md) | 223 | `result-track:e3cc30b641c5f9d2520dfa559ac8067f0e6c41dd10ca0b3e9e6975a609aaa6f1` |
| 12 | `theorem` | [geom_mean_le_arith_mean4_weighted](../../../../../mathematics/Analysis/AsymptoticAnalysis/MeanInequalities/Varianta6cdbf7e09fe72f24d292249c195f98c29aaef0517f06ba8b8059657d47e1e50.lean/declarations/geom-mean-le-arith-mean4-weighted--6eee7e2cd706aadcf8582c94.md) | 231 | `result-track:6eee7e2cd706aadcf8582c94cdcfe7024c5ea52f7eb7cbfa808a2cfe3cf12ab7` |
| 13 | `theorem` | [young_inequality_of_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/MeanInequalities/Varianta6cdbf7e09fe72f24d292249c195f98c29aaef0517f06ba8b8059657d47e1e50.lean/declarations/young-inequality-of-nonneg--1a8b9a663f50d6c7c30d1aee.md) | 252 | `result-track:1a8b9a663f50d6c7c30d1aee549ffa449432ce0b284f735a6a6ec3739ef52321` |
| 14 | `theorem` | [young_inequality](../../../../../mathematics/Analysis/AsymptoticAnalysis/MeanInequalities/Varianta6cdbf7e09fe72f24d292249c195f98c29aaef0517f06ba8b8059657d47e1e50.lean/declarations/young-inequality--b52f68817ef43202864923d4.md) | 260 | `result-track:b52f68817ef43202864923d403818f0c3adeca93a250348fe5f952b6edd236ad` |
| 15 | `theorem` | [young_inequality](../../../../../mathematics/Analysis/AsymptoticAnalysis/MeanInequalities/Varianta6cdbf7e09fe72f24d292249c195f98c29aaef0517f06ba8b8059657d47e1e50.lean/declarations/young-inequality--6f5b70abfa8d65519c3cfea4.md) | 275 | `result-track:6f5b70abfa8d65519c3cfea4d9f1788cb0876bd44487684e959633064ec87133` |
| 16 | `theorem` | [young_inequality_real](../../../../../mathematics/Analysis/AsymptoticAnalysis/MeanInequalities/Varianta6cdbf7e09fe72f24d292249c195f98c29aaef0517f06ba8b8059657d47e1e50.lean/declarations/young-inequality-real--76cc7393684b4000e81b25ed.md) | 281 | `result-track:76cc7393684b4000e81b25edfc82341e1e66bc094df0d76bf266bdb627d7efd7` |
| 17 | `theorem` | [young_inequality](../../../../../mathematics/Analysis/AsymptoticAnalysis/MeanInequalities/Varianta6cdbf7e09fe72f24d292249c195f98c29aaef0517f06ba8b8059657d47e1e50.lean/declarations/young-inequality--31387f4b859c81cea763baed.md) | 293 | `result-track:31387f4b859c81cea763baededf626b281f27097e0d6e912b7731df3905dd73d` |
| 18 | `theorem` | [inner_le_Lp_mul_Lp_of_norm_le_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/MeanInequalities/Varianta6cdbf7e09fe72f24d292249c195f98c29aaef0517f06ba8b8059657d47e1e50.lean/declarations/inner-le-lp-mul-lp-of-norm-le-one--96f19d96631da05b93ef34c8.md) | 319 | `result-track:96f19d96631da05b93ef34c8a09765d63f09d37b47cb99583a1717744acb1de2` |
| 19 | `theorem` | [inner_le_Lp_mul_Lp_of_norm_eq_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/MeanInequalities/Varianta6cdbf7e09fe72f24d292249c195f98c29aaef0517f06ba8b8059657d47e1e50.lean/declarations/inner-le-lp-mul-lp-of-norm-eq-zero--77c2ee3f24759f202bdce017.md) | 335 | `result-track:77c2ee3f24759f202bdce017d22fd6f623263efd5f427fc25b54fa6f7a894ebb` |
| 20 | `theorem` | [inner_le_Lp_mul_Lq](../../../../../mathematics/Analysis/AsymptoticAnalysis/MeanInequalities/Varianta6cdbf7e09fe72f24d292249c195f98c29aaef0517f06ba8b8059657d47e1e50.lean/declarations/inner-le-lp-mul-lq--dc6c419765b26429ec56936c.md) | 348 | `result-track:dc6c419765b26429ec56936cddebeb91eec683167f3702be6beee5bbf6904878` |
| 21 | `theorem` | [inner_le_Lp_mul_Lq_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/MeanInequalities/Varianta6cdbf7e09fe72f24d292249c195f98c29aaef0517f06ba8b8059657d47e1e50.lean/declarations/inner-le-lp-mul-lq-tsum--b83e5b2c6aa96148d28a430b.md) | 381 | `result-track:b83e5b2c6aa96148d28a430b7bf68fa170e8b2d0a1d4782661dec8defd6f9f2f` |
| 22 | `theorem` | [summable_mul_of_Lp_Lq](../../../../../mathematics/Analysis/AsymptoticAnalysis/MeanInequalities/Varianta6cdbf7e09fe72f24d292249c195f98c29aaef0517f06ba8b8059657d47e1e50.lean/declarations/summable-mul-of-lp-lq--61c4570c7cae4b2a912914a8.md) | 401 | `result-track:61c4570c7cae4b2a912914a8644d068603983b891ed835eaf6760026a1aace02` |
| 23 | `theorem` | [inner_le_Lp_mul_Lq_tsum'](../../../../../mathematics/Analysis/AsymptoticAnalysis/MeanInequalities/Varianta6cdbf7e09fe72f24d292249c195f98c29aaef0517f06ba8b8059657d47e1e50.lean/declarations/inner-le-lp-mul-lq-tsum--0031090f54912d76e1e71297.md) | 407 | `result-track:0031090f54912d76e1e71297e1ea5147788a9f87a29ee0cac00ff05db9cbfa4b` |
| 24 | `theorem` | [inner_le_Lp_mul_Lq_hasSum](../../../../../mathematics/Analysis/AsymptoticAnalysis/MeanInequalities/Varianta6cdbf7e09fe72f24d292249c195f98c29aaef0517f06ba8b8059657d47e1e50.lean/declarations/inner-le-lp-mul-lq-hassum--6a5474d2b988289265d33f8f.md) | 417 | `result-track:6a5474d2b988289265d33f8fb0dffeb47c676cb88394b89919fb1ad1edb306bc` |
| 25 | `theorem` | [rpow_sum_le_const_mul_sum_rpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/MeanInequalities/Varianta6cdbf7e09fe72f24d292249c195f98c29aaef0517f06ba8b8059657d47e1e50.lean/declarations/rpow-sum-le-const-mul-sum-rpow--f9ca0d68410552e6d1abee82.md) | 432 | `result-track:f9ca0d68410552e6d1abee82b7f5465d7fa0600826e83cbf01ae38bf387c2d11` |
| 26 | `theorem` | [isGreatest_Lp](../../../../../mathematics/Analysis/AsymptoticAnalysis/MeanInequalities/Varianta6cdbf7e09fe72f24d292249c195f98c29aaef0517f06ba8b8059657d47e1e50.lean/declarations/isgreatest-lp--227952ddd96806907f95197d.md) | 449 | `result-track:227952ddd96806907f95197d7076bdda11be7be5bc6b85c494610fa6a128a773` |
| 27 | `theorem` | [Lp_add_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/MeanInequalities/Varianta6cdbf7e09fe72f24d292249c195f98c29aaef0517f06ba8b8059657d47e1e50.lean/declarations/lp-add-le--c13def07239a4e44417b3985.md) | 473 | `result-track:c13def07239a4e44417b3985bbfeb402013d0a60ad281f116dd5cbfbc10dca2d` |
| 28 | `theorem` | [Lp_add_le_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/MeanInequalities/Varianta6cdbf7e09fe72f24d292249c195f98c29aaef0517f06ba8b8059657d47e1e50.lean/declarations/lp-add-le-tsum--53960524994ff2e506b8f44b.md) | 492 | `result-track:53960524994ff2e506b8f44bfcb40441a7471d37b6a6fcf98f0cb18d4614e732` |
| 29 | `theorem` | [summable_Lp_add](../../../../../mathematics/Analysis/AsymptoticAnalysis/MeanInequalities/Varianta6cdbf7e09fe72f24d292249c195f98c29aaef0517f06ba8b8059657d47e1e50.lean/declarations/summable-lp-add--26173a686f5c253c07815599.md) | 517 | `result-track:26173a686f5c253c0781559976fb8db193d1bad5a9a5bd0debb32e6e90a504f8` |
| 30 | `theorem` | [Lp_add_le_tsum'](../../../../../mathematics/Analysis/AsymptoticAnalysis/MeanInequalities/Varianta6cdbf7e09fe72f24d292249c195f98c29aaef0517f06ba8b8059657d47e1e50.lean/declarations/lp-add-le-tsum--ba8e186908dd6aac03fbe868.md) | 522 | `result-track:ba8e186908dd6aac03fbe868f30716d43b0a77c3b98d5a786abe1620b8f3fc78` |
| 31 | `theorem` | [Lp_add_le_hasSum](../../../../../mathematics/Analysis/AsymptoticAnalysis/MeanInequalities/Varianta6cdbf7e09fe72f24d292249c195f98c29aaef0517f06ba8b8059657d47e1e50.lean/declarations/lp-add-le-hassum--c0c233fa8e77afe3e369d9f4.md) | 532 | `result-track:c0c233fa8e77afe3e369d9f4d36dba12e4ea51007b388514b63682ca3d882877` |
| 32 | `theorem` | [inner_le_Lp_mul_Lq](../../../../../mathematics/Analysis/AsymptoticAnalysis/MeanInequalities/Varianta6cdbf7e09fe72f24d292249c195f98c29aaef0517f06ba8b8059657d47e1e50.lean/declarations/inner-le-lp-mul-lq--33f7c7d9842e6ccbe2f5a78b.md) | 553 | `result-track:33f7c7d9842e6ccbe2f5a78bfaf972277d9cfaad2e07c2444119630c35efce92` |
| 33 | `theorem` | [rpow_sum_le_const_mul_sum_rpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/MeanInequalities/Varianta6cdbf7e09fe72f24d292249c195f98c29aaef0517f06ba8b8059657d47e1e50.lean/declarations/rpow-sum-le-const-mul-sum-rpow--b5aff4fbb851c07b405e35e1.md) | 566 | `result-track:b5aff4fbb851c07b405e35e15eeaf03e616f226349a0cc00e6f34e96a483dabd` |
| 34 | `theorem` | [Lp_add_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/MeanInequalities/Varianta6cdbf7e09fe72f24d292249c195f98c29aaef0517f06ba8b8059657d47e1e50.lean/declarations/lp-add-le--7daad488cb35320fc05ae595.md) | 578 | `result-track:7daad488cb35320fc05ae595164a67e1cf63a9e1e07317ad0a048ff327ebea74` |
| 35 | `theorem` | [inner_le_Lp_mul_Lq_of_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/MeanInequalities/Varianta6cdbf7e09fe72f24d292249c195f98c29aaef0517f06ba8b8059657d47e1e50.lean/declarations/inner-le-lp-mul-lq-of-nonneg--ed7ce5b7bc7b042c849289a5.md) | 595 | `result-track:ed7ce5b7bc7b042c849289a5c98400625ddd4bf19224da6e4e17e47e5daf2730` |
| 36 | `theorem` | [inner_le_Lp_mul_Lq_tsum_of_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/MeanInequalities/Varianta6cdbf7e09fe72f24d292249c195f98c29aaef0517f06ba8b8059657d47e1e50.lean/declarations/inner-le-lp-mul-lq-tsum-of-nonneg--55b6a95b7526b3fa3bedc8ae.md) | 606 | `result-track:55b6a95b7526b3fa3bedc8aedb4d36dab109ce7652cf44d6925801a53c292b54` |
| 37 | `theorem` | [summable_mul_of_Lp_Lq_of_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/MeanInequalities/Varianta6cdbf7e09fe72f24d292249c195f98c29aaef0517f06ba8b8059657d47e1e50.lean/declarations/summable-mul-of-lp-lq-of-nonneg--18413fc4a4fc8093a10c3352.md) | 616 | `result-track:18413fc4a4fc8093a10c33529696bb0e0f4041004f8dfd670c1e1f5e4fc4e0b0` |
| 38 | `theorem` | [inner_le_Lp_mul_Lq_tsum_of_nonneg'](../../../../../mathematics/Analysis/AsymptoticAnalysis/MeanInequalities/Varianta6cdbf7e09fe72f24d292249c195f98c29aaef0517f06ba8b8059657d47e1e50.lean/declarations/inner-le-lp-mul-lq-tsum-of-nonneg--3cf88c9a39db8ae5e1467254.md) | 622 | `result-track:3cf88c9a39db8ae5e146725487bfbea40e3aa3dc4302fe583b1d204dc0e4105e` |
| 39 | `theorem` | [inner_le_Lp_mul_Lq_hasSum_of_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/MeanInequalities/Varianta6cdbf7e09fe72f24d292249c195f98c29aaef0517f06ba8b8059657d47e1e50.lean/declarations/inner-le-lp-mul-lq-hassum-of-nonneg--243c9cdc08097da567f6e2ce.md) | 632 | `result-track:243c9cdc08097da567f6e2ce8bf45721132888e99905cfbd3f993d823d5c2f7a` |
| 40 | `theorem` | [rpow_sum_le_const_mul_sum_rpow_of_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/MeanInequalities/Varianta6cdbf7e09fe72f24d292249c195f98c29aaef0517f06ba8b8059657d47e1e50.lean/declarations/rpow-sum-le-const-mul-sum-rpow-of-nonneg--7393b87b261b574ca021bf07.md) | 649 | `result-track:7393b87b261b574ca021bf078cda171f669ad596671b44c8dce63b0f247d6946` |
| 41 | `theorem` | [Lp_add_le_of_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/MeanInequalities/Varianta6cdbf7e09fe72f24d292249c195f98c29aaef0517f06ba8b8059657d47e1e50.lean/declarations/lp-add-le-of-nonneg--66f2ed43df19baae8c605e0d.md) | 658 | `result-track:66f2ed43df19baae8c605e0dc078c1b6ec2fceb85298f9fedffc824c38671d9e` |
| 42 | `theorem` | [Lp_add_le_tsum_of_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/MeanInequalities/Varianta6cdbf7e09fe72f24d292249c195f98c29aaef0517f06ba8b8059657d47e1e50.lean/declarations/lp-add-le-tsum-of-nonneg--766406a9be26f34095a74ad4.md) | 670 | `result-track:766406a9be26f34095a74ad4327ca84b005ac4de7ed3a8c90e1aca15e183e8a1` |
| 43 | `theorem` | [summable_Lp_add_of_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/MeanInequalities/Varianta6cdbf7e09fe72f24d292249c195f98c29aaef0517f06ba8b8059657d47e1e50.lean/declarations/summable-lp-add-of-nonneg--43d770e0dec2a53cc3d7a584.md) | 681 | `result-track:43d770e0dec2a53cc3d7a58442d9826c460e4efd822ddae921122c4abf5dd93b` |
| 44 | `theorem` | [Lp_add_le_tsum_of_nonneg'](../../../../../mathematics/Analysis/AsymptoticAnalysis/MeanInequalities/Varianta6cdbf7e09fe72f24d292249c195f98c29aaef0517f06ba8b8059657d47e1e50.lean/declarations/lp-add-le-tsum-of-nonneg--fdbae51157ccc2bcae38344b.md) | 687 | `result-track:fdbae51157ccc2bcae38344bd1d9b24490b29e253f90bebbeae533f0e6bd7428` |
| 45 | `theorem` | [Lp_add_le_hasSum_of_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/MeanInequalities/Varianta6cdbf7e09fe72f24d292249c195f98c29aaef0517f06ba8b8059657d47e1e50.lean/declarations/lp-add-le-hassum-of-nonneg--fe80631c0db94bdd6dbfb015.md) | 697 | `result-track:fe80631c0db94bdd6dbfb015c1736a2ce72a496e753a681be2e4b2fd0258ec99` |
| 46 | `theorem` | [inner_le_Lp_mul_Lq](../../../../../mathematics/Analysis/AsymptoticAnalysis/MeanInequalities/Varianta6cdbf7e09fe72f24d292249c195f98c29aaef0517f06ba8b8059657d47e1e50.lean/declarations/inner-le-lp-mul-lq--99170c5550ff7cbbace33238.md) | 721 | `result-track:99170c5550ff7cbbace3323804d77195d3e0408b630e2301839658aa3b48b629` |
| 47 | `theorem` | [rpow_sum_le_const_mul_sum_rpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/MeanInequalities/Varianta6cdbf7e09fe72f24d292249c195f98c29aaef0517f06ba8b8059657d47e1e50.lean/declarations/rpow-sum-le-const-mul-sum-rpow--06e7a6124052f5cdf1f30cc2.md) | 750 | `result-track:06e7a6124052f5cdf1f30cc226a7feb9de45c4e32a19b63d14198f6092457e46` |
| 48 | `theorem` | [Lp_add_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/MeanInequalities/Varianta6cdbf7e09fe72f24d292249c195f98c29aaef0517f06ba8b8059657d47e1e50.lean/declarations/lp-add-le--90d53bdad43b1ad59863db89.md) | 768 | `result-track:90d53bdad43b1ad59863db89240b761402ee7e74b0406f1f77325549589deea3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
