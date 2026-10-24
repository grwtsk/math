# Verification target: GRWTSK.Analysis.MeasureTheory.QuasiMeasurePreserving.Variant0c24b477b206b211294e1a7bb0dbf6446c7fb257a7161970ea62157906008a50

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ee3bd1eb702173d2f8147a7368a765e5064616d1",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/QuasiMeasurePreserving/Variant0c24b477b206b211294e1a7bb0dbf6446c7fb257a7161970ea62157906008a50.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/QuasiMeasurePreserving/Variant0c24b477b206b211294e1a7bb0dbf6446c7fb257a7161970ea62157906008a50.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/QuasiMeasurePreserving/Variant0c24b477b206b211294e1a7bb0dbf6446c7fb257a7161970ea62157906008a50.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ee3bd1eb702173d2f8147a7368a765e5064616d1`.

Source path: `GRWTSK/Analysis/MeasureTheory/QuasiMeasurePreserving/Variant0c24b477b206b211294e1a7bb0dbf6446c7fb257a7161970ea62157906008a50.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/QuasiMeasurePreserving/Variant0c24b477b206b211294e1a7bb0dbf6446c7fb257a7161970ea62157906008a50.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [QuasiMeasurePreserving](../../../../../mathematics/Analysis/MeasureTheory/QuasiMeasurePreserving/Variant0c24b477b206b211294e1a7bb0dbf6446c7fb257a7161970ea62157906008a50.lean/declarations/quasimeasurepreserving--d76f6772776ae3179efaa532.md) | 44 | `declaration-track:d76f6772776ae3179efaa5327a092815abb7deb0645ea52701cff81d01969a95` |
| 2 | `theorem` | [id](../../../../../mathematics/Analysis/MeasureTheory/QuasiMeasurePreserving/Variant0c24b477b206b211294e1a7bb0dbf6446c7fb257a7161970ea62157906008a50.lean/declarations/id--35e269d8c06e9834801a5386.md) | 55 | `result-track:35e269d8c06e9834801a53860ceea1c96ab9935929909a3c025dd321f861482f` |
| 3 | `theorem` | [_root_.Measurable.quasiMeasurePreserving](../../../../../mathematics/Analysis/MeasureTheory/QuasiMeasurePreserving/Variant0c24b477b206b211294e1a7bb0dbf6446c7fb257a7161970ea62157906008a50.lean/declarations/root-measurable-quasimeasurepreserving--99f3f5b9975c028131400c14.md) | 60 | `result-track:99f3f5b9975c028131400c14c181242f5018699c2666ac9b31c8b8463e6b2357` |
| 4 | `theorem` | [mono_left](../../../../../mathematics/Analysis/MeasureTheory/QuasiMeasurePreserving/Variant0c24b477b206b211294e1a7bb0dbf6446c7fb257a7161970ea62157906008a50.lean/declarations/mono-left--b35711f75adaadaaad985384.md) | 65 | `result-track:b35711f75adaadaaad985384a52af74b87da97e60147a4176c1148cdd58d078d` |
| 5 | `theorem` | [mono_right](../../../../../mathematics/Analysis/MeasureTheory/QuasiMeasurePreserving/Variant0c24b477b206b211294e1a7bb0dbf6446c7fb257a7161970ea62157906008a50.lean/declarations/mono-right--2c6c457d4f81cfa144bc2468.md) | 69 | `result-track:2c6c457d4f81cfa144bc246825a4cedd9de17456a11aef8d19b42f85e4056e0c` |
| 6 | `theorem` | [mono](../../../../../mathematics/Analysis/MeasureTheory/QuasiMeasurePreserving/Variant0c24b477b206b211294e1a7bb0dbf6446c7fb257a7161970ea62157906008a50.lean/declarations/mono--277b7f09c71a89668b8d0db4.md) | 74 | `result-track:277b7f09c71a89668b8d0db4ae1da6006710a998e52a711d68e575609683ed62` |
| 7 | `theorem` | [comp](../../../../../mathematics/Analysis/MeasureTheory/QuasiMeasurePreserving/Variant0c24b477b206b211294e1a7bb0dbf6446c7fb257a7161970ea62157906008a50.lean/declarations/comp--8332cd9877c35eaff827fe25.md) | 79 | `result-track:8332cd9877c35eaff827fe25c0fa2ebc2f0f80953317b8e93b29e4099d845919` |
| 8 | `theorem` | [iterate](../../../../../mathematics/Analysis/MeasureTheory/QuasiMeasurePreserving/Variant0c24b477b206b211294e1a7bb0dbf6446c7fb257a7161970ea62157906008a50.lean/declarations/iterate--dc844d18d5a0ca3381736f77.md) | 85 | `result-track:dc844d18d5a0ca3381736f771dfba4308e14a2ec9e6b8fc83a5920e0285aca5a` |
| 9 | `theorem` | [aemeasurable](../../../../../mathematics/Analysis/MeasureTheory/QuasiMeasurePreserving/Variant0c24b477b206b211294e1a7bb0dbf6446c7fb257a7161970ea62157906008a50.lean/declarations/aemeasurable--e154f6a216d87855c6edc044.md) | 90 | `result-track:e154f6a216d87855c6edc044c9868ab021359df2c21e39debc3ddae4c85d8242` |
| 10 | `theorem` | [congr](../../../../../mathematics/Analysis/MeasureTheory/QuasiMeasurePreserving/Variant0c24b477b206b211294e1a7bb0dbf6446c7fb257a7161970ea62157906008a50.lean/declarations/congr--64484abf8e488509eed87aff.md) | 93 | `result-track:64484abf8e488509eed87affa69c229ce39bba49c6601a688380e5bae8d5b9c4` |
| 11 | `theorem` | [smul_measure](../../../../../mathematics/Analysis/MeasureTheory/QuasiMeasurePreserving/Variant0c24b477b206b211294e1a7bb0dbf6446c7fb257a7161970ea62157906008a50.lean/declarations/smul-measure--766815314158385f55397ce8.md) | 99 | `result-track:766815314158385f55397ce8250a13b8ab70e7dbe0de157dae9b02e0ddceaa89` |
| 12 | `theorem` | [ae_map_le](../../../../../mathematics/Analysis/MeasureTheory/QuasiMeasurePreserving/Variant0c24b477b206b211294e1a7bb0dbf6446c7fb257a7161970ea62157906008a50.lean/declarations/ae-map-le--4f6fb2dc30027b9757cbd793.md) | 103 | `result-track:4f6fb2dc30027b9757cbd793d374f2e96e50a5faf4edd9ecbf4b4cd521256d87` |
| 13 | `theorem` | [tendsto_ae](../../../../../mathematics/Analysis/MeasureTheory/QuasiMeasurePreserving/Variant0c24b477b206b211294e1a7bb0dbf6446c7fb257a7161970ea62157906008a50.lean/declarations/tendsto-ae--4a99f46f92e1a4043006c61e.md) | 106 | `result-track:4a99f46f92e1a4043006c61e5ba17b905712b60c26ff7a7f5570217de600f007` |
| 14 | `theorem` | [ae](../../../../../mathematics/Analysis/MeasureTheory/QuasiMeasurePreserving/Variant0c24b477b206b211294e1a7bb0dbf6446c7fb257a7161970ea62157906008a50.lean/declarations/ae--6d4e3780cc1b587ce3389470.md) | 109 | `result-track:6d4e3780cc1b587ce3389470dbbc89a9394e561102dbb2c715622e40e640a476` |
| 15 | `theorem` | [ae_eq_comp](../../../../../mathematics/Analysis/MeasureTheory/QuasiMeasurePreserving/Variant0c24b477b206b211294e1a7bb0dbf6446c7fb257a7161970ea62157906008a50.lean/declarations/ae-eq-comp--96c22aeefdd35f42ebbf127a.md) | 114 | `result-track:96c22aeefdd35f42ebbf127af35a528bfda5d5c0cd80040201a96a86ddf98c8b` |
| 16 | `theorem` | [preimage_null](../../../../../mathematics/Analysis/MeasureTheory/QuasiMeasurePreserving/Variant0c24b477b206b211294e1a7bb0dbf6446c7fb257a7161970ea62157906008a50.lean/declarations/preimage-null--4e78bbf6e08ca977cd75896d.md) | 120 | `result-track:4e78bbf6e08ca977cd75896dc8e89330886d2b7ee9643181d09b8ff1780272aa` |
| 17 | `theorem` | [preimage_mono_ae](../../../../../mathematics/Analysis/MeasureTheory/QuasiMeasurePreserving/Variant0c24b477b206b211294e1a7bb0dbf6446c7fb257a7161970ea62157906008a50.lean/declarations/preimage-mono-ae--d7a3b3d617bd07d9a2b37c1e.md) | 124 | `result-track:d7a3b3d617bd07d9a2b37c1e346b8d9d491bc4ee4706fe8bb64c6c12624d0f5f` |
| 18 | `theorem` | [preimage_ae_eq](../../../../../mathematics/Analysis/MeasureTheory/QuasiMeasurePreserving/Variant0c24b477b206b211294e1a7bb0dbf6446c7fb257a7161970ea62157906008a50.lean/declarations/preimage-ae-eq--81759bb6abadf9890f759c04.md) | 129 | `result-track:81759bb6abadf9890f759c04c2efb3279d2546a58c1f543de6ed771cda915361` |
| 19 | `theorem` | [_root_.MeasureTheory.NullMeasurableSet.preimage](../../../../../mathematics/Analysis/MeasureTheory/QuasiMeasurePreserving/Variant0c24b477b206b211294e1a7bb0dbf6446c7fb257a7161970ea62157906008a50.lean/declarations/root-measuretheory-nullmeasurableset-preimage--b198845ee1d3db817ef9ab59.md) | 135 | `result-track:b198845ee1d3db817ef9ab59c6e0ba9a8f4f3302caf7b4166c8bc8335b34f8da` |
| 20 | `theorem` | [preimage_iterate_ae_eq](../../../../../mathematics/Analysis/MeasureTheory/QuasiMeasurePreserving/Variant0c24b477b206b211294e1a7bb0dbf6446c7fb257a7161970ea62157906008a50.lean/declarations/preimage-iterate-ae-eq--99c28a2743e61d7da8cc1037.md) | 140 | `result-track:99c28a2743e61d7da8cc103712e25d233b246936d628d6ee4f8bf10af2c72f92` |
| 21 | `theorem` | [image_zpow_ae_eq](../../../../../mathematics/Analysis/MeasureTheory/QuasiMeasurePreserving/Variant0c24b477b206b211294e1a7bb0dbf6446c7fb257a7161970ea62157906008a50.lean/declarations/image-zpow-ae-eq--3ca374148269af4e009a2c91.md) | 148 | `result-track:3ca374148269af4e009a2c91ebc539e03c78bd123d8a5da8189521cea3d3a6bc` |
| 22 | `theorem` | [limsup_preimage_iterate_ae_eq](../../../../../mathematics/Analysis/MeasureTheory/QuasiMeasurePreserving/Variant0c24b477b206b211294e1a7bb0dbf6446c7fb257a7161970ea62157906008a50.lean/declarations/limsup-preimage-iterate-ae-eq--889dc86e0d783275743d583d.md) | 164 | `result-track:889dc86e0d783275743d583db8f72bfc94e78d8389275d233acf53793ab57777` |
| 23 | `theorem` | [liminf_preimage_iterate_ae_eq](../../../../../mathematics/Analysis/MeasureTheory/QuasiMeasurePreserving/Variant0c24b477b206b211294e1a7bb0dbf6446c7fb257a7161970ea62157906008a50.lean/declarations/liminf-preimage-iterate-ae-eq--faf822eb1064e73f076210e0.md) | 170 | `result-track:faf822eb1064e73f076210e07d7282e93df9b4b7d98ff6b1c869a325d5f18199` |
| 24 | `theorem` | [exists_preimage_eq_of_preimage_ae](../../../../../mathematics/Analysis/MeasureTheory/QuasiMeasurePreserving/Variant0c24b477b206b211294e1a7bb0dbf6446c7fb257a7161970ea62157906008a50.lean/declarations/exists-preimage-eq-of-preimage-ae--b00961dde5fb6bf06a3f593e.md) | 178 | `result-track:b00961dde5fb6bf06a3f593eb9d5a08f13c4c9ade178a929d1c371d76eb70ded` |
| 25 | `theorem` | [smul_ae_eq_of_ae_eq](../../../../../mathematics/Analysis/MeasureTheory/QuasiMeasurePreserving/Variant0c24b477b206b211294e1a7bb0dbf6446c7fb257a7161970ea62157906008a50.lean/declarations/smul-ae-eq-of-ae-eq--129de966314c37d2d9923c55.md) | 192 | `result-track:129de966314c37d2d9923c55a5a4c049cc451ada22b2f52e45aefe6a31205ce6` |
| 26 | `theorem` | [pairwise_aedisjoint_of_aedisjoint_forall_ne_one](../../../../../mathematics/Analysis/MeasureTheory/QuasiMeasurePreserving/Variant0c24b477b206b211294e1a7bb0dbf6446c7fb257a7161970ea62157906008a50.lean/declarations/pairwise-aedisjoint-of-aedisjoint-forall-ne-one--6ab202d91b1ea635e2df1fbd.md) | 205 | `result-track:6ab202d91b1ea635e2df1fbd23e847ec02f9d933cd1cd04771c5299b99c9acfa` |
| 27 | `theorem` | [NullMeasurable.comp_quasiMeasurePreserving](../../../../../mathematics/Analysis/MeasureTheory/QuasiMeasurePreserving/Variant0c24b477b206b211294e1a7bb0dbf6446c7fb257a7161970ea62157906008a50.lean/declarations/nullmeasurable-comp-quasimeasurepreserving--07e645400f83fdc28bf84876.md) | 227 | `result-track:07e645400f83fdc28bf84876098a50361398372a7a3e6a6f8b062d5ad82b0176` |
| 28 | `theorem` | [AEDisjoint.preimage](../../../../../mathematics/Analysis/MeasureTheory/QuasiMeasurePreserving/Variant0c24b477b206b211294e1a7bb0dbf6446c7fb257a7161970ea62157906008a50.lean/declarations/aedisjoint-preimage--1fdc228d744d936a230661ed.md) | 231 | `result-track:1fdc228d744d936a230661ed348ff8d7421a7fc857b8478d6b03601f0f5a075e` |
| 29 | `theorem` | [quasiMeasurePreserving_symm](../../../../../mathematics/Analysis/MeasureTheory/QuasiMeasurePreserving/Variant0c24b477b206b211294e1a7bb0dbf6446c7fb257a7161970ea62157906008a50.lean/declarations/quasimeasurepreserving-symm--6e244ea56a6998b6c05b8dd9.md) | 243 | `result-track:6e244ea56a6998b6c05b8dd96f6022afa6f86bfbe71a3c6b94725b0829bf6668` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
