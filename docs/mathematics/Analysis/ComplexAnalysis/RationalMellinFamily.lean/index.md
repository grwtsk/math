# GRWTSK.Analysis.Complex.RationalMellinFamily

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**34 observed declarations and anonymous commands**, 15 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/Complex/RationalMellinFamily.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ac85b66a4cc2134280684f95db7dd1f23f123577`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/Analysis/ComplexAnalysis/RationalMellinFamily.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [Member](declarations/member--13c0dfc75308fff0f6c0f22b.md) | 26 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [Evaluation](declarations/evaluation--57343ee40afc66bb3d660078.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `structure` | [Trace](declarations/trace--fea4514eecfd1814b817fad7.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [defaultMember](declarations/defaultmember--39dee528203a2aa9a9cf958e.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [defaultEvaluation](declarations/defaultevaluation--f6f2cc12b8b3292253847963.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [memberAt](declarations/memberat--15580a7533575f0ca8292bd4.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [evaluationAt](declarations/evaluationat--1e1f5d9c039d2c563336ec05.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [terms](declarations/terms--a7fee9c897248f0f530f9815.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [localBudget](declarations/localbudget--aaa9bb4dfb20b30b1970dbeb.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [error](declarations/error--067b149cdefaa208ce3a0353.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [output](declarations/output--c96285653729f9dc3eaccee6.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [Valid](declarations/valid--43a502a5c3e9bbfe53cd14cf.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [instDecidableValid](declarations/instdecidablevalid--42e3f7527e9c93e9803e1133.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [check](declarations/check--c063a23f99d0f42038d63504.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [checkWithin](declarations/checkwithin--f974041a00f5665ff5f6abd5.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [centerSum](declarations/centersum--44fb18365705ea3de49a7db2.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [check_iff_valid](declarations/check-iff-valid--953ff4edcedb313590a47d34.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [length_terms](declarations/length-terms--2efb25957964b9a6228056e5.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [termAt_terms](declarations/termat-terms--c0f499b1b84a5687c56a632d.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [weighted_member_error](declarations/weighted-member-error--02685ecbc49b8c569a39676c.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [centerSum_error](declarations/centersum-error--424ce048e77495859e920c1b.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [check_sound](declarations/check-sound--2c04566bafd2d18da7993ea5.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [checkWithin_sound](declarations/checkwithin-sound--a879bdf3576c39ed022a2be8.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [checked_shape](declarations/checked-shape--b5e3e46b2de19b84c77bae72.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [checked_radius_nonneg](declarations/checked-radius-nonneg--523cf35fcf62fce837b3c8e9.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [checked_local_charge_le](declarations/checked-local-charge-le--20ab769d397cd220a953e05c.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [withExactAccumulation](declarations/withexactaccumulation--4184ce805c6dacb9c17ba6ca.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [withExactAccumulation_checked](declarations/withexactaccumulation-checked--e99e995fabfd15c85352cfd6.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [referenceEvaluations](declarations/referenceevaluations--23b0f29f9a3bc10d2ae1dff3.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [referenceTrace](declarations/referencetrace--83a388be17203e12e20acc5a.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [referenceEvaluationAt](declarations/referenceevaluationat--f613ae767f1e483ee642c0e4.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [reference_checked](declarations/reference-checked--295d602eab7ea98f4232fa88.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [check_enclosed_sound](declarations/check-enclosed-sound--97deafd157173f7f2e2f61ea.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [empty_centerSum](declarations/empty-centersum--c65cb4a43830ad3fc7479343.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
