# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SnapshotPublicationTransitions

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "60e3f7e460fecdd85cf65556e5998f023c1c9270",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SnapshotPublicationTransitions.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SnapshotPublicationTransitions.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SnapshotPublicationTransitions.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `60e3f7e460fecdd85cf65556e5998f023c1c9270`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SnapshotPublicationTransitions.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SnapshotPublicationTransitions.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Basic` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Snapshot](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SnapshotPublicationTransitions.lean/declarations/snapshot--76e49b0b6950e97090a179e3.md) | 16 | `declaration-track:76e49b0b6950e97090a179e34070276b273ecb08b36fa2d805c62d13daabc849` |
| 2 | `structure` | [Context](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SnapshotPublicationTransitions.lean/declarations/context--da907865d238a56fcb5f2144.md) | 18 | `declaration-track:da907865d238a56fcb5f2144e2f147893a0be7b42584febad6e23daaabac0d11` |
| 3 | `inductive` | [Phase](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SnapshotPublicationTransitions.lean/declarations/phase--fde05c0172ee65250b5ecd3d.md) | 24 | `declaration-track:fde05c0172ee65250b5ecd3de61700d169b47863939409457290137413c10d63` |
| 4 | `inductive` | [Operation](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SnapshotPublicationTransitions.lean/declarations/operation--9db0c4c245fbffe61a6a9e6d.md) | 28 | `declaration-track:9db0c4c245fbffe61a6a9e6d4a7e27092690f74a05b5d435f586e7786731438c` |
| 5 | `structure` | [State](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SnapshotPublicationTransitions.lean/declarations/state--0ca625f2e46a22563efdd2fa.md) | 33 | `declaration-track:0ca625f2e46a22563efdd2fa9c5aac9593b125d5ec53d900514fd0940d9cedd9` |
| 6 | `def` | [initial](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SnapshotPublicationTransitions.lean/declarations/initial--4b64caf4265ad6884c59e290.md) | 46 | `declaration-track:4b64caf4265ad6884c59e2906fb924153ac1330a4fee50556bcfcacea976bc07` |
| 7 | `inductive` | [Step](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SnapshotPublicationTransitions.lean/declarations/step--f7ea5e2ad9bf6b843ddef0bc.md) | 61 | `declaration-track:f7ea5e2ad9bf6b843ddef0bc451897ff3f5f4f547a966394191272db2dae88f6` |
| 8 | `inductive` | [Reachable](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SnapshotPublicationTransitions.lean/declarations/reachable--eed68c7b6d5892d19334c8ea.md) | 117 | `declaration-track:eed68c7b6d5892d19334c8ea0fce9b56ac102f241dc8537b28735bf1080ff045` |
| 9 | `theorem` | [retain_requires_expected_destination](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SnapshotPublicationTransitions.lean/declarations/retain-requires-expected-destination--80d5b77bb2097c3cf6b86d2b.md) | 126 | `result-track:80d5b77bb2097c3cf6b86d2b04cd744c953373781e8af90949150510e0663e9f` |
| 10 | `theorem` | [destination_drift_blocks_retain](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SnapshotPublicationTransitions.lean/declarations/destination-drift-blocks-retain--869e50cf37fc3f46712d522c.md) | 131 | `result-track:869e50cf37fc3f46712d522c3ad9623dc978a79763707d1672f9cf6d2e793fa6` |
| 11 | `theorem` | [retire_requires_readback](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SnapshotPublicationTransitions.lean/declarations/retire-requires-readback--a410e1aa7dd793aba5f9b28e.md) | 136 | `result-track:a410e1aa7dd793aba5f9b28e34df2c0e7f80e43fe7943b6eea26f2945b7d1d13` |
| 12 | `theorem` | [no_retire_before_readback](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SnapshotPublicationTransitions.lean/declarations/no-retire-before-readback--e45a4c4d780347237dd6580e.md) | 143 | `result-track:e45a4c4d780347237dd6580e74282db3ff4a83818a8ea9ac6826b76923b1b4a9` |
| 13 | `theorem` | [retire_requires_external_grant](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SnapshotPublicationTransitions.lean/declarations/retire-requires-external-grant--30bd2b94027ccf2d1fb65f1a.md) | 149 | `result-track:30bd2b94027ccf2d1fb65f1a25b5b545f7e63b378ab49ea3888eb66a822df8bb` |
| 14 | `theorem` | [retire_preserves_source_as_preimage](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SnapshotPublicationTransitions.lean/declarations/retire-preserves-source-as-preimage--f5db8bca84f398d8b11926fd.md) | 154 | `result-track:f5db8bca84f398d8b11926fd7437ff5cbcd9ac065104b1828d37ae9297be2a97` |
| 15 | `theorem` | [publish_requires_empty_destination](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SnapshotPublicationTransitions.lean/declarations/publish-requires-empty-destination--8389e8261d3440b5a9071e6d.md) | 160 | `result-track:8389e8261d3440b5a9071e6dfb10deebdf616b80602c068ef04b81ed5559deea` |
| 16 | `theorem` | [publish_never_overwrites](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SnapshotPublicationTransitions.lean/declarations/publish-never-overwrites--a5fbe93a03ddf5635e8a314d.md) | 165 | `result-track:a5fbe93a03ddf5635e8a314de3f408a0e008f60fd12711d5fd4075e7f61338bb` |
| 17 | `theorem` | [restore_requires_empty_destination](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SnapshotPublicationTransitions.lean/declarations/restore-requires-empty-destination--0e795d28d181425ebf3079fe.md) | 169 | `result-track:0e795d28d181425ebf3079fec3549b533201bbfbee6336d086bf5228a60ddc8a` |
| 18 | `theorem` | [restore_never_overwrites](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SnapshotPublicationTransitions.lean/declarations/restore-never-overwrites--e60f39ae14ebbd0b90ae60a9.md) | 174 | `result-track:e60f39ae14ebbd0b90ae60a9925a458d1a7e84556e93565904e6dcfcc8101d88` |
| 19 | `theorem` | [destination_change_invalidates_current_verification](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SnapshotPublicationTransitions.lean/declarations/destination-change-invalidates-current-verification--b8cd3e02a9cc216c48ef8131.md) | 178 | `result-track:b8cd3e02a9cc216c48ef81316287eed42b93513e83a16df6249ca9c89c134e70` |
| 20 | `theorem` | [destination_change_blocks_retirement](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SnapshotPublicationTransitions.lean/declarations/destination-change-blocks-retirement--e3b3d27c9578da0e16e39ba7.md) | 183 | `result-track:e3b3d27c9578da0e16e39ba717274e7da3e5b2c6d3484170344561b21a3dbb84` |
| 21 | `theorem` | [restore_returns_the_exact_moved_tree](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SnapshotPublicationTransitions.lean/declarations/restore-returns-the-exact-moved-tree--855df834813b228e4edb6c6c.md) | 191 | `result-track:855df834813b228e4edb6c6ca49b9dc4963c0d0c401c8371f28e87707cec0014` |
| 22 | `theorem` | [conflict_preserves_names_and_preimages](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SnapshotPublicationTransitions.lean/declarations/conflict-preserves-names-and-preimages--588cb5c5a05b2b74b408e510.md) | 197 | `result-track:588cb5c5a05b2b74b408e51021708ad33f5705659a143727d340bcb6c17c7563` |
| 23 | `theorem` | [failure_preserves_names_and_preimages](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SnapshotPublicationTransitions.lean/declarations/failure-preserves-names-and-preimages--fc357a6200bf471a733695d8.md) | 204 | `result-track:fc357a6200bf471a733695d8ee14508d921419eec9005899edcfeb22d615b8e3` |
| 24 | `theorem` | [raw_source_preimage_is_monotone](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SnapshotPublicationTransitions.lean/declarations/raw-source-preimage-is-monotone--e941bb8bfe6c1044633435e7.md) | 211 | `result-track:e941bb8bfe6c1044633435e78341d278c4a64d35fef3ad6dd72792d3ed55ac1c` |
| 25 | `theorem` | [raw_destination_preimage_is_monotone](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SnapshotPublicationTransitions.lean/declarations/raw-destination-preimage-is-monotone--e103b9e4c76f2103b8bb52ec.md) | 216 | `result-track:e103b9e4c76f2103b8bb52ec59ec7645022380ab584ce48ddfa6fb1a23535d48` |
| 26 | `theorem` | [retired_source_is_monotone](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SnapshotPublicationTransitions.lean/declarations/retired-source-is-monotone--4dac05f8db753658f49202b1.md) | 221 | `result-track:4dac05f8db753658f49202b118895bf3a9641514e528bd9ad0ca22f850ac1b9d` |
| 27 | `theorem` | [readback_seen_origin](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SnapshotPublicationTransitions.lean/declarations/readback-seen-origin--b608cc3178f470f382b1185d.md) | 226 | `result-track:b608cc3178f470f382b1185dba9534152ce9597ef6ce7c3852c5a33dcf4babf6` |
| 28 | `theorem` | [reachable_source_absent_has_retained_preimage](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SnapshotPublicationTransitions.lean/declarations/reachable-source-absent-has-retained-preimage--7f9b6eea34ae4b8cfe72d8a3.md) | 231 | `result-track:7f9b6eea34ae4b8cfe72d8a30b495ad7f3e66ee2a2f125b19edea1ed73ed26fb` |
| 29 | `theorem` | [reachable_readback_seen_has_readback_transition](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SnapshotPublicationTransitions.lean/declarations/reachable-readback-seen-has-readback-transition--a997586b4dd9edbac4dfa666.md) | 239 | `result-track:a997586b4dd9edbac4dfa666f435a769e7eb3ad442fee06ec5e49720e1a34f7b` |
| 30 | `theorem` | [reachable_source_absence_requires_prior_readback](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SnapshotPublicationTransitions.lean/declarations/reachable-source-absence-requires-prior-readback--6d605564a4adf416f29147ad.md) | 251 | `result-track:6d605564a4adf416f29147addb919b827e8e948eff75c5d2aee1ab9388e6ff63` |
| 31 | `theorem` | [initial_cannot_retire](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SnapshotPublicationTransitions.lean/declarations/initial-cannot-retire--93df5abae2149b72db7499b0.md) | 258 | `result-track:93df5abae2149b72db7499b0db09392515c89d83a41afe0f78a3d90d05e90542` |
| 32 | `def` | [stagedState](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SnapshotPublicationTransitions.lean/declarations/stagedstate--3c4c294b256244c88337a253.md) | 262 | `declaration-track:3c4c294b256244c88337a25393c76d0b48a821796afa8e857557c9433fc4b6ed` |
| 33 | `def` | [retainedState](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SnapshotPublicationTransitions.lean/declarations/retainedstate--2bc567d3dd306af07f6798c1.md) | 265 | `declaration-track:2bc567d3dd306af07f6798c17ab22223df0beaaf7f8dd927ccb26b3fbb93dcd3` |
| 34 | `def` | [publishedState](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SnapshotPublicationTransitions.lean/declarations/publishedstate--5c5fb2233efae5445682dc53.md) | 268 | `declaration-track:5c5fb2233efae5445682dc53d30039a79693b893d2e14f06bd8d495f63794ca6` |
| 35 | `def` | [checkedState](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SnapshotPublicationTransitions.lean/declarations/checkedstate--43bb8826e9b59fe4f62eb41e.md) | 271 | `declaration-track:43bb8826e9b59fe4f62eb41eb8bc5703c447f92e0977563be11caf4ec167667b` |
| 36 | `def` | [retiredState](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SnapshotPublicationTransitions.lean/declarations/retiredstate--cac8f71212018d120a45187a.md) | 274 | `declaration-track:cac8f71212018d120a45187a9a576d10002558276b341479678ed25a250f7fbe` |
| 37 | `theorem` | [reachable_destination_drift_blocks_retain](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SnapshotPublicationTransitions.lean/declarations/reachable-destination-drift-blocks-retain--65a1a178b88b0fa507454c4e.md) | 279 | `result-track:65a1a178b88b0fa507454c4e6dc4c1c9bdda0193da6c29e254b9533c5fab779f` |
| 38 | `theorem` | [successful_retirement_reachable](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SnapshotPublicationTransitions.lean/declarations/successful-retirement-reachable--266888c608b8a3c4f8c47810.md) | 294 | `result-track:266888c608b8a3c4f8c4781042472f5eb203176d31af7165de890c29b08fd1d2` |
| 39 | `theorem` | [successful_retirement_retains_both_raw_preimages](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SnapshotPublicationTransitions.lean/declarations/successful-retirement-retains-both-raw-preimages--959c1c2cc18c9fe348483d8c.md) | 308 | `result-track:959c1c2cc18c9fe348483d8cf6c9625fa90f4fb81cea412020f6e8106ef9af71` |
| 40 | `theorem` | [halted_blocks_host_effects](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SnapshotPublicationTransitions.lean/declarations/halted-blocks-host-effects--b42c547ed8a610cfe862fef9.md) | 317 | `result-track:b42c547ed8a610cfe862fef943160e0571193e2ba1872b9a1651158e101c98c9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
