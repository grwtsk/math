# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.MomentCumulantPartitions.Variant2c190e1b376f2f4058a36566aef1720e4c45f1e19de29957613c3670808aeb59

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1ea5a8e524e0066a07ed90ee91eae18e245b89f9",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant2c190e1b376f2f4058a36566aef1720e4c45f1e19de29957613c3670808aeb59.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant2c190e1b376f2f4058a36566aef1720e4c45f1e19de29957613c3670808aeb59.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant2c190e1b376f2f4058a36566aef1720e4c45f1e19de29957613c3670808aeb59.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1ea5a8e524e0066a07ed90ee91eae18e245b89f9`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant2c190e1b376f2f4058a36566aef1720e4c45f1e19de29957613c3670808aeb59.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant2c190e1b376f2f4058a36566aef1720e4c45f1e19de29957613c3670808aeb59.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.FiniteFourthCumulant` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Partition.Finpartition` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [DirectionPartition](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant2c190e1b376f2f4058a36566aef1720e4c45f1e19de29957613c3670808aeb59.lean/declarations/directionpartition--4de1e82d4950157a25d07403.md) | 38 | `declaration-track:4de1e82d4950157a25d07403a7d9c75c97d3ff140d83f7e855e625fe8622a4b1` |
| 2 | `def` | [oneBlockPartition](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant2c190e1b376f2f4058a36566aef1720e4c45f1e19de29957613c3670808aeb59.lean/declarations/oneblockpartition--6877a9f753dd367c906b7b17.md) | 46 | `declaration-track:6877a9f753dd367c906b7b178e8cb7499afe477e56a648635151ab7dd39e06d2` |
| 3 | `theorem` | [oneBlockPartition_parts](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant2c190e1b376f2f4058a36566aef1720e4c45f1e19de29957613c3670808aeb59.lean/declarations/oneblockpartition-parts--8a4743aca362314e054ef609.md) | 51 | `result-track:8a4743aca362314e054ef609aecf9b9b15e5060ce40c0be68a7f02eda9f7a90d` |
| 4 | `def` | [partitionWeight](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant2c190e1b376f2f4058a36566aef1720e4c45f1e19de29957613c3670808aeb59.lean/declarations/partitionweight--c9222eca00b9a9519997a30d.md) | 59 | `declaration-track:c9222eca00b9a9519997a30d164d8654fad1a6abd6d7ce7110b0a3954be34e29` |
| 5 | `def` | [partitionMoment](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant2c190e1b376f2f4058a36566aef1720e4c45f1e19de29957613c3670808aeb59.lean/declarations/partitionmoment--a6cc22326fd7a3b901d0d98f.md) | 67 | `declaration-track:a6cc22326fd7a3b901d0d98f74c96baf2757c60676497db7ff058328dee19ff2` |
| 6 | `def` | [properPartitions](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant2c190e1b376f2f4058a36566aef1720e4c45f1e19de29957613c3670808aeb59.lean/declarations/properpartitions--d78e58699a05147cca257698.md) | 73 | `declaration-track:d78e58699a05147cca257698446de3da0883868df781d973bbd9a387327417e6` |
| 7 | `def` | [properPartitionContribution](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant2c190e1b376f2f4058a36566aef1720e4c45f1e19de29957613c3670808aeb59.lean/declarations/properpartitioncontribution--e1927330bda41c8445b9661a.md) | 79 | `declaration-track:e1927330bda41c8445b9661a5f307d80f2f03f0e746872f8bb4bbf78e3e04d12` |
| 8 | `theorem` | [partitionWeight_oneBlock](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant2c190e1b376f2f4058a36566aef1720e4c45f1e19de29957613c3670808aeb59.lean/declarations/partitionweight-oneblock--037982e1257efa655a925035.md) | 85 | `result-track:037982e1257efa655a92503513fa6fcb7dc549ac9001d1ee3a5ef4bc2d98961c` |
| 9 | `theorem` | [partitionMoment_eq_oneBlock_add_proper](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant2c190e1b376f2f4058a36566aef1720e4c45f1e19de29957613c3670808aeb59.lean/declarations/partitionmoment-eq-oneblock-add-proper--d52d09a7816d88c6f1ea1bec.md) | 94 | `result-track:d52d09a7816d88c6f1ea1bece83ccd9a97490cbccabebf92c0fe3b5a9a35640d` |
| 10 | `theorem` | [univ_not_mem_of_mem_properPartitions](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant2c190e1b376f2f4058a36566aef1720e4c45f1e19de29957613c3670808aeb59.lean/declarations/univ-not-mem-of-mem-properpartitions--632aade0dfbb00ae5cedd306.md) | 126 | `result-track:632aade0dfbb00ae5cedd3060e1c1d00a3fdeb6fcabf23266feacbbce1809475` |
| 11 | `theorem` | [partitionWeight_congr_of_proper](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant2c190e1b376f2f4058a36566aef1720e4c45f1e19de29957613c3670808aeb59.lean/declarations/partitionweight-congr-of-proper--1728b11e11658a2a4e5a831d.md) | 146 | `result-track:1728b11e11658a2a4e5a831d90b9d933bd09cd7e3d9babb41b6f702bd6baea76` |
| 12 | `theorem` | [properPartitionContribution_congr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant2c190e1b376f2f4058a36566aef1720e4c45f1e19de29957613c3670808aeb59.lean/declarations/properpartitioncontribution-congr--8fc768c1123cb1da071b60fc.md) | 165 | `result-track:8fc768c1123cb1da071b60fc47b39ce4aa297084778592218935491a2d18fec8` |
| 13 | `def` | [withOneBlockValue](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant2c190e1b376f2f4058a36566aef1720e4c45f1e19de29957613c3670808aeb59.lean/declarations/withoneblockvalue--364b00ccc2004bfc93e12279.md) | 180 | `declaration-track:364b00ccc2004bfc93e12279f0782e672212d221735c651644bf274dbfb588ae` |
| 14 | `theorem` | [withOneBlockValue_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant2c190e1b376f2f4058a36566aef1720e4c45f1e19de29957613c3670808aeb59.lean/declarations/withoneblockvalue-univ--e1a41e509b6894f3641772aa.md) | 190 | `result-track:e1a41e509b6894f3641772aa9baddfddaae6d4e85be3f193784deb9b9ac13348` |
| 15 | `theorem` | [withOneBlockValue_of_ne_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant2c190e1b376f2f4058a36566aef1720e4c45f1e19de29957613c3670808aeb59.lean/declarations/withoneblockvalue-of-ne-univ--2004ea9efae3cacaf81ebefe.md) | 199 | `result-track:2004ea9efae3cacaf81ebefeb054f5b9980483e4872b8534214f717d43d14322` |
| 16 | `theorem` | [properPartitionContribution_withOneBlockValue](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant2c190e1b376f2f4058a36566aef1720e4c45f1e19de29957613c3670808aeb59.lean/declarations/properpartitioncontribution-withoneblockvalue--f362dfb0722f413e2d4fd934.md) | 209 | `result-track:f362dfb0722f413e2d4fd93460cfe802fd209c8961bdc02491bd4012ee1030f1` |
| 17 | `def` | [isolatedOneBlockCumulant](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant2c190e1b376f2f4058a36566aef1720e4c45f1e19de29957613c3670808aeb59.lean/declarations/isolatedoneblockcumulant--9d1addd8f4c5df24dc05de1d.md) | 222 | `declaration-track:9d1addd8f4c5df24dc05de1df50de866374a12259a4afdb7ca3322005a9f01bc` |
| 18 | `theorem` | [partitionMoment_eq_iff_oneBlock_eq_isolated](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant2c190e1b376f2f4058a36566aef1720e4c45f1e19de29957613c3670808aeb59.lean/declarations/partitionmoment-eq-iff-oneblock-eq-isolated--2c0d07a9022a17ef321567ae.md) | 229 | `result-track:2c0d07a9022a17ef321567ae8f721c3f408e497bb921ec8615f748f930d0fa95` |
| 19 | `def` | [SatisfiesMomentCumulantRelation](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant2c190e1b376f2f4058a36566aef1720e4c45f1e19de29957613c3670808aeb59.lean/declarations/satisfiesmomentcumulantrelation--d23991e2f7a8b6152c6ce00b.md) | 245 | `declaration-track:d23991e2f7a8b6152c6ce00b60a48e3c69221a296b542ded53269efe57b612d3` |
| 20 | `theorem` | [satisfies_iff_recursive_isolation](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant2c190e1b376f2f4058a36566aef1720e4c45f1e19de29957613c3670808aeb59.lean/declarations/satisfies-iff-recursive-isolation--786c3fccc695208052625317.md) | 253 | `result-track:786c3fccc6952080526253176d34a0e2abd9bb36e1b942d7c33f8f2e7a95ceea` |
| 21 | `def` | [recursiveCumulantUpdate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant2c190e1b376f2f4058a36566aef1720e4c45f1e19de29957613c3670808aeb59.lean/declarations/recursivecumulantupdate--30683eb1188f929680d808c0.md) | 263 | `declaration-track:30683eb1188f929680d808c083c9d6d6dfc4cc644b5a78cfccfd6ea54b2b7708` |
| 22 | `theorem` | [recursiveCumulantUpdate_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant2c190e1b376f2f4058a36566aef1720e4c45f1e19de29957613c3670808aeb59.lean/declarations/recursivecumulantupdate-univ--0e16f10a02599afd4c885c06.md) | 272 | `result-track:0e16f10a02599afd4c885c06989300120686b4e329b1a1a63ef14c323bd9df64` |
| 23 | `theorem` | [properPartitionContribution_recursiveCumulantUpdate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant2c190e1b376f2f4058a36566aef1720e4c45f1e19de29957613c3670808aeb59.lean/declarations/properpartitioncontribution-recursivecumulantupdate--89a0ac6350cf894b52c3b7a5.md) | 283 | `result-track:89a0ac6350cf894b52c3b7a59f2d73bc0768c09e87ac12a7a5b134cc18e88083` |
| 24 | `theorem` | [recursiveCumulantUpdate_satisfies](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant2c190e1b376f2f4058a36566aef1720e4c45f1e19de29957613c3670808aeb59.lean/declarations/recursivecumulantupdate-satisfies--ca6116416740df9b17bf9d72.md) | 294 | `result-track:ca6116416740df9b17bf9d729291048102e109529861f37d9d2de096c720a9af` |
| 25 | `theorem` | [satisfies_of_oneBlock_and_properContribution](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant2c190e1b376f2f4058a36566aef1720e4c45f1e19de29957613c3670808aeb59.lean/declarations/satisfies-of-oneblock-and-propercontribution--1baaa7a5b20c8cf58f217a3f.md) | 307 | `result-track:1baaa7a5b20c8cf58f217a3f7e3af952745c8821ba49201c43187f35ff40fa10` |
| 26 | `theorem` | [oneBlock_unique](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant2c190e1b376f2f4058a36566aef1720e4c45f1e19de29957613c3670808aeb59.lean/declarations/oneblock-unique--8423bfe0d5140f89b53bafa1.md) | 319 | `result-track:8423bfe0d5140f89b53bafa13c70e4c845b9667e982e6ea5e5b3b98d15b68191` |
| 27 | `theorem` | [generatedMoment_reconstruction](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant2c190e1b376f2f4058a36566aef1720e4c45f1e19de29957613c3670808aeb59.lean/declarations/generatedmoment-reconstruction--321c0f46221f6402519261f3.md) | 336 | `result-track:321c0f46221f6402519261f3be1b292bdbfc8af0f964bc0fd36724331494eed3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
