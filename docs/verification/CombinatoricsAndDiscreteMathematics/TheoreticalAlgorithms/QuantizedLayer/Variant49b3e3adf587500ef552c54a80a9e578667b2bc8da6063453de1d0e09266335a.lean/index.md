# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.QuantizedLayer.Variant49b3e3adf587500ef552c54a80a9e578667b2bc8da6063453de1d0e09266335a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "32e26b477374ac1cecdd7a4f21f810042983d1a0",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuantizedLayer/Variant49b3e3adf587500ef552c54a80a9e578667b2bc8da6063453de1d0e09266335a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuantizedLayer/Variant49b3e3adf587500ef552c54a80a9e578667b2bc8da6063453de1d0e09266335a.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuantizedLayer/Variant49b3e3adf587500ef552c54a80a9e578667b2bc8da6063453de1d0e09266335a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `32e26b477374ac1cecdd7a4f21f810042983d1a0`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuantizedLayer/Variant49b3e3adf587500ef552c54a80a9e578667b2bc8da6063453de1d0e09266335a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuantizedLayer/Variant49b3e3adf587500ef552c54a80a9e578667b2bc8da6063453de1d0e09266335a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.ML.Optimized.IntervalArray` — import line 11; external provider; requires a separately pinned dependency.
- `LeanCert.ML.Network` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [List.foldl_le_foldl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuantizedLayer/Variant49b3e3adf587500ef552c54a80a9e578667b2bc8da6063453de1d0e09266335a.lean/declarations/list-foldl-le-foldl--83beb78fd2f55abfa66a52d5.md) | 65 | `result-track:83beb78fd2f55abfa66a52d59a49e5b96e703fdb83fdf0be76888ae8d38d42e7` |
| 2 | `def` | [dotProductInt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuantizedLayer/Variant49b3e3adf587500ef552c54a80a9e578667b2bc8da6063453de1d0e09266335a.lean/declarations/dotproductint--ecc96ecbfe43e2e21c2d05bd.md) | 93 | `declaration-track:ecc96ecbfe43e2e21c2d05bd67b6c7617239e1e7d0ff840d76700c43ab6ba79d` |
| 3 | `theorem` | [dotProductInt_mono_nonneg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuantizedLayer/Variant49b3e3adf587500ef552c54a80a9e578667b2bc8da6063453de1d0e09266335a.lean/declarations/dotproductint-mono-nonneg--a6932628c49fcefdc056b7ce.md) | 99 | `result-track:a6932628c49fcefdc056b7cec17c225cf82acc2bec075f86687073fba3a4075e` |
| 4 | `def` | [matVecMulInt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuantizedLayer/Variant49b3e3adf587500ef552c54a80a9e578667b2bc8da6063453de1d0e09266335a.lean/declarations/matvecmulint--3d07c79e27bd996ead1f6700.md) | 124 | `declaration-track:3d07c79e27bd996ead1f67003b49835cc9dd5794d3095e5eef574a9f9bda6bcd` |
| 5 | `def` | [addIntArrays](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuantizedLayer/Variant49b3e3adf587500ef552c54a80a9e578667b2bc8da6063453de1d0e09266335a.lean/declarations/addintarrays--e623e0a06522f33530304fd5.md) | 128 | `declaration-track:e623e0a06522f33530304fd5a4b9f3223bf1cdbeea3b348e29cd9012a3852740` |
| 6 | `def` | [subIntArrays](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuantizedLayer/Variant49b3e3adf587500ef552c54a80a9e578667b2bc8da6063453de1d0e09266335a.lean/declarations/subintarrays--950a7bff5cbe347ec66d7de4.md) | 132 | `declaration-track:950a7bff5cbe347ec66d7de450371e6bf04cd3845dfb9b36b51d5c530a62c791` |
| 7 | `def` | [reluInt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuantizedLayer/Variant49b3e3adf587500ef552c54a80a9e578667b2bc8da6063453de1d0e09266335a.lean/declarations/reluint--6f79c3743142ee30df676348.md) | 136 | `declaration-track:6f79c3743142ee30df6763489851e89a5c6280cb1389eaf8b5bac8513c4d3ecf` |
| 8 | `theorem` | [Array.getD_eq_getElem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuantizedLayer/Variant49b3e3adf587500ef552c54a80a9e578667b2bc8da6063453de1d0e09266335a.lean/declarations/array-getd-eq-getelem--a22669cd4f30492dfabeb8ce.md) | 142 | `result-track:a22669cd4f30492dfabeb8ceecbb952279f2180d74066bb024096cde3c8dd247` |
| 9 | `theorem` | [reluInt_getElem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuantizedLayer/Variant49b3e3adf587500ef552c54a80a9e578667b2bc8da6063453de1d0e09266335a.lean/declarations/reluint-getelem--01e509e85c0fe99173ec7d7c.md) | 148 | `result-track:01e509e85c0fe99173ec7d7cad23183625df6375aca7b86f58ffed7a08a26bf9` |
| 10 | `theorem` | [reluInt_getElem!](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuantizedLayer/Variant49b3e3adf587500ef552c54a80a9e578667b2bc8da6063453de1d0e09266335a.lean/declarations/reluint-getelem--7edcdeec4b529fa65a7ad165.md) | 153 | `result-track:7edcdeec4b529fa65a7ad1658d4d3a4e3e8477eabe1fc05d8394ca87c36e234f` |
| 11 | `theorem` | [addIntArrays_getElem!](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuantizedLayer/Variant49b3e3adf587500ef552c54a80a9e578667b2bc8da6063453de1d0e09266335a.lean/declarations/addintarrays-getelem--bfd5840aa955d71cda4ce961.md) | 160 | `result-track:bfd5840aa955d71cda4ce96167136a6ca0f9cc1a2d4a7b630548f819c1a355a4` |
| 12 | `theorem` | [subIntArrays_getElem!](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuantizedLayer/Variant49b3e3adf587500ef552c54a80a9e578667b2bc8da6063453de1d0e09266335a.lean/declarations/subintarrays-getelem--f796d1d587b73fd0bab19e24.md) | 168 | `result-track:f796d1d587b73fd0bab19e24aea41ac702febde0ea73bc5151d83d1ffd34ac9c` |
| 13 | `theorem` | [matVecMulInt_getElem!](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuantizedLayer/Variant49b3e3adf587500ef552c54a80a9e578667b2bc8da6063453de1d0e09266335a.lean/declarations/matvecmulint-getelem--b25406c4270743f7c9c7f26a.md) | 176 | `result-track:b25406c4270743f7c9c7f26af15625f72bb28235035edb0b9528f4cd1722c35c` |
| 14 | `structure` | [SplitWeights](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuantizedLayer/Variant49b3e3adf587500ef552c54a80a9e578667b2bc8da6063453de1d0e09266335a.lean/declarations/splitweights--41984f589a6fe3e4e7aed745.md) | 187 | `declaration-track:41984f589a6fe3e4e7aed74544306f215149ba5736ccfba2370673a7ac06c790` |
| 15 | `structure` | [QuantizedLayer](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuantizedLayer/Variant49b3e3adf587500ef552c54a80a9e578667b2bc8da6063453de1d0e09266335a.lean/declarations/quantizedlayer--bb130364755adf9325992705.md) | 206 | `declaration-track:bb130364755adf932599270503e3e379297b8b3d9d684f3f2397f08a492f6340` |
| 16 | `def` | [scaleToInt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuantizedLayer/Variant49b3e3adf587500ef552c54a80a9e578667b2bc8da6063453de1d0e09266335a.lean/declarations/scaletoint--4208de8aa937225e8d0f6ba4.md) | 225 | `declaration-track:4208de8aa937225e8d0f6ba4d8a8cbb400c7a7f8917f710b13ddc2afb83ac065` |
| 17 | `def` | [ofLayer](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuantizedLayer/Variant49b3e3adf587500ef552c54a80a9e578667b2bc8da6063453de1d0e09266335a.lean/declarations/oflayer--f966dd25e5138e1ed0e03a1a.md) | 232 | `declaration-track:f966dd25e5138e1ed0e03a1a0d251b82039857b50bbf96d3b088cd821bfb38ef` |
| 18 | `structure` | [AlignedInput](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuantizedLayer/Variant49b3e3adf587500ef552c54a80a9e578667b2bc8da6063453de1d0e09266335a.lean/declarations/alignedinput--ea7baf856c4b021cd7aeea12.md) | 246 | `declaration-track:ea7baf856c4b021cd7aeea1203c450e202f9ae270038af49527a24dd8a6bc4bb` |
| 19 | `def` | [alignInput](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuantizedLayer/Variant49b3e3adf587500ef552c54a80a9e578667b2bc8da6063453de1d0e09266335a.lean/declarations/aligninput--c421832ce0b3601b67e3d5a7.md) | 256 | `declaration-track:c421832ce0b3601b67e3d5a7b51ce1fc2418874d1ccffbe1699c77b9788356e9` |
| 20 | `def` | [shiftInt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuantizedLayer/Variant49b3e3adf587500ef552c54a80a9e578667b2bc8da6063453de1d0e09266335a.lean/declarations/shiftint--2c73beb656716deb350014df.md) | 266 | `declaration-track:2c73beb656716deb350014df767125c5b911d2ef38ef6a02d1bf7306b0b3894a` |
| 21 | `def` | [forwardQuantized](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuantizedLayer/Variant49b3e3adf587500ef552c54a80a9e578667b2bc8da6063453de1d0e09266335a.lean/declarations/forwardquantized--d7fccb9635c408230955994d.md) | 280 | `declaration-track:d7fccb9635c408230955994df1b7d3744cefdbb8d12fff60edc00f5dcf1caa01` |
| 22 | `def` | [toIntervalArray](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuantizedLayer/Variant49b3e3adf587500ef552c54a80a9e578667b2bc8da6063453de1d0e09266335a.lean/declarations/tointervalarray--ba485fa3308f433dba6ff5e0.md) | 304 | `declaration-track:ba485fa3308f433dba6ff5e056d9149bcd268390e5a1734aee5a583e9cc63a0f` |
| 23 | `def` | [intVal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuantizedLayer/Variant49b3e3adf587500ef552c54a80a9e578667b2bc8da6063453de1d0e09266335a.lean/declarations/intval--98ca6565f69aaf41a1738d23.md) | 316 | `declaration-track:98ca6565f69aaf41a1738d23e3906672c412b09eb005cc5bf85fde5cf27fb996` |
| 24 | `theorem` | [intVal_add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuantizedLayer/Variant49b3e3adf587500ef552c54a80a9e578667b2bc8da6063453de1d0e09266335a.lean/declarations/intval-add--d5ab76cd06a8b44bc8564671.md) | 320 | `result-track:d5ab76cd06a8b44bc85646714b6a41e3c109a20b5e7900cdce5f90630178213c` |
| 25 | `theorem` | [intVal_sub](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuantizedLayer/Variant49b3e3adf587500ef552c54a80a9e578667b2bc8da6063453de1d0e09266335a.lean/declarations/intval-sub--b237ae7a4cbaca6222d831ad.md) | 324 | `result-track:b237ae7a4cbaca6222d831adf9ce9afc74262a1e1dde0a7292d5833ae444f30c` |
| 26 | `theorem` | [intVal_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuantizedLayer/Variant49b3e3adf587500ef552c54a80a9e578667b2bc8da6063453de1d0e09266335a.lean/declarations/intval-mul--9d188cf69e871b18dedcca33.md) | 328 | `result-track:9d188cf69e871b18dedcca33a15e41aad7fad7f73fb5cee5028ca898ce4c57cd` |
| 27 | `theorem` | [intVal_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuantizedLayer/Variant49b3e3adf587500ef552c54a80a9e578667b2bc8da6063453de1d0e09266335a.lean/declarations/intval-zero--c0d3e1b91574b5e140ffa4ae.md) | 336 | `result-track:c0d3e1b91574b5e140ffa4aed15319bfc2810e5eb0ff37b05a09ebb96ec5f56c` |
| 28 | `theorem` | [intVal_nonneg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuantizedLayer/Variant49b3e3adf587500ef552c54a80a9e578667b2bc8da6063453de1d0e09266335a.lean/declarations/intval-nonneg--fc2c4129376826a50fa1a6b7.md) | 339 | `result-track:fc2c4129376826a50fa1a6b727412bbdb1c704f82fbacdf32bd5097f6645ca3d` |
| 29 | `def` | [AlignedInput.mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuantizedLayer/Variant49b3e3adf587500ef552c54a80a9e578667b2bc8da6063453de1d0e09266335a.lean/declarations/alignedinput-mem--564026baec630a4f01adfac7.md) | 347 | `declaration-track:564026baec630a4f01adfac767d23b80ed8de89dbd07a5ef4ce5e295ac4c64f4` |
| 30 | `theorem` | [nonneg_mul_bounds](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuantizedLayer/Variant49b3e3adf587500ef552c54a80a9e578667b2bc8da6063453de1d0e09266335a.lean/declarations/nonneg-mul-bounds--4d53d21637b495a830d9961b.md) | 356 | `result-track:4d53d21637b495a830d9961bbc59856a9ae4f9319c976b919638427461062838` |
| 31 | `theorem` | [dotProduct_bounds_nonneg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuantizedLayer/Variant49b3e3adf587500ef552c54a80a9e578667b2bc8da6063453de1d0e09266335a.lean/declarations/dotproduct-bounds-nonneg--ac1c9080171e621722af0417.md) | 365 | `result-track:ac1c9080171e621722af0417595164fc2349469376222d95e0e6ad30eef132cb` |
| 32 | `theorem` | [split_sign_bounds](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuantizedLayer/Variant49b3e3adf587500ef552c54a80a9e578667b2bc8da6063453de1d0e09266335a.lean/declarations/split-sign-bounds--a2b44f5b8fba6aaf0f112a6e.md) | 382 | `result-track:a2b44f5b8fba6aaf0f112a6e9d1e425aaf863a6034f52da2a32efb1734723063` |
| 33 | `theorem` | [relu_preserves_bounds](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuantizedLayer/Variant49b3e3adf587500ef552c54a80a9e578667b2bc8da6063453de1d0e09266335a.lean/declarations/relu-preserves-bounds--cb605d5872ad64c74d0efc97.md) | 413 | `result-track:cb605d5872ad64c74d0efc9715f8fcb432599a59e54b01666619178a5f6899ac` |
| 34 | `theorem` | [intVal_max_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuantizedLayer/Variant49b3e3adf587500ef552c54a80a9e578667b2bc8da6063453de1d0e09266335a.lean/declarations/intval-max-le--b13e298697382b447525e562.md) | 422 | `result-track:b13e298697382b447525e5625e495f80202734bc92c20ab81d3780d08b3dd42f` |
| 35 | `theorem` | [intVal_mono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuantizedLayer/Variant49b3e3adf587500ef552c54a80a9e578667b2bc8da6063453de1d0e09266335a.lean/declarations/intval-mono--cf3df847231e86dbc14276ed.md) | 430 | `result-track:cf3df847231e86dbc14276ed8a1813eddaaa6e644afb0865bce5f391c9771810` |
| 36 | `theorem` | [intVal_strictMono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuantizedLayer/Variant49b3e3adf587500ef552c54a80a9e578667b2bc8da6063453de1d0e09266335a.lean/declarations/intval-strictmono--fa6cbcd2d70d913b7eca4b04.md) | 437 | `result-track:fa6cbcd2d70d913b7eca4b0439af7ab4f51ed48701b8f869982e68f0ed2dd9df` |
| 37 | `theorem` | [forwardQuantized_sound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuantizedLayer/Variant49b3e3adf587500ef552c54a80a9e578667b2bc8da6063453de1d0e09266335a.lean/declarations/forwardquantized-sound--8d2d6f3aa6d4347897131464.md) | 455 | `result-track:8d2d6f3aa6d4347897131464661a921a30db38d3b27bd5da4132ce359166d1c0` |
| 38 | `theorem` | [forwardQuantized_nonempty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuantizedLayer/Variant49b3e3adf587500ef552c54a80a9e578667b2bc8da6063453de1d0e09266335a.lean/declarations/forwardquantized-nonempty--03dbaff7e4b039c0468b49f8.md) | 601 | `result-track:03dbaff7e4b039c0468b49f8f1c9f5d12b8fe3d91c38e2bf45443c2e246f302c` |
| 39 | `structure` | [QuantizedNet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuantizedLayer/Variant49b3e3adf587500ef552c54a80a9e578667b2bc8da6063453de1d0e09266335a.lean/declarations/quantizednet--23df050f83073901b076b01b.md) | 645 | `declaration-track:23df050f83073901b076b01bc5e84058eebe9116355f331e40e9edd3a3f515c5` |
| 40 | `def` | [ofLayers](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuantizedLayer/Variant49b3e3adf587500ef552c54a80a9e578667b2bc8da6063453de1d0e09266335a.lean/declarations/oflayers--1d5bf65996d7ce1b505384dc.md) | 652 | `declaration-track:1d5bf65996d7ce1b505384dcadb8db5ad00edd4da686df511585832cd347ae1a` |
| 41 | `def` | [forward](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuantizedLayer/Variant49b3e3adf587500ef552c54a80a9e578667b2bc8da6063453de1d0e09266335a.lean/declarations/forward--9fcbba1b8ee92abbd5774af3.md) | 656 | `declaration-track:9fcbba1b8ee92abbd5774af35146a5accb7aaea787e00329877c7149e6f07e14` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
