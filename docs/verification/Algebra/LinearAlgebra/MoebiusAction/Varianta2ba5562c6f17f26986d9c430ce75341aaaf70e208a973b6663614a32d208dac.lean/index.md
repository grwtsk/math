# Verification target: GRWTSK.Algebra.LinearAlgebra.MoebiusAction.Varianta2ba5562c6f17f26986d9c430ce75341aaaf70e208a973b6663614a32d208dac

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "22daf53a0fd50f501b9f8b554564291fc3c8fb35",
  "lexical_observation_count": 62,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/MoebiusAction/Varianta2ba5562c6f17f26986d9c430ce75341aaaf70e208a973b6663614a32d208dac.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/MoebiusAction/Varianta2ba5562c6f17f26986d9c430ce75341aaaf70e208a973b6663614a32d208dac.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/MoebiusAction/Varianta2ba5562c6f17f26986d9c430ce75341aaaf70e208a973b6663614a32d208dac.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `22daf53a0fd50f501b9f8b554564291fc3c8fb35`.

Source path: `GRWTSK/Algebra/LinearAlgebra/MoebiusAction/Varianta2ba5562c6f17f26986d9c430ce75341aaaf70e208a973b6663614a32d208dac.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/MoebiusAction/Varianta2ba5562c6f17f26986d9c430ce75341aaaf70e208a973b6663614a32d208dac.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.UpperHalfPlane.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Parity` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.GeneralLinearGroup.Defs` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instCoeFun](../../../../../mathematics/Algebra/LinearAlgebra/MoebiusAction/Varianta2ba5562c6f17f26986d9c430ce75341aaaf70e208a973b6663614a32d208dac.lean/declarations/instcoefun--443e59ba6e1d8d2c56947a21.md) | 40 | `declaration-track:443e59ba6e1d8d2c56947a21fcf364f2086de16358765f72206ce065bfb1a56c` |
| 2 | `def` | [num](../../../../../mathematics/Algebra/LinearAlgebra/MoebiusAction/Varianta2ba5562c6f17f26986d9c430ce75341aaaf70e208a973b6663614a32d208dac.lean/declarations/num--16d26cf997c2f47a8fa8b38f.md) | 51 | `declaration-track:16d26cf997c2f47a8fa8b38f1deb4f4cddbb2126c6fd66fce4a7e07f3a559f88` |
| 3 | `def` | [denom](../../../../../mathematics/Algebra/LinearAlgebra/MoebiusAction/Varianta2ba5562c6f17f26986d9c430ce75341aaaf70e208a973b6663614a32d208dac.lean/declarations/denom--0365d82d12d01add624deec4.md) | 54 | `declaration-track:0365d82d12d01add624deec4a8f473d933e103256300b0f88c80ea69e24e6ee5` |
| 4 | `lemma` | [num_neg](../../../../../mathematics/Algebra/LinearAlgebra/MoebiusAction/Varianta2ba5562c6f17f26986d9c430ce75341aaaf70e208a973b6663614a32d208dac.lean/declarations/num-neg--6877beaabc3a8564e10b7c2b.md) | 57 | `result-track:6877beaabc3a8564e10b7c2bb9792ebba848e8295c6dd7592da1be4eccc67dbe` |
| 5 | `lemma` | [denom_neg](../../../../../mathematics/Algebra/LinearAlgebra/MoebiusAction/Varianta2ba5562c6f17f26986d9c430ce75341aaaf70e208a973b6663614a32d208dac.lean/declarations/denom-neg--39994b8454a7d7d1e7a92a92.md) | 61 | `result-track:39994b8454a7d7d1e7a92a92be712eaa46c7ace2edbf00c709ffc0fc4e102d5e` |
| 6 | `theorem` | [linear_ne_zero_of_im](../../../../../mathematics/Algebra/LinearAlgebra/MoebiusAction/Varianta2ba5562c6f17f26986d9c430ce75341aaaf70e208a973b6663614a32d208dac.lean/declarations/linear-ne-zero-of-im--ef18e87ab49cb512c7186431.md) | 64 | `result-track:ef18e87ab49cb512c7186431bf288c122803792eb541d7949108cb1e7e06d564` |
| 7 | `theorem` | [linear_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/MoebiusAction/Varianta2ba5562c6f17f26986d9c430ce75341aaaf70e208a973b6663614a32d208dac.lean/declarations/linear-ne-zero--49cc29f6be6f91eeb1a75ecb.md) | 76 | `result-track:49cc29f6be6f91eeb1a75ecb03cb69693675076db87c044aaeed4b1012a7f836` |
| 8 | `theorem` | [denom_ne_zero_of_im](../../../../../mathematics/Algebra/LinearAlgebra/MoebiusAction/Varianta2ba5562c6f17f26986d9c430ce75341aaaf70e208a973b6663614a32d208dac.lean/declarations/denom-ne-zero-of-im--f478aa72644426a29c519a06.md) | 80 | `result-track:f478aa72644426a29c519a06631e1d2e8e6570b0464ae89245a7b880600a0912` |
| 9 | `theorem` | [denom_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/MoebiusAction/Varianta2ba5562c6f17f26986d9c430ce75341aaaf70e208a973b6663614a32d208dac.lean/declarations/denom-ne-zero--6f60d0c1caf8fdc747defccf.md) | 84 | `result-track:6f60d0c1caf8fdc747defccfe5ab2e8eb322a6920a974373abc3e8497ef9de5a` |
| 10 | `theorem` | [normSq_denom_pos](../../../../../mathematics/Algebra/LinearAlgebra/MoebiusAction/Varianta2ba5562c6f17f26986d9c430ce75341aaaf70e208a973b6663614a32d208dac.lean/declarations/normsq-denom-pos--a2dc1714b4b839c76b94107e.md) | 87 | `result-track:a2dc1714b4b839c76b94107ee8dd99cea30699edad8f295535c40bab5c920dfb` |
| 11 | `theorem` | [normSq_denom_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/MoebiusAction/Varianta2ba5562c6f17f26986d9c430ce75341aaaf70e208a973b6663614a32d208dac.lean/declarations/normsq-denom-ne-zero--fdfcbec859a48705d56da589.md) | 91 | `result-track:fdfcbec859a48705d56da5897d54a53b93c6f18821203c59ec33db268cd5c4de` |
| 12 | `lemma` | [denom_cocycle](../../../../../mathematics/Algebra/LinearAlgebra/MoebiusAction/Varianta2ba5562c6f17f26986d9c430ce75341aaaf70e208a973b6663614a32d208dac.lean/declarations/denom-cocycle--5c112099f843254bd8a3cb53.md) | 95 | `result-track:5c112099f843254bd8a3cb5334b24a73267ffae5b7e6bda225af05f2004eb13d` |
| 13 | `lemma` | [moebius_im](../../../../../mathematics/Algebra/LinearAlgebra/MoebiusAction/Varianta2ba5562c6f17f26986d9c430ce75341aaaf70e208a973b6663614a32d208dac.lean/declarations/moebius-im--3a09858087bf394c98f596a6.md) | 104 | `result-track:3a09858087bf394c98f596a6f8ddfffc863f5c4dc6756f826dca8f26dd31cd51` |
| 14 | `def` | [σ](../../../../../mathematics/Algebra/LinearAlgebra/MoebiusAction/Varianta2ba5562c6f17f26986d9c430ce75341aaaf70e208a973b6663614a32d208dac.lean/declarations/anonymous--2c4123ed61a6e83c01919bf5.md) | 112 | `declaration-track:2c4123ed61a6e83c01919bf5f3f0739e4c81487d7f59491320049cfe3df373cb` |
| 15 | `lemma` | [σ_ofReal](../../../../../mathematics/Algebra/LinearAlgebra/MoebiusAction/Varianta2ba5562c6f17f26986d9c430ce75341aaaf70e208a973b6663614a32d208dac.lean/declarations/ofreal--8b77cbbe09bd21bec40e7443.md) | 115 | `result-track:8b77cbbe09bd21bec40e7443f272ed2fc71230948dcfba7a4691cb978d348131` |
| 16 | `lemma` | [σ_num](../../../../../mathematics/Algebra/LinearAlgebra/MoebiusAction/Varianta2ba5562c6f17f26986d9c430ce75341aaaf70e208a973b6663614a32d208dac.lean/declarations/num--5be2f1879da97e3b705d00b6.md) | 119 | `result-track:5be2f1879da97e3b705d00b6ad904b4a216dec1e03cb0bf82b42c2aa1cace8a9` |
| 17 | `lemma` | [σ_denom](../../../../../mathematics/Algebra/LinearAlgebra/MoebiusAction/Varianta2ba5562c6f17f26986d9c430ce75341aaaf70e208a973b6663614a32d208dac.lean/declarations/denom--ce7fa6f1689ff1b65c19292b.md) | 122 | `result-track:ce7fa6f1689ff1b65c19292b7a1b3fb8cc8194c229f3de53f2924c83f92ed610` |
| 18 | `lemma` | [σ_neg](../../../../../mathematics/Algebra/LinearAlgebra/MoebiusAction/Varianta2ba5562c6f17f26986d9c430ce75341aaaf70e208a973b6663614a32d208dac.lean/declarations/neg--0d8e0ca791df3b68f3b5777f.md) | 126 | `result-track:0d8e0ca791df3b68f3b5777f4ca71d85e4094fa657b793c754ed5118a2d369ba` |
| 19 | `lemma` | [σ_sq](../../../../../mathematics/Algebra/LinearAlgebra/MoebiusAction/Varianta2ba5562c6f17f26986d9c430ce75341aaaf70e208a973b6663614a32d208dac.lean/declarations/sq--2ffa4325140724d1a4fd888a.md) | 130 | `result-track:2ffa4325140724d1a4fd888ade3bd81069ccb7af6ad86089093961b91003f440` |
| 20 | `lemma` | [σ_im_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/MoebiusAction/Varianta2ba5562c6f17f26986d9c430ce75341aaaf70e208a973b6663614a32d208dac.lean/declarations/im-ne-zero--e2ebf78b34ed590a8a12d7fb.md) | 134 | `result-track:e2ebf78b34ed590a8a12d7fba390ab98c4e939911ee2aebc11fde830edf49fa4` |
| 21 | `lemma` | [σ_mul](../../../../../mathematics/Algebra/LinearAlgebra/MoebiusAction/Varianta2ba5562c6f17f26986d9c430ce75341aaaf70e208a973b6663614a32d208dac.lean/declarations/mul--aba5c4352e65cc93e34d61da.md) | 138 | `result-track:aba5c4352e65cc93e34d61dad25a36021e11c2e90c77313a7472ee411200cec7` |
| 22 | `lemma` | [σ_mul_comm](../../../../../mathematics/Algebra/LinearAlgebra/MoebiusAction/Varianta2ba5562c6f17f26986d9c430ce75341aaaf70e208a973b6663614a32d208dac.lean/declarations/mul-comm--147bbdef800bd469300e8fc6.md) | 147 | `result-track:147bbdef800bd469300e8fc67569f9339b1a5964af19b029e1d8444f6315e8a2` |
| 23 | `def` | [smulAux'](../../../../../mathematics/Algebra/LinearAlgebra/MoebiusAction/Varianta2ba5562c6f17f26986d9c430ce75341aaaf70e208a973b6663614a32d208dac.lean/declarations/smulaux--47cb5c5dcc76b80c25f37395.md) | 152 | `declaration-track:47cb5c5dcc76b80c25f373959de2db98e3877fb0851b6faa8674709984ff746a` |
| 24 | `lemma` | [smulAux'_im](../../../../../mathematics/Algebra/LinearAlgebra/MoebiusAction/Varianta2ba5562c6f17f26986d9c430ce75341aaaf70e208a973b6663614a32d208dac.lean/declarations/smulaux-im--9844762ef53e91c21dbf85a7.md) | 154 | `result-track:9844762ef53e91c21dbf85a7229111c130df924a4c0b730a1f90dc9f54066cbe` |
| 25 | `def` | [smulAux](../../../../../mathematics/Algebra/LinearAlgebra/MoebiusAction/Varianta2ba5562c6f17f26986d9c430ce75341aaaf70e208a973b6663614a32d208dac.lean/declarations/smulaux--fcfdfe570181cf62ab5aedc6.md) | 163 | `declaration-track:fcfdfe570181cf62ab5aedc6e5538c7c298c10614c739cded0dbd6417ef6e53b` |
| 26 | `lemma` | [denom_cocycle'](../../../../../mathematics/Algebra/LinearAlgebra/MoebiusAction/Varianta2ba5562c6f17f26986d9c430ce75341aaaf70e208a973b6663614a32d208dac.lean/declarations/denom-cocycle--2bcbe1c232678e592540f74f.md) | 168 | `result-track:2bcbe1c232678e592540f74f013cea549cd47ab658508725f2ea6d19ca4e47fb` |
| 27 | `theorem` | [mul_smul'](../../../../../mathematics/Algebra/LinearAlgebra/MoebiusAction/Varianta2ba5562c6f17f26986d9c430ce75341aaaf70e208a973b6663614a32d208dac.lean/declarations/mul-smul--cd80e2b9881130fd4db3c609.md) | 178 | `result-track:cd80e2b9881130fd4db3c609912606c29a301d5da4511254ed26c9d756fa7683` |
| 28 | `instance` | [glAction](../../../../../mathematics/Algebra/LinearAlgebra/MoebiusAction/Varianta2ba5562c6f17f26986d9c430ce75341aaaf70e208a973b6663614a32d208dac.lean/declarations/glaction--fa0c8e20a6238b2e173ce63a.md) | 199 | `declaration-track:fa0c8e20a6238b2e173ce63af2f13fe7d76b845d8fd648298028d30fa05d8463` |
| 29 | `lemma` | [coe_smul](../../../../../mathematics/Algebra/LinearAlgebra/MoebiusAction/Varianta2ba5562c6f17f26986d9c430ce75341aaaf70e208a973b6663614a32d208dac.lean/declarations/coe-smul--cfbd945a5885b46654842cc8.md) | 206 | `result-track:cfbd945a5885b46654842cc8fa85f7f555778384d9046e6f6777006c8ecf509e` |
| 30 | `lemma` | [coe_smul_of_det_pos](../../../../../mathematics/Algebra/LinearAlgebra/MoebiusAction/Varianta2ba5562c6f17f26986d9c430ce75341aaaf70e208a973b6663614a32d208dac.lean/declarations/coe-smul-of-det-pos--fbfa2ca002abea8e3a44b83a.md) | 209 | `result-track:fbfa2ca002abea8e3a44b83abf2fff1b484b64397323c8c47a5a65b54c9b9c20` |
| 31 | `lemma` | [denom_cocycle_σ](../../../../../mathematics/Algebra/LinearAlgebra/MoebiusAction/Varianta2ba5562c6f17f26986d9c430ce75341aaaf70e208a973b6663614a32d208dac.lean/declarations/denom-cocycle--1dc22e73d66fff8c3fa054bc.md) | 214 | `result-track:1dc22e73d66fff8c3fa054bcc04faf8176ac15b7e56d002be7d7291171e4ed59` |
| 32 | `lemma` | [glPos_smul_def](../../../../../mathematics/Algebra/LinearAlgebra/MoebiusAction/Varianta2ba5562c6f17f26986d9c430ce75341aaaf70e208a973b6663614a32d208dac.lean/declarations/glpos-smul-def--7ea7fb56d6890627fc9ccaf9.md) | 218 | `result-track:7ea7fb56d6890627fc9ccaf91189740f2b60b1fd2fb75490606e3899baa31b73` |
| 33 | `theorem` | [re_smul](../../../../../mathematics/Algebra/LinearAlgebra/MoebiusAction/Varianta2ba5562c6f17f26986d9c430ce75341aaaf70e208a973b6663614a32d208dac.lean/declarations/re-smul--186323697dc23961cb4bfcb0.md) | 224 | `result-track:186323697dc23961cb4bfcb00b657aa965a5a84ce2ad18b6871cbdfea2960f18` |
| 34 | `theorem` | [im_smul](../../../../../mathematics/Algebra/LinearAlgebra/MoebiusAction/Varianta2ba5562c6f17f26986d9c430ce75341aaaf70e208a973b6663614a32d208dac.lean/declarations/im-smul--3a55952ba7c025fa553e2b4c.md) | 228 | `result-track:3a55952ba7c025fa553e2b4cc36f59e48c1f2f090432c92e629fcf02fc82431c` |
| 35 | `lemma` | [im_smul_eq_div_normSq](../../../../../mathematics/Algebra/LinearAlgebra/MoebiusAction/Varianta2ba5562c6f17f26986d9c430ce75341aaaf70e208a973b6663614a32d208dac.lean/declarations/im-smul-eq-div-normsq--581708f6864d84961de3a634.md) | 236 | `result-track:581708f6864d84961de3a634cd610dcb3a33d93ef9e24b59281832c45f5c4864` |
| 36 | `theorem` | [c_mul_im_sq_le_normSq_denom](../../../../../mathematics/Algebra/LinearAlgebra/MoebiusAction/Varianta2ba5562c6f17f26986d9c430ce75341aaaf70e208a973b6663614a32d208dac.lean/declarations/c-mul-im-sq-le-normsq-denom--8a4454aafcfefb17a2816e9a.md) | 239 | `result-track:8a4454aafcfefb17a2816e9ad825390b04b6c643371ea9f8534c51e95e797106` |
| 37 | `theorem` | [neg_smul](../../../../../mathematics/Algebra/LinearAlgebra/MoebiusAction/Varianta2ba5562c6f17f26986d9c430ce75341aaaf70e208a973b6663614a32d208dac.lean/declarations/neg-smul--02acb38e2d8bce014dd8367f.md) | 247 | `result-track:02acb38e2d8bce014dd8367f736308c4fabdc9fce31d5cca5fbc246e1a72d066` |
| 38 | `lemma` | [denom_one](../../../../../mathematics/Algebra/LinearAlgebra/MoebiusAction/Varianta2ba5562c6f17f26986d9c430ce75341aaaf70e208a973b6663614a32d208dac.lean/declarations/denom-one--82abd0c7157a0bc1d6dae7df.md) | 251 | `result-track:82abd0c7157a0bc1d6dae7df0000e43711bb9b77f7e2889e4a86e64dad5fa9d2` |
| 39 | `instance` | [SLAction](../../../../../mathematics/Algebra/LinearAlgebra/MoebiusAction/Varianta2ba5562c6f17f26986d9c430ce75341aaaf70e208a973b6663614a32d208dac.lean/declarations/slaction--5d3fc325c9b01f272a70d1e7.md) | 256 | `declaration-track:5d3fc325c9b01f272a70d1e74a60b2b9de1572fb9521acbdd7e8843ab9b929d4` |
| 40 | `theorem` | [coe_specialLinearGroup_apply](../../../../../mathematics/Algebra/LinearAlgebra/MoebiusAction/Varianta2ba5562c6f17f26986d9c430ce75341aaaf70e208a973b6663614a32d208dac.lean/declarations/coe-speciallineargroup-apply--595d4610f11ea68a4520f9f3.md) | 259 | `result-track:595d4610f11ea68a4520f9f37769ffa0275e75bab70d51c23cae33a9b17454ea` |
| 41 | `theorem` | [specialLinearGroup_apply](../../../../../mathematics/Algebra/LinearAlgebra/MoebiusAction/Varianta2ba5562c6f17f26986d9c430ce75341aaaf70e208a973b6663614a32d208dac.lean/declarations/speciallineargroup-apply--b98ee81f2837ba7d66e1a1cc.md) | 266 | `result-track:b98ee81f2837ba7d66e1a1cc853d69297a389ef2b15a8c0a9e47fc689d073bc0` |
| 42 | `theorem` | [modular_S_smul](../../../../../mathematics/Algebra/LinearAlgebra/MoebiusAction/Varianta2ba5562c6f17f26986d9c430ce75341aaaf70e208a973b6663614a32d208dac.lean/declarations/modular-s-smul--e2a7d1a031aa118e5fc777c0.md) | 275 | `result-track:e2a7d1a031aa118e5fc777c0b63b5850c3c049acace7ffc09023a546561d978d` |
| 43 | `theorem` | [modular_T_zpow_smul](../../../../../mathematics/Algebra/LinearAlgebra/MoebiusAction/Varianta2ba5562c6f17f26986d9c430ce75341aaaf70e208a973b6663614a32d208dac.lean/declarations/modular-t-zpow-smul--ee19285ab8f5915271ef7117.md) | 280 | `result-track:ee19285ab8f5915271ef71173835061352262f8c3f3929026e60bd0a0fe6ff8d` |
| 44 | `theorem` | [modular_T_smul](../../../../../mathematics/Algebra/LinearAlgebra/MoebiusAction/Varianta2ba5562c6f17f26986d9c430ce75341aaaf70e208a973b6663614a32d208dac.lean/declarations/modular-t-smul--8a67efa006b6c41aef9a023d.md) | 286 | `result-track:8a67efa006b6c41aef9a023d59fd01d572c13e0e1c7ab2f1a85b17c477dfccfa` |
| 45 | `theorem` | [exists_SL2_smul_eq_of_apply_zero_one_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/MoebiusAction/Varianta2ba5562c6f17f26986d9c430ce75341aaaf70e208a973b6663614a32d208dac.lean/declarations/exists-sl2-smul-eq-of-apply-zero-one-eq-zero--33eda7ec969258af9e9ad4f4.md) | 289 | `result-track:33eda7ec969258af9e9ad4f4e3061ab52900cccc4dbbb12e545e994a1b623af7` |
| 46 | `theorem` | [exists_SL2_smul_eq_of_apply_zero_one_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/MoebiusAction/Varianta2ba5562c6f17f26986d9c430ce75341aaaf70e208a973b6663614a32d208dac.lean/declarations/exists-sl2-smul-eq-of-apply-zero-one-ne-zero--cec2fd6d31442bf7b8953823.md) | 297 | `result-track:cec2fd6d31442bf7b8953823c2d1c969f4d016d3a5896cec7cf81d278dabad2d` |
| 47 | `def` | [coe](../../../../../mathematics/Algebra/LinearAlgebra/MoebiusAction/Varianta2ba5562c6f17f26986d9c430ce75341aaaf70e208a973b6663614a32d208dac.lean/declarations/coe--efb999cdbd01bc253bff2a19.md) | 328 | `declaration-track:efb999cdbd01bc253bff2a192d9d43b0b4e3f9445a8e3a616e06982e8f88ee48` |
| 48 | `lemma` | [coe_inj](../../../../../mathematics/Algebra/LinearAlgebra/MoebiusAction/Varianta2ba5562c6f17f26986d9c430ce75341aaaf70e208a973b6663614a32d208dac.lean/declarations/coe-inj--06186297cd342644c932bba1.md) | 331 | `result-track:06186297cd342644c932bba17cb6a52a0f6330e2c20af406e050e8282635b071` |
| 49 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/MoebiusAction/Varianta2ba5562c6f17f26986d9c430ce75341aaaf70e208a973b6663614a32d208dac.lean/declarations/instance--308406788e0d8672e9cc0de0.md) | 338 | `declaration-track:308406788e0d8672e9cc0de0fc63e267980c1acf450044f596946d09f9012536` |
| 50 | `def` | [coeHom](../../../../../mathematics/Algebra/LinearAlgebra/MoebiusAction/Varianta2ba5562c6f17f26986d9c430ce75341aaaf70e208a973b6663614a32d208dac.lean/declarations/coehom--b4d688227acc12e6f511103e.md) | 342 | `declaration-track:b4d688227acc12e6f511103e6a045a885e0ffd3885194b60c05ef759027315e4` |
| 51 | `lemma` | [coeHom_apply](../../../../../mathematics/Algebra/LinearAlgebra/MoebiusAction/Varianta2ba5562c6f17f26986d9c430ce75341aaaf70e208a973b6663614a32d208dac.lean/declarations/coehom-apply--182d72010cfc77387597a060.md) | 344 | `result-track:182d72010cfc77387597a0604f4db7f63efd66fff36fb09ae7e05fb941954f5b` |
| 52 | `theorem` | [coe_apply_complex](../../../../../mathematics/Algebra/LinearAlgebra/MoebiusAction/Varianta2ba5562c6f17f26986d9c430ce75341aaaf70e208a973b6663614a32d208dac.lean/declarations/coe-apply-complex--3b24f56b95529825df2625b6.md) | 347 | `result-track:3b24f56b95529825df2625b6cf2429191ca3c054d89cbb41e882f41fda66fbd0` |
| 53 | `theorem` | [det_coe](../../../../../mathematics/Algebra/LinearAlgebra/MoebiusAction/Varianta2ba5562c6f17f26986d9c430ce75341aaaf70e208a973b6663614a32d208dac.lean/declarations/det-coe--7740502ae3a459eed2930cc8.md) | 354 | `result-track:7740502ae3a459eed2930cc8bd6c7fe9d1a8521b551065b3e33441d9f352dce3` |
| 54 | `lemma` | [coe_one](../../../../../mathematics/Algebra/LinearAlgebra/MoebiusAction/Varianta2ba5562c6f17f26986d9c430ce75341aaaf70e208a973b6663614a32d208dac.lean/declarations/coe-one--b3178f6aae9978f2a5f9bd14.md) | 359 | `result-track:b3178f6aae9978f2a5f9bd143fabb59592a875548f7ba88890a65d0ca642061b` |
| 55 | `instance` | [SLOnGLPos](../../../../../mathematics/Algebra/LinearAlgebra/MoebiusAction/Varianta2ba5562c6f17f26986d9c430ce75341aaaf70e208a973b6663614a32d208dac.lean/declarations/slonglpos--540f25b3cc3a3fdd78391c91.md) | 362 | `declaration-track:540f25b3cc3a3fdd78391c91697536ab5d281986c34b53f97504dbc615d2fb4e` |
| 56 | `theorem` | [SLOnGLPos_smul_apply](../../../../../mathematics/Algebra/LinearAlgebra/MoebiusAction/Varianta2ba5562c6f17f26986d9c430ce75341aaaf70e208a973b6663614a32d208dac.lean/declarations/slonglpos-smul-apply--9ed5b508785822b88e5406bc.md) | 365 | `result-track:9ed5b508785822b88e5406bc2b5450375fa9378507f6df62d687b80c0bff51f2` |
| 57 | `instance` | [SL_to_GL_tower](../../../../../mathematics/Algebra/LinearAlgebra/MoebiusAction/Varianta2ba5562c6f17f26986d9c430ce75341aaaf70e208a973b6663614a32d208dac.lean/declarations/sl-to-gl-tower--4731beb869cd9bb4c2bd8ddd.md) | 369 | `declaration-track:4731beb869cd9bb4c2bd8dddf1d3f591367e1bad3c3099838002cb83378fa33f` |
| 58 | `theorem` | [sl_moeb](../../../../../mathematics/Algebra/LinearAlgebra/MoebiusAction/Varianta2ba5562c6f17f26986d9c430ce75341aaaf70e208a973b6663614a32d208dac.lean/declarations/sl-moeb--8288900d205dc8ed02e8d3da.md) | 381 | `result-track:8288900d205dc8ed02e8d3dac6bacee1779502147ad9618f9bdf20d4671b9f2e` |
| 59 | `theorem` | [SL_neg_smul](../../../../../mathematics/Algebra/LinearAlgebra/MoebiusAction/Varianta2ba5562c6f17f26986d9c430ce75341aaaf70e208a973b6663614a32d208dac.lean/declarations/sl-neg-smul--809337d3edc0d21a3e490eef.md) | 384 | `result-track:809337d3edc0d21a3e490eef03f82ac6783e78dd1fff91d37ea423d99cb9c4d9` |
| 60 | `theorem` | [im_smul_eq_div_normSq](../../../../../mathematics/Algebra/LinearAlgebra/MoebiusAction/Varianta2ba5562c6f17f26986d9c430ce75341aaaf70e208a973b6663614a32d208dac.lean/declarations/im-smul-eq-div-normsq--2213b8300f30187b57324493.md) | 389 | `result-track:2213b8300f30187b5732449331ae9dc866ba38151804a81b36d8390f5505dd16` |
| 61 | `theorem` | [denom_apply](../../../../../mathematics/Algebra/LinearAlgebra/MoebiusAction/Varianta2ba5562c6f17f26986d9c430ce75341aaaf70e208a973b6663614a32d208dac.lean/declarations/denom-apply--9702205c65c59fc9ba692db1.md) | 392 | `result-track:9702205c65c59fc9ba692db156b2645628ebc1b91484337bf459e5b0d8075b9a` |
| 62 | `lemma` | [denom_S](../../../../../mathematics/Algebra/LinearAlgebra/MoebiusAction/Varianta2ba5562c6f17f26986d9c430ce75341aaaf70e208a973b6663614a32d208dac.lean/declarations/denom-s--c3bbb5e74252de2cd1736536.md) | 394 | `result-track:c3bbb5e74252de2cd1736536bdb195d16fa9d0dc273bf3c6465f507c6c459e25` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
