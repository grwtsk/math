# Verification target: GRWTSK.Topology.GeneralTopology.Modular.Variantece9962a37d5b57caa801754ac55ef26438601f025af5bbbdb8f614be4e40c1e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0b65e86e231f39c0a13cd4f3f817f39ac55e169e",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Modular/Variantece9962a37d5b57caa801754ac55ef26438601f025af5bbbdb8f614be4e40c1e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Modular/Variantece9962a37d5b57caa801754ac55ef26438601f025af5bbbdb8f614be4e40c1e.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Modular/Variantece9962a37d5b57caa801754ac55ef26438601f025af5bbbdb8f614be4e40c1e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0b65e86e231f39c0a13cd4f3f817f39ac55e169e`.

Source path: `GRWTSK/Topology/GeneralTopology/Modular/Variantece9962a37d5b57caa801754ac55ef26438601f025af5bbbdb8f614be4e40c1e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Modular/Variantece9962a37d5b57caa801754ac55ef26438601f025af5bbbdb8f614be4e40c1e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.UpperHalfPlane.MoebiusAction` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.GeneralLinearGroup` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.GeneralLinearGroup.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.Matrix` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.FiniteDimension` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.ZMultiples` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [bottom_row_coprime](../../../../../mathematics/Topology/GeneralTopology/Modular/Variantece9962a37d5b57caa801754ac55ef26438601f025af5bbbdb8f614be4e40c1e.lean/declarations/bottom-row-coprime--f153699ae83da120926d4d42.md) | 88 | `result-track:f153699ae83da120926d4d4291b3b2a8720d1773240dd3333e116c415cb106ba` |
| 2 | `theorem` | [bottom_row_surj](../../../../../mathematics/Topology/GeneralTopology/Modular/Variantece9962a37d5b57caa801754ac55ef26438601f025af5bbbdb8f614be4e40c1e.lean/declarations/bottom-row-surj--6de5615339639a3d77212218.md) | 96 | `result-track:6de5615339639a3d772122182aacffd58aacbad38c4c5a54a7b165edffd55dbf` |
| 3 | `theorem` | [tendsto_normSq_coprime_pair](../../../../../mathematics/Topology/GeneralTopology/Modular/Variantece9962a37d5b57caa801754ac55ef26438601f025af5bbbdb8f614be4e40c1e.lean/declarations/tendsto-normsq-coprime-pair--16d15a2c500524bdc4172496.md) | 118 | `result-track:16d15a2c500524bdc41724966dfc90cbb7d57e080dd0d4a84458e5bbe429a4a5` |
| 4 | `def` | [lcRow0](../../../../../mathematics/Topology/GeneralTopology/Modular/Variantece9962a37d5b57caa801754ac55ef26438601f025af5bbbdb8f614be4e40c1e.lean/declarations/lcrow0--2f0d72c0ad756ffbc9642e6a.md) | 167 | `declaration-track:2f0d72c0ad756ffbc9642e6ac170107b68b628bfaa252f21bbec840edd74e23e` |
| 5 | `theorem` | [lcRow0_apply](../../../../../mathematics/Topology/GeneralTopology/Modular/Variantece9962a37d5b57caa801754ac55ef26438601f025af5bbbdb8f614be4e40c1e.lean/declarations/lcrow0-apply--1bc2284f3b225227093de7d6.md) | 173 | `result-track:1bc2284f3b225227093de7d6294fbb81d008398ef435cdf2c28468c76e2bc6cf` |
| 6 | `def` | [lcRow0Extend](../../../../../mathematics/Topology/GeneralTopology/Modular/Variantece9962a37d5b57caa801754ac55ef26438601f025af5bbbdb8f614be4e40c1e.lean/declarations/lcrow0extend--44218ec9ff072b9c9c58a492.md) | 180 | `declaration-track:44218ec9ff072b9c9c58a492452adfef3a20f32fb17a027f8f904e6f5740369e` |
| 7 | `theorem` | [tendsto_lcRow0](../../../../../mathematics/Topology/GeneralTopology/Modular/Variantece9962a37d5b57caa801754ac55ef26438601f025af5bbbdb8f614be4e40c1e.lean/declarations/tendsto-lcrow0--aa9aa8d8c31593005221ed44.md) | 193 | `result-track:aa9aa8d8c31593005221ed448ccb23fe12587697ec024054874384537d9d9131` |
| 8 | `theorem` | [smul_eq_lcRow0_add](../../../../../mathematics/Topology/GeneralTopology/Modular/Variantece9962a37d5b57caa801754ac55ef26438601f025af5bbbdb8f614be4e40c1e.lean/declarations/smul-eq-lcrow0-add--dc938bfc9a4381c08aecdb4b.md) | 237 | `result-track:dc938bfc9a4381c08aecdb4b977159099ecc3a1da6dcc91e2e94a107702684a9` |
| 9 | `theorem` | [tendsto_abs_re_smul](../../../../../mathematics/Topology/GeneralTopology/Modular/Variantece9962a37d5b57caa801754ac55ef26438601f025af5bbbdb8f614be4e40c1e.lean/declarations/tendsto-abs-re-smul--593e746b73653a69a251f43a.md) | 253 | `result-track:593e746b73653a69a251f43aa72c551c4c9e0bb7addf4c67cd494042295d807a` |
| 10 | `theorem` | [exists_max_im](../../../../../mathematics/Topology/GeneralTopology/Modular/Variantece9962a37d5b57caa801754ac55ef26438601f025af5bbbdb8f614be4e40c1e.lean/declarations/exists-max-im--3f725171072f5fb4ea6cf07a.md) | 281 | `result-track:3f725171072f5fb4ea6cf07aa7c3fa0046413e96cac98328efcb94caf04ee538` |
| 11 | `theorem` | [exists_row_one_eq_and_min_re](../../../../../mathematics/Topology/GeneralTopology/Modular/Variantece9962a37d5b57caa801754ac55ef26438601f025af5bbbdb8f614be4e40c1e.lean/declarations/exists-row-one-eq-and-min-re--4945bdc9b83e9eac428d98cb.md) | 298 | `result-track:4945bdc9b83e9eac428d98cbb7e3b899aa4af4794e22de8415e5dad11c7b6792` |
| 12 | `theorem` | [coe_T_zpow_smul_eq](../../../../../mathematics/Topology/GeneralTopology/Modular/Variantece9962a37d5b57caa801754ac55ef26438601f025af5bbbdb8f614be4e40c1e.lean/declarations/coe-t-zpow-smul-eq--580c8400bb37e41fb4cc1f03.md) | 312 | `result-track:580c8400bb37e41fb4cc1f0315e4401e7f6fae870367097ba60a91c64a212e87` |
| 13 | `theorem` | [re_T_zpow_smul](../../../../../mathematics/Topology/GeneralTopology/Modular/Variantece9962a37d5b57caa801754ac55ef26438601f025af5bbbdb8f614be4e40c1e.lean/declarations/re-t-zpow-smul--527e3f96e44dca5cd71b1022.md) | 316 | `result-track:527e3f96e44dca5cd71b10224820d7b05dad8bc9b45fea775f330204dcbb9138` |
| 14 | `theorem` | [im_T_zpow_smul](../../../../../mathematics/Topology/GeneralTopology/Modular/Variantece9962a37d5b57caa801754ac55ef26438601f025af5bbbdb8f614be4e40c1e.lean/declarations/im-t-zpow-smul--b6a6eafbf34059f49b7870e6.md) | 319 | `result-track:b6a6eafbf34059f49b7870e6f3e9f03d687b786633ea1de74d0262f1632368b5` |
| 15 | `theorem` | [re_T_smul](../../../../../mathematics/Topology/GeneralTopology/Modular/Variantece9962a37d5b57caa801754ac55ef26438601f025af5bbbdb8f614be4e40c1e.lean/declarations/re-t-smul--58d9ba735cad9bc30cc5ea21.md) | 322 | `result-track:58d9ba735cad9bc30cc5ea21c61690e8154a0403f4ad9053d94caae3a04e443c` |
| 16 | `theorem` | [im_T_smul](../../../../../mathematics/Topology/GeneralTopology/Modular/Variantece9962a37d5b57caa801754ac55ef26438601f025af5bbbdb8f614be4e40c1e.lean/declarations/im-t-smul--67f15b233f326cfe11d2e7af.md) | 324 | `result-track:67f15b233f326cfe11d2e7af94ae3845ece9340df3de256e20cbe5501f35de79` |
| 17 | `theorem` | [re_T_inv_smul](../../../../../mathematics/Topology/GeneralTopology/Modular/Variantece9962a37d5b57caa801754ac55ef26438601f025af5bbbdb8f614be4e40c1e.lean/declarations/re-t-inv-smul--fa5023db92e3e27417c16c29.md) | 326 | `result-track:fa5023db92e3e27417c16c2916cc628fdc587d8ee9312ebdc88142c190712f78` |
| 18 | `theorem` | [im_T_inv_smul](../../../../../mathematics/Topology/GeneralTopology/Modular/Variantece9962a37d5b57caa801754ac55ef26438601f025af5bbbdb8f614be4e40c1e.lean/declarations/im-t-inv-smul--2339ce905a39f43136e8f152.md) | 328 | `result-track:2339ce905a39f43136e8f152074b8731593258fb86f6434a96873a29b73b20a1` |
| 19 | `theorem` | [exists_eq_T_zpow_of_c_eq_zero](../../../../../mathematics/Topology/GeneralTopology/Modular/Variantece9962a37d5b57caa801754ac55ef26438601f025af5bbbdb8f614be4e40c1e.lean/declarations/exists-eq-t-zpow-of-c-eq-zero--3495dc0511ba9e66097cdf52.md) | 333 | `result-track:3495dc0511ba9e66097cdf527b064ba8fd634df09c822d468011dbfb32fc3506` |
| 20 | `theorem` | [g_eq_of_c_eq_one](../../../../../mathematics/Topology/GeneralTopology/Modular/Variantece9962a37d5b57caa801754ac55ef26438601f025af5bbbdb8f614be4e40c1e.lean/declarations/g-eq-of-c-eq-one--0cfb11bd5f17253ddd1334a9.md) | 348 | `result-track:0cfb11bd5f17253ddd1334a915dd3ee62de614dbc2efe4890c44fdb52474f36e` |
| 21 | `theorem` | [normSq_S_smul_lt_one](../../../../../mathematics/Topology/GeneralTopology/Modular/Variantece9962a37d5b57caa801754ac55ef26438601f025af5bbbdb8f614be4e40c1e.lean/declarations/normsq-s-smul-lt-one--8302b89857b42847710af890.md) | 357 | `result-track:8302b89857b42847710af890ee5966dda73072db563890de75656346097676cc` |
| 22 | `theorem` | [im_lt_im_S_smul](../../../../../mathematics/Topology/GeneralTopology/Modular/Variantece9962a37d5b57caa801754ac55ef26438601f025af5bbbdb8f614be4e40c1e.lean/declarations/im-lt-im-s-smul--7435dba313bd491d4cb690c5.md) | 362 | `result-track:7435dba313bd491d4cb690c52e793805fe6ed433cf57ce53f3bb3bb72e790546` |
| 23 | `def` | [fd](../../../../../mathematics/Topology/GeneralTopology/Modular/Variantece9962a37d5b57caa801754ac55ef26438601f025af5bbbdb8f614be4e40c1e.lean/declarations/fd--47dca813b03bc34cde1573ca.md) | 371 | `declaration-track:47dca813b03bc34cde1573ca5aae87b8b1300884a8f1a5235142cb79cdfd9778` |
| 24 | `def` | [fdo](../../../../../mathematics/Topology/GeneralTopology/Modular/Variantece9962a37d5b57caa801754ac55ef26438601f025af5bbbdb8f614be4e40c1e.lean/declarations/fdo--c762d88420884f5dc2e46674.md) | 375 | `declaration-track:c762d88420884f5dc2e46674498b42691f09c3066f7c80108824cac5890d5920` |
| 25 | `theorem` | [abs_two_mul_re_lt_one_of_mem_fdo](../../../../../mathematics/Topology/GeneralTopology/Modular/Variantece9962a37d5b57caa801754ac55ef26438601f025af5bbbdb8f614be4e40c1e.lean/declarations/abs-two-mul-re-lt-one-of-mem-fdo--41b531205a9701931a8f16e8.md) | 386 | `result-track:41b531205a9701931a8f16e858f2d43751eb5ecd4db48eeaef2eaac4edcdd727` |
| 26 | `theorem` | [three_lt_four_mul_im_sq_of_mem_fdo](../../../../../mathematics/Topology/GeneralTopology/Modular/Variantece9962a37d5b57caa801754ac55ef26438601f025af5bbbdb8f614be4e40c1e.lean/declarations/three-lt-four-mul-im-sq-of-mem-fdo--3a1167b17376b466f9764266.md) | 390 | `result-track:3a1167b17376b466f9764266304e1ee45e53ae8b435115d7cb03db728ed77024` |
| 27 | `theorem` | [three_le_four_mul_im_sq_of_mem_fd](../../../../../mathematics/Topology/GeneralTopology/Modular/Variantece9962a37d5b57caa801754ac55ef26438601f025af5bbbdb8f614be4e40c1e.lean/declarations/three-le-four-mul-im-sq-of-mem-fd--e4c83c8d99dffa23065b2f47.md) | 396 | `result-track:e4c83c8d99dffa23065b2f4799fe1191ff1a7fb530d16a51cd528d3503aa2784` |
| 28 | `theorem` | [one_lt_normSq_T_zpow_smul](../../../../../mathematics/Topology/GeneralTopology/Modular/Variantece9962a37d5b57caa801754ac55ef26438601f025af5bbbdb8f614be4e40c1e.lean/declarations/one-lt-normsq-t-zpow-smul--76abd09a732a289c0e381dbc.md) | 401 | `result-track:76abd09a732a289c0e381dbc0e189044d64c84ce1d5409a1a659b2fcd5fdf010` |
| 29 | `theorem` | [eq_zero_of_mem_fdo_of_T_zpow_mem_fdo](../../../../../mathematics/Topology/GeneralTopology/Modular/Variantece9962a37d5b57caa801754ac55ef26438601f025af5bbbdb8f614be4e40c1e.lean/declarations/eq-zero-of-mem-fdo-of-t-zpow-mem-fdo--566db0c0d7e53d88569f6be7.md) | 408 | `result-track:566db0c0d7e53d88569f6be7013a89e096b2228714d7e5a10a9b4d977a36fda3` |
| 30 | `theorem` | [exists_smul_mem_fd](../../../../../mathematics/Topology/GeneralTopology/Modular/Variantece9962a37d5b57caa801754ac55ef26438601f025af5bbbdb8f614be4e40c1e.lean/declarations/exists-smul-mem-fd--b9bbf91022aa2de1dba75570.md) | 422 | `result-track:b9bbf91022aa2de1dba755703befeaf4416fa4556a2464dc5ca48e70e9b04fe2` |
| 31 | `theorem` | [abs_c_le_one](../../../../../mathematics/Topology/GeneralTopology/Modular/Variantece9962a37d5b57caa801754ac55ef26438601f025af5bbbdb8f614be4e40c1e.lean/declarations/abs-c-le-one--d70af6332a8e962f8365c79e.md) | 456 | `result-track:d70af6332a8e962f8365c79e9bd2056b84502352d321c70d4e35254edfbd69ff` |
| 32 | `theorem` | [c_eq_zero](../../../../../mathematics/Topology/GeneralTopology/Modular/Variantece9962a37d5b57caa801754ac55ef26438601f025af5bbbdb8f614be4e40c1e.lean/declarations/c-eq-zero--7e0d1bcc29bfab47b189db37.md) | 485 | `result-track:7e0d1bcc29bfab47b189db37e314dde94931819c0c505118d4639d6a87a1018f` |
| 33 | `theorem` | [eq_smul_self_of_mem_fdo_mem_fdo](../../../../../mathematics/Topology/GeneralTopology/Modular/Variantece9962a37d5b57caa801754ac55ef26438601f025af5bbbdb8f614be4e40c1e.lean/declarations/eq-smul-self-of-mem-fdo-mem-fdo--e146c7a6f2ee7cbe0e84d583.md) | 510 | `result-track:e146c7a6f2ee7cbe0e84d58356d75f752fad37dee3a16700175f097521b63f35` |
| 34 | `lemma` | [exists_one_half_le_im_smul](../../../../../mathematics/Topology/GeneralTopology/Modular/Variantece9962a37d5b57caa801754ac55ef26438601f025af5bbbdb8f614be4e40c1e.lean/declarations/exists-one-half-le-im-smul--2f379d87649931536b0a7ce7.md) | 519 | `result-track:2f379d87649931536b0a7ce70db3f3a7084d54a251ba289eefdf791508783448` |
| 35 | `lemma` | [exists_one_half_le_im_smul_and_norm_denom_le](../../../../../mathematics/Topology/GeneralTopology/Modular/Variantece9962a37d5b57caa801754ac55ef26438601f025af5bbbdb8f614be4e40c1e.lean/declarations/exists-one-half-le-im-smul-and-norm-denom-le--01302df071c178e537db121f.md) | 526 | `result-track:01302df071c178e537db121fb251923e297035819b0b16fc0e84e12e67454f5c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
