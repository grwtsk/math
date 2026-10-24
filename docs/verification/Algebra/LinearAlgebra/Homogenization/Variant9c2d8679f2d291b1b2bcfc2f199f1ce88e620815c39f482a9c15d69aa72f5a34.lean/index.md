# Verification target: GRWTSK.Algebra.LinearAlgebra.Homogenization.Variant9c2d8679f2d291b1b2bcfc2f199f1ce88e620815c39f482a9c15d69aa72f5a34

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "970ed3deaebc1ed258763a9f6e1de2606d0e7e00",
  "lexical_observation_count": 62,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Homogenization/Variant9c2d8679f2d291b1b2bcfc2f199f1ce88e620815c39f482a9c15d69aa72f5a34.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Homogenization/Variant9c2d8679f2d291b1b2bcfc2f199f1ce88e620815c39f482a9c15d69aa72f5a34.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Homogenization/Variant9c2d8679f2d291b1b2bcfc2f199f1ce88e620815c39f482a9c15d69aa72f5a34.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `970ed3deaebc1ed258763a9f6e1de2606d0e7e00`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Homogenization/Variant9c2d8679f2d291b1b2bcfc2f199f1ce88e620815c39f482a9c15d69aa72f5a34.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Homogenization/Variant9c2d8679f2d291b1b2bcfc2f199f1ce88e620815c39f482a9c15d69aa72f5a34.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Submodule.EqLocus` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Finiteness.Basic` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Finiteness.Prod` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Module` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Homogenization](../../../../../mathematics/Algebra/LinearAlgebra/Homogenization/Variant9c2d8679f2d291b1b2bcfc2f199f1ce88e620815c39f482a9c15d69aa72f5a34.lean/declarations/homogenization--841c182b8970f451b8a7461a.md) | 63 | `declaration-track:841c182b8970f451b8a7461a18efc672f1a86027ec654c91e05a393e5ad5d639` |
| 2 | `def` | [equivProdAux](../../../../../mathematics/Algebra/LinearAlgebra/Homogenization/Variant9c2d8679f2d291b1b2bcfc2f199f1ce88e620815c39f482a9c15d69aa72f5a34.lean/declarations/equivprodaux--3954f6c5a446a20209f4639b.md) | 81 | `declaration-track:3954f6c5a446a20209f4639bca0d98666525630696c7f8d4e805ebd44dcb8dd5` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Homogenization/Variant9c2d8679f2d291b1b2bcfc2f199f1ce88e620815c39f482a9c15d69aa72f5a34.lean/declarations/instance--31d6a2cda28624e68fe5936d.md) | 85 | `declaration-track:31d6a2cda28624e68fe5936d6156677d6bb6d2bbdbf9b6d5ea4a692367d73cc5` |
| 4 | `instance` | [instModule](../../../../../mathematics/Algebra/LinearAlgebra/Homogenization/Variant9c2d8679f2d291b1b2bcfc2f199f1ce88e620815c39f482a9c15d69aa72f5a34.lean/declarations/instmodule--63a715e88611e3d8ddbe92d8.md) | 93 | `declaration-track:63a715e88611e3d8ddbe92d8ce493a872344472ff247115935f7601f5fb77313` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Homogenization/Variant9c2d8679f2d291b1b2bcfc2f199f1ce88e620815c39f482a9c15d69aa72f5a34.lean/declarations/instance--eecf361d0b4a9ea40d5944a4.md) | 101 | `declaration-track:eecf361d0b4a9ea40d5944a41cfbccae67ec2abf8ad063589bc470db73fc2679` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Homogenization/Variant9c2d8679f2d291b1b2bcfc2f199f1ce88e620815c39f482a9c15d69aa72f5a34.lean/declarations/instance--0a343de934939454104380ef.md) | 105 | `declaration-track:0a343de934939454104380ef004c1b8a7cd378d370ed7c10a09f7522eeb53847` |
| 7 | `def` | [ofPoint](../../../../../mathematics/Algebra/LinearAlgebra/Homogenization/Variant9c2d8679f2d291b1b2bcfc2f199f1ce88e620815c39f482a9c15d69aa72f5a34.lean/declarations/ofpoint--1b54021a1c86b4f0b377e162.md) | 112 | `declaration-track:1b54021a1c86b4f0b377e162c083ef93678a76a77d2b72ce87e540de4fd2f386` |
| 8 | `def` | [ofVector](../../../../../mathematics/Algebra/LinearAlgebra/Homogenization/Variant9c2d8679f2d291b1b2bcfc2f199f1ce88e620815c39f482a9c15d69aa72f5a34.lean/declarations/ofvector--ad3ea3535d06fb85dcf9547e.md) | 117 | `declaration-track:ad3ea3535d06fb85dcf9547e788ac7afd75985ecc0f2a0b9da58015a9faca836` |
| 9 | `theorem` | [ofPoint_linear](../../../../../mathematics/Algebra/LinearAlgebra/Homogenization/Variant9c2d8679f2d291b1b2bcfc2f199f1ce88e620815c39f482a9c15d69aa72f5a34.lean/declarations/ofpoint-linear--059113a204da81e97ccd7e40.md) | 121 | `result-track:059113a204da81e97ccd7e40104a7324c2053773770f3186dd6b270fdfa3539d` |
| 10 | `theorem` | [ofVector_vsub](../../../../../mathematics/Algebra/LinearAlgebra/Homogenization/Variant9c2d8679f2d291b1b2bcfc2f199f1ce88e620815c39f482a9c15d69aa72f5a34.lean/declarations/ofvector-vsub--afc1d6450b5976922eb3f946.md) | 125 | `result-track:afc1d6450b5976922eb3f946e1d5c9317715d13388571e29a45cd9f62002effb` |
| 11 | `theorem` | [ofVector_smul](../../../../../mathematics/Algebra/LinearAlgebra/Homogenization/Variant9c2d8679f2d291b1b2bcfc2f199f1ce88e620815c39f482a9c15d69aa72f5a34.lean/declarations/ofvector-smul--4d824680b8dc7fd4f30d5ddb.md) | 129 | `result-track:4d824680b8dc7fd4f30d5ddb758e5240e825c2b86b0f2b63dcbdd6efe4c99171` |
| 12 | `theorem` | [ofVector_injective](../../../../../mathematics/Algebra/LinearAlgebra/Homogenization/Variant9c2d8679f2d291b1b2bcfc2f199f1ce88e620815c39f482a9c15d69aa72f5a34.lean/declarations/ofvector-injective--ee19a1e3994eb95bbe8054b4.md) | 133 | `result-track:ee19a1e3994eb95bbe8054b41370b5816b6a815146012d8d3e255dfec320a8ec` |
| 13 | `theorem` | [ofPoint_injective](../../../../../mathematics/Algebra/LinearAlgebra/Homogenization/Variant9c2d8679f2d291b1b2bcfc2f199f1ce88e620815c39f482a9c15d69aa72f5a34.lean/declarations/ofpoint-injective--01b51da286b3082001ea1dc3.md) | 136 | `result-track:01b51da286b3082001ea1dc3ffc41187e9d3ce6f7dd81a8995bdca6b5ceb8083` |
| 14 | `theorem` | [induction_on](../../../../../mathematics/Algebra/LinearAlgebra/Homogenization/Variant9c2d8679f2d291b1b2bcfc2f199f1ce88e620815c39f482a9c15d69aa72f5a34.lean/declarations/induction-on--33cd929eaf8973b6d0bd5ef8.md) | 143 | `result-track:33cd929eaf8973b6d0bd5ef8602d890b2fa23b5349cbc9cc8fe6d0620f9301fc` |
| 15 | `theorem` | [induction_of_point](../../../../../mathematics/Algebra/LinearAlgebra/Homogenization/Variant9c2d8679f2d291b1b2bcfc2f199f1ce88e620815c39f482a9c15d69aa72f5a34.lean/declarations/induction-of-point--efbc4d1ec934224f9d09e061.md) | 151 | `result-track:efbc4d1ec934224f9d09e061d5db194bef7fea48d38c9451600a883092551377` |
| 16 | `theorem` | [ofVector_ofPoint_cases](../../../../../mathematics/Algebra/LinearAlgebra/Homogenization/Variant9c2d8679f2d291b1b2bcfc2f199f1ce88e620815c39f482a9c15d69aa72f5a34.lean/declarations/ofvector-ofpoint-cases--618235315578c252ebe4eb86.md) | 160 | `result-track:618235315578c252ebe4eb867748c3a2d72ea6665812a5a9aed9838564c8565e` |
| 17 | `theorem` | [span_range_ofPoint](../../../../../mathematics/Algebra/LinearAlgebra/Homogenization/Variant9c2d8679f2d291b1b2bcfc2f199f1ce88e620815c39f482a9c15d69aa72f5a34.lean/declarations/span-range-ofpoint--2aad4cd4d4bce67b61fb1ea6.md) | 170 | `result-track:2aad4cd4d4bce67b61fb1ea630e09b4bc517ca2bc39bf5a3eaf657ed870c6725` |
| 18 | `theorem` | [hom_ext](../../../../../mathematics/Algebra/LinearAlgebra/Homogenization/Variant9c2d8679f2d291b1b2bcfc2f199f1ce88e620815c39f482a9c15d69aa72f5a34.lean/declarations/hom-ext--93d2acca49cceaef5c88b229.md) | 181 | `result-track:93d2acca49cceaef5c88b2292854a482ae7798b02eeb03564304e617d01f3c16` |
| 19 | `theorem` | [hom_ext_iff](../../../../../mathematics/Algebra/LinearAlgebra/Homogenization/Variant9c2d8679f2d291b1b2bcfc2f199f1ce88e620815c39f482a9c15d69aa72f5a34.lean/declarations/hom-ext-iff--b121fffc59fc972c273512a4.md) | 186 | `result-track:b121fffc59fc972c273512a4f927b92b8a9d7f0739ea4738c987b7be704c101b` |
| 20 | `def` | [liftAux](../../../../../mathematics/Algebra/LinearAlgebra/Homogenization/Variant9c2d8679f2d291b1b2bcfc2f199f1ce88e620815c39f482a9c15d69aa72f5a34.lean/declarations/liftaux--75380493985d674d3ab2fb8e.md) | 192 | `declaration-track:75380493985d674d3ab2fb8ebac5bd702277d20cdf738d2ed108d0b1022ba9f7` |
| 21 | `theorem` | [liftAux_ofPoint](../../../../../mathematics/Algebra/LinearAlgebra/Homogenization/Variant9c2d8679f2d291b1b2bcfc2f199f1ce88e620815c39f482a9c15d69aa72f5a34.lean/declarations/liftaux-ofpoint--d3a04f5427765d856fc6bd21.md) | 196 | `result-track:d3a04f5427765d856fc6bd21cf9dbfd9418826b888b6b8fbdcd22434adbd5ad8` |
| 22 | `def` | [lift](../../../../../mathematics/Algebra/LinearAlgebra/Homogenization/Variant9c2d8679f2d291b1b2bcfc2f199f1ce88e620815c39f482a9c15d69aa72f5a34.lean/declarations/lift--d7c855a6567562e1ba02c8b6.md) | 205 | `declaration-track:d7c855a6567562e1ba02c8b60974082a9540934ad7cab1af95762674d5f5d6e8` |
| 23 | `theorem` | [lift_apply_ofPoint](../../../../../mathematics/Algebra/LinearAlgebra/Homogenization/Variant9c2d8679f2d291b1b2bcfc2f199f1ce88e620815c39f482a9c15d69aa72f5a34.lean/declarations/lift-apply-ofpoint--83c3dca8a03b42488e090b36.md) | 219 | `result-track:83c3dca8a03b42488e090b365ef874e7cc47c4b06e67b9ff61617892e763bff7` |
| 24 | `theorem` | [lift_apply_ofVector](../../../../../mathematics/Algebra/LinearAlgebra/Homogenization/Variant9c2d8679f2d291b1b2bcfc2f199f1ce88e620815c39f482a9c15d69aa72f5a34.lean/declarations/lift-apply-ofvector--35f432a55c6016e64041f21b.md) | 223 | `result-track:35f432a55c6016e64041f21b58085e6383a996241995ee2f552f339ec5890920` |
| 25 | `theorem` | [lift_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/Homogenization/Variant9c2d8679f2d291b1b2bcfc2f199f1ce88e620815c39f482a9c15d69aa72f5a34.lean/declarations/lift-symm-apply--2ff0a4a93fc960f67a2b239a.md) | 230 | `result-track:2ff0a4a93fc960f67a2b239a4bffdfcc809a4a32e5b354b8b5a1d5ca139becaa` |
| 26 | `theorem` | [lift_symm_linear_apply](../../../../../mathematics/Algebra/LinearAlgebra/Homogenization/Variant9c2d8679f2d291b1b2bcfc2f199f1ce88e620815c39f482a9c15d69aa72f5a34.lean/declarations/lift-symm-linear-apply--316ff082cccd0a69717f7550.md) | 234 | `result-track:316ff082cccd0a69717f75503c33c364398e54378b36b30e9e3a1bba60c102ff` |
| 27 | `theorem` | [lift_symm_id](../../../../../mathematics/Algebra/LinearAlgebra/Homogenization/Variant9c2d8679f2d291b1b2bcfc2f199f1ce88e620815c39f482a9c15d69aa72f5a34.lean/declarations/lift-symm-id--7565c3bd8b829837e25f1a0c.md) | 238 | `result-track:7565c3bd8b829837e25f1a0ce239f842ab9606236957b794e4add0244a95ce05` |
| 28 | `theorem` | [lift_ofPoint](../../../../../mathematics/Algebra/LinearAlgebra/Homogenization/Variant9c2d8679f2d291b1b2bcfc2f199f1ce88e620815c39f482a9c15d69aa72f5a34.lean/declarations/lift-ofpoint--cf48a28caf818a6923d13835.md) | 241 | `result-track:cf48a28caf818a6923d138351df5659508d7f038eef27a9cdef264add2b8abc3` |
| 29 | `theorem` | [lift_smul](../../../../../mathematics/Algebra/LinearAlgebra/Homogenization/Variant9c2d8679f2d291b1b2bcfc2f199f1ce88e620815c39f482a9c15d69aa72f5a34.lean/declarations/lift-smul--e7d8825e7c6fcd72bc997235.md) | 249 | `result-track:e7d8825e7c6fcd72bc997235debe983d43290cdff28d8c717d4e78de9b7a3543` |
| 30 | `theorem` | [lift_symm_smul](../../../../../mathematics/Algebra/LinearAlgebra/Homogenization/Variant9c2d8679f2d291b1b2bcfc2f199f1ce88e620815c39f482a9c15d69aa72f5a34.lean/declarations/lift-symm-smul--fc106c6745886b31236865b1.md) | 253 | `result-track:fc106c6745886b31236865b1b10d96876805ec6f4b95e0f0dcc0986e6ef0dd64` |
| 31 | `def` | [liftₗ](../../../../../mathematics/Algebra/LinearAlgebra/Homogenization/Variant9c2d8679f2d291b1b2bcfc2f199f1ce88e620815c39f482a9c15d69aa72f5a34.lean/declarations/lift--8b747ecd4c8735bfc37ea2f8.md) | 260 | `declaration-track:8b747ecd4c8735bfc37ea2f8ecf73be725dafdca068a49dba8f9a18ce4e1d5a5` |
| 32 | `theorem` | [coe_liftₗ](../../../../../mathematics/Algebra/LinearAlgebra/Homogenization/Variant9c2d8679f2d291b1b2bcfc2f199f1ce88e620815c39f482a9c15d69aa72f5a34.lean/declarations/coe-lift--44aa69931d95a89300f53cf1.md) | 264 | `result-track:44aa69931d95a89300f53cf1f1ad6ca3dab4cc0d273407cba97ddd24d158f00a` |
| 33 | `theorem` | [coe_liftₗ_symm](../../../../../mathematics/Algebra/LinearAlgebra/Homogenization/Variant9c2d8679f2d291b1b2bcfc2f199f1ce88e620815c39f482a9c15d69aa72f5a34.lean/declarations/coe-lift-symm--7051cf6ebaebf5776ae86be8.md) | 268 | `result-track:7051cf6ebaebf5776ae86be8978e784b3f24dc82cdefad05a72f32e1d2643017` |
| 34 | `def` | [weight](../../../../../mathematics/Algebra/LinearAlgebra/Homogenization/Variant9c2d8679f2d291b1b2bcfc2f199f1ce88e620815c39f482a9c15d69aa72f5a34.lean/declarations/weight--cbc0532f3a36f5d51e04b1ed.md) | 275 | `declaration-track:cbc0532f3a36f5d51e04b1edcc361d1eeb0dcdfad7860d21c751bdca01f6f2c9` |
| 35 | `theorem` | [weight_ofVector](../../../../../mathematics/Algebra/LinearAlgebra/Homogenization/Variant9c2d8679f2d291b1b2bcfc2f199f1ce88e620815c39f482a9c15d69aa72f5a34.lean/declarations/weight-ofvector--2eb58c0e67b26bf36a779e75.md) | 279 | `result-track:2eb58c0e67b26bf36a779e7584fed6ea8ccd6bb16f95af18dbb112e09013e63b` |
| 36 | `theorem` | [weight_ofPoint](../../../../../mathematics/Algebra/LinearAlgebra/Homogenization/Variant9c2d8679f2d291b1b2bcfc2f199f1ce88e620815c39f482a9c15d69aa72f5a34.lean/declarations/weight-ofpoint--d048c53f4098a4f8ab45b30b.md) | 283 | `result-track:d048c53f4098a4f8ab45b30b8ceb76454d82938bc74ca35bb36e113e5e1d96ac` |
| 37 | `theorem` | [weight_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/Homogenization/Variant9c2d8679f2d291b1b2bcfc2f199f1ce88e620815c39f482a9c15d69aa72f5a34.lean/declarations/weight-eq-zero-iff--38a499b5b6d02db0b0424779.md) | 286 | `result-track:38a499b5b6d02db0b0424779c884e4e042560cca137e66add523c990b288ea99` |
| 38 | `theorem` | [weight_eq_one_iff](../../../../../mathematics/Algebra/LinearAlgebra/Homogenization/Variant9c2d8679f2d291b1b2bcfc2f199f1ce88e620815c39f482a9c15d69aa72f5a34.lean/declarations/weight-eq-one-iff--1c1eaa2e9a3d9e4e0c4f70ae.md) | 290 | `result-track:1c1eaa2e9a3d9e4e0c4f70aeb52851d2fc5dfc3bfa57dd3a5a3cf811737f2b25` |
| 39 | `theorem` | [lift_const_apply](../../../../../mathematics/Algebra/LinearAlgebra/Homogenization/Variant9c2d8679f2d291b1b2bcfc2f199f1ce88e620815c39f482a9c15d69aa72f5a34.lean/declarations/lift-const-apply--13b87501b163da8665209f45.md) | 297 | `result-track:13b87501b163da8665209f458db3f0c11af46e85a8ffc368fc6b9a4864f2e71b` |
| 40 | `theorem` | [weight_surjective](../../../../../mathematics/Algebra/LinearAlgebra/Homogenization/Variant9c2d8679f2d291b1b2bcfc2f199f1ce88e620815c39f482a9c15d69aa72f5a34.lean/declarations/weight-surjective--f847eaaa65dc3b8eea425a1e.md) | 301 | `result-track:f847eaaa65dc3b8eea425a1ed3848b516dcb2e1e3a168a4303166d89a10b6e11` |
| 41 | `def` | [map](../../../../../mathematics/Algebra/LinearAlgebra/Homogenization/Variant9c2d8679f2d291b1b2bcfc2f199f1ce88e620815c39f482a9c15d69aa72f5a34.lean/declarations/map--eedef77b195ad82b108f1b19.md) | 308 | `declaration-track:eedef77b195ad82b108f1b19eb4b3aa24d6f668150c8df1ce16d442a61249d58` |
| 42 | `theorem` | [map_apply_ofPoint](../../../../../mathematics/Algebra/LinearAlgebra/Homogenization/Variant9c2d8679f2d291b1b2bcfc2f199f1ce88e620815c39f482a9c15d69aa72f5a34.lean/declarations/map-apply-ofpoint--c3bf5185bc7c4abb8ddc9027.md) | 312 | `result-track:c3bf5185bc7c4abb8ddc9027ec260e6fadbf7a642304efb5d231f280719d7b85` |
| 43 | `theorem` | [map_apply_ofVector](../../../../../mathematics/Algebra/LinearAlgebra/Homogenization/Variant9c2d8679f2d291b1b2bcfc2f199f1ce88e620815c39f482a9c15d69aa72f5a34.lean/declarations/map-apply-ofvector--66e109fe254414f513e33e53.md) | 316 | `result-track:66e109fe254414f513e33e53bc781969abbe00b3522a52e4ce41ae8acde4b17d` |
| 44 | `theorem` | [map_id](../../../../../mathematics/Algebra/LinearAlgebra/Homogenization/Variant9c2d8679f2d291b1b2bcfc2f199f1ce88e620815c39f482a9c15d69aa72f5a34.lean/declarations/map-id--9a357b7ade677331d29a4d21.md) | 321 | `result-track:9a357b7ade677331d29a4d218066be5c79ffecf400711f299734440ba3c6842b` |
| 45 | `theorem` | [map_injective'](../../../../../mathematics/Algebra/LinearAlgebra/Homogenization/Variant9c2d8679f2d291b1b2bcfc2f199f1ce88e620815c39f482a9c15d69aa72f5a34.lean/declarations/map-injective--675a7eae888b9b745cfcd4ac.md) | 324 | `result-track:675a7eae888b9b745cfcd4accd529ff32d407080702e46a62247e1f09ca0ff23` |
| 46 | `theorem` | [map_eq_id_iff](../../../../../mathematics/Algebra/LinearAlgebra/Homogenization/Variant9c2d8679f2d291b1b2bcfc2f199f1ce88e620815c39f482a9c15d69aa72f5a34.lean/declarations/map-eq-id-iff--84f4fe01b2dfa1c3b7c8f299.md) | 330 | `result-track:84f4fe01b2dfa1c3b7c8f299f259226c439d87598324cb39e277ba310e412de8` |
| 47 | `theorem` | [map_comp](../../../../../mathematics/Algebra/LinearAlgebra/Homogenization/Variant9c2d8679f2d291b1b2bcfc2f199f1ce88e620815c39f482a9c15d69aa72f5a34.lean/declarations/map-comp--af436986b3034ee011e83ed7.md) | 333 | `result-track:af436986b3034ee011e83ed7b55fb80d9497ff643a8577afd9e3dd7d576bf59b` |
| 48 | `theorem` | [weight_map](../../../../../mathematics/Algebra/LinearAlgebra/Homogenization/Variant9c2d8679f2d291b1b2bcfc2f199f1ce88e620815c39f482a9c15d69aa72f5a34.lean/declarations/weight-map--0058f341c759301e1b928000.md) | 337 | `result-track:0058f341c759301e1b928000cf004cbcf720ea23b7e2c0ca3161958a8d104706` |
| 49 | `theorem` | [lift_map](../../../../../mathematics/Algebra/LinearAlgebra/Homogenization/Variant9c2d8679f2d291b1b2bcfc2f199f1ce88e620815c39f482a9c15d69aa72f5a34.lean/declarations/lift-map--cba66e1c34184099cf4cd681.md) | 340 | `result-track:cba66e1c34184099cf4cd68157cdfaec6b92a7e0a7ae2b4977e59067a5bef05c` |
| 50 | `theorem` | [map_injective](../../../../../mathematics/Algebra/LinearAlgebra/Homogenization/Variant9c2d8679f2d291b1b2bcfc2f199f1ce88e620815c39f482a9c15d69aa72f5a34.lean/declarations/map-injective--50503d7e4b9802735f2bf524.md) | 345 | `result-track:50503d7e4b9802735f2bf524f5d1c2af7702845f36ceeaa4489db5a825c064e6` |
| 51 | `theorem` | [map_surjective](../../../../../mathematics/Algebra/LinearAlgebra/Homogenization/Variant9c2d8679f2d291b1b2bcfc2f199f1ce88e620815c39f482a9c15d69aa72f5a34.lean/declarations/map-surjective--5459c820fc184d814fe43a47.md) | 361 | `result-track:5459c820fc184d814fe43a4716f6ec81e0fbb2125c795515182f8f830b861438` |
| 52 | `def` | [congr](../../../../../mathematics/Algebra/LinearAlgebra/Homogenization/Variant9c2d8679f2d291b1b2bcfc2f199f1ce88e620815c39f482a9c15d69aa72f5a34.lean/declarations/congr--476ccc0c8de9d556443c6009.md) | 377 | `declaration-track:476ccc0c8de9d556443c6009f5f94331ae5ae4eb6f770b8372c931ff46567b7c` |
| 53 | `theorem` | [coe_congr](../../../../../mathematics/Algebra/LinearAlgebra/Homogenization/Variant9c2d8679f2d291b1b2bcfc2f199f1ce88e620815c39f482a9c15d69aa72f5a34.lean/declarations/coe-congr--ea08f6eeda822ee4ddbe109f.md) | 381 | `result-track:ea08f6eeda822ee4ddbe109fb7e012d24b4526458e55416758fe039ba179027a` |
| 54 | `theorem` | [toLinearMap_congr](../../../../../mathematics/Algebra/LinearAlgebra/Homogenization/Variant9c2d8679f2d291b1b2bcfc2f199f1ce88e620815c39f482a9c15d69aa72f5a34.lean/declarations/tolinearmap-congr--0eb0ca13e0b10ff1ba60b483.md) | 385 | `result-track:0eb0ca13e0b10ff1ba60b48355c0f3938bab69468d2b9ca0ad6753ab3d14d9d9` |
| 55 | `theorem` | [congr_symm](../../../../../mathematics/Algebra/LinearAlgebra/Homogenization/Variant9c2d8679f2d291b1b2bcfc2f199f1ce88e620815c39f482a9c15d69aa72f5a34.lean/declarations/congr-symm--d9848a730aa1681a404a879e.md) | 389 | `result-track:d9848a730aa1681a404a879e2d3ea0690319c27d719bcdd7ef770d87083fe271` |
| 56 | `theorem` | [congr_refl](../../../../../mathematics/Algebra/LinearAlgebra/Homogenization/Variant9c2d8679f2d291b1b2bcfc2f199f1ce88e620815c39f482a9c15d69aa72f5a34.lean/declarations/congr-refl--c0d0da0fdbb353c16ba033e2.md) | 393 | `result-track:c0d0da0fdbb353c16ba033e2dd439d7833b05ae2dea67157255d1b0b4bb94ea8` |
| 57 | `theorem` | [congr_eq_refl_iff](../../../../../mathematics/Algebra/LinearAlgebra/Homogenization/Variant9c2d8679f2d291b1b2bcfc2f199f1ce88e620815c39f482a9c15d69aa72f5a34.lean/declarations/congr-eq-refl-iff--d4c5fd716a38c8da5df2dad0.md) | 397 | `result-track:d4c5fd716a38c8da5df2dad075d555fcac819ba24d1ad0e791de8605f788fc5f` |
| 58 | `theorem` | [congr_trans](../../../../../mathematics/Algebra/LinearAlgebra/Homogenization/Variant9c2d8679f2d291b1b2bcfc2f199f1ce88e620815c39f482a9c15d69aa72f5a34.lean/declarations/congr-trans--09f94d42c6d0d0e913bf599d.md) | 400 | `result-track:09f94d42c6d0d0e913bf599d054103c087ba531a34723a7be1bc7db80916dbdf` |
| 59 | `def` | [toProd](../../../../../mathematics/Algebra/LinearAlgebra/Homogenization/Variant9c2d8679f2d291b1b2bcfc2f199f1ce88e620815c39f482a9c15d69aa72f5a34.lean/declarations/toprod--457edde2480f9aff56f0b401.md) | 406 | `declaration-track:457edde2480f9aff56f0b401b72da713b0d8388992bbea847a416dcafd28b730` |
| 60 | `theorem` | [toProd_ofPoint](../../../../../mathematics/Algebra/LinearAlgebra/Homogenization/Variant9c2d8679f2d291b1b2bcfc2f199f1ce88e620815c39f482a9c15d69aa72f5a34.lean/declarations/toprod-ofpoint--4cb85aad5f80cdb7e240ce0a.md) | 415 | `result-track:4cb85aad5f80cdb7e240ce0a8f744825014a0834d45bbcd78ffaa29453004d7a` |
| 61 | `theorem` | [toProd_ofVector](../../../../../mathematics/Algebra/LinearAlgebra/Homogenization/Variant9c2d8679f2d291b1b2bcfc2f199f1ce88e620815c39f482a9c15d69aa72f5a34.lean/declarations/toprod-ofvector--defc8e1412979d5a6ff078f6.md) | 419 | `result-track:defc8e1412979d5a6ff078f631b517ac084efee80975a6eea0e498d691f07326` |
| 62 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Homogenization/Variant9c2d8679f2d291b1b2bcfc2f199f1ce88e620815c39f482a9c15d69aa72f5a34.lean/declarations/instance--7994fc41a03e9eed883cc04f.md) | 422 | `declaration-track:7994fc41a03e9eed883cc04f39c69f1bf07332b9eb285b6a83c617e418f49cb5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
