# GRWTSK.Combinatorics.Sequences.ZeroSumIntervalRepair

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**27 observed declarations and anonymous commands**, 18 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Combinatorics/Sequences/ZeroSumIntervalRepair.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a8e696666b5fcdb3d5a0493e2001361069a5209c`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/CombinatoricsAndDiscreteMathematics/Sequences/ZeroSumIntervalRepair.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [positionIntervalSum](declarations/positionintervalsum--f073f2c16c61a5ea02dcbf4c.md) | 23 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [BadRightEndpoints](declarations/badrightendpoints--1d30c78d85d580769f3ddb34.md) | 26 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [mem_badRightEndpoints](declarations/mem-badrightendpoints--f6020af97eea8f26625962d0.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [Blocked](declarations/blocked--1f50401bc33ad318aa618550.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [repairWindow](declarations/repairwindow--be8884fad03ddd9712c8c73a.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [blockedCandidates](declarations/blockedcandidates--66046a99d03579e427541884.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [badNeighborhood](declarations/badneighborhood--a6e1383d391a05c56517c88e.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [AdmissiblePermutation](declarations/admissiblepermutation--75655a3329196f094d91c3d5.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `structure` | [GoodRepairGeometry](declarations/goodrepairgeometry--81a365c099cd249d1064b936.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [positionIntervalSum_swap](declarations/positionintervalsum-swap--0ec96f297a7a632e4c8382a8.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [unblocked_swap_bad_subset](declarations/unblocked-swap-bad-subset--f86e8c95fc91ded781775d86.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [unblocked_swap_preserves_repair_invariant](declarations/unblocked-swap-preserves-repair-invariant--a283ebc3532c13ed0f45bec4.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [repairWindow_card](declarations/repairwindow-card--2e56c5205c599dcf566d237f.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [repairWindow_available](declarations/repairwindow-available--9517d01d211d03ce67c16529.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [repair_capacity_arithmetic](declarations/repair-capacity-arithmetic--6a2f260dfcf65cff11d747cf.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [zero_capacity_has_no_partner](declarations/zero-capacity-has-no-partner--9149c2c9f2b7db850c6e04af.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [usedRepairPositions](declarations/usedrepairpositions--867116d6c47debbeaa0c71c1.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [trace_left_injective](declarations/trace-left-injective--e834da94e4416335939d8f6e.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [usedRepairPositions_window_card](declarations/usedrepairpositions-window-card--643d3ec7738ac1b74b726528.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [originalBad_window_card](declarations/originalbad-window-card--ac2e93b178902fb26667cc77.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [trace_fixes_before](declarations/trace-fixes-before--1439bcb8a1195eee9eed8ce7.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [supportsDisjoint_append_swap](declarations/supportsdisjoint-append-swap--2fdbb9fdb8b256a374e624bc.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [bounded_repair_trace_aux](declarations/bounded-repair-trace-aux--3618de1fb41e24d91e87d3cf.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [goodRepairGeometry_exists_trace](declarations/goodrepairgeometry-exists-trace--57e87e45fc71b73543305162.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [goodRepairGeometry_valid_permutation](declarations/goodrepairgeometry-valid-permutation--18beda04bf8ebe765bf02639.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [local_swap_can_create_collision](declarations/local-swap-can-create-collision--4b6ab722d7774af7dd81cbe8.md) | 363 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [intersecting_trace_rejected](declarations/intersecting-trace-rejected--02ee1921adb17f3a4fd5fc0c.md) | 367 | `BLOCKED_NATIVE_ADMISSION` |
