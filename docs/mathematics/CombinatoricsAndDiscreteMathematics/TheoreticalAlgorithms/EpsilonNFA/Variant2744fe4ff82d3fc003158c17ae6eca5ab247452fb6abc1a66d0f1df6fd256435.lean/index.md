# GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.EpsilonNFA.Variant2744fe4ff82d3fc003158c17ae6eca5ab247452fb6abc1a66d0f1df6fd256435

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**44 observed declarations and anonymous commands**, 32 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variant2744fe4ff82d3fc003158c17ae6eca5ab247452fb6abc1a66d0f1df6fd256435.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d4b69f7c1b3e754ecde5a8f4bac55371a271ae59`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variant2744fe4ff82d3fc003158c17ae6eca5ab247452fb6abc1a66d0f1df6fd256435.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [εNFA](declarations/nfa--8abf2468842f2c53c9ac8e48.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `inductive` | [εClosure](declarations/closure--0b98e01dec58a9c7ab3197db.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [subset_εClosure](declarations/subset-closure--39afa3aac770ebe1c9e1b9e0.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [εClosure_empty](declarations/closure-empty--6ec4de5c9fd10b3bd00ff7c8.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [εClosure_univ](declarations/closure-univ--2383aca236ea40c848db3078.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [mem_εClosure_iff_exists](declarations/mem-closure-iff-exists--f7ec8a67feb708b05d054273.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [stepSet](declarations/stepset--b82b64c359d2e8c2f1379c15.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [mem_stepSet_iff](declarations/mem-stepset-iff--9db8651e8efb4a563ea411a4.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [stepSet_empty](declarations/stepset-empty--4392ed8a388db69f4331b0e5.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [evalFrom](declarations/evalfrom--64e8a0eceb9250f3a38e23ea.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [evalFrom_nil](declarations/evalfrom-nil--0626fb91524c01c521c82a90.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [evalFrom_singleton](declarations/evalfrom-singleton--f3f5960d06bc20eecc0f8844.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [evalFrom_append_singleton](declarations/evalfrom-append-singleton--89fe58de3da8d18e18b49b00.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [evalFrom_empty](declarations/evalfrom-empty--0bb4f9e50bcfa2ddb5a3e1c8.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [mem_evalFrom_iff_exists](declarations/mem-evalfrom-iff-exists--bb613741fc8b67dc046689a1.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [eval](declarations/eval--4872803f6a97811610701e5e.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [eval_nil](declarations/eval-nil--7048857c33bfb8e7aa05f686.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [eval_singleton](declarations/eval-singleton--0ecd8cd3edd5a8b681c3d417.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [eval_append_singleton](declarations/eval-append-singleton--36548eb20674032f90f9a9c5.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [accepts](declarations/accepts--653060985e452f67902895ee.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `inductive` | [IsPath](declarations/ispath--2cf9b43590004e1dd4036838.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [isPath_nil](declarations/ispath-nil--229c6e70456d84987e1db1b3.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [isPath_singleton](declarations/ispath-singleton--f50fc9852e3c5f9db7a20a15.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [isPath_append](declarations/ispath-append--bd54207f33e84ae71db028ce.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [mem_εClosure_iff_exists_path](declarations/mem-closure-iff-exists-path--7442a469faa9fee23f34afb7.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [mem_evalFrom_iff_exists_path](declarations/mem-evalfrom-iff-exists-path--26df92fded9c93223335ae57.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [mem_accepts_iff_exists_path](declarations/mem-accepts-iff-exists-path--28987b66a09384f9f30badfe.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [toNFA](declarations/tonfa--5fd4a347294cf1db9291439c.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [toNFA_evalFrom_match](declarations/tonfa-evalfrom-match--eb42300930762e6525607ee5.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [toNFA_correct](declarations/tonfa-correct--00451ba5a6e3ed39718d1beb.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [pumping_lemma](declarations/pumping-lemma--19a7a04be619aa7d0e6d205c.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [toεNFA](declarations/to-nfa--6f9b1bd796d75151aba48446.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [toεNFA_εClosure](declarations/to-nfa-closure--c62d64dbac3a617d03b09829.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [toεNFA_evalFrom_match](declarations/to-nfa-evalfrom-match--694102fe6a05436e267abf69.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [toεNFA_correct](declarations/to-nfa-correct--eefc14c43596b90e7d87ff05.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `instance` | [(anonymous)](declarations/instance--4393e2562371106a9a0eeb3f.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `instance` | [(anonymous)](declarations/instance--a28ef784dc076775babfb01b.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `instance` | [(anonymous)](declarations/instance--424aff72d1ed742c0f9ca8c3.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [step_zero](declarations/step-zero--fc0e9f1c5b05ccd7cb10c610.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [step_one](declarations/step-one--d46d5f44db536f8757eb9dd6.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [start_zero](declarations/start-zero--08992d59647994742f6ef4c9.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [start_one](declarations/start-one--9c63f40a2e175d176697c434.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [accept_zero](declarations/accept-zero--cd4a8b4d6afa57b37eef8852.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [accept_one](declarations/accept-one--0800253b7420043093a110e1.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
