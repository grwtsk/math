# GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CombinatorialAlgorithms.WeightedGreedyPartitions

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**51 observed declarations and anonymous commands**, 27 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CombinatorialAlgorithms/WeightedGreedyPartitions.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7c6ba06fa211b14107630531cf84f9deff978e22`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CombinatorialAlgorithms/WeightedGreedyPartitions.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [cost](declarations/cost--35a03c3758d5c99274627d8f.md) | 16 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [cost_nil](declarations/cost-nil--e72f07132f2d52cbdca405ac.md) | 18 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [cost_append](declarations/cost-append--95df7d9f03e3ffe6ad93f59a.md) | 20 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [cost_singleton](declarations/cost-singleton--c44a7c657a1af1e8949f9988.md) | 24 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `structure` | [State](declarations/state--3803c7d79b79a0770fed542c.md) | 27 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [initial](declarations/initial--b8003d551def7c996e47d44e.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [history](declarations/history--56b10ce5d1d0a5333ddda520.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [splitBefore](declarations/splitbefore--7c1ba6946daf749910aea058.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [(anonymous)](declarations/instance--1ce00b8801f42113ad740d6d.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [step](declarations/step--0a5f7d4835b48130fc88a3c9.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [consume](declarations/consume--07d86dab172a813f00bd54a5.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [finish](declarations/finish--7363b43d4424a5c658c282cd.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [partition](declarations/partition--ac3a47cd12b716d97a7d63b7.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [PartValid](declarations/partvalid--2c71f77315fae320541d2f7a.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [Valid](declarations/valid--8753d61a4500eab593ef6180.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [initial_valid](declarations/initial-valid--06e8e8069c86e436d9bba80b.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [step_history](declarations/step-history--e4638ab43185e9bfd13fe321.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [consume_history](declarations/consume-history--8de240d9e57d52d467442844.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [finish_history](declarations/finish-history--28d04bd2da53a3293d9d76cd.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [flatten_partition](declarations/flatten-partition--2e2382979ea3b0e883a92cd0.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [step_valid](declarations/step-valid--cd34c814125c888edb02a7db.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [consume_valid](declarations/consume-valid--be9cf5e2b88800c736faded0.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [finish_valid](declarations/finish-valid--e7c72756127231c075e07618.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [member_partition_valid](declarations/member-partition-valid--46118cb593136373a3ab9eed.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [member_partition_ne_nil](declarations/member-partition-ne-nil--50da1825d756b26c605bb7e2.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [member_partition_length_le](declarations/member-partition-length-le--934ccd55b0831af0338c8984.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [member_partition_cost_le](declarations/member-partition-cost-le--b8fd47a23f63c1a0b08b3684.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [count_flatten_partition](declarations/count-flatten-partition--6476f10ab89d32ff027a77ae.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [maxFiles](declarations/maxfiles--85f5ad29b8104858968d6ea9.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [maxBytes](declarations/maxbytes--7002371ebe9cf43ea973f935.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [u64Modulus](declarations/u64modulus--08e0e85ab6193ff1e828ceef.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [profiled_sum_no_overflow](declarations/profiled-sum-no-overflow--44671c7e072f69e3e5e9874f.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [profiled_count_no_overflow](declarations/profiled-count-no-overflow--23383433465b3d2f9d2847be.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [profiled_u64_add_exact](declarations/profiled-u64-add-exact--53de320858d4398789d5e011.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [profiled_UInt64_add_exact](declarations/profiled-uint64-add-exact--c9591157235321086b904cfd.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [ScalarGuard](declarations/scalarguard--1660515270c2729c6d293105.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `instance` | [(anonymous)](declarations/instance--e1f8608a89eca7207b2bed65.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [scalarAdvance](declarations/scalaradvance--d318587fe43472a236f97b29.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [scalarAdvance_rejects_invalid](declarations/scalaradvance-rejects-invalid--487af5580bb7f47b84aa903f.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [scalarAdvance_accepts_iff](declarations/scalaradvance-accepts-iff--8dc5c2488053ee73f8f22356.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [scalarAdvance_refines_step](declarations/scalaradvance-refines-step--e502da5be61178ec7f49aa1b.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [scalarAdvance_sound](declarations/scalaradvance-sound--2b51f051acac1543204b97fe.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [profiled_action_index_no_overflow](declarations/profiled-action-index-no-overflow--13d87111e3d8c7097904884b.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [partition_singleton](declarations/partition-singleton--55cbd3a89a4f4a4497e388a3.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [partition_nil](declarations/partition-nil--12320c54e2aa26c864cbe44b.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `example` | [(anonymous)](declarations/example--bf7ef1e4ae425b3d6786ec5b.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `example` | [(anonymous)](declarations/example--40e6d57e3c51a12ed04e9edc.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `example` | [(anonymous)](declarations/example--246b028e00fcf26b31ba5634.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `example` | [(anonymous)](declarations/example--d75e38772927fa82e0e5838b.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `example` | [(anonymous)](declarations/example--f6b723990881238774833c5d.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `example` | [(anonymous)](declarations/example--ab0a21406d2e76cba44bb7ff.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
