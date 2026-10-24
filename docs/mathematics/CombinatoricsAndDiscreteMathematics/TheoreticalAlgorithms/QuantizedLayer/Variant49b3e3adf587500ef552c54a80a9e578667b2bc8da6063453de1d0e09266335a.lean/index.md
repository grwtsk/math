# GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.QuantizedLayer.Variant49b3e3adf587500ef552c54a80a9e578667b2bc8da6063453de1d0e09266335a

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**41 observed declarations and anonymous commands**, 22 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuantizedLayer/Variant49b3e3adf587500ef552c54a80a9e578667b2bc8da6063453de1d0e09266335a.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `32e26b477374ac1cecdd7a4f21f810042983d1a0`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuantizedLayer/Variant49b3e3adf587500ef552c54a80a9e578667b2bc8da6063453de1d0e09266335a.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [List.foldl_le_foldl](declarations/list-foldl-le-foldl--83beb78fd2f55abfa66a52d5.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [dotProductInt](declarations/dotproductint--ecc96ecbfe43e2e21c2d05bd.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [dotProductInt_mono_nonneg](declarations/dotproductint-mono-nonneg--a6932628c49fcefdc056b7ce.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [matVecMulInt](declarations/matvecmulint--3d07c79e27bd996ead1f6700.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [addIntArrays](declarations/addintarrays--e623e0a06522f33530304fd5.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [subIntArrays](declarations/subintarrays--950a7bff5cbe347ec66d7de4.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [reluInt](declarations/reluint--6f79c3743142ee30df676348.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [Array.getD_eq_getElem](declarations/array-getd-eq-getelem--a22669cd4f30492dfabeb8ce.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [reluInt_getElem](declarations/reluint-getelem--01e509e85c0fe99173ec7d7c.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [reluInt_getElem!](declarations/reluint-getelem--7edcdeec4b529fa65a7ad165.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [addIntArrays_getElem!](declarations/addintarrays-getelem--bfd5840aa955d71cda4ce961.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [subIntArrays_getElem!](declarations/subintarrays-getelem--f796d1d587b73fd0bab19e24.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [matVecMulInt_getElem!](declarations/matvecmulint-getelem--b25406c4270743f7c9c7f26a.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `structure` | [SplitWeights](declarations/splitweights--41984f589a6fe3e4e7aed745.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `structure` | [QuantizedLayer](declarations/quantizedlayer--bb130364755adf9325992705.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [scaleToInt](declarations/scaletoint--4208de8aa937225e8d0f6ba4.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [ofLayer](declarations/oflayer--f966dd25e5138e1ed0e03a1a.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `structure` | [AlignedInput](declarations/alignedinput--ea7baf856c4b021cd7aeea12.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [alignInput](declarations/aligninput--c421832ce0b3601b67e3d5a7.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [shiftInt](declarations/shiftint--2c73beb656716deb350014df.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [forwardQuantized](declarations/forwardquantized--d7fccb9635c408230955994d.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [toIntervalArray](declarations/tointervalarray--ba485fa3308f433dba6ff5e0.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [intVal](declarations/intval--98ca6565f69aaf41a1738d23.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [intVal_add](declarations/intval-add--d5ab76cd06a8b44bc8564671.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [intVal_sub](declarations/intval-sub--b237ae7a4cbaca6222d831ad.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [intVal_mul](declarations/intval-mul--9d188cf69e871b18dedcca33.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [intVal_zero](declarations/intval-zero--c0d3e1b91574b5e140ffa4ae.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [intVal_nonneg](declarations/intval-nonneg--fc2c4129376826a50fa1a6b7.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [AlignedInput.mem](declarations/alignedinput-mem--564026baec630a4f01adfac7.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [nonneg_mul_bounds](declarations/nonneg-mul-bounds--4d53d21637b495a830d9961b.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [dotProduct_bounds_nonneg](declarations/dotproduct-bounds-nonneg--ac1c9080171e621722af0417.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [split_sign_bounds](declarations/split-sign-bounds--a2b44f5b8fba6aaf0f112a6e.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [relu_preserves_bounds](declarations/relu-preserves-bounds--cb605d5872ad64c74d0efc97.md) | 413 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [intVal_max_le](declarations/intval-max-le--b13e298697382b447525e562.md) | 422 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [intVal_mono](declarations/intval-mono--cf3df847231e86dbc14276ed.md) | 430 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [intVal_strictMono](declarations/intval-strictmono--fa6cbcd2d70d913b7eca4b04.md) | 437 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [forwardQuantized_sound](declarations/forwardquantized-sound--8d2d6f3aa6d4347897131464.md) | 455 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [forwardQuantized_nonempty](declarations/forwardquantized-nonempty--03dbaff7e4b039c0468b49f8.md) | 601 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `structure` | [QuantizedNet](declarations/quantizednet--23df050f83073901b076b01b.md) | 645 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [ofLayers](declarations/oflayers--1d5bf65996d7ce1b505384dc.md) | 652 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [forward](declarations/forward--9fcbba1b8ee92abbd5774af3.md) | 656 | `BLOCKED_NATIVE_ADMISSION` |
