# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.MomentCumulantPartitions.Variant9cd7dbc6514f48a10ca4fae0c859d4bd77cb1324d836751b815b7f401e2c6d51

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bd128afe26c3a59834e68889ef7eedc7a3530cc2",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant9cd7dbc6514f48a10ca4fae0c859d4bd77cb1324d836751b815b7f401e2c6d51.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant9cd7dbc6514f48a10ca4fae0c859d4bd77cb1324d836751b815b7f401e2c6d51.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant9cd7dbc6514f48a10ca4fae0c859d4bd77cb1324d836751b815b7f401e2c6d51.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bd128afe26c3a59834e68889ef7eedc7a3530cc2`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant9cd7dbc6514f48a10ca4fae0c859d4bd77cb1324d836751b815b7f401e2c6d51.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant9cd7dbc6514f48a10ca4fae0c859d4bd77cb1324d836751b815b7f401e2c6d51.lean.json)

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
| 1 | `abbrev` | [DirectionPartition](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant9cd7dbc6514f48a10ca4fae0c859d4bd77cb1324d836751b815b7f401e2c6d51.lean/declarations/directionpartition--8d15f934416c1d840ede3ee9.md) | 30 | `declaration-track:8d15f934416c1d840ede3ee99d939d1ae5f95abf637db94a4b2527403bdc61a5` |
| 2 | `def` | [oneBlockPartition](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant9cd7dbc6514f48a10ca4fae0c859d4bd77cb1324d836751b815b7f401e2c6d51.lean/declarations/oneblockpartition--c5f696840c9cd86eaeb0d71d.md) | 38 | `declaration-track:c5f696840c9cd86eaeb0d71d44a1ca075d874f857050edf622f04a1a610029ee` |
| 3 | `theorem` | [oneBlockPartition_parts](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant9cd7dbc6514f48a10ca4fae0c859d4bd77cb1324d836751b815b7f401e2c6d51.lean/declarations/oneblockpartition-parts--6d98c6f6aaf91358bd44bcf6.md) | 43 | `result-track:6d98c6f6aaf91358bd44bcf6fc38c144f2b2e268e6cbe820807f914b4d388722` |
| 4 | `def` | [partitionWeight](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant9cd7dbc6514f48a10ca4fae0c859d4bd77cb1324d836751b815b7f401e2c6d51.lean/declarations/partitionweight--c7ed904bb124eb49399bcab5.md) | 51 | `declaration-track:c7ed904bb124eb49399bcab53a7d794be39cb6febd3850832ce0014763123a71` |
| 5 | `def` | [partitionMoment](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant9cd7dbc6514f48a10ca4fae0c859d4bd77cb1324d836751b815b7f401e2c6d51.lean/declarations/partitionmoment--06ceb7395e74cf9b4c5c3369.md) | 59 | `declaration-track:06ceb7395e74cf9b4c5c336955693705598e8f817eda9bcf2936bf242a4ad85a` |
| 6 | `def` | [properPartitions](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant9cd7dbc6514f48a10ca4fae0c859d4bd77cb1324d836751b815b7f401e2c6d51.lean/declarations/properpartitions--b41bb2c04a66948c6d5e28b6.md) | 65 | `declaration-track:b41bb2c04a66948c6d5e28b6d92a8e5e338c33b70a36db034b0ca694e3dd46f4` |
| 7 | `def` | [properPartitionContribution](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant9cd7dbc6514f48a10ca4fae0c859d4bd77cb1324d836751b815b7f401e2c6d51.lean/declarations/properpartitioncontribution--0a52ba15d5096767ae95bdf7.md) | 71 | `declaration-track:0a52ba15d5096767ae95bdf7f4e2c3987b3db35a5a1d31c4fe4818e5be1f14ca` |
| 8 | `theorem` | [partitionWeight_oneBlock](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant9cd7dbc6514f48a10ca4fae0c859d4bd77cb1324d836751b815b7f401e2c6d51.lean/declarations/partitionweight-oneblock--f6522ea6117e75d77b10fd48.md) | 77 | `result-track:f6522ea6117e75d77b10fd48d3f476eca33bd01193043959ad1ee6463f976a03` |
| 9 | `theorem` | [partitionMoment_eq_oneBlock_add_proper](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant9cd7dbc6514f48a10ca4fae0c859d4bd77cb1324d836751b815b7f401e2c6d51.lean/declarations/partitionmoment-eq-oneblock-add-proper--5a0d0a694f44c7a8ce035c7b.md) | 86 | `result-track:5a0d0a694f44c7a8ce035c7b1dcc1ce685ecf8e361da25e1da6bbf926402dde8` |
| 10 | `theorem` | [univ_not_mem_of_mem_properPartitions](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant9cd7dbc6514f48a10ca4fae0c859d4bd77cb1324d836751b815b7f401e2c6d51.lean/declarations/univ-not-mem-of-mem-properpartitions--158221fe9a31be28f4f510d4.md) | 118 | `result-track:158221fe9a31be28f4f510d47b5d3213f329c0b5558eb48738e4bbf79093207b` |
| 11 | `theorem` | [partitionWeight_congr_of_proper](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant9cd7dbc6514f48a10ca4fae0c859d4bd77cb1324d836751b815b7f401e2c6d51.lean/declarations/partitionweight-congr-of-proper--5e80b890f19a0f6e2135ba26.md) | 138 | `result-track:5e80b890f19a0f6e2135ba26ac1c82e92e27a0d5b3fafe1a796cd0d5fe6ec415` |
| 12 | `theorem` | [properPartitionContribution_congr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant9cd7dbc6514f48a10ca4fae0c859d4bd77cb1324d836751b815b7f401e2c6d51.lean/declarations/properpartitioncontribution-congr--f8389cc8e09445a85c7e33ab.md) | 157 | `result-track:f8389cc8e09445a85c7e33abee809da506bbe1c1b2dd6a94f4993da663c9b4d5` |
| 13 | `def` | [withOneBlockValue](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant9cd7dbc6514f48a10ca4fae0c859d4bd77cb1324d836751b815b7f401e2c6d51.lean/declarations/withoneblockvalue--666bcaf1dfac5ec167db52a0.md) | 172 | `declaration-track:666bcaf1dfac5ec167db52a03a674848b21984af9c5eb99467bb1b595cc7c6bc` |
| 14 | `theorem` | [withOneBlockValue_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant9cd7dbc6514f48a10ca4fae0c859d4bd77cb1324d836751b815b7f401e2c6d51.lean/declarations/withoneblockvalue-univ--b7def976d60e7b57253bab33.md) | 182 | `result-track:b7def976d60e7b57253bab3395675cf8133d3f063fc4deef3bca286e4a30735c` |
| 15 | `theorem` | [withOneBlockValue_of_ne_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant9cd7dbc6514f48a10ca4fae0c859d4bd77cb1324d836751b815b7f401e2c6d51.lean/declarations/withoneblockvalue-of-ne-univ--3eaded1b798e9d7e95be7567.md) | 191 | `result-track:3eaded1b798e9d7e95be7567c705f7b6fc3241296b0458256504feaa9f396f3b` |
| 16 | `theorem` | [properPartitionContribution_withOneBlockValue](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant9cd7dbc6514f48a10ca4fae0c859d4bd77cb1324d836751b815b7f401e2c6d51.lean/declarations/properpartitioncontribution-withoneblockvalue--71c1676ef25514018c1fc49a.md) | 201 | `result-track:71c1676ef25514018c1fc49aac336739eac1ba660b7676add6ad3f5f7b04e879` |
| 17 | `def` | [isolatedOneBlockCumulant](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant9cd7dbc6514f48a10ca4fae0c859d4bd77cb1324d836751b815b7f401e2c6d51.lean/declarations/isolatedoneblockcumulant--de6bbff2c03e1a7e403e5a37.md) | 214 | `declaration-track:de6bbff2c03e1a7e403e5a379153f969afb2298ab78c9ebd22b89c93158620a2` |
| 18 | `theorem` | [partitionMoment_eq_iff_oneBlock_eq_isolated](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant9cd7dbc6514f48a10ca4fae0c859d4bd77cb1324d836751b815b7f401e2c6d51.lean/declarations/partitionmoment-eq-iff-oneblock-eq-isolated--5b2748ce5acb0fb43f20bd2e.md) | 221 | `result-track:5b2748ce5acb0fb43f20bd2ed7f510bb79e1c8ba3b976efccfbdfb20115380ad` |
| 19 | `def` | [SatisfiesMomentCumulantRelation](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant9cd7dbc6514f48a10ca4fae0c859d4bd77cb1324d836751b815b7f401e2c6d51.lean/declarations/satisfiesmomentcumulantrelation--482ffeb72dd7d9db6ad8e391.md) | 237 | `declaration-track:482ffeb72dd7d9db6ad8e391cc34645d8c60e412a9553b815ed426f42891692c` |
| 20 | `theorem` | [satisfies_iff_recursive_isolation](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant9cd7dbc6514f48a10ca4fae0c859d4bd77cb1324d836751b815b7f401e2c6d51.lean/declarations/satisfies-iff-recursive-isolation--96b6759ad3931ed5d002bb3f.md) | 245 | `result-track:96b6759ad3931ed5d002bb3f17c2dda104c1e168183a1e66fa7e8ccd5faac538` |
| 21 | `def` | [recursiveCumulantUpdate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant9cd7dbc6514f48a10ca4fae0c859d4bd77cb1324d836751b815b7f401e2c6d51.lean/declarations/recursivecumulantupdate--33d4bbd3c8b61285095beb21.md) | 255 | `declaration-track:33d4bbd3c8b61285095beb21a47a3c32c531973715fb47a6b006a3e1e6a5f84a` |
| 22 | `theorem` | [recursiveCumulantUpdate_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant9cd7dbc6514f48a10ca4fae0c859d4bd77cb1324d836751b815b7f401e2c6d51.lean/declarations/recursivecumulantupdate-univ--6ae8b61606406227aac4c2f3.md) | 264 | `result-track:6ae8b61606406227aac4c2f37c56b08802fe78bbc9eb117d30e209324c6d72f3` |
| 23 | `theorem` | [properPartitionContribution_recursiveCumulantUpdate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant9cd7dbc6514f48a10ca4fae0c859d4bd77cb1324d836751b815b7f401e2c6d51.lean/declarations/properpartitioncontribution-recursivecumulantupdate--4db90cd66fba186594bd9504.md) | 275 | `result-track:4db90cd66fba186594bd950462da0eae5cf2b85b8d5c4d15c0e0bb7888ce4080` |
| 24 | `theorem` | [recursiveCumulantUpdate_satisfies](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant9cd7dbc6514f48a10ca4fae0c859d4bd77cb1324d836751b815b7f401e2c6d51.lean/declarations/recursivecumulantupdate-satisfies--f3af3ba2059a7e73c7225f23.md) | 286 | `result-track:f3af3ba2059a7e73c7225f239394012ce24cddd9fb7f5a4789718c79713fb5e3` |
| 25 | `theorem` | [satisfies_of_oneBlock_and_properContribution](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant9cd7dbc6514f48a10ca4fae0c859d4bd77cb1324d836751b815b7f401e2c6d51.lean/declarations/satisfies-of-oneblock-and-propercontribution--7bd9723c6782dde49c187199.md) | 299 | `result-track:7bd9723c6782dde49c1871993b4236e61a497bd1ce569bae971ad3d4df03166d` |
| 26 | `theorem` | [oneBlock_unique](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant9cd7dbc6514f48a10ca4fae0c859d4bd77cb1324d836751b815b7f401e2c6d51.lean/declarations/oneblock-unique--a872aa77392c53890b55f6de.md) | 311 | `result-track:a872aa77392c53890b55f6de0083e4ce684da7e488434a52c25577fd63986f9d` |
| 27 | `theorem` | [generatedMoment_reconstruction](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant9cd7dbc6514f48a10ca4fae0c859d4bd77cb1324d836751b815b7f401e2c6d51.lean/declarations/generatedmoment-reconstruction--ee187add69804990a4418172.md) | 328 | `result-track:ee187add69804990a4418172ba7cbc9848efc43d71dd4f9203c00c2bfd498baa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
