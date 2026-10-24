# GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SnapshotPublicationTransitions

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**40 observed declarations and anonymous commands**, 27 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SnapshotPublicationTransitions.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `60e3f7e460fecdd85cf65556e5998f023c1c9270`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SnapshotPublicationTransitions.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Snapshot](declarations/snapshot--76e49b0b6950e97090a179e3.md) | 16 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [Context](declarations/context--da907865d238a56fcb5f2144.md) | 18 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `inductive` | [Phase](declarations/phase--fde05c0172ee65250b5ecd3d.md) | 24 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `inductive` | [Operation](declarations/operation--9db0c4c245fbffe61a6a9e6d.md) | 28 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `structure` | [State](declarations/state--0ca625f2e46a22563efdd2fa.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [initial](declarations/initial--4b64caf4265ad6884c59e290.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `inductive` | [Step](declarations/step--f7ea5e2ad9bf6b843ddef0bc.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `inductive` | [Reachable](declarations/reachable--eed68c7b6d5892d19334c8ea.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [retain_requires_expected_destination](declarations/retain-requires-expected-destination--80d5b77bb2097c3cf6b86d2b.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [destination_drift_blocks_retain](declarations/destination-drift-blocks-retain--869e50cf37fc3f46712d522c.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [retire_requires_readback](declarations/retire-requires-readback--a410e1aa7dd793aba5f9b28e.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [no_retire_before_readback](declarations/no-retire-before-readback--e45a4c4d780347237dd6580e.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [retire_requires_external_grant](declarations/retire-requires-external-grant--30bd2b94027ccf2d1fb65f1a.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [retire_preserves_source_as_preimage](declarations/retire-preserves-source-as-preimage--f5db8bca84f398d8b11926fd.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [publish_requires_empty_destination](declarations/publish-requires-empty-destination--8389e8261d3440b5a9071e6d.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [publish_never_overwrites](declarations/publish-never-overwrites--a5fbe93a03ddf5635e8a314d.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [restore_requires_empty_destination](declarations/restore-requires-empty-destination--0e795d28d181425ebf3079fe.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [restore_never_overwrites](declarations/restore-never-overwrites--e60f39ae14ebbd0b90ae60a9.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [destination_change_invalidates_current_verification](declarations/destination-change-invalidates-current-verification--b8cd3e02a9cc216c48ef8131.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [destination_change_blocks_retirement](declarations/destination-change-blocks-retirement--e3b3d27c9578da0e16e39ba7.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [restore_returns_the_exact_moved_tree](declarations/restore-returns-the-exact-moved-tree--855df834813b228e4edb6c6c.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [conflict_preserves_names_and_preimages](declarations/conflict-preserves-names-and-preimages--588cb5c5a05b2b74b408e510.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [failure_preserves_names_and_preimages](declarations/failure-preserves-names-and-preimages--fc357a6200bf471a733695d8.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [raw_source_preimage_is_monotone](declarations/raw-source-preimage-is-monotone--e941bb8bfe6c1044633435e7.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [raw_destination_preimage_is_monotone](declarations/raw-destination-preimage-is-monotone--e103b9e4c76f2103b8bb52ec.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [retired_source_is_monotone](declarations/retired-source-is-monotone--4dac05f8db753658f49202b1.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [readback_seen_origin](declarations/readback-seen-origin--b608cc3178f470f382b1185d.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [reachable_source_absent_has_retained_preimage](declarations/reachable-source-absent-has-retained-preimage--7f9b6eea34ae4b8cfe72d8a3.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [reachable_readback_seen_has_readback_transition](declarations/reachable-readback-seen-has-readback-transition--a997586b4dd9edbac4dfa666.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [reachable_source_absence_requires_prior_readback](declarations/reachable-source-absence-requires-prior-readback--6d605564a4adf416f29147ad.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [initial_cannot_retire](declarations/initial-cannot-retire--93df5abae2149b72db7499b0.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [stagedState](declarations/stagedstate--3c4c294b256244c88337a253.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [retainedState](declarations/retainedstate--2bc567d3dd306af07f6798c1.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [publishedState](declarations/publishedstate--5c5fb2233efae5445682dc53.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [checkedState](declarations/checkedstate--43bb8826e9b59fe4f62eb41e.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [retiredState](declarations/retiredstate--cac8f71212018d120a45187a.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [reachable_destination_drift_blocks_retain](declarations/reachable-destination-drift-blocks-retain--65a1a178b88b0fa507454c4e.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [successful_retirement_reachable](declarations/successful-retirement-reachable--266888c608b8a3c4f8c47810.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [successful_retirement_retains_both_raw_preimages](declarations/successful-retirement-retains-both-raw-preimages--959c1c2cc18c9fe348483d8c.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [halted_blocks_host_effects](declarations/halted-blocks-host-effects--b42c547ed8a610cfe862fef9.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
