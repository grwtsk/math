# GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.EpsilonNFA.Variantc2bdce7c13121acce74056a13d32092b6a2dec235d57ad2960deb540a877863e

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**50 observed declarations and anonymous commands**, 37 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variantc2bdce7c13121acce74056a13d32092b6a2dec235d57ad2960deb540a877863e.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4d3eaf24eb2109aa58c75669e9e2fe8fe9251571`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variantc2bdce7c13121acce74056a13d32092b6a2dec235d57ad2960deb540a877863e.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [εNFA](declarations/nfa--4bcff0cd09aa8fbdebccb9b5.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `inductive` | [MemεClosure](declarations/mem-closure--52064bcd07c1bc15d435807a.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [εClosure](declarations/closure--c3cfa40500819b5e930083fa.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [subset_εClosure](declarations/subset-closure--95603b4927eb212789c9a2e0.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [εClosure.base](declarations/closure-base--b2aeaafd2e189c54177f15cb.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [mem_εClosure_of_mem_step](declarations/mem-closure-of-mem-step--f0b1c8812092602f114b1bc9.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [εClosure.step](declarations/closure-step--0cb5f0251f8229dfab30c0ea.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [εClosure_induction](declarations/closure-induction--50ba85b4d5f46408a64fb428.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [εClosure_min](declarations/closure-min--eac3f2551f40587c6d3258fa.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [εClosure_empty](declarations/closure-empty--a67563e10d6ad371a3aee5b7.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [εClosure_univ](declarations/closure-univ--10c0e34f04944871f8019579.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [mem_εClosure_iff_exists](declarations/mem-closure-iff-exists--a0b67132464b9a5d0867f588.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [stepSet](declarations/stepset--a9b8cccef264b7737b393b05.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [mem_stepSet_iff](declarations/mem-stepset-iff--d53bac285bc3939b983c622d.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [stepSet_empty](declarations/stepset-empty--0bff590d016d4ba3cd96b8db.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [evalFrom](declarations/evalfrom--c38be0bb9159a8156cc6a1ce.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [evalFrom_nil](declarations/evalfrom-nil--d4c1cd401ab103c5ae4f14d4.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [evalFrom_singleton](declarations/evalfrom-singleton--e01798e098fa17363d5c9729.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [evalFrom_append_singleton](declarations/evalfrom-append-singleton--7dcaa98dba5fc5b5de0f1b92.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [evalFrom_empty](declarations/evalfrom-empty--a7ba651fcdcd45cac377138b.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [mem_evalFrom_iff_exists](declarations/mem-evalfrom-iff-exists--4e3c29e07c40e568a76b111c.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [eval](declarations/eval--c15605f06dad55cb2a143010.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [eval_nil](declarations/eval-nil--6bf05ccb25f34dc69fe62b3c.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [eval_singleton](declarations/eval-singleton--6369ef3d9ec5716e72fbf092.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [eval_append_singleton](declarations/eval-append-singleton--568474629b2c074360b1b634.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [accepts](declarations/accepts--7d5975273bdcd9ad1cd78573.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `inductive` | [IsPath](declarations/ispath--59593d5366eb634a8daf2c8f.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [isPath_nil](declarations/ispath-nil--c72bcc650d4cf9c4a6fd29f0.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [isPath_singleton](declarations/ispath-singleton--2919e3f0174f6a814d3876c8.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [isPath_append](declarations/ispath-append--6a2520117ddf350500e32857.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [mem_εClosure_iff_exists_path](declarations/mem-closure-iff-exists-path--4bf927b83e9232baeac4527e.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [mem_evalFrom_iff_exists_path](declarations/mem-evalfrom-iff-exists-path--753b6289fed4c64e34bd072d.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [mem_accepts_iff_exists_path](declarations/mem-accepts-iff-exists-path--3291ce6e7d5b2cb7c89fa0a3.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [toNFA](declarations/tonfa--b32b583e356f12b1cb3791ce.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [toNFA_evalFrom_match](declarations/tonfa-evalfrom-match--bc1af4490b9335560303d4a7.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [toNFA_correct](declarations/tonfa-correct--83be6d6f3b8cc0b73d181056.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [pumping_lemma](declarations/pumping-lemma--9981448af07b03c4c863854a.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [toεNFA](declarations/to-nfa--d669b1b1302800151a9fa882.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [toεNFA_εClosure](declarations/to-nfa-closure--673400e9c13bf0599d811958.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [toεNFA_evalFrom_match](declarations/to-nfa-evalfrom-match--a88a33430f968f276528ea25.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [toεNFA_correct](declarations/to-nfa-correct--a6ab392dbf5ebd1a9bacc37b.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `instance` | [(anonymous)](declarations/instance--af440c6d3f6ccf8c003cf0c2.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `instance` | [(anonymous)](declarations/instance--57daf58769b74f833caf42fc.md) | 363 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `instance` | [(anonymous)](declarations/instance--b7666a84adcb5e08471ae657.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [step_zero](declarations/step-zero--1130d34a68e11aa5a69ebdbb.md) | 370 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [step_one](declarations/step-one--c433f653de067a964091e764.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [start_zero](declarations/start-zero--4900082efe933ab43696f12b.md) | 378 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [start_one](declarations/start-one--c80c9de8268a7f04d2a53851.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [accept_zero](declarations/accept-zero--8973f942dcf4c4f4800e6146.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [accept_one](declarations/accept-one--3e6b7bcbc894d0c98217ab94.md) | 390 | `BLOCKED_NATIVE_ADMISSION` |
