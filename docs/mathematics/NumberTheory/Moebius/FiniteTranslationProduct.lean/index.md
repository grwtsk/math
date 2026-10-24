# GRWTSK.NumberTheory.Moebius.FiniteTranslationProduct

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**45 observed declarations and anonymous commands**, 34 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/Moebius/FiniteTranslationProduct.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `61c4ebd57b68876c8b7831b95d772c05090abbea`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/NumberTheory/Moebius/FiniteTranslationProduct.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [shift](declarations/shift--bc3b5e8dbf126e24087fa845.md) | 18 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [note](declarations/note--aaba05eeec2830783b041459.md) | 21 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [shift_add](declarations/shift-add--47b19dcf3a4324b415e6b1d0.md) | 24 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [shift_smul](declarations/shift-smul--709401f22cdd0550f0e7ef76.md) | 29 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [shift_sum](declarations/shift-sum--8c2fb341610734fe529a8285.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [shift_comp](declarations/shift-comp--c63635b903b2eaabc5f1e6a7.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [signedExpansion](declarations/signedexpansion--5807dd0551ad19d81e607608.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [signedExpansion_insert](declarations/signedexpansion-insert--9ef54f181c3a1be7598ef6c4.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [cascade](declarations/cascade--0b3fb6202b8bdc1520a09fdf.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [cascade_eq_signedExpansion](declarations/cascade-eq-signedexpansion--e60c2aca6330088632b104c7.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [cascade_order_independent](declarations/cascade-order-independent--a0809587786bb324b3ffa69b.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [primeWeight](declarations/primeweight--b264fe0ce8397c187f356723.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [primeDelay](declarations/primedelay--40225eddd4fdcedd61033ffd.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [primeProduct](declarations/primeproduct--e43fd37f7da857eff2649b89.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [primeDelay_nonneg](declarations/primedelay-nonneg--03a52b256c35ccac981ce9eb.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [primeProduct_squarefree](declarations/primeproduct-squarefree--8fa6ef745a084b59318b9fe6.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [primeProduct_primeFactors](declarations/primeproduct-primefactors--188f9911ef57bd82ee15971a.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [primeProduct_injective_on_primes](declarations/primeproduct-injective-on-primes--6dce86789af572e59d62820d.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [moebius_primeProduct](declarations/moebius-primeproduct--20d532ea3a4334a62acd89bd.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [primeProduct_positive](declarations/primeproduct-positive--b7118ff203e33b6b29b8030e.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [primeDelay_sum](declarations/primedelay-sum--be7a0007b864fc9803c23512.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [primeWeight_product](declarations/primeweight-product--40d1424147eb9d9ab7904fda.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [signed_prime_coefficient](declarations/signed-prime-coefficient--71f9f14199e3f48f5fc44d0e.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [prime_cascade_exact](declarations/prime-cascade-exact--43c1b83e2fa6ec22cb0989e8.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [subset_squarefree_reindex](declarations/subset-squarefree-reindex--1214adda0ea26238155050c0.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [subset_moebius_reindex](declarations/subset-moebius-reindex--3a1971999518033668b22d0d.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [baseWave](declarations/basewave--b193a3d19e9d758b923e995f.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [atom](declarations/atom--f1bf905f339aa7a88d280f08.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [baseWave_causal](declarations/basewave-causal--da0d6fd3f2c14fb08d5f9830.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [exp_negative_half_log](declarations/exp-negative-half-log--9884426d4fcf534e27fe357e.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [atom_eq_scaled_shift](declarations/atom-eq-scaled-shift--2fe5cd13b4c0a7212d1423ea.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [primeState](declarations/primestate--0f9baec303e27a2de5b43ef1.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [primeState_exact](declarations/primestate-exact--f3bfb893ff54a697df293bd0.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [atom_above_horizon](declarations/atom-above-horizon--d2fd41d529a70e15ac6316c5.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [completed_pickup_identification](declarations/completed-pickup-identification--4998330e8c1e350bb45f5f1f.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [restrict](declarations/restrict--8761c6c7e0d59b9a60f6b86e.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [restrict_idempotent](declarations/restrict-idempotent--ea49c8c2c43139ef8c81ed58.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [restrict_causal_shift](declarations/restrict-causal-shift--d54a70581510f51d0549c5ef.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [restrict_causal_note](declarations/restrict-causal-note--2ba5e4bacacc560cf557efaf.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [restrict_cascade](declarations/restrict-cascade--829cf35f1a7ea8858c3fbda1.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [cascade_append](declarations/cascade-append--2ade473779e939a7280e1d2e.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [primeState_block_factorization](declarations/primestate-block-factorization--a6b89659b4ee261849a13a82.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [signed_sum_square](declarations/signed-sum-square--1f8c9a1fff1aec187c5bcb61.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [signed_integral_square](declarations/signed-integral-square--9a3fc93ff913b1bbeab8e7e8.md) | 405 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [block_energy_exact](declarations/block-energy-exact--452e78d6b9b09a102ad4028b.md) | 432 | `BLOCKED_NATIVE_ADMISSION` |
