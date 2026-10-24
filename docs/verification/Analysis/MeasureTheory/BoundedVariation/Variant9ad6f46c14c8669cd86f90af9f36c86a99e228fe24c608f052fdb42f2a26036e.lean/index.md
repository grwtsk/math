# Verification target: GRWTSK.Analysis.MeasureTheory.BoundedVariation.Variant9ad6f46c14c8669cd86f90af9f36c86a99e228fe24c608f052fdb42f2a26036e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ca3053ee83217a2ddf45a8ce3807e402b754acdf",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/BoundedVariation/Variant9ad6f46c14c8669cd86f90af9f36c86a99e228fe24c608f052fdb42f2a26036e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/BoundedVariation/Variant9ad6f46c14c8669cd86f90af9f36c86a99e228fe24c608f052fdb42f2a26036e.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/BoundedVariation/Variant9ad6f46c14c8669cd86f90af9f36c86a99e228fe24c608f052fdb42f2a26036e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ca3053ee83217a2ddf45a8ce3807e402b754acdf`.

Source path: `GRWTSK/Analysis/MeasureTheory/BoundedVariation/Variant9ad6f46c14c8669cd86f90af9f36c86a99e228fe24c608f052fdb42f2a26036e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/BoundedVariation/Variant9ad6f46c14c8669cd86f90af9f36c86a99e228fe24c608f052fdb42f2a26036e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.VectorMeasure.AddContent` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.VectorMeasure.Variation.Basic` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [stieltjesFunctionRightLim](../../../../../mathematics/Analysis/MeasureTheory/BoundedVariation/Variant9ad6f46c14c8669cd86f90af9f36c86a99e228fe24c608f052fdb42f2a26036e.lean/declarations/stieltjesfunctionrightlim--7dcf72c78c518d3b73fb60b8.md) | 61 | `declaration-track:7dcf72c78c518d3b73fb60b8856b8e10846a819a0b1464c2d30172ae219d83b7` |
| 2 | `def` | [measureAux](../../../../../mathematics/Analysis/MeasureTheory/BoundedVariation/Variant9ad6f46c14c8669cd86f90af9f36c86a99e228fe24c608f052fdb42f2a26036e.lean/declarations/measureaux--17b317452740ea1aa23806ef.md) | 73 | `declaration-track:17b317452740ea1aa23806ef8e7a75cd2c106a9262df64b1563f77363e14fc0c` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/BoundedVariation/Variant9ad6f46c14c8669cd86f90af9f36c86a99e228fe24c608f052fdb42f2a26036e.lean/declarations/instance--b1f5b5e561135fd9ab3ed2f8.md) | 76 | `declaration-track:b1f5b5e561135fd9ab3ed2f8748f1b805d4712f873bdbbfb3a5574a2c54b6717` |
| 4 | `lemma` | [exists_vectorMeasure_le_measureAux](../../../../../mathematics/Analysis/MeasureTheory/BoundedVariation/Variant9ad6f46c14c8669cd86f90af9f36c86a99e228fe24c608f052fdb42f2a26036e.lean/declarations/exists-vectormeasure-le-measureaux--c0595c41a0dec8a413efdb4d.md) | 89 | `result-track:c0595c41a0dec8a413efdb4ddf66aa0a01e4aa6a25718ea4f3388c2f7bff7236` |
| 5 | `def` | [vectorMeasure](../../../../../mathematics/Analysis/MeasureTheory/BoundedVariation/Variant9ad6f46c14c8669cd86f90af9f36c86a99e228fe24c608f052fdb42f2a26036e.lean/declarations/vectormeasure--fbad92f3271cffc9ba8b438d.md) | 127 | `declaration-track:fbad92f3271cffc9ba8b438da11f17a286af17667810b0fd124ef5fca84c9c93` |
| 6 | `lemma` | [vectorMeasure_Ioc](../../../../../mathematics/Analysis/MeasureTheory/BoundedVariation/Variant9ad6f46c14c8669cd86f90af9f36c86a99e228fe24c608f052fdb42f2a26036e.lean/declarations/vectormeasure-ioc--dedffcf322d95e109fed93cc.md) | 131 | `result-track:dedffcf322d95e109fed93cc90c0bc16ba47912f61da501cabe60b7320edeaad` |
| 7 | `lemma` | [vectorMeasure_singleton](../../../../../mathematics/Analysis/MeasureTheory/BoundedVariation/Variant9ad6f46c14c8669cd86f90af9f36c86a99e228fe24c608f052fdb42f2a26036e.lean/declarations/vectormeasure-singleton--4a059780b21564b268153eb3.md) | 147 | `result-track:4a059780b21564b268153eb33fdfa8cf2348c91c2f2c894624d3203ae8d6ae39` |
| 8 | `lemma` | [vectorMeasure_Icc](../../../../../mathematics/Analysis/MeasureTheory/BoundedVariation/Variant9ad6f46c14c8669cd86f90af9f36c86a99e228fe24c608f052fdb42f2a26036e.lean/declarations/vectormeasure-icc--5664a1ae16856b253c9c4091.md) | 186 | `result-track:5664a1ae16856b253c9c40917156ac827da5b7e135d51414669a8e55f2e6e277` |
| 9 | `theorem` | [vectorMeasure_Ioo](../../../../../mathematics/Analysis/MeasureTheory/BoundedVariation/Variant9ad6f46c14c8669cd86f90af9f36c86a99e228fe24c608f052fdb42f2a26036e.lean/declarations/vectormeasure-ioo--a64b4d2a27ecef21d337f11b.md) | 193 | `result-track:a64b4d2a27ecef21d337f11bd530923e370ea4da50b0d663b8a7f7b61bead7a8` |
| 10 | `theorem` | [vectorMeasure_Ico](../../../../../mathematics/Analysis/MeasureTheory/BoundedVariation/Variant9ad6f46c14c8669cd86f90af9f36c86a99e228fe24c608f052fdb42f2a26036e.lean/declarations/vectormeasure-ico--9fd86e7cafed11bb8b72738b.md) | 200 | `result-track:9fd86e7cafed11bb8b72738b25505202d8f0c4435c046373ccf07b27ff4f58ba` |
| 11 | `theorem` | [vectorMeasure_Ici](../../../../../mathematics/Analysis/MeasureTheory/BoundedVariation/Variant9ad6f46c14c8669cd86f90af9f36c86a99e228fe24c608f052fdb42f2a26036e.lean/declarations/vectormeasure-ici--7680ab3e816cc285450e9c03.md) | 208 | `result-track:7680ab3e816cc285450e9c0356519dfdf281f504d2d16130c0d778cd18d4b39f` |
| 12 | `theorem` | [vectorMeasure_Ioi](../../../../../mathematics/Analysis/MeasureTheory/BoundedVariation/Variant9ad6f46c14c8669cd86f90af9f36c86a99e228fe24c608f052fdb42f2a26036e.lean/declarations/vectormeasure-ioi--a53db62e6d4d05461bd90e04.md) | 236 | `result-track:a53db62e6d4d05461bd90e0474588f70ee06e5821b370647c136261780d545d1` |
| 13 | `theorem` | [vectorMeasure_Iic](../../../../../mathematics/Analysis/MeasureTheory/BoundedVariation/Variant9ad6f46c14c8669cd86f90af9f36c86a99e228fe24c608f052fdb42f2a26036e.lean/declarations/vectormeasure-iic--93ceb324e328f2218e598e56.md) | 243 | `result-track:93ceb324e328f2218e598e56a23c5ed3d3d4f16d6ef8c4b4ab5ba25a47227af1` |
| 14 | `theorem` | [vectorMeasure_Iio](../../../../../mathematics/Analysis/MeasureTheory/BoundedVariation/Variant9ad6f46c14c8669cd86f90af9f36c86a99e228fe24c608f052fdb42f2a26036e.lean/declarations/vectormeasure-iio--72027e79dc1ac0d466991019.md) | 271 | `result-track:72027e79dc1ac0d46699101924164b412713b7c7fd5bb8390ad7c62090d102b5` |
| 15 | `theorem` | [vectorMeasure_univ](../../../../../mathematics/Analysis/MeasureTheory/BoundedVariation/Variant9ad6f46c14c8669cd86f90af9f36c86a99e228fe24c608f052fdb42f2a26036e.lean/declarations/vectormeasure-univ--252fa5adc6b040c2301c2bcf.md) | 278 | `result-track:252fa5adc6b040c2301c2bcfd9fcc993ead4c23f18b62138aa1082139f2223d3` |
| 16 | `def` | [variationAux](../../../../../mathematics/Analysis/MeasureTheory/BoundedVariation/Variant9ad6f46c14c8669cd86f90af9f36c86a99e228fe24c608f052fdb42f2a26036e.lean/declarations/variationaux--2df0c1cb7a9916cfe6f32eba.md) | 290 | `declaration-track:2df0c1cb7a9916cfe6f32eba4137ed286a8b21b0c94ca8f2260e0139c27c3576` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/BoundedVariation/Variant9ad6f46c14c8669cd86f90af9f36c86a99e228fe24c608f052fdb42f2a26036e.lean/declarations/instance--9b24e6ad937fca1451b9a8cc.md) | 294 | `declaration-track:9b24e6ad937fca1451b9a8ccf34b4245843df0426b04bc9157f60b0d4a147c91` |
| 18 | `lemma` | [variation_vectorMeasure_le_variationAux](../../../../../mathematics/Analysis/MeasureTheory/BoundedVariation/Variant9ad6f46c14c8669cd86f90af9f36c86a99e228fe24c608f052fdb42f2a26036e.lean/declarations/variation-vectormeasure-le-variationaux--4cc9ad880221b3d65d755137.md) | 302 | `result-track:4cc9ad880221b3d65d755137018ae03a18c2572c17f02c10707194e76498e7b7` |
| 19 | `lemma` | [variationAux_Ioc_le](../../../../../mathematics/Analysis/MeasureTheory/BoundedVariation/Variant9ad6f46c14c8669cd86f90af9f36c86a99e228fe24c608f052fdb42f2a26036e.lean/declarations/variationaux-ioc-le--21d9edab444c46e97bcc4f30.md) | 313 | `result-track:21d9edab444c46e97bcc4f30e0d1cd25c6f52b554911219ba6bf1d9f06d6d486` |
| 20 | `lemma` | [eVariationOn_Ioc_le_variation](../../../../../mathematics/Analysis/MeasureTheory/BoundedVariation/Variant9ad6f46c14c8669cd86f90af9f36c86a99e228fe24c608f052fdb42f2a26036e.lean/declarations/evariationon-ioc-le-variation--fac85c82be584f86b0e2e404.md) | 330 | `result-track:fac85c82be584f86b0e2e4044abda85df65356389e630f50c3eaa5005c9acc62` |
| 21 | `lemma` | [variationAux_Ioc](../../../../../mathematics/Analysis/MeasureTheory/BoundedVariation/Variant9ad6f46c14c8669cd86f90af9f36c86a99e228fe24c608f052fdb42f2a26036e.lean/declarations/variationaux-ioc--4aef8be1048854d1f8bbf472.md) | 346 | `result-track:4aef8be1048854d1f8bbf472dca46c9e2469e78ceeae8efba25d68bba7aca430` |
| 22 | `lemma` | [variation_vectorMeasure_Ioc](../../../../../mathematics/Analysis/MeasureTheory/BoundedVariation/Variant9ad6f46c14c8669cd86f90af9f36c86a99e228fe24c608f052fdb42f2a26036e.lean/declarations/variation-vectormeasure-ioc--6d11dea82a38b155257e02e6.md) | 351 | `result-track:6d11dea82a38b155257e02e6a05b5e4cf565755fba6ede7942cbbeaf56528b44` |
| 23 | `lemma` | [variation_vectorMeasure_singleton](../../../../../mathematics/Analysis/MeasureTheory/BoundedVariation/Variant9ad6f46c14c8669cd86f90af9f36c86a99e228fe24c608f052fdb42f2a26036e.lean/declarations/variation-vectormeasure-singleton--86597acb938d559b6aac579e.md) | 359 | `result-track:86597acb938d559b6aac579e18aba74c841681bc659638d22509c034c0789910` |
| 24 | `lemma` | [variationAux_singleton](../../../../../mathematics/Analysis/MeasureTheory/BoundedVariation/Variant9ad6f46c14c8669cd86f90af9f36c86a99e228fe24c608f052fdb42f2a26036e.lean/declarations/variationaux-singleton--2c4cef57d5820f42fb192f05.md) | 363 | `result-track:2c4cef57d5820f42fb192f05750a3fbfa349ea0c86e5f15d4fe103b2074b7ebc` |
| 25 | `lemma` | [variationAux_eq_variation_vectorMeasure](../../../../../mathematics/Analysis/MeasureTheory/BoundedVariation/Variant9ad6f46c14c8669cd86f90af9f36c86a99e228fe24c608f052fdb42f2a26036e.lean/declarations/variationaux-eq-variation-vectormeasure--f72ad34cb7a0e0b466c79998.md) | 383 | `result-track:f72ad34cb7a0e0b466c7999886f8d4c49eb21fa2acd3bf2d18e1c37db4b4ee16` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/BoundedVariation/Variant9ad6f46c14c8669cd86f90af9f36c86a99e228fe24c608f052fdb42f2a26036e.lean/declarations/instance--8ca1d2fcb2a38a573584643c.md) | 390 | `declaration-track:8ca1d2fcb2a38a573584643cf3419ee0800d88242f06e4ce02c64f81da19f007` |
| 27 | `lemma` | [variation_vectorMeasure_Ioo_right](../../../../../mathematics/Analysis/MeasureTheory/BoundedVariation/Variant9ad6f46c14c8669cd86f90af9f36c86a99e228fe24c608f052fdb42f2a26036e.lean/declarations/variation-vectormeasure-ioo-right--200129dfdbfc3b4217dfa62a.md) | 394 | `result-track:200129dfdbfc3b4217dfa62a8f8533f2b4704958b847e383c44172ba61bb4b24` |
| 28 | `lemma` | [variation_vectorMeasure_Ioo_left](../../../../../mathematics/Analysis/MeasureTheory/BoundedVariation/Variant9ad6f46c14c8669cd86f90af9f36c86a99e228fe24c608f052fdb42f2a26036e.lean/declarations/variation-vectormeasure-ioo-left--91109caee0548a49f99a6de4.md) | 419 | `result-track:91109caee0548a49f99a6de41253848d3d4a1a22d4f40f6db6e311c5ddf98d42` |
| 29 | `lemma` | [variation_vectorMeasure_Ico](../../../../../mathematics/Analysis/MeasureTheory/BoundedVariation/Variant9ad6f46c14c8669cd86f90af9f36c86a99e228fe24c608f052fdb42f2a26036e.lean/declarations/variation-vectormeasure-ico--dd7015d341ad4cc32b457ae5.md) | 439 | `result-track:dd7015d341ad4cc32b457ae557f77b6a81dff75477586cd7e47ff610f8880885` |
| 30 | `lemma` | [variation_vectorMeasure_Ioi](../../../../../mathematics/Analysis/MeasureTheory/BoundedVariation/Variant9ad6f46c14c8669cd86f90af9f36c86a99e228fe24c608f052fdb42f2a26036e.lean/declarations/variation-vectormeasure-ioi--700f0bd5c8157afcf50d918e.md) | 461 | `result-track:700f0bd5c8157afcf50d918eef9d52554a02d784a5cfab70074f5d09173f609a` |
| 31 | `lemma` | [variation_vectorMeasure_Iio](../../../../../mathematics/Analysis/MeasureTheory/BoundedVariation/Variant9ad6f46c14c8669cd86f90af9f36c86a99e228fe24c608f052fdb42f2a26036e.lean/declarations/variation-vectormeasure-iio--f89dde0fec82419529a14d58.md) | 492 | `result-track:f89dde0fec82419529a14d58932f4d118286a653838ce4a7b0146ecb43aec58e` |
| 32 | `lemma` | [variation_vectorMeasure_Ioo_le](../../../../../mathematics/Analysis/MeasureTheory/BoundedVariation/Variant9ad6f46c14c8669cd86f90af9f36c86a99e228fe24c608f052fdb42f2a26036e.lean/declarations/variation-vectormeasure-ioo-le--b3f582d850ff0665cf2052ab.md) | 525 | `result-track:b3f582d850ff0665cf2052abf05baaa6136c2ef9298c69e2e082ebcc3585f62d` |
| 33 | `lemma` | [variation_vectorMeasure_Ioc_le](../../../../../mathematics/Analysis/MeasureTheory/BoundedVariation/Variant9ad6f46c14c8669cd86f90af9f36c86a99e228fe24c608f052fdb42f2a26036e.lean/declarations/variation-vectormeasure-ioc-le--3d887432bc5423e824a5d860.md) | 530 | `result-track:3d887432bc5423e824a5d860b23ac267dcdc104ba25a862335a8aadb3a351b1a` |
| 34 | `lemma` | [variation_vectorMeasure_Ico_le](../../../../../mathematics/Analysis/MeasureTheory/BoundedVariation/Variant9ad6f46c14c8669cd86f90af9f36c86a99e228fe24c608f052fdb42f2a26036e.lean/declarations/variation-vectormeasure-ico-le--8b2ebc251397c7c90eafb17c.md) | 538 | `result-track:8b2ebc251397c7c90eafb17c008edd264a36ea881f92a0e8ecaf2544f18e3bed` |
| 35 | `lemma` | [variation_vectorMeasure_Icc_le](../../../../../mathematics/Analysis/MeasureTheory/BoundedVariation/Variant9ad6f46c14c8669cd86f90af9f36c86a99e228fe24c608f052fdb42f2a26036e.lean/declarations/variation-vectormeasure-icc-le--494f228efa6ae7e3f62c3b6a.md) | 546 | `result-track:494f228efa6ae7e3f62c3b6a5e95d98bac98837953bb11d40419b6ca60288eb2` |
| 36 | `lemma` | [variation_vectorMeasure_Ioi_le](../../../../../mathematics/Analysis/MeasureTheory/BoundedVariation/Variant9ad6f46c14c8669cd86f90af9f36c86a99e228fe24c608f052fdb42f2a26036e.lean/declarations/variation-vectormeasure-ioi-le--fa68ff1187bc321a527d7017.md) | 554 | `result-track:fa68ff1187bc321a527d70177322ab07a50d7c97f7c0b84e71e50b90720030a0` |
| 37 | `lemma` | [variation_vectorMeasure_Ici_le](../../../../../mathematics/Analysis/MeasureTheory/BoundedVariation/Variant9ad6f46c14c8669cd86f90af9f36c86a99e228fe24c608f052fdb42f2a26036e.lean/declarations/variation-vectormeasure-ici-le--8e5c96d3689d9bc3b8e1e916.md) | 558 | `result-track:8e5c96d3689d9bc3b8e1e9169656a42b955cb89f122ee903c3399064edbe17ed` |
| 38 | `lemma` | [variation_vectorMeasure_Iio_le](../../../../../mathematics/Analysis/MeasureTheory/BoundedVariation/Variant9ad6f46c14c8669cd86f90af9f36c86a99e228fe24c608f052fdb42f2a26036e.lean/declarations/variation-vectormeasure-iio-le--769bd28f1605cf0127378b71.md) | 564 | `result-track:769bd28f1605cf0127378b716f0bd5bd32c88ca1efa6f33f551142c9f5d2aae0` |
| 39 | `lemma` | [variation_vectorMeasure_Iic_le](../../../../../mathematics/Analysis/MeasureTheory/BoundedVariation/Variant9ad6f46c14c8669cd86f90af9f36c86a99e228fe24c608f052fdb42f2a26036e.lean/declarations/variation-vectormeasure-iic-le--3dce5f23582849af0ca9aa9b.md) | 568 | `result-track:3dce5f23582849af0ca9aa9bea5809cea8adfee73d26178bd48c5cd0946e71d8` |
| 40 | `lemma` | [variation_vectorMeasure_univ_le](../../../../../mathematics/Analysis/MeasureTheory/BoundedVariation/Variant9ad6f46c14c8669cd86f90af9f36c86a99e228fe24c608f052fdb42f2a26036e.lean/declarations/variation-vectormeasure-univ-le--21a5999fcaa504ed54b298a8.md) | 574 | `result-track:21a5999fcaa504ed54b298a8cc83b1124bb5804a85bf6a118c8e6acd742059f8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
