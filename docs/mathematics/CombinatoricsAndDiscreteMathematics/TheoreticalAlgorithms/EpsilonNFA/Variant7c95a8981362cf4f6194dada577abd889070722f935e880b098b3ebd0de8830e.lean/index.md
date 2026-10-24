# GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.EpsilonNFA.Variant7c95a8981362cf4f6194dada577abd889070722f935e880b098b3ebd0de8830e

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**44 observed declarations and anonymous commands**, 32 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variant7c95a8981362cf4f6194dada577abd889070722f935e880b098b3ebd0de8830e.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `95a1f0eec660288cb8962eaab6391c789c29ee50`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variant7c95a8981362cf4f6194dada577abd889070722f935e880b098b3ebd0de8830e.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [εNFA](declarations/nfa--4f713e02a8b1eae32922b65c.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `inductive` | [εClosure](declarations/closure--950b5fa8ebeebf2052f8313e.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [subset_εClosure](declarations/subset-closure--203644f0f3b7308a6e5dc9e9.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [εClosure_empty](declarations/closure-empty--932d62ce8fa63c7bc2c476b1.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [εClosure_univ](declarations/closure-univ--4b1f58ee3c2261f890419bcc.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [mem_εClosure_iff_exists](declarations/mem-closure-iff-exists--dfdab0896b1f983b086e0a85.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [stepSet](declarations/stepset--b97b12224e16d4b9198d816c.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [mem_stepSet_iff](declarations/mem-stepset-iff--2beff13467f86ee93549a812.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [stepSet_empty](declarations/stepset-empty--8a8991db12bf03f56ad06fe0.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [evalFrom](declarations/evalfrom--2c77c34267dde08c15850fa6.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [evalFrom_nil](declarations/evalfrom-nil--2435ca5a4960c606a10c8231.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [evalFrom_singleton](declarations/evalfrom-singleton--7f4006b4439d529c8b1091a8.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [evalFrom_append_singleton](declarations/evalfrom-append-singleton--6ccfd4bebafde64a19ed307d.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [evalFrom_empty](declarations/evalfrom-empty--c2dce45847b871262d1b5501.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [mem_evalFrom_iff_exists](declarations/mem-evalfrom-iff-exists--877498c4d7ca568ddc4b523b.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [eval](declarations/eval--833fa19a900804c5bc851d51.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [eval_nil](declarations/eval-nil--025fe6b254594fa9ed520f8e.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [eval_singleton](declarations/eval-singleton--7e4790af7565c619b61fb653.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [eval_append_singleton](declarations/eval-append-singleton--8a4c02e72980243774139687.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [accepts](declarations/accepts--d1a74e1e643b918f1fac4b3e.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `inductive` | [IsPath](declarations/ispath--80e29514f23ba00a86ed10d8.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [isPath_nil](declarations/ispath-nil--d8c3042178561bdc251c7736.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [isPath_singleton](declarations/ispath-singleton--910e3a27d2ae8f72751b6ccc.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [isPath_append](declarations/ispath-append--be2f97825cca563198bbbfa1.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [mem_εClosure_iff_exists_path](declarations/mem-closure-iff-exists-path--c35caa10f6f9048cafe965ed.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [mem_evalFrom_iff_exists_path](declarations/mem-evalfrom-iff-exists-path--7a11da2db2e2effaace0d477.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [mem_accepts_iff_exists_path](declarations/mem-accepts-iff-exists-path--75507b3da5ff643c49ac8730.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [toNFA](declarations/tonfa--5b5d12c9085550fc06a1d215.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [toNFA_evalFrom_match](declarations/tonfa-evalfrom-match--0cc906dac0ffc20e1dd05c48.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [toNFA_correct](declarations/tonfa-correct--10c649874f91d711774899e6.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [pumping_lemma](declarations/pumping-lemma--4a47aefbdde7445af405b299.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [toεNFA](declarations/to-nfa--84da4a3bf2fa1601d7fd1bcd.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [toεNFA_εClosure](declarations/to-nfa-closure--4699793fac11523dbedb5310.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [toεNFA_evalFrom_match](declarations/to-nfa-evalfrom-match--69bde891b3775cb67b166ef7.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [toεNFA_correct](declarations/to-nfa-correct--362dd732889cec837b93cb6b.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `instance` | [(anonymous)](declarations/instance--4b7cbab41a43d89a2f021274.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `instance` | [(anonymous)](declarations/instance--ffd4b25a7b056a6111ec944c.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `instance` | [(anonymous)](declarations/instance--e67f48607ce8243fa2428daa.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [step_zero](declarations/step-zero--ef6f4ca9ef70c199c2d35ae2.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [step_one](declarations/step-one--7f0d2c0c5b5fc31595d814c9.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [start_zero](declarations/start-zero--7b2319a19a812afc3d975fde.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [start_one](declarations/start-one--bee57e9a15add6d3961edbd1.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [accept_zero](declarations/accept-zero--5f612aadf0557b0c47078a4b.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [accept_one](declarations/accept-one--736fc8bf1d73052186d871f7.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
