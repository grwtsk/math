# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.SelbergSieve.Variantec409f3c9aeea3a9653db10704971abc6d4c2ea376eb87d60223a235ac885ca8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "29f3dc9e9e53e9e429df6c862714cf8327a2b554",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variantec409f3c9aeea3a9653db10704971abc6d4c2ea376eb87d60223a235ac885ca8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variantec409f3c9aeea3a9653db10704971abc6d4c2ea376eb87d60223a235ac885ca8.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variantec409f3c9aeea3a9653db10704971abc6d4c2ea376eb87d60223a235ac885ca8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `29f3dc9e9e53e9e429df6c862714cf8327a2b554`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variantec409f3c9aeea3a9653db10704971abc6d4c2ea376eb87d60223a235ac885ca8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variantec409f3c9aeea3a9653db10704971abc6d4c2ea376eb87d60223a235ac885ca8.lean.json)

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
| 1 | `structure` | [BoundingSieve](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variantec409f3c9aeea3a9653db10704971abc6d4c2ea376eb87d60223a235ac885ca8.lean/declarations/boundingsieve--7273e91cff89bbc8d3a2644b.md) | 53 | `declaration-track:7273e91cff89bbc8d3a2644bf48e3c5e3d05a0d27f879a7c083c8214eea14310` |
| 2 | `structure` | [SelbergSieve](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variantec409f3c9aeea3a9653db10704971abc6d4c2ea376eb87d60223a235ac885ca8.lean/declarations/selbergsieve--2a03a7ef12a682a830b7b164.md) | 77 | `declaration-track:2a03a7ef12a682a830b7b1640f1792be4a66d1d59b319902c0386c6d48872e9a` |
| 3 | `def` | [evalBoundingSieveWeights](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variantec409f3c9aeea3a9653db10704971abc6d4c2ea376eb87d60223a235ac885ca8.lean/declarations/evalboundingsieveweights--c26adb8e687af20e0729cb06.md) | 92 | `declaration-track:c26adb8e687af20e0729cb064307a5719d9bc11fda4acd884be3772d8997f221` |
| 4 | `theorem` | [one_le_y](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variantec409f3c9aeea3a9653db10704971abc6d4c2ea376eb87d60223a235ac885ca8.lean/declarations/one-le-y--6a17af2e9a98fcffe94185b2.md) | 105 | `result-track:6a17af2e9a98fcffe94185b222f504a4dee3a252fdab01a52c5e6d61cadcefed` |
| 5 | `theorem` | [prodPrimes_ne_zero](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variantec409f3c9aeea3a9653db10704971abc6d4c2ea376eb87d60223a235ac885ca8.lean/declarations/prodprimes-ne-zero--fe418cbac5ea88ec7da0616b.md) | 111 | `result-track:fe418cbac5ea88ec7da0616b4b4c9326e46ad20b94ba02061d03973a49af47a1` |
| 6 | `theorem` | [squarefree_of_dvd_prodPrimes](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variantec409f3c9aeea3a9653db10704971abc6d4c2ea376eb87d60223a235ac885ca8.lean/declarations/squarefree-of-dvd-prodprimes--db30a51fb42f4bbe146afb80.md) | 114 | `result-track:db30a51fb42f4bbe146afb803f85f60b20f48a10162c2abe86f98fe22fce4293` |
| 7 | `theorem` | [squarefree_of_mem_divisors_prodPrimes](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variantec409f3c9aeea3a9653db10704971abc6d4c2ea376eb87d60223a235ac885ca8.lean/declarations/squarefree-of-mem-divisors-prodprimes--ef1b9c7ca8b62401c4fbc5c4.md) | 117 | `result-track:ef1b9c7ca8b62401c4fbc5c4fd082da973516db1d6071f93288eb9ac1646ef94` |
| 8 | `theorem` | [prod_primeFactors_nu](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variantec409f3c9aeea3a9653db10704971abc6d4c2ea376eb87d60223a235ac885ca8.lean/declarations/prod-primefactors-nu--ff9a605568a9feb2003e21dc.md) | 124 | `result-track:ff9a605568a9feb2003e21dc966dc4fd5a3c9ceacbf0ba5b50293c97d975a097` |
| 9 | `theorem` | [nu_pos_of_dvd_prodPrimes](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variantec409f3c9aeea3a9653db10704971abc6d4c2ea376eb87d60223a235ac885ca8.lean/declarations/nu-pos-of-dvd-prodprimes--2356c22e00eb253b055acea7.md) | 129 | `result-track:2356c22e00eb253b055acea7ec088c157500206adee4d3a00fd25d451c31ec6f` |
| 10 | `theorem` | [nu_ne_zero](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variantec409f3c9aeea3a9653db10704971abc6d4c2ea376eb87d60223a235ac885ca8.lean/declarations/nu-ne-zero--e7411d6c34d6635b975afb17.md) | 139 | `result-track:e7411d6c34d6635b975afb17b284b575630a38b8aa06a67a02752a908d5dad73` |
| 11 | `theorem` | [nu_lt_one_of_dvd_prodPrimes](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variantec409f3c9aeea3a9653db10704971abc6d4c2ea376eb87d60223a235ac885ca8.lean/declarations/nu-lt-one-of-dvd-prodprimes--8cb58449777d3d4add58fe5d.md) | 143 | `result-track:8cb58449777d3d4add58fe5d7ef72a3f279f8f84f30ad907899d7bf43cce896a` |
| 12 | `def` | [multSum](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variantec409f3c9aeea3a9653db10704971abc6d4c2ea376eb87d60223a235ac885ca8.lean/declarations/multsum--4be304878bd85e5d78577afb.md) | 162 | `declaration-track:4be304878bd85e5d78577afb542309c1d4675220926ca6e0dbe73e34221856d0` |
| 13 | `def` | [rem](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variantec409f3c9aeea3a9653db10704971abc6d4c2ea376eb87d60223a235ac885ca8.lean/declarations/rem--fd7a6dbc7c098d1a5089d4c1.md) | 168 | `declaration-track:fd7a6dbc7c098d1a5089d4c14ff50f107154f1ba72ec846a01832ff23c8dbba7` |
| 14 | `def` | [siftedSum](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variantec409f3c9aeea3a9653db10704971abc6d4c2ea376eb87d60223a235ac885ca8.lean/declarations/siftedsum--6cda1fb77e55809d3247cc9c.md) | 171 | `declaration-track:6cda1fb77e55809d3247cc9cf77f4f38145f37cb4310a335c338bbd1d70dc832` |
| 15 | `def` | [mainSum](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variantec409f3c9aeea3a9653db10704971abc6d4c2ea376eb87d60223a235ac885ca8.lean/declarations/mainsum--8c1cb0bbdc19363457973fa1.md) | 174 | `declaration-track:8c1cb0bbdc19363457973fa193a09f9e7b67049ab698152a5d913a66c4f0f34a` |
| 16 | `def` | [errSum](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variantec409f3c9aeea3a9653db10704971abc6d4c2ea376eb87d60223a235ac885ca8.lean/declarations/errsum--80de5135ba788462ca30a4b5.md) | 177 | `declaration-track:80de5135ba788462ca30a4b5afaeee4e11e773f4bbe8fe8ea0e519fc3d9e39c0` |
| 17 | `theorem` | [multSum_eq_main_err](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variantec409f3c9aeea3a9653db10704971abc6d4c2ea376eb87d60223a235ac885ca8.lean/declarations/multsum-eq-main-err--caa5f3a973c44756c3e248d1.md) | 179 | `result-track:caa5f3a973c44756c3e248d1d31c4afe64bfcc14dc57c13a0318f4a74f882f53` |
| 18 | `theorem` | [siftedSum_eq_sum_support_mul_ite](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variantec409f3c9aeea3a9653db10704971abc6d4c2ea376eb87d60223a235ac885ca8.lean/declarations/siftedsum-eq-sum-support-mul-ite--3083b857db5aa656cc225161.md) | 183 | `result-track:3083b857db5aa656cc225161ceeea14b81199ef89e77a7afafe8b0d11a46820f` |
| 19 | `def` | [IsUpperMoebius](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variantec409f3c9aeea3a9653db10704971abc6d4c2ea376eb87d60223a235ac885ca8.lean/declarations/isuppermoebius--c97886106d39bb295381b16b.md) | 191 | `declaration-track:c97886106d39bb295381b16b25eb01e0157ae9609b0a6e1aff12aba8c4cb25c3` |
| 20 | `theorem` | [siftedSum_le_sum_of_upperMoebius](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variantec409f3c9aeea3a9653db10704971abc6d4c2ea376eb87d60223a235ac885ca8.lean/declarations/siftedsum-le-sum-of-uppermoebius--f34bc91f1e1a3473e4695385.md) | 194 | `result-track:f34bc91f1e1a3473e469538532cd2f52a88ab65692ea99e8c8d6ac3793f97b9d` |
| 21 | `theorem` | [siftedSum_le_mainSum_errSum_of_upperMoebius](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variantec409f3c9aeea3a9653db10704971abc6d4c2ea376eb87d60223a235ac885ca8.lean/declarations/siftedsum-le-mainsum-errsum-of-uppermoebius--36223feb1b29a4be637eca3e.md) | 216 | `result-track:36223feb1b29a4be637eca3eb2c742b2c2f7c7f87d41ca042035de0df6933014` |
| 22 | `def` | [lambdaSquared](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variantec409f3c9aeea3a9653db10704971abc6d4c2ea376eb87d60223a235ac885ca8.lean/declarations/lambdasquared--ed33a9abd16ee2a97f0c5790.md) | 236 | `declaration-track:ed33a9abd16ee2a97f0c579085e16cb284432c18baf7fcc40d2b5308915e2788` |
| 23 | `theorem` | [sum_divisors_lambda_sq_larger_sum](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variantec409f3c9aeea3a9653db10704971abc6d4c2ea376eb87d60223a235ac885ca8.lean/declarations/sum-divisors-lambda-sq-larger-sum--05d9dfbcfd52b28abff67ce4.md) | 239 | `result-track:05d9dfbcfd52b28abff67ce45554054ef9697401290644c7f8b619e9070785f6` |
| 24 | `theorem` | [upperMoebius_lambdaSquared](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variantec409f3c9aeea3a9653db10704971abc6d4c2ea376eb87d60223a235ac885ca8.lean/declarations/uppermoebius-lambdasquared--6b995dcc73704d5fde1952c8.md) | 250 | `result-track:6b995dcc73704d5fde1952c8373e1ae638fe299f0bb51153b9c121bd61242557` |
| 25 | `def` | [selbergTerms](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variantec409f3c9aeea3a9653db10704971abc6d4c2ea376eb87d60223a235ac885ca8.lean/declarations/selbergterms--572e74ae78582387b84826a2.md) | 276 | `declaration-track:572e74ae78582387b84826a2b2c72f3d746a8ca039f6b1e717f615097f18fb15` |
| 26 | `theorem` | [selbergTerms_apply](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variantec409f3c9aeea3a9653db10704971abc6d4c2ea376eb87d60223a235ac885ca8.lean/declarations/selbergterms-apply--f8b8a35aa75df1ec1e4bc1c7.md) | 279 | `result-track:f8b8a35aa75df1ec1e4bc1c7a68b92f3859ea65bfb6396129cae6945889d13ae` |
| 27 | `theorem` | [selbergTerms_pos](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variantec409f3c9aeea3a9653db10704971abc6d4c2ea376eb87d60223a235ac885ca8.lean/declarations/selbergterms-pos--34e512d9cac0c90cf3e90453.md) | 288 | `result-track:34e512d9cac0c90cf3e90453ed8490605eab1a3e9544678680a270eef9ef8bed` |
| 28 | `theorem` | [selbergTerms_isMultiplicative](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variantec409f3c9aeea3a9653db10704971abc6d4c2ea376eb87d60223a235ac885ca8.lean/declarations/selbergterms-ismultiplicative--bf5410ffa1099d5067599201.md) | 296 | `result-track:bf5410ffa1099d50675992010d5c56bda56dc97a1d2e8d96d67a3fbe1736e318` |
| 29 | `theorem` | [inv_selbergTerms_eq_sum_divisors_moebius_nu](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variantec409f3c9aeea3a9653db10704971abc6d4c2ea376eb87d60223a235ac885ca8.lean/declarations/inv-selbergterms-eq-sum-divisors-moebius-nu--8c1458ab788fb2c6063c0cb6.md) | 300 | `result-track:8c1458ab788fb2c6063c0cb688214b106441ae1c11ba5b8d5ffc02ddb6209f98` |
| 30 | `theorem` | [nu_inv_eq_sum_divisors_inv_selbergTerms](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variantec409f3c9aeea3a9653db10704971abc6d4c2ea376eb87d60223a235ac885ca8.lean/declarations/nu-inv-eq-sum-divisors-inv-selbergterms--cc09eace958fc4233918db49.md) | 312 | `result-track:cc09eace958fc4233918db49cadcb570bbefef50c167595d74c701df85fd93e1` |
| 31 | `theorem` | [sum_divisors_selbergTerms_eq_selbergTerms_mul_nu_inv](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variantec409f3c9aeea3a9653db10704971abc6d4c2ea376eb87d60223a235ac885ca8.lean/declarations/sum-divisors-selbergterms-eq-selbergterms-mul-nu-inv--afad0143fdcdf478596d2472.md) | 323 | `result-track:afad0143fdcdf478596d2472434b62bd5432b23c2b053d28d2b43292f43992b1` |
| 32 | `theorem` | [mainSum_lambdaSquared_eq_sum_sum_mul](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variantec409f3c9aeea3a9653db10704971abc6d4c2ea376eb87d60223a235ac885ca8.lean/declarations/mainsum-lambdasquared-eq-sum-sum-mul--cb2d27d596c21b680ac618b9.md) | 349 | `result-track:cb2d27d596c21b680ac618b91fcabc0cd8090e7ed027abf9b3fd23405a64cf13` |
| 33 | `theorem` | [mainSum_lambdaSquared_eq_sum_mul_sum_sq](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variantec409f3c9aeea3a9653db10704971abc6d4c2ea376eb87d60223a235ac885ca8.lean/declarations/mainsum-lambdasquared-eq-sum-mul-sum-sq--07f271c1d0b2ee5816863f57.md) | 375 | `result-track:07f271c1d0b2ee5816863f57f0419b20c5021cd90b6ae29a8c933ef046fbd37a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
