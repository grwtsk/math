# GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripOneThirdGrid

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**34 observed declarations and anonymous commands**, 23 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripOneThirdGrid.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5bfda65dc0a88e25786cb6a388e3dbcb7d04e169`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripOneThirdGrid.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [row](declarations/row--68b88c64741cc61cf245db1b.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [column](declarations/column--602ef3f0357f6c4af573541b.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [join](declarations/join--2509a28109ada14acc6248b1.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [row_join](declarations/row-join--d82852f8ff62ce156804fa17.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [column_join](declarations/column-join--eb95db192c09101ac36e2a6e.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [join_row_column](declarations/join-row-column--215b024b1dc60ef8024c1bec.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [box](declarations/box--e15aa62ea0866537240be584.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [rawDisk](declarations/rawdisk--a5832020e3a3f6d4579032ac.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [disks](declarations/disks--febd165d9c4f7687c68266f2.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [disks_join](declarations/disks-join--b9261eb2655f64bb76b80970.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [disk_radius_value](declarations/disk-radius-value--492bbc1e44b37c73055247ce.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [disk_carrier](declarations/disk-carrier--088958b9efe877019a50a1ce.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [raw_center_re](declarations/raw-center-re--05074a3b693b7972a2835626.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [raw_center_im](declarations/raw-center-im--af6cb7509628f12046de2d8d.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [box_wellFormed](declarations/box-wellformed--79b0f7190a53e2c9e09e0b66.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [box_carrier_eq_seed](declarations/box-carrier-eq-seed--4118a51e1f51947fa6647b87.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [raw_center_mem_seed](declarations/raw-center-mem-seed--b46373c3e881330a3d2c6ea8.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [center_mem_seed](declarations/center-mem-seed--5b1fbbee819f3e5fe2ce296e.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [center_norm_le](declarations/center-norm-le--2f0845feaa0d998853901be9.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [disk_radius](declarations/disk-radius--13940d1981e82bd250f480ec.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [disk_domain](declarations/disk-domain--370e5c68f4c4b9881f6a1868.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [derivative_bound](declarations/derivative-bound--a597f9c4b26cbb0419048916.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [center_sample_lower](declarations/center-sample-lower--78ae6d81bb38d4f71ddf57d8.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [patch](declarations/patch--eb9a51a16792e6c209eca590.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [norm_lower_on_disk](declarations/norm-lower-on-disk--e122fb967f429961d802ca20.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [exists_close_center](declarations/exists-close-center--0794bb034dc577800a71211a.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [clearance](declarations/clearance--1115aac1f859623bfd31e7c2.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [directCover](declarations/directcover--5a3a86385d00773a49be1e15.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [depth_budget](declarations/depth-budget--423afe27777f56f02474dfbf.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [search_succeeds](declarations/search-succeeds--e9fee29ae116304a09d45598.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [checkedTree](declarations/checkedtree--feb20fc9c92530f3df9469a2.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [searchedCover](declarations/searchedcover--b9f29150a662ad823fe20c8f.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [seedCover](declarations/seedcover--417e8c1075f052ef43f0531a.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [noTargetZero_box](declarations/notargetzero-box--4cf53f3240009fe2e84f7fef.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
