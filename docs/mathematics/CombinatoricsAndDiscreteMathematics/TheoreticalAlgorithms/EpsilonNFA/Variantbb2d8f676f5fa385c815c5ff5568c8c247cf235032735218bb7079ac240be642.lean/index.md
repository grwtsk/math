# GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.EpsilonNFA.Variantbb2d8f676f5fa385c815c5ff5568c8c247cf235032735218bb7079ac240be642

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**50 observed declarations and anonymous commands**, 37 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variantbb2d8f676f5fa385c815c5ff5568c8c247cf235032735218bb7079ac240be642.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b067fe8080cd161b9bda38a2777062ab3f2a8310`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variantbb2d8f676f5fa385c815c5ff5568c8c247cf235032735218bb7079ac240be642.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [εNFA](declarations/nfa--de9cd9f6a5d1f53627fee8eb.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `inductive` | [MemεClosure](declarations/mem-closure--f184e20a83871fad560095b0.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [εClosure](declarations/closure--7625f6c7a4c68fd8ec6f1b72.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [subset_εClosure](declarations/subset-closure--c3050ac43c6fd214b3830cd1.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [εClosure.base](declarations/closure-base--283d3d5d945d4d86a6ca8386.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [mem_εClosure_of_mem_step](declarations/mem-closure-of-mem-step--937f7d6c80a4e29bf3d3752a.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [εClosure.step](declarations/closure-step--8f742fd5569416ef320b244f.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [εClosure_induction](declarations/closure-induction--b3aa81d7f0b5f80c52c64ef2.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [εClosure_min](declarations/closure-min--6e38ecdcd33b87e1f863cb90.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [εClosure_empty](declarations/closure-empty--95e5e8152d7b4bfab2c12ef8.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [εClosure_univ](declarations/closure-univ--b208f4c92b8f72251d8be1a1.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [mem_εClosure_iff_exists](declarations/mem-closure-iff-exists--716dc50b92c82e8bb50839d7.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [stepSet](declarations/stepset--79209753ebca59a40879bc87.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [mem_stepSet_iff](declarations/mem-stepset-iff--b9b6f7bf0de3a1f56d281b95.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [stepSet_empty](declarations/stepset-empty--2a1214b8f7544cec69de1ef3.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [evalFrom](declarations/evalfrom--f0dd073a560841f7b0759d4d.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [evalFrom_nil](declarations/evalfrom-nil--2aa0123fbe9bf170d2fcbfb3.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [evalFrom_singleton](declarations/evalfrom-singleton--33bd126e3bba72ff6f16fa39.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [evalFrom_append_singleton](declarations/evalfrom-append-singleton--ddbffda3fcdaa36d4403a335.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [evalFrom_empty](declarations/evalfrom-empty--4e44b17d1fdc795dac90fa77.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [mem_evalFrom_iff_exists](declarations/mem-evalfrom-iff-exists--8b51b10c339d2b1f515ec564.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [eval](declarations/eval--4cb99e7e6b6df4952761c73f.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [eval_nil](declarations/eval-nil--436f55925d66e05098263fb1.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [eval_singleton](declarations/eval-singleton--59ef84944ee3ebd91a4e89b0.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [eval_append_singleton](declarations/eval-append-singleton--05c720794ae4424d75d0484a.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [accepts](declarations/accepts--39e85b9b9865279225a64a4f.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `inductive` | [IsPath](declarations/ispath--2dcb404002e2fa7fa991ed59.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [isPath_nil](declarations/ispath-nil--3a4d6d1b4e542828b67fc1c4.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [isPath_singleton](declarations/ispath-singleton--c65d14419ff1ef5e8d2a1d76.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [isPath_append](declarations/ispath-append--916897f0fd1ea8ec8b204b4e.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [mem_εClosure_iff_exists_path](declarations/mem-closure-iff-exists-path--79e6c321377ffafe93260c8d.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [mem_evalFrom_iff_exists_path](declarations/mem-evalfrom-iff-exists-path--7ab272edc4804d388051d21f.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [mem_accepts_iff_exists_path](declarations/mem-accepts-iff-exists-path--b8cb97613c9f149f25915496.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [toNFA](declarations/tonfa--b36c80c0b284bc7d98cfe0c6.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [toNFA_evalFrom_match](declarations/tonfa-evalfrom-match--1307649b1898a086b2c60e92.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [toNFA_correct](declarations/tonfa-correct--578292a4902e8410bfe0ba2d.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [pumping_lemma](declarations/pumping-lemma--f77a85acd3ef1c2097d62b16.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [toεNFA](declarations/to-nfa--355285fdbe7a173c2ea335bf.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [toεNFA_εClosure](declarations/to-nfa-closure--27a5aca56908dbc90c6c9960.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [toεNFA_evalFrom_match](declarations/to-nfa-evalfrom-match--08d9fe0086313bfa01ed6880.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [toεNFA_correct](declarations/to-nfa-correct--e23622bd8165e2030fbc091a.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `instance` | [(anonymous)](declarations/instance--e106342c3a8151fadb4519e8.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `instance` | [(anonymous)](declarations/instance--3ae7a5d50f386769e265370e.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `instance` | [(anonymous)](declarations/instance--378af9640f1ab1ec320bcee0.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [step_zero](declarations/step-zero--29eddcbe7a01e4edd1af6ac5.md) | 378 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [step_one](declarations/step-one--db8b40e8ebb0d7200bba94fa.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [start_zero](declarations/start-zero--8b83ed1fd41a1b692840cdf3.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [start_one](declarations/start-one--1834104a76ca329800e6b4f6.md) | 390 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [accept_zero](declarations/accept-zero--119e6e55463f5ec49689b102.md) | 394 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [accept_one](declarations/accept-one--831b8cfdd2e9de21dde93203.md) | 398 | `BLOCKED_NATIVE_ADMISSION` |
