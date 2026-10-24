# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.Nonvanishing.Variantd2bf62eb15f698613100bb63ba8ec2b65f78c294a070c501c299b5eb3ff2b230

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "789e0aae6e9378c8f5c8a7a07a905830e20b5433",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Nonvanishing/Variantd2bf62eb15f698613100bb63ba8ec2b65f78c294a070c501c299b5eb3ff2b230.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Nonvanishing/Variantd2bf62eb15f698613100bb63ba8ec2b65f78c294a070c501c299b5eb3ff2b230.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Nonvanishing/Variantd2bf62eb15f698613100bb63ba8ec2b65f78c294a070c501c299b5eb3ff2b230.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `789e0aae6e9378c8f5c8a7a07a905830e20b5433`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Nonvanishing/Variantd2bf62eb15f698613100bb63ba8ec2b65f78c294a070c501c299b5eb3ff2b230.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Nonvanishing/Variantd2bf62eb15f698613100bb63ba8ec2b65f78c294a070c501c299b5eb3ff2b230.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [zetaMul](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Nonvanishing/Variantd2bf62eb15f698613100bb63ba8ec2b65f78c294a070c501c299b5eb3ff2b230.lean/declarations/zetamul--7bf2a935c7f9276646225389.md) | 77 | `declaration-track:7bf2a935c7f9276646225389461f1d83fad33b746602e03bf2cf20522967b5bb` |
| 2 | `lemma` | [isMultiplicative_zetaMul](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Nonvanishing/Variantd2bf62eb15f698613100bb63ba8ec2b65f78c294a070c501c299b5eb3ff2b230.lean/declarations/ismultiplicative-zetamul--c850f3b23b71e25ff151137a.md) | 81 | `result-track:c850f3b23b71e25ff151137a55ca3882e8540e4fbea65e8be56ce2fe2363cce7` |
| 3 | `lemma` | [LSeriesSummable_zetaMul](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Nonvanishing/Variantd2bf62eb15f698613100bb63ba8ec2b65f78c294a070c501c299b5eb3ff2b230.lean/declarations/lseriessummable-zetamul--f81449bdc3d0029bfdedab42.md) | 84 | `result-track:f81449bdc3d0029bfdedab42e76254d5412be5c0f34ed42607920e6b7c06054c` |
| 4 | `lemma` | [zetaMul_prime_pow_nonneg](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Nonvanishing/Variantd2bf62eb15f698613100bb63ba8ec2b65f78c294a070c501c299b5eb3ff2b230.lean/declarations/zetamul-prime-pow-nonneg--3e5f5a8b69c9f3eb49993d50.md) | 92 | `result-track:3e5f5a8b69c9f3eb49993d50ec80a4c50259188c7f18d0e8412887fc3a553daa` |
| 5 | `lemma` | [zetaMul_nonneg](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Nonvanishing/Variantd2bf62eb15f698613100bb63ba8ec2b65f78c294a070c501c299b5eb3ff2b230.lean/declarations/zetamul-nonneg--b811c67e1d38866acf572753.md) | 108 | `result-track:b811c67e1d38866acf572753c90e0fb296a6e8742741f13fba598f40c682c523` |
| 6 | `structure` | [BadChar](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Nonvanishing/Variantd2bf62eb15f698613100bb63ba8ec2b65f78c294a070c501c299b5eb3ff2b230.lean/declarations/badchar--dc78d1185b009611683c842d.md) | 128 | `declaration-track:dc78d1185b009611683c842dc27d5dbec30af45a986ed13e6c67c47f5a52cbe4` |
| 7 | `def` | [F](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Nonvanishing/Variantd2bf62eb15f698613100bb63ba8ec2b65f78c294a070c501c299b5eb3ff2b230.lean/declarations/f--cd2e8f2e2513e16dc16ab23c.md) | 143 | `declaration-track:cd2e8f2e2513e16dc16ab23ccddd157060dd5a8ad8e7e5e07b165158c3c38f6c` |
| 8 | `lemma` | [F_differentiableAt_of_ne](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Nonvanishing/Variantd2bf62eb15f698613100bb63ba8ec2b65f78c294a070c501c299b5eb3ff2b230.lean/declarations/f-differentiableat-of-ne--b867da4b27e4fd2fe18cc165.md) | 146 | `result-track:b867da4b27e4fd2fe18cc165ac7d074fe4bb95e4f271b6819380ec3ebfd8f9af` |
| 9 | `lemma` | [F_eq_LSeries](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Nonvanishing/Variantd2bf62eb15f698613100bb63ba8ec2b65f78c294a070c501c299b5eb3ff2b230.lean/declarations/f-eq-lseries--3c9c65096cbaaaf96fb6bcdf.md) | 153 | `result-track:3c9c65096cbaaaf96fb6bcdf87b7010df108b0e8ee1e8e7bb231a8894abbfcff` |
| 10 | `lemma` | [F_differentiable](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Nonvanishing/Variantd2bf62eb15f698613100bb63ba8ec2b65f78c294a070c501c299b5eb3ff2b230.lean/declarations/f-differentiable--91d3cea7bb39cab39f7bb975.md) | 167 | `result-track:91d3cea7bb39cab39f7bb97585aef0449b6d0f680fab77450145c69ec8476056` |
| 11 | `lemma` | [F_neg_two](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Nonvanishing/Variantd2bf62eb15f698613100bb63ba8ec2b65f78c294a070c501c299b5eb3ff2b230.lean/declarations/f-neg-two--f16cfa92b51b86f65a3460aa.md) | 192 | `result-track:f16cfa92b51b86f65a3460aa70f8f59625395c4dd0b2ee571aea57e35a39ae2d` |
| 12 | `theorem` | [LFunction_apply_one_ne_zero_of_quadratic](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Nonvanishing/Variantd2bf62eb15f698613100bb63ba8ec2b65f78c294a070c501c299b5eb3ff2b230.lean/declarations/lfunction-apply-one-ne-zero-of-quadratic--1f486dec35fa32e6113dc4bc.md) | 202 | `result-track:1f486dec35fa32e6113dc4bc61590f120825af4336fd16515baea29ceb737508` |
| 13 | `lemma` | [re_log_comb_nonneg'](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Nonvanishing/Variantd2bf62eb15f698613100bb63ba8ec2b65f78c294a070c501c299b5eb3ff2b230.lean/declarations/re-log-comb-nonneg--8d8b7e6cf1f8723358cf37d3.md) | 223 | `result-track:8d8b7e6cf1f8723358cf37d3864d1fcbfa4b7ead1450076eff5586e2d5bda24d` |
| 14 | `lemma` | [re_log_comb_nonneg](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Nonvanishing/Variantd2bf62eb15f698613100bb63ba8ec2b65f78c294a070c501c299b5eb3ff2b230.lean/declarations/re-log-comb-nonneg--6610523aac31f1534e2d6e40.md) | 244 | `result-track:6610523aac31f1534e2d6e40cde96b5fb47ba3ddec19498f491313d780413f77` |
| 15 | `lemma` | [summable_neg_log_one_sub_mul_prime_cpow](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Nonvanishing/Variantd2bf62eb15f698613100bb63ba8ec2b65f78c294a070c501c299b5eb3ff2b230.lean/declarations/summable-neg-log-one-sub-mul-prime-cpow--23dee5d778a710a93b0fca8d.md) | 270 | `result-track:23dee5d778a710a93b0fca8d30151af976808540926f5fe08ce0ad5074c644ec` |
| 16 | `lemma` | [one_lt_re_one_add](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Nonvanishing/Variantd2bf62eb15f698613100bb63ba8ec2b65f78c294a070c501c299b5eb3ff2b230.lean/declarations/one-lt-re-one-add--6b9c21dee4094631ff6c6f9b.md) | 279 | `result-track:6b9c21dee4094631ff6c6f9ba9fcd1952eeb58ad24ab9dcd4e4dacc10bbacb54` |
| 17 | `lemma` | [norm_LSeries_product_ge_one](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Nonvanishing/Variantd2bf62eb15f698613100bb63ba8ec2b65f78c294a070c501c299b5eb3ff2b230.lean/declarations/norm-lseries-product-ge-one--4ef5d669b2c022901e24ab57.md) | 287 | `result-track:4ef5d669b2c022901e24ab57551c45fe11f7ef69fb3e09f84061d7b7e0d6f320` |
| 18 | `lemma` | [norm_LFunction_product_ge_one](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Nonvanishing/Variantd2bf62eb15f698613100bb63ba8ec2b65f78c294a070c501c299b5eb3ff2b230.lean/declarations/norm-lfunction-product-ge-one--1c11f5cf23adc4df975eba47.md) | 310 | `result-track:1c11f5cf23adc4df975eba476b6e70ee7c72a36b479c43666bd30b29860f57b5` |
| 19 | `lemma` | [LFunctionTrivChar_isBigO_near_one_horizontal](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Nonvanishing/Variantd2bf62eb15f698613100bb63ba8ec2b65f78c294a070c501c299b5eb3ff2b230.lean/declarations/lfunctiontrivchar-isbigo-near-one-horizontal--f8279f60e8ea5c22df1fd58e.md) | 318 | `result-track:f8279f60e8ea5c22df1fd58e04fb23748304145c2e61ceb1fbcfce6de0d80e46` |
| 20 | `lemma` | [one_add_I_mul_ne_one_or](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Nonvanishing/Variantd2bf62eb15f698613100bb63ba8ec2b65f78c294a070c501c299b5eb3ff2b230.lean/declarations/one-add-i-mul-ne-one-or--6ac0eccbd9ae50c4dec5094f.md) | 331 | `result-track:6ac0eccbd9ae50c4dec5094f02038c28e585701946fc4d1577c893ab1c4a908f` |
| 21 | `lemma` | [LFunction_isBigO_horizontal](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Nonvanishing/Variantd2bf62eb15f698613100bb63ba8ec2b65f78c294a070c501c299b5eb3ff2b230.lean/declarations/lfunction-isbigo-horizontal--3ed515689ce41183f2e6ef11.md) | 336 | `result-track:3ed515689ce41183f2e6ef118ee93bda02b5784c0053a4ebb8b91200c1248c88` |
| 22 | `lemma` | [LFunction_isBigO_horizontal_of_eq_zero](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Nonvanishing/Variantd2bf62eb15f698613100bb63ba8ec2b65f78c294a070c501c299b5eb3ff2b230.lean/declarations/lfunction-isbigo-horizontal-of-eq-zero--5943d49cbec545080a8cb80b.md) | 344 | `result-track:5943d49cbec545080a8cb80b266dd60fac314e26dd314839b6baae69ec42aaaa` |
| 23 | `lemma` | [LFunction_ne_zero_of_not_quadratic_or_ne_one](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Nonvanishing/Variantd2bf62eb15f698613100bb63ba8ec2b65f78c294a070c501c299b5eb3ff2b230.lean/declarations/lfunction-ne-zero-of-not-quadratic-or-ne-one--b3acde8b1feb9164cd967a07.md) | 355 | `result-track:b3acde8b1feb9164cd967a07072cd693630eb1a47c57866c5b6e9696187ff3e3` |
| 24 | `theorem` | [LFunction_ne_zero_of_re_eq_one](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Nonvanishing/Variantd2bf62eb15f698613100bb63ba8ec2b65f78c294a070c501c299b5eb3ff2b230.lean/declarations/lfunction-ne-zero-of-re-eq-one--2bb866e38986bfc5bcef0a37.md) | 387 | `result-track:2bb866e38986bfc5bcef0a37d94f39ec01b5c593872565c90e00433bef7d5be4` |
| 25 | `theorem` | [LFunction_ne_zero_of_one_le_re](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Nonvanishing/Variantd2bf62eb15f698613100bb63ba8ec2b65f78c294a070c501c299b5eb3ff2b230.lean/declarations/lfunction-ne-zero-of-one-le-re--a87daa2d66d2f3bda52a3a66.md) | 400 | `result-track:a87daa2d66d2f3bda52a3a668f9146b42f6c22b5a2d9c84b5bb4f4e7e3e49fc0` |
| 26 | `theorem` | [LFunction_apply_one_ne_zero](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Nonvanishing/Variantd2bf62eb15f698613100bb63ba8ec2b65f78c294a070c501c299b5eb3ff2b230.lean/declarations/lfunction-apply-one-ne-zero--d4ca724e50605ca2b3db8331.md) | 408 | `result-track:d4ca724e50605ca2b3db833153595498e98da317c141e24c1ebd1336c8b28899` |
| 27 | `lemma` | [_root_.riemannZeta_ne_zero_of_one_le_re](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Nonvanishing/Variantd2bf62eb15f698613100bb63ba8ec2b65f78c294a070c501c299b5eb3ff2b230.lean/declarations/root-riemannzeta-ne-zero-of-one-le-re--0a94ef0ff51f0d56c529bb2d.md) | 413 | `result-track:0a94ef0ff51f0d56c529bb2d68f2351273cf5ae82fdd44c9d51cf242521856e7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
