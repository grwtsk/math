# GRWTSK.CombinatoricsAndDiscreteMathematics.MomentCumulantPartitions.Variant2fd4ae76ff9acfbbce6ab945df34725c8536316423fd0df81d905d66af6e1d81

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**27 observed declarations and anonymous commands**, 17 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant2fd4ae76ff9acfbbce6ab945df34725c8536316423fd0df81d905d66af6e1d81.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e730f56a466028a4730504505fb4ef88e96bc12c`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant2fd4ae76ff9acfbbce6ab945df34725c8536316423fd0df81d905d66af6e1d81.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [DirectionPartition](declarations/directionpartition--8c7a2273010139485eb3f180.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [oneBlockPartition](declarations/oneblockpartition--e3be4bad3aebeeff1a992a53.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [oneBlockPartition_parts](declarations/oneblockpartition-parts--961c9888a90bd2751182003c.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [partitionWeight](declarations/partitionweight--1ce1f2915834148e497b62c3.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [partitionMoment](declarations/partitionmoment--668775c7a373bbf642807118.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [properPartitions](declarations/properpartitions--88e60f4667bef95c58b1cd0b.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [properPartitionContribution](declarations/properpartitioncontribution--bf7d0f5e9cc5d45ff049ed36.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [partitionWeight_oneBlock](declarations/partitionweight-oneblock--22d4328a4840644eafd1e77e.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [partitionMoment_eq_oneBlock_add_proper](declarations/partitionmoment-eq-oneblock-add-proper--7c6041a8d983cc376b07d1cf.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [univ_not_mem_of_mem_properPartitions](declarations/univ-not-mem-of-mem-properpartitions--27d624733d4c379a86dc9bdb.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [partitionWeight_congr_of_proper](declarations/partitionweight-congr-of-proper--911c151da0a524e8819a7382.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [properPartitionContribution_congr](declarations/properpartitioncontribution-congr--46d1f591548830c301a12c3a.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [withOneBlockValue](declarations/withoneblockvalue--a9fbbbaa4ec62dce0005cd3b.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [withOneBlockValue_univ](declarations/withoneblockvalue-univ--19774fafae215618ab508e40.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [withOneBlockValue_of_ne_univ](declarations/withoneblockvalue-of-ne-univ--250bdc3b9eb01f5c35c5d8ba.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [properPartitionContribution_withOneBlockValue](declarations/properpartitioncontribution-withoneblockvalue--bff27c3fcbb660025d6422e3.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [isolatedOneBlockCumulant](declarations/isolatedoneblockcumulant--c2aa4c2665b9b186d221446c.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [partitionMoment_eq_iff_oneBlock_eq_isolated](declarations/partitionmoment-eq-iff-oneblock-eq-isolated--4c276aa15cc4aaefc55e1034.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [SatisfiesMomentCumulantRelation](declarations/satisfiesmomentcumulantrelation--424a61a3b09b19bb45816924.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [satisfies_iff_recursive_isolation](declarations/satisfies-iff-recursive-isolation--cbe9e810f0533f60fe29bb7d.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [recursiveCumulantUpdate](declarations/recursivecumulantupdate--e75de2b8a9e409b221558003.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [recursiveCumulantUpdate_univ](declarations/recursivecumulantupdate-univ--934f8a656c94b8e6820035f4.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [properPartitionContribution_recursiveCumulantUpdate](declarations/properpartitioncontribution-recursivecumulantupdate--7d7f0bcc007376bdddf32102.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [recursiveCumulantUpdate_satisfies](declarations/recursivecumulantupdate-satisfies--b4f18d4f30e989da97db2501.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [satisfies_of_oneBlock_and_properContribution](declarations/satisfies-of-oneblock-and-propercontribution--f8c390cc760de3a5aa2a1568.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [oneBlock_unique](declarations/oneblock-unique--535861d6300001ca03d635b6.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [generatedMoment_reconstruction](declarations/generatedmoment-reconstruction--d3f5d656bb9f991b6f164ec4.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
