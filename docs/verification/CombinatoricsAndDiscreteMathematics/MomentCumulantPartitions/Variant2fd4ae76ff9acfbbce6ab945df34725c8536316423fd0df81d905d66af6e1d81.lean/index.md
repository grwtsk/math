# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.MomentCumulantPartitions.Variant2fd4ae76ff9acfbbce6ab945df34725c8536316423fd0df81d905d66af6e1d81

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e730f56a466028a4730504505fb4ef88e96bc12c",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant2fd4ae76ff9acfbbce6ab945df34725c8536316423fd0df81d905d66af6e1d81.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant2fd4ae76ff9acfbbce6ab945df34725c8536316423fd0df81d905d66af6e1d81.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant2fd4ae76ff9acfbbce6ab945df34725c8536316423fd0df81d905d66af6e1d81.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e730f56a466028a4730504505fb4ef88e96bc12c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant2fd4ae76ff9acfbbce6ab945df34725c8536316423fd0df81d905d66af6e1d81.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant2fd4ae76ff9acfbbce6ab945df34725c8536316423fd0df81d905d66af6e1d81.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.FiniteFourthCumulant` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Partition.Finpartition` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [DirectionPartition](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant2fd4ae76ff9acfbbce6ab945df34725c8536316423fd0df81d905d66af6e1d81.lean/declarations/directionpartition--8c7a2273010139485eb3f180.md) | 30 | `declaration-track:8c7a2273010139485eb3f1801ca1b7acffcf50d6ad61d45a5e40d8e2f017f79c` |
| 2 | `def` | [oneBlockPartition](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant2fd4ae76ff9acfbbce6ab945df34725c8536316423fd0df81d905d66af6e1d81.lean/declarations/oneblockpartition--e3be4bad3aebeeff1a992a53.md) | 38 | `declaration-track:e3be4bad3aebeeff1a992a53b9d09315097bd2661c23bb6ef008250c31cab958` |
| 3 | `theorem` | [oneBlockPartition_parts](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant2fd4ae76ff9acfbbce6ab945df34725c8536316423fd0df81d905d66af6e1d81.lean/declarations/oneblockpartition-parts--961c9888a90bd2751182003c.md) | 43 | `result-track:961c9888a90bd2751182003c23191cc3aca068bcda3ac3d7e6c6b6b73d2120a4` |
| 4 | `def` | [partitionWeight](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant2fd4ae76ff9acfbbce6ab945df34725c8536316423fd0df81d905d66af6e1d81.lean/declarations/partitionweight--1ce1f2915834148e497b62c3.md) | 51 | `declaration-track:1ce1f2915834148e497b62c33928b01bd6a26285f44b6d68e0217f7143f39fc3` |
| 5 | `def` | [partitionMoment](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant2fd4ae76ff9acfbbce6ab945df34725c8536316423fd0df81d905d66af6e1d81.lean/declarations/partitionmoment--668775c7a373bbf642807118.md) | 59 | `declaration-track:668775c7a373bbf64280711886dd5b719a53f026dc1dd2be8c423d8019f93078` |
| 6 | `def` | [properPartitions](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant2fd4ae76ff9acfbbce6ab945df34725c8536316423fd0df81d905d66af6e1d81.lean/declarations/properpartitions--88e60f4667bef95c58b1cd0b.md) | 65 | `declaration-track:88e60f4667bef95c58b1cd0b4b252c5290c6bb4128e0c6dcc082396634fbc62c` |
| 7 | `def` | [properPartitionContribution](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant2fd4ae76ff9acfbbce6ab945df34725c8536316423fd0df81d905d66af6e1d81.lean/declarations/properpartitioncontribution--bf7d0f5e9cc5d45ff049ed36.md) | 71 | `declaration-track:bf7d0f5e9cc5d45ff049ed366386330b2f705164d238e6a48632067b544817d2` |
| 8 | `theorem` | [partitionWeight_oneBlock](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant2fd4ae76ff9acfbbce6ab945df34725c8536316423fd0df81d905d66af6e1d81.lean/declarations/partitionweight-oneblock--22d4328a4840644eafd1e77e.md) | 77 | `result-track:22d4328a4840644eafd1e77e2693ab8f38a49d17f6f97b4a4ff075d95838e291` |
| 9 | `theorem` | [partitionMoment_eq_oneBlock_add_proper](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant2fd4ae76ff9acfbbce6ab945df34725c8536316423fd0df81d905d66af6e1d81.lean/declarations/partitionmoment-eq-oneblock-add-proper--7c6041a8d983cc376b07d1cf.md) | 86 | `result-track:7c6041a8d983cc376b07d1cf3eb2cea3034dbf6df111e2eb77347cf4673e2477` |
| 10 | `theorem` | [univ_not_mem_of_mem_properPartitions](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant2fd4ae76ff9acfbbce6ab945df34725c8536316423fd0df81d905d66af6e1d81.lean/declarations/univ-not-mem-of-mem-properpartitions--27d624733d4c379a86dc9bdb.md) | 118 | `result-track:27d624733d4c379a86dc9bdb2804dbd3960da4a633495b059bcaa7aefe71c002` |
| 11 | `theorem` | [partitionWeight_congr_of_proper](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant2fd4ae76ff9acfbbce6ab945df34725c8536316423fd0df81d905d66af6e1d81.lean/declarations/partitionweight-congr-of-proper--911c151da0a524e8819a7382.md) | 138 | `result-track:911c151da0a524e8819a7382236d7926b40199b1694d226f63bcfbb059f0cda5` |
| 12 | `theorem` | [properPartitionContribution_congr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant2fd4ae76ff9acfbbce6ab945df34725c8536316423fd0df81d905d66af6e1d81.lean/declarations/properpartitioncontribution-congr--46d1f591548830c301a12c3a.md) | 157 | `result-track:46d1f591548830c301a12c3a7ad27639445e396c1bca3d7cefec2d0e3a8efdb9` |
| 13 | `def` | [withOneBlockValue](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant2fd4ae76ff9acfbbce6ab945df34725c8536316423fd0df81d905d66af6e1d81.lean/declarations/withoneblockvalue--a9fbbbaa4ec62dce0005cd3b.md) | 172 | `declaration-track:a9fbbbaa4ec62dce0005cd3bfa412c3c60be541247baf31c6963436928d46f26` |
| 14 | `theorem` | [withOneBlockValue_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant2fd4ae76ff9acfbbce6ab945df34725c8536316423fd0df81d905d66af6e1d81.lean/declarations/withoneblockvalue-univ--19774fafae215618ab508e40.md) | 181 | `result-track:19774fafae215618ab508e404e025b282ab7ef80d200d9552eb18daa5c9aee9c` |
| 15 | `theorem` | [withOneBlockValue_of_ne_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant2fd4ae76ff9acfbbce6ab945df34725c8536316423fd0df81d905d66af6e1d81.lean/declarations/withoneblockvalue-of-ne-univ--250bdc3b9eb01f5c35c5d8ba.md) | 189 | `result-track:250bdc3b9eb01f5c35c5d8ba083c905b1fc1dba934d386bcd1e964986f60e92b` |
| 16 | `theorem` | [properPartitionContribution_withOneBlockValue](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant2fd4ae76ff9acfbbce6ab945df34725c8536316423fd0df81d905d66af6e1d81.lean/declarations/properpartitioncontribution-withoneblockvalue--bff27c3fcbb660025d6422e3.md) | 199 | `result-track:bff27c3fcbb660025d6422e39a99e437b678328258c14412a7f11d1fe435f305` |
| 17 | `def` | [isolatedOneBlockCumulant](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant2fd4ae76ff9acfbbce6ab945df34725c8536316423fd0df81d905d66af6e1d81.lean/declarations/isolatedoneblockcumulant--c2aa4c2665b9b186d221446c.md) | 212 | `declaration-track:c2aa4c2665b9b186d221446c620c4ed63c26166d7b938e274688e329a69945a7` |
| 18 | `theorem` | [partitionMoment_eq_iff_oneBlock_eq_isolated](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant2fd4ae76ff9acfbbce6ab945df34725c8536316423fd0df81d905d66af6e1d81.lean/declarations/partitionmoment-eq-iff-oneblock-eq-isolated--4c276aa15cc4aaefc55e1034.md) | 219 | `result-track:4c276aa15cc4aaefc55e103456c1c7abaad2e05a836391d05b0aa9996958fd96` |
| 19 | `def` | [SatisfiesMomentCumulantRelation](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant2fd4ae76ff9acfbbce6ab945df34725c8536316423fd0df81d905d66af6e1d81.lean/declarations/satisfiesmomentcumulantrelation--424a61a3b09b19bb45816924.md) | 235 | `declaration-track:424a61a3b09b19bb458169240d384b3aeb7a728283d61661b4c0bb7d00eae829` |
| 20 | `theorem` | [satisfies_iff_recursive_isolation](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant2fd4ae76ff9acfbbce6ab945df34725c8536316423fd0df81d905d66af6e1d81.lean/declarations/satisfies-iff-recursive-isolation--cbe9e810f0533f60fe29bb7d.md) | 243 | `result-track:cbe9e810f0533f60fe29bb7dc135c93c22563d49b9a8f556d45489f0e1df8689` |
| 21 | `def` | [recursiveCumulantUpdate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant2fd4ae76ff9acfbbce6ab945df34725c8536316423fd0df81d905d66af6e1d81.lean/declarations/recursivecumulantupdate--e75de2b8a9e409b221558003.md) | 253 | `declaration-track:e75de2b8a9e409b221558003df2c2d15bcfcfd9238f4fcc73f17f395ae7e9ad4` |
| 22 | `theorem` | [recursiveCumulantUpdate_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant2fd4ae76ff9acfbbce6ab945df34725c8536316423fd0df81d905d66af6e1d81.lean/declarations/recursivecumulantupdate-univ--934f8a656c94b8e6820035f4.md) | 262 | `result-track:934f8a656c94b8e6820035f400f859730526a4dd5085593424675610f9c7b9e7` |
| 23 | `theorem` | [properPartitionContribution_recursiveCumulantUpdate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant2fd4ae76ff9acfbbce6ab945df34725c8536316423fd0df81d905d66af6e1d81.lean/declarations/properpartitioncontribution-recursivecumulantupdate--7d7f0bcc007376bdddf32102.md) | 273 | `result-track:7d7f0bcc007376bdddf32102143ec5b43842e2b099d3e133fed511da715f0f8e` |
| 24 | `theorem` | [recursiveCumulantUpdate_satisfies](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant2fd4ae76ff9acfbbce6ab945df34725c8536316423fd0df81d905d66af6e1d81.lean/declarations/recursivecumulantupdate-satisfies--b4f18d4f30e989da97db2501.md) | 284 | `result-track:b4f18d4f30e989da97db25011a857297aafcfed19beb77a8fa8df968400e9534` |
| 25 | `theorem` | [satisfies_of_oneBlock_and_properContribution](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant2fd4ae76ff9acfbbce6ab945df34725c8536316423fd0df81d905d66af6e1d81.lean/declarations/satisfies-of-oneblock-and-propercontribution--f8c390cc760de3a5aa2a1568.md) | 297 | `result-track:f8c390cc760de3a5aa2a156828cc52f8b99543d88cb73cec056339828ca8953a` |
| 26 | `theorem` | [oneBlock_unique](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant2fd4ae76ff9acfbbce6ab945df34725c8536316423fd0df81d905d66af6e1d81.lean/declarations/oneblock-unique--535861d6300001ca03d635b6.md) | 309 | `result-track:535861d6300001ca03d635b6bee2ff79d417236a597f62dd3a5bd44969bca342` |
| 27 | `theorem` | [generatedMoment_reconstruction](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant2fd4ae76ff9acfbbce6ab945df34725c8536316423fd0df81d905d66af6e1d81.lean/declarations/generatedmoment-reconstruction--d3f5d656bb9f991b6f164ec4.md) | 326 | `result-track:d3f5d656bb9f991b6f164ec4f1fd0eb4ad6205f7ed6d1fac6a323730301b25a3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
