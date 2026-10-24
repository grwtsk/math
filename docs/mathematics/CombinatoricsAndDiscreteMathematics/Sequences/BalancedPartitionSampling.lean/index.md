# GRWTSK.Combinatorics.Sequences.BalancedPartitionSampling

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**42 observed declarations and anonymous commands**, 23 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Combinatorics/Sequences/BalancedPartitionSampling.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `eb2fc5e8fd3cf166fd3dde946c35037cf9a9211c`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/CombinatoricsAndDiscreteMathematics/Sequences/BalancedPartitionSampling.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [Partition](declarations/partition--4b798024433117112f3b71b4.md) | 29 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [part](declarations/part--985a13b95602320ac0f4155c.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [mem_part](declarations/mem-part--093ae4e925d2983a9536b894.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [part_card](declarations/part-card--07845cf23a4b82b3e2626fc4.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [parts_pairwise_disjoint](declarations/parts-pairwise-disjoint--e73304f59106bf3b799de2d0.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [parts_cover](declarations/parts-cover--315ad095c49c286c8e68a106.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `abbrev` | [Selection](declarations/selection--65b1b543158c777b002d4487.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [Sample](declarations/sample--50a4f4e7485a6aa07e7a9a2d.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [partitionFinite](declarations/partitionfinite--739424a70bdd98d864083d26.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [sampleFinite](declarations/samplefinite--9cab8ba32bb8182506dd4a16.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [partitionFintype](declarations/partitionfintype--067e4b8815b1322a15c0f756.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `instance` | [sampleFintype](declarations/samplefintype--35245a4e3e74a6f066383de4.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [sampleSigmaEquiv](declarations/samplesigmaequiv--0504372e342bb89fb91e56b7.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [selection_card](declarations/selection-card--ec0ae73369d276a62a40b3c5.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [sample_card](declarations/sample-card--a1051081f7a84c4c7883fa67.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [output](declarations/output--f661398fec16a3a81b2b93c6.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [choices_injective](declarations/choices-injective--5f100cc02d384ca5ac316eb9.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [output_card](declarations/output-card--6d7831c8ad395ef59376f21c.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [partition_nonempty](declarations/partition-nonempty--06a63fd79a8a3edc85129cde.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [sample_nonempty](declarations/sample-nonempty--009e7838ee6cf38d6c84fda6.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [relabel](declarations/relabel--f209ba1b3743ed0fdf52e89d.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [relabel_symm_relabel](declarations/relabel-symm-relabel--c717a1df7fde109db8dff46d.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [relabelEquiv](declarations/relabelequiv--752f2c28427e41c03c53e32d.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [output_relabel](declarations/output-relabel--0eede0bc81aa863720bb980f.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `abbrev` | [OutputFiber](declarations/outputfiber--5158c0a9f21803f3b029d178.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [outputFiberEquiv](declarations/outputfiberequiv--c37c016418b97c0871289390.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [outputFiber_card_eq](declarations/outputfiber-card-eq--9ab3db7a6f93e8de11a0c3fe.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [sample_card_eq_output_fiber_mul](declarations/sample-card-eq-output-fiber-mul--4257a480a1228d478d47ac32.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [jointProbability](declarations/jointprobability--ab6ada1bc1a35138c057d048.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [eventSigmaEquiv](declarations/eventsigmaequiv--2d6707ce00c2582b79b6a854.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [jointProbability_eq_partition_average](declarations/jointprobability-eq-partition-average--f6fe4cf0f81ebfdbfd0a2c21.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [output_probability](declarations/output-probability--2a0b87adb3da7d771c521b34.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [selection_rectangle_probability](declarations/selection-rectangle-probability--ba49492138b3e38d55aa22e5.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [samplePartition](declarations/samplepartition--83535975f33ad2a6c19b215e.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [partitionFiberEquiv](declarations/partitionfiberequiv--464398363281f1685ff7b6cb.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [partition_probability](declarations/partition-probability--c1aaea268a60f65022bb9552.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [output_event_probability](declarations/output-event-probability--bc40ca9ab255abe2b85dcc93.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [balancedSizes](declarations/balancedsizes--475a0fbb8e0e27bc2ffb8502.md) | 375 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [balancedSizes_sum](declarations/balancedsizes-sum--b81cc3f9c49e6cfeb61b4b57.md) | 378 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [balancedSizes_pos](declarations/balancedsizes-pos--69a0360e53e93be9f8c99b69.md) | 392 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [balanced_sample_nonempty](declarations/balanced-sample-nonempty--fa560f38b603b5f7b029409d.md) | 400 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [balanced_output_probability](declarations/balanced-output-probability--d50b0903b05e3f8eb0158f6e.md) | 404 | `BLOCKED_NATIVE_ADMISSION` |
