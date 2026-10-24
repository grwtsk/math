# GRWTSK.Analysis.Complex.HolomorphicAreaReproducing

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**36 observed declarations and anonymous commands**, 31 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/Complex/HolomorphicAreaReproducing.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5995c524690bdc3f97da887d9759f6990cde08de`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/Analysis/ComplexAnalysis/HolomorphicAreaReproducing.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [AreaCompletion](declarations/areacompletion--1c4f55716b7b1affa1d1568d.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [completedEvaluation](declarations/completedevaluation--b421a79cbde25f1be851809c.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [completedEvaluation_toCompletion](declarations/completedevaluation-tocompletion--c97edf7de4455fb4be192013.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [completedEvaluation_eq_value](declarations/completedevaluation-eq-value--a2dc3e1a6116ecc0fc44cc2c.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [completedEvaluation_bound](declarations/completedevaluation-bound--10b07fea00549c2aadd36032.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [completedEvaluation_norm_le](declarations/completedevaluation-norm-le--fc42f5e556595b2925fd6dd9.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [completedEvaluation_congr](declarations/completedevaluation-congr--4e0b426ee5e24cc737eefa52.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [evaluationAt](declarations/evaluationat--96389e684fea630f55c115b3.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [evaluationAt_eq_value](declarations/evaluationat-eq-value--8481f054011ece4a152ea56e.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [evaluationAt_eq_completedEvaluation](declarations/evaluationat-eq-completedevaluation--30b51727d180dc96745ef791.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [evaluationAt_toCompletion](declarations/evaluationat-tocompletion--1561f8a6d9db9c1cca8a0d5d.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [realization_multiplier](declarations/realization-multiplier--8f4fc1d749d62e094c006383.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [completedRealization_multiplier](declarations/completedrealization-multiplier--b818a6f77847a73c5b449061.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [evaluationAt_multiplier](declarations/evaluationat-multiplier--37cfe1a0f066be146b3dd576.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [kernelVector](declarations/kernelvector--1ef2db7579b2edce64aaef9b.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [kernelVector_evaluation](declarations/kernelvector-evaluation--8bfb04fce9caec960517af43.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [kernelVector_reproduces](declarations/kernelvector-reproduces--968091eab73a2e1faec4dd39.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [kernelVector_unique](declarations/kernelvector-unique--95d88a535d018d18592d6a4d.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [kernelVector_norm](declarations/kernelvector-norm--e91480a27a32c21a2ddb69e3.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [kernelVector_energy](declarations/kernelvector-energy--48ddb8ca0e01c3bf56db8099.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [kernel](declarations/kernel--bb64f41d5618aae7c69c5ed9.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [kernel_eq_inner](declarations/kernel-eq-inner--a384dbcb8f5a50e66e4a169b.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [kernel_holomorphic](declarations/kernel-holomorphic--e41dc5845d6cdf800e8a47a8.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [kernel_conj_symm](declarations/kernel-conj-symm--38119ad255f72051508c9d41.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [kernel_diagonal](declarations/kernel-diagonal--d94d2aedd3dc6ecb147633a2.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [kernel_diagonal_bound](declarations/kernel-diagonal-bound--50d9dc9a986bfc715a2291a2.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [kernel_gram](declarations/kernel-gram--85be83a58ec252185c57d7ce.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [kernel_gram_nonneg](declarations/kernel-gram-nonneg--507a81c4588074aeb62b3b70.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [evaluationAt_ne_zero](declarations/evaluationat-ne-zero--7816c5a8eec576292f378470.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [kernelVector_ne_zero](declarations/kernelvector-ne-zero--e290737a36ba4904295038ed.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [kernel_diagonal_pos](declarations/kernel-diagonal-pos--63dde658017444858e9ce993.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [adjoint_multiplier_kernel](declarations/adjoint-multiplier-kernel--ede551d7cca4a4c51c2720ec.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [phase_kernel](declarations/phase-kernel--528136a5bdb955c4db3f92fe.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [phase_wrong_sign](declarations/phase-wrong-sign--cf6c3ae68f5a0702bda941a9.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [disk_phase_wrong_sign](declarations/disk-phase-wrong-sign--947d63b5e6317bfc913328a0.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [empty_gram](declarations/empty-gram--0696a85851133ed4d7cffa23.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
