# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ExplicitFormula.Variantf602f5ffe70f42eb5397b5128fc681f89cce7094a19b66e4de69ad4ed0cb8ae4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "11119489556113fd419d7b6fb45ccbaa2e493e2a",
  "lexical_observation_count": 49,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ExplicitFormula/Variantf602f5ffe70f42eb5397b5128fc681f89cce7094a19b66e4de69ad4ed0cb8ae4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ExplicitFormula/Variantf602f5ffe70f42eb5397b5128fc681f89cce7094a19b66e4de69ad4ed0cb8ae4.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ExplicitFormula/Variantf602f5ffe70f42eb5397b5128fc681f89cce7094a19b66e4de69ad4ed0cb8ae4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `11119489556113fd419d7b6fb45ccbaa2e493e2a`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ExplicitFormula/Variantf602f5ffe70f42eb5397b5128fc681f89cce7094a19b66e4de69ad4ed0cb8ae4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ExplicitFormula/Variantf602f5ffe70f42eb5397b5128fc681f89cce7094a19b66e4de69ad4ed0cb8ae4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Fourier.Inversion` — import line 28; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Fourier.Convolution` — import line 29; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ContDiff.Convolution` — import line 30; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 31; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 32; external provider; requires a separately pinned dependency.
- `Zeta23.Defs` — import line 33; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [tilde](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ExplicitFormula/Variantf602f5ffe70f42eb5397b5128fc681f89cce7094a19b66e4de69ad4ed0cb8ae4.lean/declarations/tilde--6cd82f2d7dbbedd661e0d008.md) | 48 | `declaration-track:6cd82f2d7dbbedd661e0d008419c3bd8b07c9ad18147e71fc1175804c6e997a9` |
| 2 | `def` | [weilTest](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ExplicitFormula/Variantf602f5ffe70f42eb5397b5128fc681f89cce7094a19b66e4de69ad4ed0cb8ae4.lean/declarations/weiltest--ba10fafba7145e3ddca63658.md) | 52 | `declaration-track:ba10fafba7145e3ddca63658733c6771e95194f2a2ccdd28ffaf63ddd3e0e45a` |
| 3 | `def` | [gammaBracket](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ExplicitFormula/Variantf602f5ffe70f42eb5397b5128fc681f89cce7094a19b66e4de69ad4ed0cb8ae4.lean/declarations/gammabracket--909100a92a895a344ec574a3.md) | 64 | `declaration-track:909100a92a895a344ec574a331e69416e3b4a14b3c2a2d829fb3878c93d66efe` |
| 4 | `def` | [literatureRHS](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ExplicitFormula/Variantf602f5ffe70f42eb5397b5128fc681f89cce7094a19b66e4de69ad4ed0cb8ae4.lean/declarations/literaturerhs--8ac59570c80184afc5b63e47.md) | 70 | `declaration-track:8ac59570c80184afc5b63e47e363759e1dd630bbf2880a90ee14bdd0cd248a0f` |
| 5 | `def` | [EF_lit](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ExplicitFormula/Variantf602f5ffe70f42eb5397b5128fc681f89cce7094a19b66e4de69ad4ed0cb8ae4.lean/declarations/ef-lit--0c212c1623453f021c6ccd3e.md) | 81 | `declaration-track:0c212c1623453f021c6ccd3eed8a1bff1c10b4d321f74c02a9e300a897dc8f9a` |
| 6 | `def` | [EF_paper](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ExplicitFormula/Variantf602f5ffe70f42eb5397b5128fc681f89cce7094a19b66e4de69ad4ed0cb8ae4.lean/declarations/ef-paper--88374154d56ce5ef376053d0.md) | 88 | `declaration-track:88374154d56ce5ef376053d0978f491cf61550413dc5538f2c7b772590d518ef` |
| 7 | `theorem` | [cintegral_const_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ExplicitFormula/Variantf602f5ffe70f42eb5397b5128fc681f89cce7094a19b66e4de69ad4ed0cb8ae4.lean/declarations/cintegral-const-mul--3691f9d0f6319dc411603a0a.md) | 99 | `result-track:3691f9d0f6319dc411603a0a439844af90e046e89a6b572040e97189ab503516` |
| 8 | `theorem` | [cintegral_mul_const](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ExplicitFormula/Variantf602f5ffe70f42eb5397b5128fc681f89cce7094a19b66e4de69ad4ed0cb8ae4.lean/declarations/cintegral-mul-const--840d78f8b2e1ab67f10276c5.md) | 102 | `result-track:840d78f8b2e1ab67f10276c5b73b6395e12eaa51937e3d032df32231ee75f93e` |
| 9 | `theorem` | [cintegral_conj](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ExplicitFormula/Variantf602f5ffe70f42eb5397b5128fc681f89cce7094a19b66e4de69ad4ed0cb8ae4.lean/declarations/cintegral-conj--2f897915b01a789c512a691a.md) | 105 | `result-track:2f897915b01a789c512a691a4372be578df753564e01a8900d9868cdc6607988` |
| 10 | `theorem` | [paperFT_ofReal_eq_fourier](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ExplicitFormula/Variantf602f5ffe70f42eb5397b5128fc681f89cce7094a19b66e4de69ad4ed0cb8ae4.lean/declarations/paperft-ofreal-eq-fourier--de06c0a3a651f4ccc0f24ed8.md) | 110 | `result-track:de06c0a3a651f4ccc0f24ed86f46ec01b6a317059d701fcf38e387e87d482a8d` |
| 11 | `theorem` | [integrable_paperFT_ofReal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ExplicitFormula/Variantf602f5ffe70f42eb5397b5128fc681f89cce7094a19b66e4de69ad4ed0cb8ae4.lean/declarations/integrable-paperft-ofreal--3a9e86661833b3946f65f9b8.md) | 124 | `result-track:3a9e86661833b3946f65f9b8908c70eb8cf1779ad5bd177171f5ffb80eadbc2b` |
| 12 | `theorem` | [paper_inversion](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ExplicitFormula/Variantf602f5ffe70f42eb5397b5128fc681f89cce7094a19b66e4de69ad4ed0cb8ae4.lean/declarations/paper-inversion--6135f10b920cba02f7d71a83.md) | 133 | `result-track:6135f10b920cba02f7d71a8358d567396ac0e908ed17c1274cc3c10ab5f11f8f` |
| 13 | `theorem` | [continuous_tilde](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ExplicitFormula/Variantf602f5ffe70f42eb5397b5128fc681f89cce7094a19b66e4de69ad4ed0cb8ae4.lean/declarations/continuous-tilde--85cdcec2a4d8aad26267e3b8.md) | 159 | `result-track:85cdcec2a4d8aad26267e3b8cf5bacbdc7cf1fb1c542cde5b76a250d2f69e37f` |
| 14 | `theorem` | [hasCompactSupport_tilde](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ExplicitFormula/Variantf602f5ffe70f42eb5397b5128fc681f89cce7094a19b66e4de69ad4ed0cb8ae4.lean/declarations/hascompactsupport-tilde--f4f69a3285ccece09fa0744a.md) | 162 | `result-track:f4f69a3285ccece09fa0744ab006ac561b4877870c319b5b149178cc0d204b07` |
| 15 | `theorem` | [support_tilde_subset](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ExplicitFormula/Variantf602f5ffe70f42eb5397b5128fc681f89cce7094a19b66e4de69ad4ed0cb8ae4.lean/declarations/support-tilde-subset--6079f7d7b5e3e5c725c68aec.md) | 166 | `result-track:6079f7d7b5e3e5c725c68aec29f31563ba06f78713dd020aba9d08bd89aa4cf2` |
| 16 | `theorem` | [tsupport_tilde_subset](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ExplicitFormula/Variantf602f5ffe70f42eb5397b5128fc681f89cce7094a19b66e4de69ad4ed0cb8ae4.lean/declarations/tsupport-tilde-subset--1a28010186612b2abe0b3f2b.md) | 171 | `result-track:1a28010186612b2abe0b3f2b558b3da68dfb2cba5ee2e573ab5f84b17865813a` |
| 17 | `theorem` | [paperFT_tilde](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ExplicitFormula/Variantf602f5ffe70f42eb5397b5128fc681f89cce7094a19b66e4de69ad4ed0cb8ae4.lean/declarations/paperft-tilde--0aa178e12554e221695a3cf1.md) | 179 | `result-track:0aa178e12554e221695a3cf17d0aee123c19abe05e720c844677f38fd280ab1e` |
| 18 | `theorem` | [paperFT_weilTest](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ExplicitFormula/Variantf602f5ffe70f42eb5397b5128fc681f89cce7094a19b66e4de69ad4ed0cb8ae4.lean/declarations/paperft-weiltest--cee0e834a36f9d346a3e34a0.md) | 189 | `result-track:cee0e834a36f9d346a3e34a0d7d6c2fd64c8ef1342e8ff48feaff6768bea801b` |
| 19 | `theorem` | [weilTest_contDiff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ExplicitFormula/Variantf602f5ffe70f42eb5397b5128fc681f89cce7094a19b66e4de69ad4ed0cb8ae4.lean/declarations/weiltest-contdiff--f8e29e028380754fea16bb8f.md) | 238 | `result-track:f8e29e028380754fea16bb8f0f2023c50f32522b61c1c999ca1ccf892b172cc7` |
| 20 | `theorem` | [weilTest_hasCompactSupport](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ExplicitFormula/Variantf602f5ffe70f42eb5397b5128fc681f89cce7094a19b66e4de69ad4ed0cb8ae4.lean/declarations/weiltest-hascompactsupport--e4fc86142f1215a1efaea339.md) | 245 | `result-track:e4fc86142f1215a1efaea3397036ff4cdc1efe1d2d693190d4dc1cd5cb409101` |
| 21 | `theorem` | [tsupport_weilTest_subset](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ExplicitFormula/Variantf602f5ffe70f42eb5397b5128fc681f89cce7094a19b66e4de69ad4ed0cb8ae4.lean/declarations/tsupport-weiltest-subset--c2fe449a082eb6354b15c4f9.md) | 251 | `result-track:c2fe449a082eb6354b15c4f9a528a5778afde2bf19f555f10a5cb72e4e6c57a6` |
| 22 | `theorem` | [gamma_term](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ExplicitFormula/Variantf602f5ffe70f42eb5397b5128fc681f89cce7094a19b66e4de69ad4ed0cb8ae4.lean/declarations/gamma-term--c1e0b76e3d2b4f60a3af1820.md) | 265 | `result-track:c1e0b76e3d2b4f60a3af18204a638e940d626de222e24b7d4833e1f2ac02c814` |
| 23 | `theorem` | [hasCompactSupport_of_tsupport_subset](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ExplicitFormula/Variantf602f5ffe70f42eb5397b5128fc681f89cce7094a19b66e4de69ad4ed0cb8ae4.lean/declarations/hascompactsupport-of-tsupport-subset--61bed67e24aeb4174b3851cf.md) | 275 | `result-track:61bed67e24aeb4174b3851cfb8f2270cbe312a53718d872c48dda628a854c231` |
| 24 | `theorem` | [integrable_paperFT_mul_cexp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ExplicitFormula/Variantf602f5ffe70f42eb5397b5128fc681f89cce7094a19b66e4de69ad4ed0cb8ae4.lean/declarations/integrable-paperft-mul-cexp--95ed7331fecac4c4344c0cc8.md) | 280 | `result-track:95ed7331fecac4c4344c0cc81fb7cfad26dee2e3da0509e44373dbd822a038b8` |
| 25 | `theorem` | [integrable_paperFT_mul_cos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ExplicitFormula/Variantf602f5ffe70f42eb5397b5128fc681f89cce7094a19b66e4de69ad4ed0cb8ae4.lean/declarations/integrable-paperft-mul-cos--9c536e495f0578ab03fdb54d.md) | 288 | `result-track:9c536e495f0578ab03fdb54d7874c92b859cdf168eef26aad06edc7af26789f7` |
| 26 | `theorem` | [k_add_k_neg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ExplicitFormula/Variantf602f5ffe70f42eb5397b5128fc681f89cce7094a19b66e4de69ad4ed0cb8ae4.lean/declarations/k-add-k-neg--95601f5937413281ddab61ab.md) | 296 | `result-track:95601f5937413281ddab61abb3dedd2cf440e9ca181e07a927ffee901a2abef9` |
| 27 | `theorem` | [prime_summand_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ExplicitFormula/Variantf602f5ffe70f42eb5397b5128fc681f89cce7094a19b66e4de69ad4ed0cb8ae4.lean/declarations/prime-summand-eq-zero--ae0067e1a6972e7ec887a6cd.md) | 315 | `result-track:ae0067e1a6972e7ec887a6cd0451b73909f9fb3205e7957fc7b5d5801102c7fb` |
| 28 | `theorem` | [prime_term](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ExplicitFormula/Variantf602f5ffe70f42eb5397b5128fc681f89cce7094a19b66e4de69ad4ed0cb8ae4.lean/declarations/prime-term--635188f393d6695cd4f2ff57.md) | 338 | `result-track:635188f393d6695cd4f2ff5766ec082eef040a3db5140f91edcb869de412a769` |
| 29 | `theorem` | [norm_cexp_neg_I_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ExplicitFormula/Variantf602f5ffe70f42eb5397b5128fc681f89cce7094a19b66e4de69ad4ed0cb8ae4.lean/declarations/norm-cexp-neg-i-mul--f2af4bda2cd49b22e2eee3c0.md) | 371 | `result-track:f2af4bda2cd49b22e2eee3c0fe5246723e6d8c1c3b10b4090a204086e03cbbf9` |
| 30 | `theorem` | [integrable_inversion_kernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ExplicitFormula/Variantf602f5ffe70f42eb5397b5128fc681f89cce7094a19b66e4de69ad4ed0cb8ae4.lean/declarations/integrable-inversion-kernel--f4c830bf77f3382315a9bb11.md) | 375 | `result-track:f4c830bf77f3382315a9bb11e718a37fb7e127bc005244aa219f8ee39a5f15a6` |
| 31 | `theorem` | [integral_k_mul_weight](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ExplicitFormula/Variantf602f5ffe70f42eb5397b5128fc681f89cce7094a19b66e4de69ad4ed0cb8ae4.lean/declarations/integral-k-mul-weight--b618031d9afa7522da53e321.md) | 395 | `result-track:b618031d9afa7522da53e3215a942542e2536c982a87fe950e5c23729fe485be` |
| 32 | `theorem` | [integrable_paperFT_mul_weightFT](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ExplicitFormula/Variantf602f5ffe70f42eb5397b5128fc681f89cce7094a19b66e4de69ad4ed0cb8ae4.lean/declarations/integrable-paperft-mul-weightft--d494f3884ea4fbba6455361b.md) | 410 | `result-track:d494f3884ea4fbba6455361b5af7ec78b441862b27d563c8225da12562d86b34` |
| 33 | `theorem` | [half_add_I_mul_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ExplicitFormula/Variantf602f5ffe70f42eb5397b5128fc681f89cce7094a19b66e4de69ad4ed0cb8ae4.lean/declarations/half-add-i-mul-ne-zero--e8ae9c3380a8020849e79774.md) | 420 | `result-track:e8ae9c3380a8020849e797746e9026744f4bf88ecccc17fdcb4c7bc5c702283c` |
| 34 | `theorem` | [half_sub_I_mul_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ExplicitFormula/Variantf602f5ffe70f42eb5397b5128fc681f89cce7094a19b66e4de69ad4ed0cb8ae4.lean/declarations/half-sub-i-mul-ne-zero--08211be60bbd2c0b22e145d2.md) | 423 | `result-track:08211be60bbd2c0b22e145d2c818d6f83469aa89bdc193445e63d82475078573` |
| 35 | `theorem` | [neg_half_sub_I_mul_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ExplicitFormula/Variantf602f5ffe70f42eb5397b5128fc681f89cce7094a19b66e4de69ad4ed0cb8ae4.lean/declarations/neg-half-sub-i-mul-ne-zero--5a2f86c60a76f9684bed988f.md) | 426 | `result-track:5a2f86c60a76f9684bed988f6cfb6989ececdfd87acc32b37774492ce3374b06` |
| 36 | `theorem` | [integrable_exp_neg_abs_half_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ExplicitFormula/Variantf602f5ffe70f42eb5397b5128fc681f89cce7094a19b66e4de69ad4ed0cb8ae4.lean/declarations/integrable-exp-neg-abs-half-mul--4f015565143dc5ffdac9053b.md) | 430 | `result-track:4f015565143dc5ffdac9053bf74c437bb63e6f90c3fbed13845e26ed95403279` |
| 37 | `theorem` | [integrable_exp_neg_abs_half](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ExplicitFormula/Variantf602f5ffe70f42eb5397b5128fc681f89cce7094a19b66e4de69ad4ed0cb8ae4.lean/declarations/integrable-exp-neg-abs-half--d2dc9ca44ef4777914fd564b.md) | 452 | `result-track:d2dc9ca44ef4777914fd564b184c3b0a2dbdb26074743eae56f8f81a0b93509a` |
| 38 | `theorem` | [integral_exp_neg_abs_half](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ExplicitFormula/Variantf602f5ffe70f42eb5397b5128fc681f89cce7094a19b66e4de69ad4ed0cb8ae4.lean/declarations/integral-exp-neg-abs-half--e512feb7d3f4bcea516e3381.md) | 457 | `result-track:e512feb7d3f4bcea516e33816fd3d6f925010f76bb0c3016a6d7e455fe9d6d0e` |
| 39 | `def` | [EL](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ExplicitFormula/Variantf602f5ffe70f42eb5397b5128fc681f89cce7094a19b66e4de69ad4ed0cb8ae4.lean/declarations/el--dce603dbc8043ae944399cc9.md) | 491 | `declaration-track:dce603dbc8043ae944399cc920991fdbd019af25e6f0e3af94155df83d73f3c5` |
| 40 | `theorem` | [integrable_EL](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ExplicitFormula/Variantf602f5ffe70f42eb5397b5128fc681f89cce7094a19b66e4de69ad4ed0cb8ae4.lean/declarations/integrable-el--b03ad3c9b4ecfcd408c04711.md) | 493 | `result-track:b03ad3c9b4ecfcd408c047112322779db026ba045e04e680744f731361e14b9f` |
| 41 | `theorem` | [exp_cpow](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ExplicitFormula/Variantf602f5ffe70f42eb5397b5128fc681f89cce7094a19b66e4de69ad4ed0cb8ae4.lean/declarations/exp-cpow--d09713a29b4281f240c23828.md) | 500 | `result-track:d09713a29b4281f240c23828b97ba7f4499334c0dd2619ba8ba29d048932d904` |
| 42 | `theorem` | [integral_EL_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ExplicitFormula/Variantf602f5ffe70f42eb5397b5128fc681f89cce7094a19b66e4de69ad4ed0cb8ae4.lean/declarations/integral-el-mul--f4de773b63f0d81a9e8aa7db.md) | 506 | `result-track:f4de773b63f0d81a9e8aa7db69623ae32fc8d2175ba10efde2aa1846f5f4e7ed` |
| 43 | `theorem` | [pole_term](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ExplicitFormula/Variantf602f5ffe70f42eb5397b5128fc681f89cce7094a19b66e4de69ad4ed0cb8ae4.lean/declarations/pole-term--c382d4a01892cfa9a8bad30e.md) | 557 | `result-track:c382d4a01892cfa9a8bad30ec1cf8b8f464baeaa4ae51c5acde4a9603ddac892` |
| 44 | `theorem` | [integrable_paperFT_mul_PiX](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ExplicitFormula/Variantf602f5ffe70f42eb5397b5128fc681f89cce7094a19b66e4de69ad4ed0cb8ae4.lean/declarations/integrable-paperft-mul-pix--c86503f7a28f009f684e8c8e.md) | 629 | `result-track:c86503f7a28f009f684e8c8e4cac7307be4d4609d75a0aaa36583c26aea1abe8` |
| 45 | `theorem` | [paperFT_mul_PX_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ExplicitFormula/Variantf602f5ffe70f42eb5397b5128fc681f89cce7094a19b66e4de69ad4ed0cb8ae4.lean/declarations/paperft-mul-px-eq--a02ea1bf029b46c319bff54c.md) | 650 | `result-track:a02ea1bf029b46c319bff54c10f3dc00809615371e4338bd5cee1ec8d0117f1d` |
| 46 | `theorem` | [integrable_paperFT_mul_PX](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ExplicitFormula/Variantf602f5ffe70f42eb5397b5128fc681f89cce7094a19b66e4de69ad4ed0cb8ae4.lean/declarations/integrable-paperft-mul-px--c6733d4fb0e97e1d8bd69a6c.md) | 661 | `result-track:c6733d4fb0e97e1d8bd69a6cc2f142b1142163ded9f50970ee133479f2895807` |
| 47 | `theorem` | [integrable_paperFT_mul_nuX](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ExplicitFormula/Variantf602f5ffe70f42eb5397b5128fc681f89cce7094a19b66e4de69ad4ed0cb8ae4.lean/declarations/integrable-paperft-mul-nux--09fc38242ce4d2d74492fc45.md) | 668 | `result-track:09fc38242ce4d2d74492fc45939a91c5d92e418403f5f6278e6a5015f86fd42f` |
| 48 | `theorem` | [literatureRHS_eq_integral_nu](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ExplicitFormula/Variantf602f5ffe70f42eb5397b5128fc681f89cce7094a19b66e4de69ad4ed0cb8ae4.lean/declarations/literaturerhs-eq-integral-nu--e3613c4c793c44e033fcffb9.md) | 681 | `result-track:e3613c4c793c44e033fcffb9807d6cc9d1018ff09c2acb99491130ea001f655f` |
| 49 | `theorem` | [prop_EF_of_lit](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ExplicitFormula/Variantf602f5ffe70f42eb5397b5128fc681f89cce7094a19b66e4de69ad4ed0cb8ae4.lean/declarations/prop-ef-of-lit--cc2fe6a4fc2c6ab4f316093e.md) | 703 | `result-track:cc2fe6a4fc2c6ab4f316093ea7669a70970ea79abc2a6c929a48f3a214fd143d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
