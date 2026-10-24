# GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Sigmoid.Variant3001c76db5fd0f8e747a404d31a9f150ae6ab6487586a2c03abad13336fe3271

[Complete source index](../../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**28 observed declarations and anonymous commands**, 19 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Sigmoid/Variant3001c76db5fd0f8e747a404d31a9f150ae6ab6487586a2c03abad13336fe3271.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f3c1b3bb3e098f87ba6ae4f4e53d3276819873b6`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Sigmoid/Variant3001c76db5fd0f8e747a404d31a9f150ae6ab6487586a2c03abad13336fe3271.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [RealLinearBound](declarations/reallinearbound--621fb7250a1b5a16836646f6.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [RealLinearBound.eval](declarations/reallinearbound-eval--ab617975dd1066b716e41ff1.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `structure` | [RealSymbolicBound](declarations/realsymbolicbound--e2193eeeaef34c8c92778100.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [sigmoid](declarations/sigmoid--379f1f54202cf3c5192e0767.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [sigmoid_pos](declarations/sigmoid-pos--0d7da5cd9042c63c20b5bdc2.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [sigmoid_lt_one](declarations/sigmoid-lt-one--9ad6b2dd80884ab8e63df907.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [sigmoid_mem_Ioo](declarations/sigmoid-mem-ioo--38c4593519479dfbcbc01af3.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [sigmoid_nonneg](declarations/sigmoid-nonneg--1c524cbf7f2ff8f66af0bdda.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [sigmoid_le_one](declarations/sigmoid-le-one--aac64729d3b49c56e4e54f81.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [sigmoid_zero](declarations/sigmoid-zero--1110caf9699e141ffdb52e88.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [one_sub_sigmoid](declarations/one-sub-sigmoid--590ef7c64ce5f440b52358a6.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [sigmoid_denom_pos](declarations/sigmoid-denom-pos--c3b88313f0e6057b2ce874fa.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [sigmoid_strictMono](declarations/sigmoid-strictmono--5ac8dcf6a66b5bca67f4b0c4.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [sigmoid_mono](declarations/sigmoid-mono--f84a619daca8066553b921aa.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [sigmoid_le_of_le](declarations/sigmoid-le-of-le--f55b31ac9541aafa27120b14.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [getSigmoidRelaxation](declarations/getsigmoidrelaxation--35b877e8ef68dd9682f98d1c.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [sigmoid_lower_bound_valid](declarations/sigmoid-lower-bound-valid--2eec74a3cd14c9faf07d228b.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [sigmoid_upper_bound_valid](declarations/sigmoid-upper-bound-valid--d9479a5d0e60684b2b596c69.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [sigmoid_relaxation_sound](declarations/sigmoid-relaxation-sound--4be60d53d818e0986c2e5e0e.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [sigmoidLowerApprox](declarations/sigmoidlowerapprox--b6e71f8b37abac534c6d8d8c.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [sigmoidUpperApprox](declarations/sigmoidupperapprox--3d3e639720aaa354e00e2241.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [getSigmoidRelaxationRat](declarations/getsigmoidrelaxationrat--1147c5d3766a5ad85eea4557.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [sigmoidSecantEval](declarations/sigmoidsecanteval--3da038e3ef20e8ee7edeaab1.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [sigmoidSecant_at_l](declarations/sigmoidsecant-at-l--adcad1fa3ae77185da1416bd.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [sigmoidSecant_at_u](declarations/sigmoidsecant-at-u--09a1f2296d561006a104064f.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [sigmoid_deriv](declarations/sigmoid-deriv--1ed05adc277c07179f227508.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [sigmoid_deriv_pos](declarations/sigmoid-deriv-pos--dab86c61b621305a9dd06e0f.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [sigmoid_deriv_max](declarations/sigmoid-deriv-max--88f78c322e12ff7e881c7274.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
