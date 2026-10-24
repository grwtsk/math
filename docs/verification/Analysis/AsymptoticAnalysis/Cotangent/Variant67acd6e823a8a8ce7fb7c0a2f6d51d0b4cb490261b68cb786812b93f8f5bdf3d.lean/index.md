# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Cotangent.Variant67acd6e823a8a8ce7fb7c0a2f6d51d0b4cb490261b68cb786812b93f8f5bdf3d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "72269d22ee9620a3a366eb7fcbc9aadc9ff593ca",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Cotangent/Variant67acd6e823a8a8ce7fb7c0a2f6d51d0b4cb490261b68cb786812b93f8f5bdf3d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Cotangent/Variant67acd6e823a8a8ce7fb7c0a2f6d51d0b4cb490261b68cb786812b93f8f5bdf3d.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Cotangent/Variant67acd6e823a8a8ce7fb7c0a2f6d51d0b4cb490261b68cb786812b93f8f5bdf3d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `72269d22ee9620a3a366eb7fcbc9aadc9ff593ca`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Cotangent/Variant67acd6e823a8a8ce7fb7c0a2f6d51d0b4cb490261b68cb786812b93f8f5bdf3d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Cotangent/Variant67acd6e823a8a8ce7fb7c0a2f6d51d0b4cb490261b68cb786812b93f8f5bdf3d.lean.json)

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
| 1 | `lemma` | [Complex.cot_eq_exp_ratio](../../../../../mathematics/Analysis/AsymptoticAnalysis/Cotangent/Variant67acd6e823a8a8ce7fb7c0a2f6d51d0b4cb490261b68cb786812b93f8f5bdf3d.lean/declarations/complex-cot-eq-exp-ratio--37aa2bb184b042c71b58f6fc.md) | 46 | `result-track:37aa2bb184b042c71b58f6fc2278a4932876aab7f1698ac8b8510aaedc5c98a1` |
| 2 | `lemma` | [Complex.cot_pi_eq_exp_ratio](../../../../../mathematics/Analysis/AsymptoticAnalysis/Cotangent/Variant67acd6e823a8a8ce7fb7c0a2f6d51d0b4cb490261b68cb786812b93f8f5bdf3d.lean/declarations/complex-cot-pi-eq-exp-ratio--d63155a6750ef327c34ab105.md) | 60 | `result-track:d63155a6750ef327c34ab105b0796d36d3fdce576f717a1d51858c3d1b954263` |
| 3 | `theorem` | [pi_mul_cot_pi_q_exp](../../../../../mathematics/Analysis/AsymptoticAnalysis/Cotangent/Variant67acd6e823a8a8ce7fb7c0a2f6d51d0b4cb490261b68cb786812b93f8f5bdf3d.lean/declarations/pi-mul-cot-pi-q-exp--90db53a54bbb7f275ea47b77.md) | 66 | `result-track:90db53a54bbb7f275ea47b7739e144de38c9a1e4a61f06f6c17af1f30e643b2c` |
| 4 | `abbrev` | [sineTerm](../../../../../mathematics/Analysis/AsymptoticAnalysis/Cotangent/Variant67acd6e823a8a8ce7fb7c0a2f6d51d0b4cb490261b68cb786812b93f8f5bdf3d.lean/declarations/sineterm--cfd26cae12688b5f14fac87c.md) | 86 | `declaration-track:cfd26cae12688b5f14fac87cd0351c63a0e99f38f76bccac05036f5a1fa78feb` |
| 5 | `lemma` | [sineTerm_ne_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/Cotangent/Variant67acd6e823a8a8ce7fb7c0a2f6d51d0b4cb490261b68cb786812b93f8f5bdf3d.lean/declarations/sineterm-ne-zero--cb28592a619ee66a69c38acc.md) | 88 | `result-track:cb28592a619ee66a69c38accf4860b8b7b2ab0311c46736d4379b33f4b84e2db` |
| 6 | `lemma` | [tendsto_euler_sin_prod'](../../../../../mathematics/Analysis/AsymptoticAnalysis/Cotangent/Variant67acd6e823a8a8ce7fb7c0a2f6d51d0b4cb490261b68cb786812b93f8f5bdf3d.lean/declarations/tendsto-euler-sin-prod--64c486f12f9980d3d40944eb.md) | 95 | `result-track:64c486f12f9980d3d40944ebe7c966e7ccfb317fd960fa8a08fc5428fa227316` |
| 7 | `lemma` | [multipliable_sineTerm](../../../../../mathematics/Analysis/AsymptoticAnalysis/Cotangent/Variant67acd6e823a8a8ce7fb7c0a2f6d51d0b4cb490261b68cb786812b93f8f5bdf3d.lean/declarations/multipliable-sineterm--683ae15ee1279e1c8f8c211d.md) | 102 | `result-track:683ae15ee1279e1c8f8c211d93354aeaa036117b5034a52c87c9f0cadcc8d38e` |
| 8 | `lemma` | [euler_sineTerm_tprod](../../../../../mathematics/Analysis/AsymptoticAnalysis/Cotangent/Variant67acd6e823a8a8ce7fb7c0a2f6d51d0b4cb490261b68cb786812b93f8f5bdf3d.lean/declarations/euler-sineterm-tprod--60cef29a2d7df471bc9cb0ae.md) | 107 | `result-track:60cef29a2d7df471bc9cb0ae88f77f6d5b24cdbc2c6abe0767d0ca0bc945cd83` |
| 9 | `lemma` | [sineTerm_bound_aux](../../../../../mathematics/Analysis/AsymptoticAnalysis/Cotangent/Variant67acd6e823a8a8ce7fb7c0a2f6d51d0b4cb490261b68cb786812b93f8f5bdf3d.lean/declarations/sineterm-bound-aux--0b397f816bff2eb43be609a9.md) | 113 | `result-track:0b397f816bff2eb43be609a901d6a580e8c812a2ce7b731f7a21b013d7816278` |
| 10 | `lemma` | [multipliableUniformlyOn_euler_sin_prod_on_compact](../../../../../mathematics/Analysis/AsymptoticAnalysis/Cotangent/Variant67acd6e823a8a8ce7fb7c0a2f6d51d0b4cb490261b68cb786812b93f8f5bdf3d.lean/declarations/multipliableuniformlyon-euler-sin-prod-on-compact--d4d4be0b8c1f58fa188cc477.md) | 126 | `result-track:d4d4be0b8c1f58fa188cc477fdb26f11c83310a486e595e191260b05847476aa` |
| 11 | `lemma` | [HasProdUniformlyOn_sineTerm_prod_on_compact](../../../../../mathematics/Analysis/AsymptoticAnalysis/Cotangent/Variant67acd6e823a8a8ce7fb7c0a2f6d51d0b4cb490261b68cb786812b93f8f5bdf3d.lean/declarations/hasproduniformlyon-sineterm-prod-on-compact--a7429f704c84d3c45674805a.md) | 133 | `result-track:a7429f704c84d3c45674805a8a3ae462ccb683141b93afad0f0ac52000d47a16` |
| 12 | `lemma` | [HasProdLocallyUniformlyOn_euler_sin_prod](../../../../../mathematics/Analysis/AsymptoticAnalysis/Cotangent/Variant67acd6e823a8a8ce7fb7c0a2f6d51d0b4cb490261b68cb786812b93f8f5bdf3d.lean/declarations/hasprodlocallyuniformlyon-euler-sin-prod--ac54611d24dcd49d6c9facfe.md) | 140 | `result-track:ac54611d24dcd49d6c9facfe1ab27ef2a30389a529cc45919783d8ce73aebecc` |
| 13 | `theorem` | [sin_pi_mul_ne_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/Cotangent/Variant67acd6e823a8a8ce7fb7c0a2f6d51d0b4cb490261b68cb786812b93f8f5bdf3d.lean/declarations/sin-pi-mul-ne-zero--5b850c8f9f8af90935f166f8.md) | 147 | `result-track:5b850c8f9f8af90935f166f893c03761dd52226e6ab1425ab7d73e74e2b11027` |
| 14 | `lemma` | [cot_pi_mul_contDiffWithinAt](../../../../../mathematics/Analysis/AsymptoticAnalysis/Cotangent/Variant67acd6e823a8a8ce7fb7c0a2f6d51d0b4cb490261b68cb786812b93f8f5bdf3d.lean/declarations/cot-pi-mul-contdiffwithinat--cdce91e6d465fbc6b37a88ae.md) | 153 | `result-track:cdce91e6d465fbc6b37a88ae515328546f199d7d4af6ff96a23f0e997daaf38d` |
| 15 | `lemma` | [tendsto_logDeriv_euler_sin_div](../../../../../mathematics/Analysis/AsymptoticAnalysis/Cotangent/Variant67acd6e823a8a8ce7fb7c0a2f6d51d0b4cb490261b68cb786812b93f8f5bdf3d.lean/declarations/tendsto-logderiv-euler-sin-div--4b92e1cd51ee6fd0bef9d41a.md) | 158 | `result-track:4b92e1cd51ee6fd0bef9d41a03b45d624e3ab3d8ed40123db9fa60dd67557a53` |
| 16 | `lemma` | [logDeriv_sin_div_eq_cot](../../../../../mathematics/Analysis/AsymptoticAnalysis/Cotangent/Variant67acd6e823a8a8ce7fb7c0a2f6d51d0b4cb490261b68cb786812b93f8f5bdf3d.lean/declarations/logderiv-sin-div-eq-cot--80d6818614bec6060928dfc4.md) | 167 | `result-track:80d6818614bec6060928dfc45a87ee0f73bc27da4e9b903cb55315a226cab224` |
| 17 | `abbrev` | [cotTerm](../../../../../mathematics/Analysis/AsymptoticAnalysis/Cotangent/Variant67acd6e823a8a8ce7fb7c0a2f6d51d0b4cb490261b68cb786812b93f8f5bdf3d.lean/declarations/cotterm--e40c93a11bbed41c77a5342e.md) | 181 | `declaration-track:e40c93a11bbed41c77a5342e21e3ae8b27489d809a351794e783ce20800838e4` |
| 18 | `lemma` | [logDeriv_sineTerm_eq_cotTerm](../../../../../mathematics/Analysis/AsymptoticAnalysis/Cotangent/Variant67acd6e823a8a8ce7fb7c0a2f6d51d0b4cb490261b68cb786812b93f8f5bdf3d.lean/declarations/logderiv-sineterm-eq-cotterm--9b9800fb6bdd4a9a17b3237f.md) | 183 | `result-track:9b9800fb6bdd4a9a17b3237f84ff6a3e24232ae4cf66407bf12c4170bde1407f` |
| 19 | `lemma` | [logDeriv_prod_sineTerm_eq_sum_cotTerm](../../../../../mathematics/Analysis/AsymptoticAnalysis/Cotangent/Variant67acd6e823a8a8ce7fb7c0a2f6d51d0b4cb490261b68cb786812b93f8f5bdf3d.lean/declarations/logderiv-prod-sineterm-eq-sum-cotterm--c2e2d25a195fdedd7e60e9eb.md) | 197 | `result-track:c2e2d25a195fdedd7e60e9ebddfd098ffdb9937da1188b310c018cdb652ebadc` |
| 20 | `lemma` | [tendsto_logDeriv_euler_cot_sub](../../../../../mathematics/Analysis/AsymptoticAnalysis/Cotangent/Variant67acd6e823a8a8ce7fb7c0a2f6d51d0b4cb490261b68cb786812b93f8f5bdf3d.lean/declarations/tendsto-logderiv-euler-cot-sub--4d6b3ad66a532fface3ce4b4.md) | 205 | `result-track:4d6b3ad66a532fface3ce4b4c3523a420b61dd1cd27006ca8ba35820db48e47c` |
| 21 | `lemma` | [cotTerm_identity](../../../../../mathematics/Analysis/AsymptoticAnalysis/Cotangent/Variant67acd6e823a8a8ce7fb7c0a2f6d51d0b4cb490261b68cb786812b93f8f5bdf3d.lean/declarations/cotterm-identity--11375f0597a970b394c99716.md) | 211 | `result-track:11375f0597a970b394c99716191754e6f579e2953fc1eb07b472f81e73c50f60` |
| 22 | `lemma` | [summable_cotTerm](../../../../../mathematics/Analysis/AsymptoticAnalysis/Cotangent/Variant67acd6e823a8a8ce7fb7c0a2f6d51d0b4cb490261b68cb786812b93f8f5bdf3d.lean/declarations/summable-cotterm--5a8635794099cb22e5ce7ca0.md) | 219 | `result-track:5a8635794099cb22e5ce7ca0104bc1d1e88fcf799c11b30876d96d5db9f2dacc` |
| 23 | `lemma` | [cot_series_rep'](../../../../../mathematics/Analysis/AsymptoticAnalysis/Cotangent/Variant67acd6e823a8a8ce7fb7c0a2f6d51d0b4cb490261b68cb786812b93f8f5bdf3d.lean/declarations/cot-series-rep--4ae9d75c3488700e053674c6.md) | 230 | `result-track:4ae9d75c3488700e053674c6a37bb1f2b171efbcc74897b7f7f1de38d6cb137a` |
| 24 | `theorem` | [cot_series_rep](../../../../../mathematics/Analysis/AsymptoticAnalysis/Cotangent/Variant67acd6e823a8a8ce7fb7c0a2f6d51d0b4cb490261b68cb786812b93f8f5bdf3d.lean/declarations/cot-series-rep--379f66fbbc5d749b49f902ad.md) | 237 | `result-track:379f66fbbc5d749b49f902adbead307e848f6bf7b6e87105b4608f9cd80f1dcb` |
| 25 | `lemma` | [contDiffOn_inv_linear](../../../../../mathematics/Analysis/AsymptoticAnalysis/Cotangent/Variant67acd6e823a8a8ce7fb7c0a2f6d51d0b4cb490261b68cb786812b93f8f5bdf3d.lean/declarations/contdiffon-inv-linear--d6ceba8b4857b4ddd637ba56.md) | 255 | `result-track:d6ceba8b4857b4ddd637ba561598bd12a3841a31dca250ddc63dab5b501f63a8` |
| 26 | `lemma` | [eqOn_iteratedDeriv_cotTerm](../../../../../mathematics/Analysis/AsymptoticAnalysis/Cotangent/Variant67acd6e823a8a8ce7fb7c0a2f6d51d0b4cb490261b68cb786812b93f8f5bdf3d.lean/declarations/eqon-iteratedderiv-cotterm--9d054e1b77b988d324529a46.md) | 258 | `result-track:9d054e1b77b988d324529a467f956aa1e966e46a33d1a40f68ec4babe7d8d01d` |
| 27 | `lemma` | [eqOn_iteratedDerivWithin_cotTerm_integerComplement](../../../../../mathematics/Analysis/AsymptoticAnalysis/Cotangent/Variant67acd6e823a8a8ce7fb7c0a2f6d51d0b4cb490261b68cb786812b93f8f5bdf3d.lean/declarations/eqon-iteratedderivwithin-cotterm-integercomplement--6d434ffdf3ec48c0f2a87693.md) | 274 | `result-track:6d434ffdf3ec48c0f2a87693326d26922f47f5b50626c79c53c77ff5ea99c6f1` |
| 28 | `lemma` | [eqOn_iteratedDerivWithin_cotTerm_upperHalfPlaneSet](../../../../../mathematics/Analysis/AsymptoticAnalysis/Cotangent/Variant67acd6e823a8a8ce7fb7c0a2f6d51d0b4cb490261b68cb786812b93f8f5bdf3d.lean/declarations/eqon-iteratedderivwithin-cotterm-upperhalfplaneset--013448e89ba1dfcface52da9.md) | 282 | `result-track:013448e89ba1dfcface52da9d7adc9bcb9b6ee95c983c7cc0ef328e360997c32` |
| 29 | `abbrev` | [cotTermUpperBound](../../../../../mathematics/Analysis/AsymptoticAnalysis/Cotangent/Variant67acd6e823a8a8ce7fb7c0a2f6d51d0b4cb490261b68cb786812b93f8f5bdf3d.lean/declarations/cottermupperbound--f15f9ae36cd46e98c3ed3eea.md) | 295 | `declaration-track:f15f9ae36cd46e98c3ed3eea64e501d82f5291cb904b79a8171de052516cd2a2` |
| 30 | `lemma` | [summable_cotTermUpperBound](../../../../../mathematics/Analysis/AsymptoticAnalysis/Cotangent/Variant67acd6e823a8a8ce7fb7c0a2f6d51d0b4cb490261b68cb786812b93f8f5bdf3d.lean/declarations/summable-cottermupperbound--c7e0488c85b510e88e85b135.md) | 298 | `result-track:c7e0488c85b510e88e85b1356670d1f0d4fd764dbd5536fe25ca5ebbe0b88a1f` |
| 31 | `lemma` | [iteratedDerivWithin_cotTerm_bounded_uniformly](../../../../../mathematics/Analysis/AsymptoticAnalysis/Cotangent/Variant67acd6e823a8a8ce7fb7c0a2f6d51d0b4cb490261b68cb786812b93f8f5bdf3d.lean/declarations/iteratedderivwithin-cotterm-bounded-uniformly--bf4459d72a26c40b2990666d.md) | 308 | `result-track:bf4459d72a26c40b2990666d36b5e3c01f90a420d02b26a6c8addebbb0ac6825` |
| 32 | `lemma` | [summableLocallyUniformlyOn_iteratedDerivWithin_cotTerm](../../../../../mathematics/Analysis/AsymptoticAnalysis/Cotangent/Variant67acd6e823a8a8ce7fb7c0a2f6d51d0b4cb490261b68cb786812b93f8f5bdf3d.lean/declarations/summablelocallyuniformlyon-iteratedderivwithin-cotterm--9bc7cb9c5f0abe7c68001acc.md) | 326 | `result-track:9bc7cb9c5f0abe7c68001acc7b08e2a7bd549804ffc77a173a725983be5da782` |
| 33 | `lemma` | [differentiableOn_iteratedDerivWithin_cotTerm](../../../../../mathematics/Analysis/AsymptoticAnalysis/Cotangent/Variant67acd6e823a8a8ce7fb7c0a2f6d51d0b4cb490261b68cb786812b93f8f5bdf3d.lean/declarations/differentiableon-iteratedderivwithin-cotterm--b26866c09a17390a7ac0e170.md) | 336 | `result-track:b26866c09a17390a7ac0e1709ae38958f659e480972a27f39dd4fd2e426ff363` |
| 34 | `lemma` | [aux_summable_add](../../../../../mathematics/Analysis/AsymptoticAnalysis/Cotangent/Variant67acd6e823a8a8ce7fb7c0a2f6d51d0b4cb490261b68cb786812b93f8f5bdf3d.lean/declarations/aux-summable-add--3c99331ec83836d5b3f259cd.md) | 346 | `result-track:3c99331ec83836d5b3f259cdd7e5752e630331c7d23503e79f97c987b4d47d29` |
| 35 | `lemma` | [aux_summable_sub](../../../../../mathematics/Analysis/AsymptoticAnalysis/Cotangent/Variant67acd6e823a8a8ce7fb7c0a2f6d51d0b4cb490261b68cb786812b93f8f5bdf3d.lean/declarations/aux-summable-sub--064fb1a3870a4e61dd0a7afa.md) | 352 | `result-track:064fb1a3870a4e61dd0a7afa79b068fa508ed4ad34765bee964d6c333a22df76` |
| 36 | `lemma` | [aux_iteratedDeriv_tsum_cotTerm](../../../../../mathematics/Analysis/AsymptoticAnalysis/Cotangent/Variant67acd6e823a8a8ce7fb7c0a2f6d51d0b4cb490261b68cb786812b93f8f5bdf3d.lean/declarations/aux-iteratedderiv-tsum-cotterm--f496f09d68732472d2aee75a.md) | 361 | `result-track:f496f09d68732472d2aee75a3c1dd91f880949fb0a2742045057cb80c701d61b` |
| 37 | `lemma` | [iteratedDerivWithin_cot_sub_inv_eq_add_mul_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/Cotangent/Variant67acd6e823a8a8ce7fb7c0a2f6d51d0b4cb490261b68cb786812b93f8f5bdf3d.lean/declarations/iteratedderivwithin-cot-sub-inv-eq-add-mul-tsum--5e605f358770b5a2c41217a7.md) | 379 | `result-track:5e605f358770b5a2c41217a7296794388cb5fb4e600e53af643701d21da1b0ea` |
| 38 | `lemma` | [iteratedDerivWithin_cot_pi_mul_sub_inv](../../../../../mathematics/Analysis/AsymptoticAnalysis/Cotangent/Variant67acd6e823a8a8ce7fb7c0a2f6d51d0b4cb490261b68cb786812b93f8f5bdf3d.lean/declarations/iteratedderivwithin-cot-pi-mul-sub-inv--5353e75a8e103781ebcc843b.md) | 386 | `result-track:5353e75a8e103781ebcc843b296ad41760676497ed8ba5461141d286e39c5605` |
| 39 | `lemma` | [iteratedDerivWithin_cot_pi_mul_eq_mul_tsum_zpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/Cotangent/Variant67acd6e823a8a8ce7fb7c0a2f6d51d0b4cb490261b68cb786812b93f8f5bdf3d.lean/declarations/iteratedderivwithin-cot-pi-mul-eq-mul-tsum-zpow--26e4f116ad9a00524104117d.md) | 400 | `result-track:26e4f116ad9a00524104117d354db7ffa044dd60820d5adca281567f1de23a1a` |
| 40 | `theorem` | [iteratedDerivWithin_cot_pi_mul_eq_mul_tsum_div_pow](../../../../../mathematics/Analysis/AsymptoticAnalysis/Cotangent/Variant67acd6e823a8a8ce7fb7c0a2f6d51d0b4cb490261b68cb786812b93f8f5bdf3d.lean/declarations/iteratedderivwithin-cot-pi-mul-eq-mul-tsum-div-pow--f40d340ee448b4920a52da98.md) | 409 | `result-track:f40d340ee448b4920a52da98cb94d642b08171efb95bb8fa28af3109d27ed5d1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
