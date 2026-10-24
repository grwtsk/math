# GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.SelbergSieve.Variant99b6499f37325ff12a914052565c0ccacbd626b01fb3fda100964aecc51c68f3

[Complete source index](../../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**33 observed declarations and anonymous commands**, 22 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variant99b6499f37325ff12a914052565c0ccacbd626b01fb3fda100964aecc51c68f3.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3b65487ee5ff875948d7dad4be7a3f00b83ca5d0`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variant99b6499f37325ff12a914052565c0ccacbd626b01fb3fda100964aecc51c68f3.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [BoundingSieve](declarations/boundingsieve--dff4f6c571c8096e8db26987.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [SelbergSieve](declarations/selbergsieve--b29df4f5e772893e26ed121b.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [evalBoundingSieveWeights](declarations/evalboundingsieveweights--1879ca37c02ccf728d1d947c.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [one_le_y](declarations/one-le-y--2c37ba24bfaa9c30dd7b744c.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [prodPrimes_ne_zero](declarations/prodprimes-ne-zero--ecdfcc08eeeefaebba2334ea.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [squarefree_of_dvd_prodPrimes](declarations/squarefree-of-dvd-prodprimes--c7aa4fc848207e15fe3252d1.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [squarefree_of_mem_divisors_prodPrimes](declarations/squarefree-of-mem-divisors-prodprimes--1869bf1099ff35e24ea082d5.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [prod_primeFactors_nu](declarations/prod-primefactors-nu--23a679692f424f8653d66574.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [nu_pos_of_dvd_prodPrimes](declarations/nu-pos-of-dvd-prodprimes--c06dffe49639a55780ecae42.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [nu_ne_zero](declarations/nu-ne-zero--31a328255439728dd218edd4.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [nu_lt_one_of_dvd_prodPrimes](declarations/nu-lt-one-of-dvd-prodprimes--b7d71432a576f96ec7e30ae6.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [multSum](declarations/multsum--26ebf9e324ff70ddcde4ccfd.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [rem](declarations/rem--be9a7adfd13d02f00e077909.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [siftedSum](declarations/siftedsum--28e8061135d4c6e93d16d642.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [mainSum](declarations/mainsum--439588d2cdad2bc9af704c54.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [errSum](declarations/errsum--86cce21b7546e99170f0f6eb.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [multSum_eq_main_err](declarations/multsum-eq-main-err--22dce8fb63713c3056422d19.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [siftedSum_eq_sum_support_mul_ite](declarations/siftedsum-eq-sum-support-mul-ite--e2d6868bb80a0d9f73f851c1.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [IsUpperMoebius](declarations/isuppermoebius--e2d787aeac010c70f4cd3343.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [siftedSum_le_sum_of_upperMoebius](declarations/siftedsum-le-sum-of-uppermoebius--e06bf75628fd94499cb48adf.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [siftedSum_le_mainSum_errSum_of_upperMoebius](declarations/siftedsum-le-mainsum-errsum-of-uppermoebius--25d5a8304d0dd31fe290e191.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [lambdaSquared](declarations/lambdasquared--f021b149e427935db094ab19.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [sum_divisors_lambda_sq_larger_sum](declarations/sum-divisors-lambda-sq-larger-sum--c3a43e93ccf3235064487b57.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [upperMoebius_lambdaSquared](declarations/uppermoebius-lambdasquared--ebdad14717100f5423ff09f1.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [selbergTerms](declarations/selbergterms--9ca21837d9d9f2227e311bf9.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [selbergTerms_apply](declarations/selbergterms-apply--27d3c91719a535ddba2d1258.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [selbergTerms_pos](declarations/selbergterms-pos--082d3e9bdc08b17ca7d0bd8e.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [selbergTerms_isMultiplicative](declarations/selbergterms-ismultiplicative--2c7074e7703b4663609217bb.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [inv_selbergTerms_eq_sum_divisors_moebius_nu](declarations/inv-selbergterms-eq-sum-divisors-moebius-nu--160101d7e1f54e3d8d1ed39d.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [nu_inv_eq_sum_divisors_inv_selbergTerms](declarations/nu-inv-eq-sum-divisors-inv-selbergterms--fdb4426bc2cc56d14113dd2f.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [sum_divisors_selbergTerms_eq_selbergTerms_mul_nu_inv](declarations/sum-divisors-selbergterms-eq-selbergterms-mul-nu-inv--49dd8e8d5250b2985e51372b.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [mainSum_lambdaSquared_eq_sum_sum_mul](declarations/mainsum-lambdasquared-eq-sum-sum-mul--1c6003ef53b560595c888c10.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [mainSum_lambdaSquared_eq_sum_mul_sum_sq](declarations/mainsum-lambdasquared-eq-sum-mul-sum-sq--c5231c3cdd7e529451770391.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |
