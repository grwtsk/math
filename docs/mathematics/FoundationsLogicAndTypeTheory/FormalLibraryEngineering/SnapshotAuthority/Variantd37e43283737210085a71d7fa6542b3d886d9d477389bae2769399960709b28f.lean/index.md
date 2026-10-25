# GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SnapshotAuthority.Variantd37e43283737210085a71d7fa6542b3d886d9d477389bae2769399960709b28f

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**28 observed declarations and anonymous commands**, 13 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SnapshotAuthority/Variantd37e43283737210085a71d7fa6542b3d886d9d477389bae2769399960709b28f.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a99b19bfc1717b08c608e7c307b76f2274fd9444`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SnapshotAuthority/Variantd37e43283737210085a71d7fa6542b3d886d9d477389bae2769399960709b28f.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [SnapshotStatus](declarations/snapshotstatus--a08fd6f93c3bb4d22954c1f4.md) | 20 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [ProjectionSnapshot](declarations/projectionsnapshot--3e78f177e4bab6e0929d9b08.md) | 28 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `inductive` | [SnapshotEventKind](declarations/snapshoteventkind--ab0d1f0d1753c9ec59504923.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `structure` | [SnapshotAuthorityEvent](declarations/snapshotauthorityevent--8183ba29049cf4ef0fdf5727.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `structure` | [CommittedSnapshotRoot](declarations/committedsnapshotroot--4f9faead44ee6d8d3fdb5014.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `inductive` | [SnapshotStatusTransition](declarations/snapshotstatustransition--a8e467e3bdf8e033cbf97bca.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `inductive` | [SnapshotEventTransition](declarations/snapshoteventtransition--8883557ce4fc0dc8cdbd4b54.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [statusTransition](declarations/statustransition--75d8bceaba421fe582a28a15.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [into_active_is_activation](declarations/into-active-is-activation--806fab54f3231ab59fda7680.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [revokedStale_terminal](declarations/revokedstale-terminal--5ca5061a1f4512ff3ab730c1.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [superseded_terminal](declarations/superseded-terminal--7e831a44645d64ff7a4704e9.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [revokedStale_cannot_reactivate](declarations/revokedstale-cannot-reactivate--6b5f16df0b08291f3ac7c9c9.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [superseded_cannot_reactivate](declarations/superseded-cannot-reactivate--15590825f798d72447145c9a.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `inductive` | [CommittedSnapshotReplay](declarations/committedsnapshotreplay--9320218ed9d7046a52a38b26.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [targets_snapshot](declarations/targets-snapshot--a4aba1cea43aa74242eb6b6a.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [active_head_is_activation](declarations/active-head-is-activation--d4070175e270233941cb3cdc.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [revokedStale_has_no_extension](declarations/revokedstale-has-no-extension--2f462de680b1ae857cbbbeaa.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [superseded_has_no_extension](declarations/superseded-has-no-extension--9f90e51567f95926f812064f.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `structure` | [VerifiedActiveSnapshot](declarations/verifiedactivesnapshot--23c1dfaaf908ae0295e2d2a9.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [head](declarations/head--771047dde42120968956417b.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [sequence](declarations/sequence--1edad021c19694f22a8a3f0f.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [epoch](declarations/epoch--fcfdd4ffb4c0fb39808386cf.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [event](declarations/event--2ae6f0cd4de2afc9cae77d75.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [replay](declarations/replay--3c9e9e6dc9704889c146d1a1.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [event_targets_snapshot](declarations/event-targets-snapshot--5dd75c7faf7040d4a053e1bf.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [event_is_activation](declarations/event-is-activation--a9f8b6d543716f9d96179fcf.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `structure` | [SnapshotSuccessor](declarations/snapshotsuccessor--08b4fd52492f0b1a66912ac2.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `structure` | [HistoricallyValidAtCreation](declarations/historicallyvalidatcreation--b6d01963f2f5cdbbbd8d0c33.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
