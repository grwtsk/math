# GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DescriptorStoreTransitions

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**41 observed declarations and anonymous commands**, 25 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DescriptorStoreTransitions.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b089d2fbd5a2ddb60b13c2e5a87234dab98f3ff7`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DescriptorStoreTransitions.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Bytes](declarations/bytes--78b503865df075a71bfdbdbf.md) | 23 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [Inode](declarations/inode--2dcd7e712b118b4b06cd5272.md) | 24 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `abbrev` | [Descriptor](declarations/descriptor--f30348aa51efd5d077a4573a.md) | 25 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `structure` | [Name](declarations/name--0ca781a6cac84a779169ac32.md) | 27 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `inductive` | [Node](declarations/node--26a6e3d414655b07479d1ad1.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `structure` | [Store](declarations/store--f56e23816b5624bd985fb0d8.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `structure` | [Host](declarations/host--47e79387060361989103cc67.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [resolveFrom](declarations/resolvefrom--c18417cb0da8515ae62028f0.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [Attached](declarations/attached--ad179e49f5870d0dde65897d.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [absent_descriptor_is_not_attached](declarations/absent-descriptor-is-not-attached--c9326f6083591ec5698aebd6.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [readAt](declarations/readat--b681c141c8731484eb762520.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [resolveFrom_regular_rejects](declarations/resolvefrom-regular-rejects--5f6df291e92533cdd60ce675.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [resolveFrom_symbolic_rejects](declarations/resolvefrom-symbolic-rejects--9589c871a66be3267fb98b6c.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [readAt_exact](declarations/readat-exact--48d760d59c47ac5b048eaa12.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [readAt_rejects_symbolic](declarations/readat-rejects-symbolic--309e0aedcd9b526b9a42e5fc.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [renamed](declarations/renamed--ebb8c6a6ba8f8db002bcdb07.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [renameExclusive](declarations/renameexclusive--75bcfaf637fca89a55213551.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [occupied_target_blocks_rename](declarations/occupied-target-blocks-rename--7a37bac686ec47672cd3b38c.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [absent_source_blocks_rename](declarations/absent-source-blocks-rename--c4b7b7976656d5cf2c59ce60.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [exclusive_rename_moves_exact_inode](declarations/exclusive-rename-moves-exact-inode--ceef4a44349042ad99915fc7.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [exclusive_rename_preserves_other_names](declarations/exclusive-rename-preserves-other-names--4946e1630af1f7bf12688d74.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [exclusive_rename_preserves_all_inode_bytes](declarations/exclusive-rename-preserves-all-inode-bytes--e50b48d70efc57807f772dc2.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [syncFile](declarations/syncfile--256aebd1dc9c2bd08a86fab4.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [syncDirectory](declarations/syncdirectory--a114ffbe28b7d5c94d4b7c9f.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [crash](declarations/crash--c28161ffc84d88ff113342d3.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [crash_closes_descriptors](declarations/crash-closes-descriptors--dee21c3830236abbe797892b.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [crash_reads_only_durable_bytes](declarations/crash-reads-only-durable-bytes--dafa0d8e7f4caa6640cef8c3.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [synced_file_survives_crash](declarations/synced-file-survives-crash--ffad9f41261c2fa878c73e60.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [synced_directory_survives_crash](declarations/synced-directory-survives-crash--07a18c39b4267b71314ff761.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [rename_before_sync_retains_durable_source](declarations/rename-before-sync-retains-durable-source--91604931347d623a194816d1.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [target_first_sync_retains_exact_inode](declarations/target-first-sync-retains-exact-inode--e65d909693bd8a49edfb9988.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [completed_rename_syncs_persist_target](declarations/completed-rename-syncs-persist-target--d36793659233b6ee14a1b860.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [source_first_sync_can_lose_both_names](declarations/source-first-sync-can-lose-both-names--be2b489287aa4336c482d60b.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [descriptor_equality_does_not_imply_attachment](declarations/descriptor-equality-does-not-imply-attachment--ef8417b6de6fb546f6b8a884.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [retirementCheck](declarations/retirementcheck--29a9f72e8dcfc5406196e1ce.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [retirementCheck_exact](declarations/retirementcheck-exact--b9e1959bdc799335146ffadc.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [checked_retirement_refines_guarded_step](declarations/checked-retirement-refines-guarded-step--71456ab96ba4db3b0a0d3a61.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [stale_source_rejects_retirement](declarations/stale-source-rejects-retirement--d9b7f4832bef33051f6644d0.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [stale_destination_rejects_retirement](declarations/stale-destination-rejects-retirement--cf0f9306aa8a74dfdac5ee95.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [no_readback_rejects_retirement](declarations/no-readback-rejects-retirement--607dc6227676372cf8f1b37d.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [checked_retirement_retains_literal_source](declarations/checked-retirement-retains-literal-source--7dd2ce4e0eaed9dc1fe978d7.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
