# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DescriptorStoreTransitions

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b089d2fbd5a2ddb60b13c2e5a87234dab98f3ff7",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DescriptorStoreTransitions.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DescriptorStoreTransitions.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DescriptorStoreTransitions.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b089d2fbd5a2ddb60b13c2e5a87234dab98f3ff7`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DescriptorStoreTransitions.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DescriptorStoreTransitions.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SnapshotPublicationTransitions`](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SnapshotPublicationTransitions.lean/index.md) — import line 1; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Bytes](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DescriptorStoreTransitions.lean/declarations/bytes--78b503865df075a71bfdbdbf.md) | 23 | `declaration-track:78b503865df075a71bfdbdbf8cd6e2151f4833bf0904ab8f7ababe882e23ce69` |
| 2 | `abbrev` | [Inode](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DescriptorStoreTransitions.lean/declarations/inode--2dcd7e712b118b4b06cd5272.md) | 24 | `declaration-track:2dcd7e712b118b4b06cd52727f46ef74997ce6d58e45d546de55d7c4cce84e5b` |
| 3 | `abbrev` | [Descriptor](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DescriptorStoreTransitions.lean/declarations/descriptor--f30348aa51efd5d077a4573a.md) | 25 | `declaration-track:f30348aa51efd5d077a4573a3ceb7132b6529020afbff085f6ec9c537b690aef` |
| 4 | `structure` | [Name](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DescriptorStoreTransitions.lean/declarations/name--0ca781a6cac84a779169ac32.md) | 27 | `declaration-track:0ca781a6cac84a779169ac32e1a7a734061e4cf2665e7f133d6e5713fa250578` |
| 5 | `inductive` | [Node](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DescriptorStoreTransitions.lean/declarations/node--26a6e3d414655b07479d1ad1.md) | 32 | `declaration-track:26a6e3d414655b07479d1ad109d1dd715d5f63864043d050228794529a9d1e4d` |
| 6 | `structure` | [Store](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DescriptorStoreTransitions.lean/declarations/store--f56e23816b5624bd985fb0d8.md) | 38 | `declaration-track:f56e23816b5624bd985fb0d80083ffc9d0741c768d708f19364056eeb490c462` |
| 7 | `structure` | [Host](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DescriptorStoreTransitions.lean/declarations/host--47e79387060361989103cc67.md) | 42 | `declaration-track:47e79387060361989103cc670bdeaacb8ccabb8f3a025fe91c671841801cc2cd` |
| 8 | `def` | [resolveFrom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DescriptorStoreTransitions.lean/declarations/resolvefrom--c18417cb0da8515ae62028f0.md) | 48 | `declaration-track:c18417cb0da8515ae62028f0a348c066398d2cac9a531f78ff985c44b1319046` |
| 9 | `def` | [Attached](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DescriptorStoreTransitions.lean/declarations/attached--ad179e49f5870d0dde65897d.md) | 55 | `declaration-track:ad179e49f5870d0dde65897d7f078c3fff5df930b836a5dbb4dfe516c14637b9` |
| 10 | `theorem` | [absent_descriptor_is_not_attached](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DescriptorStoreTransitions.lean/declarations/absent-descriptor-is-not-attached--c9326f6083591ec5698aebd6.md) | 59 | `result-track:c9326f6083591ec5698aebd6ef8c2b04520cbe6a4ab56f4df5ce2e97993da0ac` |
| 11 | `def` | [readAt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DescriptorStoreTransitions.lean/declarations/readat--b681c141c8731484eb762520.md) | 64 | `declaration-track:b681c141c8731484eb762520b32ddb59659f57464096e294149c52128266f754` |
| 12 | `theorem` | [resolveFrom_regular_rejects](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DescriptorStoreTransitions.lean/declarations/resolvefrom-regular-rejects--5f6df291e92533cdd60ce675.md) | 72 | `result-track:5f6df291e92533cdd60ce67592479c123bb77cb4db1dbf4dd8a37088df8262ce` |
| 13 | `theorem` | [resolveFrom_symbolic_rejects](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DescriptorStoreTransitions.lean/declarations/resolvefrom-symbolic-rejects--9589c871a66be3267fb98b6c.md) | 78 | `result-track:9589c871a66be3267fb98b6c1102a9e255b2756252771712817205e4d38733eb` |
| 14 | `theorem` | [readAt_exact](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DescriptorStoreTransitions.lean/declarations/readat-exact--48d760d59c47ac5b048eaa12.md) | 84 | `result-track:48d760d59c47ac5b048eaa1284587fa71ec4973a2845f182d58e2b78db4df9e0` |
| 15 | `theorem` | [readAt_rejects_symbolic](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DescriptorStoreTransitions.lean/declarations/readat-rejects-symbolic--309e0aedcd9b526b9a42e5fc.md) | 93 | `result-track:309e0aedcd9b526b9a42e5fcc88385e8f537ba8fd9b6e5149d6101fc1243578d` |
| 16 | `def` | [renamed](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DescriptorStoreTransitions.lean/declarations/renamed--ebb8c6a6ba8f8db002bcdb07.md) | 103 | `declaration-track:ebb8c6a6ba8f8db002bcdb07b5fbea75c2c40f374fc4dc1329b15d93dcfc6dfa` |
| 17 | `def` | [renameExclusive](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DescriptorStoreTransitions.lean/declarations/renameexclusive--75bcfaf637fca89a55213551.md) | 108 | `declaration-track:75bcfaf637fca89a55213551d3d9edc1a1b691e1d79a02391517e4da2d862b49` |
| 18 | `theorem` | [occupied_target_blocks_rename](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DescriptorStoreTransitions.lean/declarations/occupied-target-blocks-rename--7a37bac686ec47672cd3b38c.md) | 114 | `result-track:7a37bac686ec47672cd3b38ce53c7ad9c407e88be931689d7663022ba7f3ced1` |
| 19 | `theorem` | [absent_source_blocks_rename](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DescriptorStoreTransitions.lean/declarations/absent-source-blocks-rename--c4b7b7976656d5cf2c59ce60.md) | 119 | `result-track:c4b7b7976656d5cf2c59ce60fbed5ecec93b91a978f30ae3d279147f4aa31cbc` |
| 20 | `theorem` | [exclusive_rename_moves_exact_inode](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DescriptorStoreTransitions.lean/declarations/exclusive-rename-moves-exact-inode--ceef4a44349042ad99915fc7.md) | 124 | `result-track:ceef4a44349042ad99915fc7a5aea185ac305f4032188c309df89de5e892c124` |
| 21 | `theorem` | [exclusive_rename_preserves_other_names](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DescriptorStoreTransitions.lean/declarations/exclusive-rename-preserves-other-names--4946e1630af1f7bf12688d74.md) | 132 | `result-track:4946e1630af1f7bf12688d74c4b37492d69edf2a064c70203bfe79637d985482` |
| 22 | `theorem` | [exclusive_rename_preserves_all_inode_bytes](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DescriptorStoreTransitions.lean/declarations/exclusive-rename-preserves-all-inode-bytes--e50b48d70efc57807f772dc2.md) | 137 | `result-track:e50b48d70efc57807f772dc2de1b8bd6b815a4269fd1e052c4d3586cc4c92f34` |
| 23 | `def` | [syncFile](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DescriptorStoreTransitions.lean/declarations/syncfile--256aebd1dc9c2bd08a86fab4.md) | 142 | `declaration-track:256aebd1dc9c2bd08a86fab47eadfcf422aa38cd21843a843b0002f895c850da` |
| 24 | `def` | [syncDirectory](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DescriptorStoreTransitions.lean/declarations/syncdirectory--a114ffbe28b7d5c94d4b7c9f.md) | 147 | `declaration-track:a114ffbe28b7d5c94d4b7c9f466a1719633035ce39e8014b06dc40c7d6a1a42c` |
| 25 | `def` | [crash](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DescriptorStoreTransitions.lean/declarations/crash--c28161ffc84d88ff113342d3.md) | 151 | `declaration-track:c28161ffc84d88ff113342d3f960dda150ab4633acce32a88e463c87966fee77` |
| 26 | `theorem` | [crash_closes_descriptors](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DescriptorStoreTransitions.lean/declarations/crash-closes-descriptors--dee21c3830236abbe797892b.md) | 154 | `result-track:dee21c3830236abbe797892b030ead3b55c01c7d540c72de3733cf203243fb73` |
| 27 | `theorem` | [crash_reads_only_durable_bytes](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DescriptorStoreTransitions.lean/declarations/crash-reads-only-durable-bytes--dafa0d8e7f4caa6640cef8c3.md) | 157 | `result-track:dafa0d8e7f4caa6640cef8c3ea017ea6b7db09228019c26551aa24b407f6bdcb` |
| 28 | `theorem` | [synced_file_survives_crash](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DescriptorStoreTransitions.lean/declarations/synced-file-survives-crash--ffad9f41261c2fa878c73e60.md) | 160 | `result-track:ffad9f41261c2fa878c73e60dc703f5b2c1fb99791ba5e2d44a58ce6627f1fd1` |
| 29 | `theorem` | [synced_directory_survives_crash](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DescriptorStoreTransitions.lean/declarations/synced-directory-survives-crash--07a18c39b4267b71314ff761.md) | 164 | `result-track:07a18c39b4267b71314ff76124737d5874e4e85a7f0d4f9509f386a0831da98a` |
| 30 | `theorem` | [rename_before_sync_retains_durable_source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DescriptorStoreTransitions.lean/declarations/rename-before-sync-retains-durable-source--91604931347d623a194816d1.md) | 169 | `result-track:91604931347d623a194816d1bd783b8f22b203702899268b69676a173bdd19c3` |
| 31 | `theorem` | [target_first_sync_retains_exact_inode](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DescriptorStoreTransitions.lean/declarations/target-first-sync-retains-exact-inode--e65d909693bd8a49edfb9988.md) | 176 | `result-track:e65d909693bd8a49edfb99888b42a2986d344495af551b6e28c03c886a7f229a` |
| 32 | `theorem` | [completed_rename_syncs_persist_target](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DescriptorStoreTransitions.lean/declarations/completed-rename-syncs-persist-target--d36793659233b6ee14a1b860.md) | 183 | `result-track:d36793659233b6ee14a1b8606115cf54a10ebbb1e3cea9f748caac5d712fb1b9` |
| 33 | `theorem` | [source_first_sync_can_lose_both_names](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DescriptorStoreTransitions.lean/declarations/source-first-sync-can-lose-both-names--be2b489287aa4336c482d60b.md) | 191 | `result-track:be2b489287aa4336c482d60b6180b96f71a16234f56bcbe13ba3a0bd378f8653` |
| 34 | `theorem` | [descriptor_equality_does_not_imply_attachment](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DescriptorStoreTransitions.lean/declarations/descriptor-equality-does-not-imply-attachment--ef8417b6de6fb546f6b8a884.md) | 200 | `result-track:ef8417b6de6fb546f6b8a88440e149b39d728f2332e2a02913711e7eadfa864c` |
| 35 | `def` | [retirementCheck](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DescriptorStoreTransitions.lean/declarations/retirementcheck--29a9f72e8dcfc5406196e1ce.md) | 215 | `declaration-track:29a9f72e8dcfc5406196e1ce8f38aa35debd1d2b44de5fd708eafc01bc61baaf` |
| 36 | `theorem` | [retirementCheck_exact](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DescriptorStoreTransitions.lean/declarations/retirementcheck-exact--b9e1959bdc799335146ffadc.md) | 222 | `result-track:b9e1959bdc799335146ffadc0dc7a8edbe952a4128581bbe40efe0d619af504d` |
| 37 | `theorem` | [checked_retirement_refines_guarded_step](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DescriptorStoreTransitions.lean/declarations/checked-retirement-refines-guarded-step--71456ab96ba4db3b0a0d3a61.md) | 234 | `result-track:71456ab96ba4db3b0a0d3a61f1bbbb85abd50f207c46639957d01287a5cd6558` |
| 38 | `theorem` | [stale_source_rejects_retirement](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DescriptorStoreTransitions.lean/declarations/stale-source-rejects-retirement--d9b7f4832bef33051f6644d0.md) | 245 | `result-track:d9b7f4832bef33051f6644d000a013efc98b5d2634e84aed1f4f1a3bf6675e2e` |
| 39 | `theorem` | [stale_destination_rejects_retirement](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DescriptorStoreTransitions.lean/declarations/stale-destination-rejects-retirement--cf0f9306aa8a74dfdac5ee95.md) | 250 | `result-track:cf0f9306aa8a74dfdac5ee959b8210f0d08b10d5c33a10231f4c82da943cf197` |
| 40 | `theorem` | [no_readback_rejects_retirement](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DescriptorStoreTransitions.lean/declarations/no-readback-rejects-retirement--607dc6227676372cf8f1b37d.md) | 255 | `result-track:607dc6227676372cf8f1b37d146343c9c50adbeb13555da6777d6f32aa53e822` |
| 41 | `theorem` | [checked_retirement_retains_literal_source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DescriptorStoreTransitions.lean/declarations/checked-retirement-retains-literal-source--7dd2ce4e0eaed9dc1fe978d7.md) | 260 | `result-track:7dd2ce4e0eaed9dc1fe978d7db5ba4079022e67b17b58c0e239fad65388c3f7f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
