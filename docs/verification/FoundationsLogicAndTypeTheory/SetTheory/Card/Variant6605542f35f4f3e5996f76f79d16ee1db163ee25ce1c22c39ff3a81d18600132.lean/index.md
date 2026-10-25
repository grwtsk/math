# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Card.Variant6605542f35f4f3e5996f76f79d16ee1db163ee25ce1c22c39ff3a81d18600132

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5c0cfc018ade57f92b41f98eb28f508d0d353f20",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Card/Variant6605542f35f4f3e5996f76f79d16ee1db163ee25ce1c22c39ff3a81d18600132.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Card/Variant6605542f35f4f3e5996f76f79d16ee1db163ee25ce1c22c39ff3a81d18600132.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Card/Variant6605542f35f4f3e5996f76f79d16ee1db163ee25ce1c22c39ff3a81d18600132.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5c0cfc018ade57f92b41f98eb28f508d0d353f20`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Card/Variant6605542f35f4f3e5996f76f79d16ee1db163ee25ce1c22c39ff3a81d18600132.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/Card/Variant6605542f35f4f3e5996f76f79d16ee1db163ee25ce1c22c39ff3a81d18600132.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.MeasurableSpace.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.Regular` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.Continuum` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.Ordinal` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [generateMeasurableRec](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Card/Variant6605542f35f4f3e5996f76f79d16ee1db163ee25ce1c22c39ff3a81d18600132.lean/declarations/generatemeasurablerec--933105ee189b6d958c4c01fb.md) | 53 | `declaration-track:933105ee189b6d958c4c01fb2a42046ed1c7e1e742401580f513bbb6012207f8` |
| 2 | `theorem` | [self_subset_generateMeasurableRec](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Card/Variant6605542f35f4f3e5996f76f79d16ee1db163ee25ce1c22c39ff3a81d18600132.lean/declarations/self-subset-generatemeasurablerec--ef7f304995f0522606ac235b.md) | 58 | `result-track:ef7f304995f0522606ac235b56fe6f4e341cd1f32606271e8cfd5e49af82c6b3` |
| 3 | `theorem` | [empty_mem_generateMeasurableRec](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Card/Variant6605542f35f4f3e5996f76f79d16ee1db163ee25ce1c22c39ff3a81d18600132.lean/declarations/empty-mem-generatemeasurablerec--8e07c9b2c07fcb29c39f472c.md) | 64 | `result-track:8e07c9b2c07fcb29c39f472cfe54e046e8f9d00635eb8a36ca7eb9fe87fa1617` |
| 4 | `theorem` | [compl_mem_generateMeasurableRec](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Card/Variant6605542f35f4f3e5996f76f79d16ee1db163ee25ce1c22c39ff3a81d18600132.lean/declarations/compl-mem-generatemeasurablerec--7f53f129ed280f814f751483.md) | 69 | `result-track:7f53f129ed280f814f75148317c8a56373fa1662fab1205df5a611df6e5337ca` |
| 5 | `theorem` | [iUnion_mem_generateMeasurableRec](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Card/Variant6605542f35f4f3e5996f76f79d16ee1db163ee25ce1c22c39ff3a81d18600132.lean/declarations/iunion-mem-generatemeasurablerec--4870894ceaed164cc1e4d7dd.md) | 74 | `result-track:4870894ceaed164cc1e4d7dd045165f044eb1979c29bed59498b7ad23a7d972c` |
| 6 | `theorem` | [generateMeasurableRec_mono](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Card/Variant6605542f35f4f3e5996f76f79d16ee1db163ee25ce1c22c39ff3a81d18600132.lean/declarations/generatemeasurablerec-mono--81a7dc0436c725faf148ecd6.md) | 80 | `result-track:81a7dc0436c725faf148ecd6a9c30f6ff2e344f17789848618b33f693a84631a` |
| 7 | `theorem` | [generateMeasurableRec_induction](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Card/Variant6605542f35f4f3e5996f76f79d16ee1db163ee25ce1c22c39ff3a81d18600132.lean/declarations/generatemeasurablerec-induction--0b14ffafbd6e4b4e3da50480.md) | 89 | `result-track:0b14ffafbd6e4b4e3da5048045144f6d2f2120edde2a466a1f9a9a9540bf20e0` |
| 8 | `theorem` | [generateMeasurableRec_omega1](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Card/Variant6605542f35f4f3e5996f76f79d16ee1db163ee25ce1c22c39ff3a81d18600132.lean/declarations/generatemeasurablerec-omega1--2337ac31c64b24733664ea11.md) | 112 | `result-track:2337ac31c64b24733664ea11113b87f0faf850e0e54a90d544f88f7b2d740d33` |
| 9 | `theorem` | [generateMeasurableRec_subset](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Card/Variant6605542f35f4f3e5996f76f79d16ee1db163ee25ce1c22c39ff3a81d18600132.lean/declarations/generatemeasurablerec-subset--2b4aa53d68da9f631360efde.md) | 133 | `result-track:2b4aa53d68da9f631360efde8f3c85cc456f2d6776b50d535165f243260bc06c` |
| 10 | `theorem` | [generateMeasurable_eq_rec](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Card/Variant6605542f35f4f3e5996f76f79d16ee1db163ee25ce1c22c39ff3a81d18600132.lean/declarations/generatemeasurable-eq-rec--c08da8871adb35af270b7833.md) | 140 | `result-track:c08da8871adb35af270b7833733bfbc851b9cbfcaeadea74e2a358f32a5b4c9e` |
| 11 | `theorem` | [generateMeasurableRec_of_omega1_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Card/Variant6605542f35f4f3e5996f76f79d16ee1db163ee25ce1c22c39ff3a81d18600132.lean/declarations/generatemeasurablerec-of-omega1-le--513a515d1c44673427fedd01.md) | 157 | `result-track:513a515d1c44673427fedd01735918d2493b25c6050c7a6a4ca704a6e65d5131` |
| 12 | `theorem` | [cardinal_generateMeasurableRec_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Card/Variant6605542f35f4f3e5996f76f79d16ee1db163ee25ce1c22c39ff3a81d18600132.lean/declarations/cardinal-generatemeasurablerec-le--3f478808cad76d9ceb92399f.md) | 164 | `result-track:3f478808cad76d9ceb92399f5a4323a40da8ee092959a566b81e61ef9a215ffb` |
| 13 | `theorem` | [cardinal_generateMeasurable_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Card/Variant6605542f35f4f3e5996f76f79d16ee1db163ee25ce1c22c39ff3a81d18600132.lean/declarations/cardinal-generatemeasurable-le--7d43f249dd24b2624335a0b4.md) | 200 | `result-track:7d43f249dd24b2624335a0b4468b366553ce6b6eb4bb4790e4e924d1312e793d` |
| 14 | `theorem` | [cardinal_measurableSet_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Card/Variant6605542f35f4f3e5996f76f79d16ee1db163ee25ce1c22c39ff3a81d18600132.lean/declarations/cardinal-measurableset-le--1212655473a9dfcba77b29ec.md) | 207 | `result-track:1212655473a9dfcba77b29ecb6e2a671185ede910570619b5dbbe35962376636` |
| 15 | `theorem` | [cardinal_generateMeasurable_le_continuum](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Card/Variant6605542f35f4f3e5996f76f79d16ee1db163ee25ce1c22c39ff3a81d18600132.lean/declarations/cardinal-generatemeasurable-le-continuum--6f4964242a3462bb9e4ab270.md) | 213 | `result-track:6f4964242a3462bb9e4ab27001a6f26d471272368c0ed717792c2a987af62ac2` |
| 16 | `theorem` | [cardinal_measurableSet_le_continuum](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Card/Variant6605542f35f4f3e5996f76f79d16ee1db163ee25ce1c22c39ff3a81d18600132.lean/declarations/cardinal-measurableset-le-continuum--924e83bd07804cd1f2d34111.md) | 221 | `result-track:924e83bd07804cd1f2d34111bafb7edbb94cd8c32697f296edac8dd23e8bfd54` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
