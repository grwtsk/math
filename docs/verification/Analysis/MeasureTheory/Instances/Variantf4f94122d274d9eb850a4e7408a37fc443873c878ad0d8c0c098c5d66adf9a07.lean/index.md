# Verification target: GRWTSK.Analysis.MeasureTheory.Instances.Variantf4f94122d274d9eb850a4e7408a37fc443873c878ad0d8c0c098c5d66adf9a07

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "45f4a5ba0c0557ea71a71e3f3ee2b8cc189779d1",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Instances/Variantf4f94122d274d9eb850a4e7408a37fc443873c878ad0d8c0c098c5d66adf9a07.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Instances/Variantf4f94122d274d9eb850a4e7408a37fc443873c878ad0d8c0c098c5d66adf9a07.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Instances/Variantf4f94122d274d9eb850a4e7408a37fc443873c878ad0d8c0c098c5d66adf9a07.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `45f4a5ba0c0557ea71a71e3f3ee2b8cc189779d1`.

Source path: `GRWTSK/Analysis/MeasureTheory/Instances/Variantf4f94122d274d9eb850a4e7408a37fc443873c878ad0d8c0c098c5d66adf9a07.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Instances/Variantf4f94122d274d9eb850a4e7408a37fc443873c878ad0d8c0c098c5d66adf9a07.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.MeasurableSpace.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.IterateAct` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rat.Init` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Defs` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [Empty.instMeasurableSpace](../../../../../mathematics/Analysis/MeasureTheory/Instances/Variantf4f94122d274d9eb850a4e7408a37fc443873c878ad0d8c0c098c5d66adf9a07.lean/declarations/empty-instmeasurablespace--6bcd828c0b3cd577d7a73dbd.md) | 26 | `declaration-track:6bcd828c0b3cd577d7a73dbd98efc02c710fe6467797089e9957fa0b4267b168` |
| 2 | `instance` | [PUnit.instMeasurableSpace](../../../../../mathematics/Analysis/MeasureTheory/Instances/Variantf4f94122d274d9eb850a4e7408a37fc443873c878ad0d8c0c098c5d66adf9a07.lean/declarations/punit-instmeasurablespace--87f8dc02753c85fc22013c3c.md) | 28 | `declaration-track:87f8dc02753c85fc22013c3c65e06bc1160358ca919e83143f0b0b81140bd796` |
| 3 | `instance` | [Bool.instMeasurableSpace](../../../../../mathematics/Analysis/MeasureTheory/Instances/Variantf4f94122d274d9eb850a4e7408a37fc443873c878ad0d8c0c098c5d66adf9a07.lean/declarations/bool-instmeasurablespace--d074f0c7c26196497c786479.md) | 30 | `declaration-track:d074f0c7c26196497c7864795fc329c238241a52ebc777c16180a20afda00e77` |
| 4 | `instance` | [Prop.instMeasurableSpace](../../../../../mathematics/Analysis/MeasureTheory/Instances/Variantf4f94122d274d9eb850a4e7408a37fc443873c878ad0d8c0c098c5d66adf9a07.lean/declarations/prop-instmeasurablespace--11c44e3f332f5530bbe1515e.md) | 32 | `declaration-track:11c44e3f332f5530bbe1515eddccf3f1bf8a28cd65da7d37337e9131aca3467d` |
| 5 | `instance` | [Nat.instMeasurableSpace](../../../../../mathematics/Analysis/MeasureTheory/Instances/Variantf4f94122d274d9eb850a4e7408a37fc443873c878ad0d8c0c098c5d66adf9a07.lean/declarations/nat-instmeasurablespace--211b8ec1075322047727e3a2.md) | 34 | `declaration-track:211b8ec1075322047727e3a2996883bd1f7bfee08fe502fb3eb9af0b37a9f9e5` |
| 6 | `instance` | [ENat.instMeasurableSpace](../../../../../mathematics/Analysis/MeasureTheory/Instances/Variantf4f94122d274d9eb850a4e7408a37fc443873c878ad0d8c0c098c5d66adf9a07.lean/declarations/enat-instmeasurablespace--ea9e8b280b9bcf2a24239800.md) | 36 | `declaration-track:ea9e8b280b9bcf2a24239800da8aa1001b8c7901f61fbd4f43746c41d55af158` |
| 7 | `instance` | [Fin.instMeasurableSpace](../../../../../mathematics/Analysis/MeasureTheory/Instances/Variantf4f94122d274d9eb850a4e7408a37fc443873c878ad0d8c0c098c5d66adf9a07.lean/declarations/fin-instmeasurablespace--12eb18162a37fad66174ef5a.md) | 38 | `declaration-track:12eb18162a37fad66174ef5ae1e6a6599406d13fabd8ad14b09c60badbc00f3d` |
| 8 | `instance` | [ZMod.instMeasurableSpace](../../../../../mathematics/Analysis/MeasureTheory/Instances/Variantf4f94122d274d9eb850a4e7408a37fc443873c878ad0d8c0c098c5d66adf9a07.lean/declarations/zmod-instmeasurablespace--56551c016dea47be59d54438.md) | 40 | `declaration-track:56551c016dea47be59d54438ac7886c9a3c9f94133d993429e97d96d16125e11` |
| 9 | `instance` | [Int.instMeasurableSpace](../../../../../mathematics/Analysis/MeasureTheory/Instances/Variantf4f94122d274d9eb850a4e7408a37fc443873c878ad0d8c0c098c5d66adf9a07.lean/declarations/int-instmeasurablespace--c5987e44fcb75a4242855352.md) | 42 | `declaration-track:c5987e44fcb75a42428553520d76a5df37b42b3e1e2d02733e23f51ed3d80cb0` |
| 10 | `instance` | [Rat.instMeasurableSpace](../../../../../mathematics/Analysis/MeasureTheory/Instances/Variantf4f94122d274d9eb850a4e7408a37fc443873c878ad0d8c0c098c5d66adf9a07.lean/declarations/rat-instmeasurablespace--599cab57b7e647b52528a5da.md) | 44 | `declaration-track:599cab57b7e647b52528a5dad901ff24142fdd4807c6a8eed3fb5f88c88022c1` |
| 11 | `instance` | [IterateMulAct.instMeasurableSpace](../../../../../mathematics/Analysis/MeasureTheory/Instances/Variantf4f94122d274d9eb850a4e7408a37fc443873c878ad0d8c0c098c5d66adf9a07.lean/declarations/iteratemulact-instmeasurablespace--190c42a6fe1223d64725a0ff.md) | 47 | `declaration-track:190c42a6fe1223d64725a0ff920a046c48d8188b5d1655061020f32afa61bf91` |
| 12 | `instance` | [IterateMulAct.instDiscreteMeasurableSpace](../../../../../mathematics/Analysis/MeasureTheory/Instances/Variantf4f94122d274d9eb850a4e7408a37fc443873c878ad0d8c0c098c5d66adf9a07.lean/declarations/iteratemulact-instdiscretemeasurablespace--2af9f0557ea383017d0ffa5c.md) | 51 | `declaration-track:2af9f0557ea383017d0ffa5c9798b98eb57ef127d72133f1025df043db92fe34` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Instances/Variantf4f94122d274d9eb850a4e7408a37fc443873c878ad0d8c0c098c5d66adf9a07.lean/declarations/instance--d56ddc4101d811d273b22c75.md) | 54 | `declaration-track:d56ddc4101d811d273b22c75b9353683fc2b50c0cc5f10e0b6b11bb2ef9865d0` |
| 14 | `instance` | [Bool.instMeasurableSingletonClass](../../../../../mathematics/Analysis/MeasureTheory/Instances/Variantf4f94122d274d9eb850a4e7408a37fc443873c878ad0d8c0c098c5d66adf9a07.lean/declarations/bool-instmeasurablesingletonclass--a933552b0cbac0be5256990b.md) | 60 | `declaration-track:a933552b0cbac0be5256990beb6253be2453fbd23ad451e7622033050af7a5c5` |
| 15 | `instance` | [Prop.instMeasurableSingletonClass](../../../../../mathematics/Analysis/MeasureTheory/Instances/Variantf4f94122d274d9eb850a4e7408a37fc443873c878ad0d8c0c098c5d66adf9a07.lean/declarations/prop-instmeasurablesingletonclass--d539531b54fb438d7e84469a.md) | 62 | `declaration-track:d539531b54fb438d7e84469af163b3dbc4114a9fb265c67f819f43b209a15699` |
| 16 | `instance` | [Nat.instMeasurableSingletonClass](../../../../../mathematics/Analysis/MeasureTheory/Instances/Variantf4f94122d274d9eb850a4e7408a37fc443873c878ad0d8c0c098c5d66adf9a07.lean/declarations/nat-instmeasurablesingletonclass--e0c3fa030323e83b83fccfdc.md) | 64 | `declaration-track:e0c3fa030323e83b83fccfdcb013018b37481b4011c0407d9e9a8f264df33be3` |
| 17 | `instance` | [ENat.instDiscreteMeasurableSpace](../../../../../mathematics/Analysis/MeasureTheory/Instances/Variantf4f94122d274d9eb850a4e7408a37fc443873c878ad0d8c0c098c5d66adf9a07.lean/declarations/enat-instdiscretemeasurablespace--3ce9b6ea5662b23b508a83e5.md) | 66 | `declaration-track:3ce9b6ea5662b23b508a83e575a416da9ff337bd95b0826a4040ccbb875bcf30` |
| 18 | `instance` | [ENat.instMeasurableSingletonClass](../../../../../mathematics/Analysis/MeasureTheory/Instances/Variantf4f94122d274d9eb850a4e7408a37fc443873c878ad0d8c0c098c5d66adf9a07.lean/declarations/enat-instmeasurablesingletonclass--6ff624d5491c31fa31c3ecb9.md) | 68 | `declaration-track:6ff624d5491c31fa31c3ecb9a0fe34ab59fe06ec1181e6b642d1bdddf49b41ff` |
| 19 | `instance` | [Fin.instMeasurableSingletonClass](../../../../../mathematics/Analysis/MeasureTheory/Instances/Variantf4f94122d274d9eb850a4e7408a37fc443873c878ad0d8c0c098c5d66adf9a07.lean/declarations/fin-instmeasurablesingletonclass--cdffc193aa690c355727df5f.md) | 70 | `declaration-track:cdffc193aa690c355727df5f54de54906ee3fe71bc27535bb4ac152b4ee0df46` |
| 20 | `instance` | [ZMod.instMeasurableSingletonClass](../../../../../mathematics/Analysis/MeasureTheory/Instances/Variantf4f94122d274d9eb850a4e7408a37fc443873c878ad0d8c0c098c5d66adf9a07.lean/declarations/zmod-instmeasurablesingletonclass--7c8123bb51212dd5685701c6.md) | 73 | `declaration-track:7c8123bb51212dd5685701c6e87046a1347c7447a001d494c874ec4011e675cc` |
| 21 | `instance` | [Int.instMeasurableSingletonClass](../../../../../mathematics/Analysis/MeasureTheory/Instances/Variantf4f94122d274d9eb850a4e7408a37fc443873c878ad0d8c0c098c5d66adf9a07.lean/declarations/int-instmeasurablesingletonclass--636a5e89ed9a0f85adaacef2.md) | 76 | `declaration-track:636a5e89ed9a0f85adaacef2b64880500b6829be75b687c9382033bb633b785e` |
| 22 | `instance` | [Rat.instMeasurableSingletonClass](../../../../../mathematics/Analysis/MeasureTheory/Instances/Variantf4f94122d274d9eb850a4e7408a37fc443873c878ad0d8c0c098c5d66adf9a07.lean/declarations/rat-instmeasurablesingletonclass--fc28d14f0be26ed5075f07ab.md) | 78 | `declaration-track:fc28d14f0be26ed5075f07abed924d9d561472fff038ea5c7da3f2281c884a5f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
