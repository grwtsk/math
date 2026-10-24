# GRWTSK.Analysis.GloballyAnchoredWindowDiffusion.Variant44d8a0b04c7941712a7060b961405f55a69c0aab9617f6bb9325e03074981be1

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**30 observed declarations and anonymous commands**, 15 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/GloballyAnchoredWindowDiffusion/Variant44d8a0b04c7941712a7060b961405f55a69c0aab9617f6bb9325e03074981be1.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cc692a531dff62465f8691cd98c74c86d7cf188f`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/Analysis/GloballyAnchoredWindowDiffusion/Variant44d8a0b04c7941712a7060b961405f55a69c0aab9617f6bb9325e03074981be1.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [WindowLinearOperators](declarations/windowlinearoperators--195b329cffe80cfe5ab20c6c.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [AnchoredWindowFusion](declarations/anchoredwindowfusion--24476f285be9457af5e70b27.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [ofCores](declarations/ofcores--cd348be3adf677fb09116a20.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [localOperators](declarations/localoperators--274f8ff808bf133cb75f07b4.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [localOperator_apply_twice](declarations/localoperator-apply-twice--12fdff6115135d010b2bd954.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [fusedWindowNumerator](declarations/fusedwindownumerator--edaf4238e6713bf8b1122039.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [fusedWindowOperator](declarations/fusedwindowoperator--007bc2a2bd15deb2cc9c6530.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [fusedWindowLinear](declarations/fusedwindowlinear--fce1ae8c08a4bcb428037425.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [operator](declarations/operator--0cf9572161f117ab91d9a3a7.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [operator_apply](declarations/operator-apply--810f20fd5d1251884e42034b.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [operator_add](declarations/operator-add--e843d7f165af68b0cf1aa390.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [operator_smul](declarations/operator-smul--3631e852cdc9ee6f8ef5aa0d.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [query](declarations/query--e33a6f446ff5940c8934f7f1.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [query_eq_restriction](declarations/query-eq-restriction--90d528d763ac6332a6f2b7dd.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [orderedWindowInput](declarations/orderedwindowinput--48e1acea8ef1568e01e01667.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [orderedWindowInput_eq_snapshot_restriction](declarations/orderedwindowinput-eq-snapshot-restriction--5768779dd513bcd62e578484.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [orderedWindowNumerator](declarations/orderedwindownumerator--6ba673e355d4268c38d43bf8.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [orderedWindowNumerator_eq_fused](declarations/orderedwindownumerator-eq-fused--5f53b1b9660006cbb887021d.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [orderedTimestep](declarations/orderedtimestep--4501e00a6b7cbb7f204639f2.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [orderedTimestep_eq_operator](declarations/orderedtimestep-eq-operator--c35ebb646c79e894d41c68fb.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [orderedTimestep_order_independent](declarations/orderedtimestep-order-independent--d4765b045b70b56f694de730.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `structure` | [WindowTimestepSchedule](declarations/windowtimestepschedule--0f59d7bc7625e56ebc93f2e3.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [window_input_eq_prior_snapshot](declarations/window-input-eq-prior-snapshot--63ed29f6ca46d495084dfed1.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [state_succ_eq_operator](declarations/state-succ-eq-operator--b9173b7c03771f6a5aa4d8ae.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [alternative_order_eq_next_state](declarations/alternative-order-eq-next-state--69ef793141b63a8ccc6a6dc0.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [fusedWindowLinear_apply](declarations/fusedwindowlinear-apply--a1b93af5d78b0916147c2ba5.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [fusedWindowQuery](declarations/fusedwindowquery--0616ce08caa28f0694f13ce7.md) | 402 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [fusedWindowQuery_eq_restriction](declarations/fusedwindowquery-eq-restriction--2991ddf4dc79b947f88adce3.md) | 413 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `structure` | [GlobalWindowInvolutionCertificate](declarations/globalwindowinvolutioncertificate--e706076c4d29fb8761206567.md) | 425 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [apply_twice](declarations/apply-twice--9f191b08ecebdd584115b1a9.md) | 437 | `BLOCKED_NATIVE_ADMISSION` |
