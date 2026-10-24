# GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.SelbergSieve.Variantec409f3c9aeea3a9653db10704971abc6d4c2ea376eb87d60223a235ac885ca8

[Complete source index](../../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**33 observed declarations and anonymous commands**, 22 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variantec409f3c9aeea3a9653db10704971abc6d4c2ea376eb87d60223a235ac885ca8.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `29f3dc9e9e53e9e429df6c862714cf8327a2b554`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variantec409f3c9aeea3a9653db10704971abc6d4c2ea376eb87d60223a235ac885ca8.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [BoundingSieve](declarations/boundingsieve--7273e91cff89bbc8d3a2644b.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [SelbergSieve](declarations/selbergsieve--2a03a7ef12a682a830b7b164.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [evalBoundingSieveWeights](declarations/evalboundingsieveweights--c26adb8e687af20e0729cb06.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [one_le_y](declarations/one-le-y--6a17af2e9a98fcffe94185b2.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [prodPrimes_ne_zero](declarations/prodprimes-ne-zero--fe418cbac5ea88ec7da0616b.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [squarefree_of_dvd_prodPrimes](declarations/squarefree-of-dvd-prodprimes--db30a51fb42f4bbe146afb80.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [squarefree_of_mem_divisors_prodPrimes](declarations/squarefree-of-mem-divisors-prodprimes--ef1b9c7ca8b62401c4fbc5c4.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [prod_primeFactors_nu](declarations/prod-primefactors-nu--ff9a605568a9feb2003e21dc.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [nu_pos_of_dvd_prodPrimes](declarations/nu-pos-of-dvd-prodprimes--2356c22e00eb253b055acea7.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [nu_ne_zero](declarations/nu-ne-zero--e7411d6c34d6635b975afb17.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [nu_lt_one_of_dvd_prodPrimes](declarations/nu-lt-one-of-dvd-prodprimes--8cb58449777d3d4add58fe5d.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [multSum](declarations/multsum--4be304878bd85e5d78577afb.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [rem](declarations/rem--fd7a6dbc7c098d1a5089d4c1.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [siftedSum](declarations/siftedsum--6cda1fb77e55809d3247cc9c.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [mainSum](declarations/mainsum--8c1cb0bbdc19363457973fa1.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [errSum](declarations/errsum--80de5135ba788462ca30a4b5.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [multSum_eq_main_err](declarations/multsum-eq-main-err--caa5f3a973c44756c3e248d1.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [siftedSum_eq_sum_support_mul_ite](declarations/siftedsum-eq-sum-support-mul-ite--3083b857db5aa656cc225161.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [IsUpperMoebius](declarations/isuppermoebius--c97886106d39bb295381b16b.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [siftedSum_le_sum_of_upperMoebius](declarations/siftedsum-le-sum-of-uppermoebius--f34bc91f1e1a3473e4695385.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [siftedSum_le_mainSum_errSum_of_upperMoebius](declarations/siftedsum-le-mainsum-errsum-of-uppermoebius--36223feb1b29a4be637eca3e.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [lambdaSquared](declarations/lambdasquared--ed33a9abd16ee2a97f0c5790.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [sum_divisors_lambda_sq_larger_sum](declarations/sum-divisors-lambda-sq-larger-sum--05d9dfbcfd52b28abff67ce4.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [upperMoebius_lambdaSquared](declarations/uppermoebius-lambdasquared--6b995dcc73704d5fde1952c8.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [selbergTerms](declarations/selbergterms--572e74ae78582387b84826a2.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [selbergTerms_apply](declarations/selbergterms-apply--f8b8a35aa75df1ec1e4bc1c7.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [selbergTerms_pos](declarations/selbergterms-pos--34e512d9cac0c90cf3e90453.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [selbergTerms_isMultiplicative](declarations/selbergterms-ismultiplicative--bf5410ffa1099d5067599201.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [inv_selbergTerms_eq_sum_divisors_moebius_nu](declarations/inv-selbergterms-eq-sum-divisors-moebius-nu--8c1458ab788fb2c6063c0cb6.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [nu_inv_eq_sum_divisors_inv_selbergTerms](declarations/nu-inv-eq-sum-divisors-inv-selbergterms--cc09eace958fc4233918db49.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [sum_divisors_selbergTerms_eq_selbergTerms_mul_nu_inv](declarations/sum-divisors-selbergterms-eq-selbergterms-mul-nu-inv--afad0143fdcdf478596d2472.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [mainSum_lambdaSquared_eq_sum_sum_mul](declarations/mainsum-lambdasquared-eq-sum-sum-mul--cb2d27d596c21b680ac618b9.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [mainSum_lambdaSquared_eq_sum_mul_sum_sq](declarations/mainsum-lambdasquared-eq-sum-mul-sum-sq--07f271c1d0b2ee5816863f57.md) | 375 | `BLOCKED_NATIVE_ADMISSION` |
