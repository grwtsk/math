# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Cotangent.Variant763f3ecc786d518770dac510d31a5b6d5cffe6aeb916e419ae08a1dd44036aa1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b157bd7c14c7e40361c348c154893fc76df19a5b",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Cotangent/Variant763f3ecc786d518770dac510d31a5b6d5cffe6aeb916e419ae08a1dd44036aa1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Cotangent/Variant763f3ecc786d518770dac510d31a5b6d5cffe6aeb916e419ae08a1dd44036aa1.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Cotangent/Variant763f3ecc786d518770dac510d31a5b6d5cffe6aeb916e419ae08a1dd44036aa1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b157bd7c14c7e40361c348c154893fc76df19a5b`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Cotangent/Variant763f3ecc786d518770dac510d31a5b6d5cffe6aeb916e419ae08a1dd44036aa1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Cotangent/Variant763f3ecc786d518770dac510d31a5b6d5cffe6aeb916e419ae08a1dd44036aa1.lean.json)

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
| 1 | `lemma` | [Complex.cot_eq_exp_ratio](../../../../../mathematics/Analysis/AsymptoticAnalysis/Cotangent/Variant763f3ecc786d518770dac510d31a5b6d5cffe6aeb916e419ae08a1dd44036aa1.lean/declarations/complex-cot-eq-exp-ratio--99cfa926fdcd46abb12e5c30.md) | 38 | `result-track:99cfa926fdcd46abb12e5c308380226e9ff91a1ec265ba6ebde0b8d29697f029` |
| 2 | `lemma` | [Complex.cot_pi_eq_exp_ratio](../../../../../mathematics/Analysis/AsymptoticAnalysis/Cotangent/Variant763f3ecc786d518770dac510d31a5b6d5cffe6aeb916e419ae08a1dd44036aa1.lean/declarations/complex-cot-pi-eq-exp-ratio--c12d1c35d738193fab806083.md) | 52 | `result-track:c12d1c35d738193fab806083d1eac5b103bc1f1f4729795d16ad6884c5171420` |
| 3 | `theorem` | [pi_mul_cot_pi_q_exp](../../../../../mathematics/Analysis/AsymptoticAnalysis/Cotangent/Variant763f3ecc786d518770dac510d31a5b6d5cffe6aeb916e419ae08a1dd44036aa1.lean/declarations/pi-mul-cot-pi-q-exp--4d1de0292c351741d601695a.md) | 58 | `result-track:4d1de0292c351741d601695a67d2fa05033ea74f1883e7df6392f3ef2106d40f` |
| 4 | `abbrev` | [sineTerm](../../../../../mathematics/Analysis/AsymptoticAnalysis/Cotangent/Variant763f3ecc786d518770dac510d31a5b6d5cffe6aeb916e419ae08a1dd44036aa1.lean/declarations/sineterm--c97970651224cda38e6fd835.md) | 78 | `declaration-track:c97970651224cda38e6fd835173c7a1b5ff1f1524c835d53718e2ed4b6654864` |
| 5 | `lemma` | [sineTerm_ne_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/Cotangent/Variant763f3ecc786d518770dac510d31a5b6d5cffe6aeb916e419ae08a1dd44036aa1.lean/declarations/sineterm-ne-zero--530806f1d043c0d0249826b9.md) | 80 | `result-track:530806f1d043c0d0249826b94cfdd4324898b5f29f0131a6ee3ab3d8596a9549` |
| 6 | `lemma` | [tendsto_euler_sin_prod'](../../../../../mathematics/Analysis/AsymptoticAnalysis/Cotangent/Variant763f3ecc786d518770dac510d31a5b6d5cffe6aeb916e419ae08a1dd44036aa1.lean/declarations/tendsto-euler-sin-prod--31f1bf2977bc9bb1f1096f3b.md) | 87 | `result-track:31f1bf2977bc9bb1f1096f3b96a5216360632c2a570a3cbd901c9df2cd1fadd1` |
| 7 | `lemma` | [multipliable_sineTerm](../../../../../mathematics/Analysis/AsymptoticAnalysis/Cotangent/Variant763f3ecc786d518770dac510d31a5b6d5cffe6aeb916e419ae08a1dd44036aa1.lean/declarations/multipliable-sineterm--b5b5e87694bab4f812f2d600.md) | 94 | `result-track:b5b5e87694bab4f812f2d600d25824c40719a8ae10a962429e93adff3d56162f` |
| 8 | `lemma` | [euler_sineTerm_tprod](../../../../../mathematics/Analysis/AsymptoticAnalysis/Cotangent/Variant763f3ecc786d518770dac510d31a5b6d5cffe6aeb916e419ae08a1dd44036aa1.lean/declarations/euler-sineterm-tprod--878d86278bea81c665e8daf3.md) | 99 | `result-track:878d86278bea81c665e8daf3979334d679010b99315d0f2888c5adfbf3621c4b` |
| 9 | `lemma` | [sineTerm_bound_aux](../../../../../mathematics/Analysis/AsymptoticAnalysis/Cotangent/Variant763f3ecc786d518770dac510d31a5b6d5cffe6aeb916e419ae08a1dd44036aa1.lean/declarations/sineterm-bound-aux--23f255fe57ab36a6b8f494c9.md) | 105 | `result-track:23f255fe57ab36a6b8f494c9af8754fe0324a4901331a001d25ee461dea91530` |
| 10 | `lemma` | [multipliableUniformlyOn_euler_sin_prod_on_compact](../../../../../mathematics/Analysis/AsymptoticAnalysis/Cotangent/Variant763f3ecc786d518770dac510d31a5b6d5cffe6aeb916e419ae08a1dd44036aa1.lean/declarations/multipliableuniformlyon-euler-sin-prod-on-compact--6f443afac506c8480891e19e.md) | 118 | `result-track:6f443afac506c8480891e19ee9098443a13c1fb8c5aa38fd9edbdece8ec6f1ad` |
| 11 | `lemma` | [HasProdUniformlyOn_sineTerm_prod_on_compact](../../../../../mathematics/Analysis/AsymptoticAnalysis/Cotangent/Variant763f3ecc786d518770dac510d31a5b6d5cffe6aeb916e419ae08a1dd44036aa1.lean/declarations/hasproduniformlyon-sineterm-prod-on-compact--fdf3018a1b2d81e2be24123e.md) | 125 | `result-track:fdf3018a1b2d81e2be24123e14e69d9f22b4ec1654996ef86be247789cee6631` |
| 12 | `lemma` | [HasProdLocallyUniformlyOn_euler_sin_prod](../../../../../mathematics/Analysis/AsymptoticAnalysis/Cotangent/Variant763f3ecc786d518770dac510d31a5b6d5cffe6aeb916e419ae08a1dd44036aa1.lean/declarations/hasprodlocallyuniformlyon-euler-sin-prod--a561427c0a87cea5745b3a8b.md) | 132 | `result-track:a561427c0a87cea5745b3a8bc51c36e6aeed39018c2989f48a0894b960657b86` |
| 13 | `theorem` | [sin_pi_mul_ne_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/Cotangent/Variant763f3ecc786d518770dac510d31a5b6d5cffe6aeb916e419ae08a1dd44036aa1.lean/declarations/sin-pi-mul-ne-zero--56b4b11bf6f5a63d5fa55fc4.md) | 139 | `result-track:56b4b11bf6f5a63d5fa55fc498938753104c1f7f4aa9568418b7c243b394f758` |
| 14 | `lemma` | [cot_pi_mul_contDiffWithinAt](../../../../../mathematics/Analysis/AsymptoticAnalysis/Cotangent/Variant763f3ecc786d518770dac510d31a5b6d5cffe6aeb916e419ae08a1dd44036aa1.lean/declarations/cot-pi-mul-contdiffwithinat--85b06e912bc49ce8656df158.md) | 145 | `result-track:85b06e912bc49ce8656df158890981e2d334cb3dff7e19b65ec033b437eeaf48` |
| 15 | `lemma` | [tendsto_logDeriv_euler_sin_div](../../../../../mathematics/Analysis/AsymptoticAnalysis/Cotangent/Variant763f3ecc786d518770dac510d31a5b6d5cffe6aeb916e419ae08a1dd44036aa1.lean/declarations/tendsto-logderiv-euler-sin-div--fdd5efe9ba74e117c26eea68.md) | 150 | `result-track:fdd5efe9ba74e117c26eea68f74730218e36c382b32a4b3d1e7a1d19799ba774` |
| 16 | `lemma` | [logDeriv_sin_div_eq_cot](../../../../../mathematics/Analysis/AsymptoticAnalysis/Cotangent/Variant763f3ecc786d518770dac510d31a5b6d5cffe6aeb916e419ae08a1dd44036aa1.lean/declarations/logderiv-sin-div-eq-cot--9a4b9b6cbf67e40d5a9c8145.md) | 159 | `result-track:9a4b9b6cbf67e40d5a9c81454c43dc2c1a9392028b59c953dcdb27143dd581f5` |
| 17 | `abbrev` | [cotTerm](../../../../../mathematics/Analysis/AsymptoticAnalysis/Cotangent/Variant763f3ecc786d518770dac510d31a5b6d5cffe6aeb916e419ae08a1dd44036aa1.lean/declarations/cotterm--432f6bb3a056a4d8bfb8bb34.md) | 173 | `declaration-track:432f6bb3a056a4d8bfb8bb3496b7e524eb3789f18882821d48ef0c80cdf5b9e7` |
| 18 | `lemma` | [logDeriv_sineTerm_eq_cotTerm](../../../../../mathematics/Analysis/AsymptoticAnalysis/Cotangent/Variant763f3ecc786d518770dac510d31a5b6d5cffe6aeb916e419ae08a1dd44036aa1.lean/declarations/logderiv-sineterm-eq-cotterm--c4875572119008e215c18400.md) | 175 | `result-track:c4875572119008e215c184001a9dc83a2a70b442fb739b3918e4a08713328ded` |
| 19 | `lemma` | [logDeriv_prod_sineTerm_eq_sum_cotTerm](../../../../../mathematics/Analysis/AsymptoticAnalysis/Cotangent/Variant763f3ecc786d518770dac510d31a5b6d5cffe6aeb916e419ae08a1dd44036aa1.lean/declarations/logderiv-prod-sineterm-eq-sum-cotterm--77bf6ac4d02e4a2bbb3953b8.md) | 189 | `result-track:77bf6ac4d02e4a2bbb3953b80c59da0a21ad9ba1a2c6c9914c1ed8467b186e3f` |
| 20 | `lemma` | [tendsto_logDeriv_euler_cot_sub](../../../../../mathematics/Analysis/AsymptoticAnalysis/Cotangent/Variant763f3ecc786d518770dac510d31a5b6d5cffe6aeb916e419ae08a1dd44036aa1.lean/declarations/tendsto-logderiv-euler-cot-sub--a4c07202c61bc5aa95210fad.md) | 197 | `result-track:a4c07202c61bc5aa95210fada3fe3d6b2aaacfd4c09ae50203f9bb9487161f51` |
| 21 | `lemma` | [cotTerm_identity](../../../../../mathematics/Analysis/AsymptoticAnalysis/Cotangent/Variant763f3ecc786d518770dac510d31a5b6d5cffe6aeb916e419ae08a1dd44036aa1.lean/declarations/cotterm-identity--fa78c838e00a252be6b950d3.md) | 203 | `result-track:fa78c838e00a252be6b950d30f03f1c93295f5250f8ed148bcd2e60806ebf046` |
| 22 | `lemma` | [summable_cotTerm](../../../../../mathematics/Analysis/AsymptoticAnalysis/Cotangent/Variant763f3ecc786d518770dac510d31a5b6d5cffe6aeb916e419ae08a1dd44036aa1.lean/declarations/summable-cotterm--26299404279fd0b1c7c96c1c.md) | 211 | `result-track:26299404279fd0b1c7c96c1ce4a766e8dcefaebbae988e5ee602010d460ab3fd` |
| 23 | `lemma` | [cot_series_rep'](../../../../../mathematics/Analysis/AsymptoticAnalysis/Cotangent/Variant763f3ecc786d518770dac510d31a5b6d5cffe6aeb916e419ae08a1dd44036aa1.lean/declarations/cot-series-rep--e4cf98b662a3dfbdccd1f503.md) | 222 | `result-track:e4cf98b662a3dfbdccd1f5038c02524a3f1165c4b7338b0ef82820883907fb6b` |
| 24 | `theorem` | [cot_series_rep](../../../../../mathematics/Analysis/AsymptoticAnalysis/Cotangent/Variant763f3ecc786d518770dac510d31a5b6d5cffe6aeb916e419ae08a1dd44036aa1.lean/declarations/cot-series-rep--aa03d2064e98a8263852dfdf.md) | 229 | `result-track:aa03d2064e98a8263852dfdf28e70f0748672bbabbd7c3d2e062004ad68b8b39` |
| 25 | `lemma` | [contDiffOn_inv_linear](../../../../../mathematics/Analysis/AsymptoticAnalysis/Cotangent/Variant763f3ecc786d518770dac510d31a5b6d5cffe6aeb916e419ae08a1dd44036aa1.lean/declarations/contdiffon-inv-linear--c1bf0c2e0f14be0c73c00a15.md) | 247 | `result-track:c1bf0c2e0f14be0c73c00a15ba897fbd1c0af1bf12ae8e1392d3a6d3f85c071a` |
| 26 | `lemma` | [eqOn_iteratedDeriv_cotTerm](../../../../../mathematics/Analysis/AsymptoticAnalysis/Cotangent/Variant763f3ecc786d518770dac510d31a5b6d5cffe6aeb916e419ae08a1dd44036aa1.lean/declarations/eqon-iteratedderiv-cotterm--29881677e38273314fdbab97.md) | 250 | `result-track:29881677e38273314fdbab972d829ee7858219a46af51e24a3e7800556564207` |
| 27 | `lemma` | [eqOn_iteratedDerivWithin_cotTerm_integerComplement](../../../../../mathematics/Analysis/AsymptoticAnalysis/Cotangent/Variant763f3ecc786d518770dac510d31a5b6d5cffe6aeb916e419ae08a1dd44036aa1.lean/declarations/eqon-iteratedderivwithin-cotterm-integercomplement--67590217a325eb704db01618.md) | 266 | `result-track:67590217a325eb704db01618ab9eb69575015d5d0683c762a4be7d7ed38595be` |
| 28 | `lemma` | [eqOn_iteratedDerivWithin_cotTerm_upperHalfPlaneSet](../../../../../mathematics/Analysis/AsymptoticAnalysis/Cotangent/Variant763f3ecc786d518770dac510d31a5b6d5cffe6aeb916e419ae08a1dd44036aa1.lean/declarations/eqon-iteratedderivwithin-cotterm-upperhalfplaneset--d678f1fe41ac8377394f5cea.md) | 274 | `result-track:d678f1fe41ac8377394f5cea79e2c830ba21d69aa16cf05848988c20860b7b3f` |
| 29 | `abbrev` | [cotTermUpperBound](../../../../../mathematics/Analysis/AsymptoticAnalysis/Cotangent/Variant763f3ecc786d518770dac510d31a5b6d5cffe6aeb916e419ae08a1dd44036aa1.lean/declarations/cottermupperbound--dab93997f7c66614951b0042.md) | 287 | `declaration-track:dab93997f7c66614951b00423a07994c3f9ad87ebdb5418ad5e3b0893f3b3be9` |
| 30 | `lemma` | [summable_cotTermUpperBound](../../../../../mathematics/Analysis/AsymptoticAnalysis/Cotangent/Variant763f3ecc786d518770dac510d31a5b6d5cffe6aeb916e419ae08a1dd44036aa1.lean/declarations/summable-cottermupperbound--ae0f3bfe599711ee5ef32a08.md) | 290 | `result-track:ae0f3bfe599711ee5ef32a08747f907c45cb7ab1432f38285448af0a9ed32446` |
| 31 | `lemma` | [iteratedDerivWithin_cotTerm_bounded_uniformly](../../../../../mathematics/Analysis/AsymptoticAnalysis/Cotangent/Variant763f3ecc786d518770dac510d31a5b6d5cffe6aeb916e419ae08a1dd44036aa1.lean/declarations/iteratedderivwithin-cotterm-bounded-uniformly--2856989bdfb2e20860f5b37e.md) | 300 | `result-track:2856989bdfb2e20860f5b37e224f9899f0eb3684cb214397c66689d455bd68dc` |
| 32 | `lemma` | [summableLocallyUniformlyOn_iteratedDerivWithin_cotTerm](../../../../../mathematics/Analysis/AsymptoticAnalysis/Cotangent/Variant763f3ecc786d518770dac510d31a5b6d5cffe6aeb916e419ae08a1dd44036aa1.lean/declarations/summablelocallyuniformlyon-iteratedderivwithin-cotterm--5223c143c6077c0d0b9cdc1c.md) | 318 | `result-track:5223c143c6077c0d0b9cdc1c58ca6c30d168c401fbddd4f756d9b4d64ba6d65f` |
| 33 | `lemma` | [differentiableOn_iteratedDerivWithin_cotTerm](../../../../../mathematics/Analysis/AsymptoticAnalysis/Cotangent/Variant763f3ecc786d518770dac510d31a5b6d5cffe6aeb916e419ae08a1dd44036aa1.lean/declarations/differentiableon-iteratedderivwithin-cotterm--98b082a64cca9d2e4872cfbd.md) | 328 | `result-track:98b082a64cca9d2e4872cfbda043a9a8aacaaba2a9018d13bcff8f6a5ea34bc8` |
| 34 | `lemma` | [aux_summable_add](../../../../../mathematics/Analysis/AsymptoticAnalysis/Cotangent/Variant763f3ecc786d518770dac510d31a5b6d5cffe6aeb916e419ae08a1dd44036aa1.lean/declarations/aux-summable-add--8104423dcc623980c9651651.md) | 338 | `result-track:8104423dcc623980c9651651c3cd9ce448f178375b08d40139f07f5f463081e5` |
| 35 | `lemma` | [aux_summable_sub](../../../../../mathematics/Analysis/AsymptoticAnalysis/Cotangent/Variant763f3ecc786d518770dac510d31a5b6d5cffe6aeb916e419ae08a1dd44036aa1.lean/declarations/aux-summable-sub--3186c458908b89406f3a0742.md) | 344 | `result-track:3186c458908b89406f3a07429c84178a67e32a100f88af1172261b44d0de1112` |
| 36 | `lemma` | [aux_iteratedDeriv_tsum_cotTerm](../../../../../mathematics/Analysis/AsymptoticAnalysis/Cotangent/Variant763f3ecc786d518770dac510d31a5b6d5cffe6aeb916e419ae08a1dd44036aa1.lean/declarations/aux-iteratedderiv-tsum-cotterm--f91a6b9097bedccc80bc949b.md) | 353 | `result-track:f91a6b9097bedccc80bc949bed9049a02c9ca7e59571dca64788e461c8f023a2` |
| 37 | `lemma` | [iteratedDerivWithin_cot_sub_inv_eq_add_mul_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/Cotangent/Variant763f3ecc786d518770dac510d31a5b6d5cffe6aeb916e419ae08a1dd44036aa1.lean/declarations/iteratedderivwithin-cot-sub-inv-eq-add-mul-tsum--9da6bbd16c5bea5d09e6d8c6.md) | 371 | `result-track:9da6bbd16c5bea5d09e6d8c69d62970014a9dcb77d2e4ec498a6c03b62cf6dff` |
| 38 | `lemma` | [iteratedDerivWithin_cot_pi_mul_sub_inv](../../../../../mathematics/Analysis/AsymptoticAnalysis/Cotangent/Variant763f3ecc786d518770dac510d31a5b6d5cffe6aeb916e419ae08a1dd44036aa1.lean/declarations/iteratedderivwithin-cot-pi-mul-sub-inv--3b73de46c9aa29585e8a84d9.md) | 378 | `result-track:3b73de46c9aa29585e8a84d967e629c1476243b34599f23dcbd8a8e7813cb5d7` |
| 39 | `lemma` | [iteratedDerivWithin_cot_pi_mul_eq_mul_tsum_zpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/Cotangent/Variant763f3ecc786d518770dac510d31a5b6d5cffe6aeb916e419ae08a1dd44036aa1.lean/declarations/iteratedderivwithin-cot-pi-mul-eq-mul-tsum-zpow--a00fd81db5c8e11ce7ededb8.md) | 392 | `result-track:a00fd81db5c8e11ce7ededb87064c2154066323c8d818938c86b08c4fef7005b` |
| 40 | `theorem` | [iteratedDerivWithin_cot_pi_mul_eq_mul_tsum_div_pow](../../../../../mathematics/Analysis/AsymptoticAnalysis/Cotangent/Variant763f3ecc786d518770dac510d31a5b6d5cffe6aeb916e419ae08a1dd44036aa1.lean/declarations/iteratedderivwithin-cot-pi-mul-eq-mul-tsum-div-pow--2d0cf273d18363edb1be660a.md) | 401 | `result-track:2d0cf273d18363edb1be660aaa4a92d75612df8cb01567bf728233879f971869` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
