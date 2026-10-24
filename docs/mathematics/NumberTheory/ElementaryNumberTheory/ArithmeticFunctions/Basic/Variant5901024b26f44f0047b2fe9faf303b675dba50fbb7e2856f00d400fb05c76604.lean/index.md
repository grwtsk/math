# GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.Basic.Variant5901024b26f44f0047b2fe9faf303b675dba50fbb7e2856f00d400fb05c76604

[Complete source index](../../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**24 observed declarations and anonymous commands**, 16 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Basic/Variant5901024b26f44f0047b2fe9faf303b675dba50fbb7e2856f00d400fb05c76604.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `318c9dc92fadb0531bd6a623ef3c4a4a5e82d439`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Basic/Variant5901024b26f44f0047b2fe9faf303b675dba50fbb7e2856f00d400fb05c76604.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [selbergTerms](declarations/selbergterms--4ff5ea4aed8a3304043997b6.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [selbergTerms_apply](declarations/selbergterms-apply--6a061f427c49c55f8e99a919.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `structure` | [UpperBoundSieve](declarations/upperboundsieve--2c1b53e3d7d8f1370ed16c39.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [ubToμPlus](declarations/ubto-plus--e88049751861001b6ee52b11.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [IsLowerMoebius](declarations/islowermoebius--f50c6b9b31f831b22f921d0f.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `structure` | [LowerBoundSieve](declarations/lowerboundsieve--133e9f67a728dad12c0278a0.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [lbToμMinus](declarations/lbto-minus--4a89605384fc627c7c8df833.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [nu_ne_zero_of_mem_divisors_prodPrimes](declarations/nu-ne-zero-of-mem-divisors-prodprimes--8f8f363501b0f5fa35a93b6c.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [delta](declarations/delta--e5d6e1670f703d57fbfd01b7.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [siftedSum_as_delta](declarations/siftedsum-as-delta--b00bf11447ddea554c3a891b.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [nu_lt_self_of_dvd_prodPrimes](declarations/nu-lt-self-of-dvd-prodprimes--f15ef253775f40fdd89be260.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [selbergTerms_pos](declarations/selbergterms-pos--d467847236dc35d8401bc3fd.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [selbergTerms_mult](declarations/selbergterms-mult--48a3fc8045f51756a0edff9a.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [one_div_selbergTerms_eq_conv_moebius_nu](declarations/one-div-selbergterms-eq-conv-moebius-nu--75e79e4ca0539d05d83b2a6c.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [nu_eq_conv_one_div_selbergTerms](declarations/nu-eq-conv-one-div-selbergterms--8ba398d8ed64d5893975e2b3.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [conv_selbergTerms_eq_selbergTerms_mul_nu](declarations/conv-selbergterms-eq-selbergterms-mul-nu--8ab7b5eea77d9b6b9b95c0e7.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [upper_bound_of_UpperBoundSieve](declarations/upper-bound-of-upperboundsieve--11a96dd6423fb1f860109c5b.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [siftedSum_le_mainSum_errSum_of_UpperBoundSieve](declarations/siftedsum-le-mainsum-errsum-of-upperboundsieve--d660b89d048bf6bd54582fcf.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [lambdaSquared](declarations/lambdasquared--9de86d1cbe9fdce9f3e0dd3c.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [lambdaSquared_eq_zero_of_support_wlog](declarations/lambdasquared-eq-zero-of-support-wlog--f91ea986699efad615c48b2b.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [lambdaSquared_eq_zero_of_support](declarations/lambdasquared-eq-zero-of-support--2678e926447439f0b191d39c.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [upperMoebius_of_lambda_sq](declarations/uppermoebius-of-lambda-sq--032cd075c313ae629ab1bee5.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [lambdaSquared_mainSum_eq_quad_form](declarations/lambdasquared-mainsum-eq-quad-form--8ccad2fe5ef6fc39e17bc15f.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [lambdaSquared_mainSum_eq_diag_quad_form](declarations/lambdasquared-mainsum-eq-diag-quad-form--696370f822f799ac181d3687.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
