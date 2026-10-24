# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Whiskering.Variant1ca16c0e3c3d4537b83e53cc089d554745a236d0124151d21695b930d68fc038

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1a9a8b0ad2966e00bb7177a3b9ac5ec379474216",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variant1ca16c0e3c3d4537b83e53cc089d554745a236d0124151d21695b930d68fc038.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variant1ca16c0e3c3d4537b83e53cc089d554745a236d0124151d21695b930d68fc038.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variant1ca16c0e3c3d4537b83e53cc089d554745a236d0124151d21695b930d68fc038.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1a9a8b0ad2966e00bb7177a3b9ac5ec379474216`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variant1ca16c0e3c3d4537b83e53cc089d554745a236d0124151d21695b930d68fc038.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variant1ca16c0e3c3d4537b83e53cc089d554745a236d0124151d21695b930d68fc038.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Iso` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.Category` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.FullyFaithful` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [whiskerLeft](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variant1ca16c0e3c3d4537b83e53cc089d554745a236d0124151d21695b930d68fc038.lean/declarations/whiskerleft--126252b2c5603373e260fc53.md) | 47 | `declaration-track:126252b2c5603373e260fc53152942f57404e41bac0b63bcec9db4b5e4295f99` |
| 2 | `def` | [whiskerRight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variant1ca16c0e3c3d4537b83e53cc089d554745a236d0124151d21695b930d68fc038.lean/declarations/whiskerright--4f210e31126f7e8ad9bd9750.md) | 58 | `declaration-track:4f210e31126f7e8ad9bd9750100d73577fae11375c1c81f946dda4a2250a5de6` |
| 3 | `def` | [whiskeringLeft](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variant1ca16c0e3c3d4537b83e53cc089d554745a236d0124151d21695b930d68fc038.lean/declarations/whiskeringleft--6773b5bc1111817b19e8410a.md) | 74 | `declaration-track:6773b5bc1111817b19e8410a7576d33f0d171961a4c5e939ec9a811238fa1b10` |
| 4 | `def` | [whiskeringRight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variant1ca16c0e3c3d4537b83e53cc089d554745a236d0124151d21695b930d68fc038.lean/declarations/whiskeringright--303e06958e0b3bf096d53209.md) | 94 | `declaration-track:303e06958e0b3bf096d532090fb5f0674cae17f92f43059f62a90649078c7bf9` |
| 5 | `instance` | [faithful_whiskeringRight_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variant1ca16c0e3c3d4537b83e53cc089d554745a236d0124151d21695b930d68fc038.lean/declarations/faithful-whiskeringright-obj--901724a2c9c1cfe2e17f0dc6.md) | 110 | `declaration-track:901724a2c9c1cfe2e17f0dc6d568fc1323673284e4487c666f9bdc363893693d` |
| 6 | `theorem` | [whiskerLeft_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variant1ca16c0e3c3d4537b83e53cc089d554745a236d0124151d21695b930d68fc038.lean/declarations/whiskerleft-id--69a5d7122cad3326068b5cfe.md) | 118 | `result-track:69a5d7122cad3326068b5cfea9debb3ebc69627dc566a4be9a447770def9d6b8` |
| 7 | `theorem` | [whiskerLeft_id'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variant1ca16c0e3c3d4537b83e53cc089d554745a236d0124151d21695b930d68fc038.lean/declarations/whiskerleft-id--24c160be26da1055616a05cd.md) | 124 | `result-track:24c160be26da1055616a05cd4115c8c64f49ff61539efa04b23273491dcda003` |
| 8 | `theorem` | [whiskerRight_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variant1ca16c0e3c3d4537b83e53cc089d554745a236d0124151d21695b930d68fc038.lean/declarations/whiskerright-id--d9cd238a97975e03a5aea4a5.md) | 129 | `result-track:d9cd238a97975e03a5aea4a5122f4ccce4fe9a4c6701ff11b7fc4bf5dd619926` |
| 9 | `theorem` | [whiskerRight_id'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variant1ca16c0e3c3d4537b83e53cc089d554745a236d0124151d21695b930d68fc038.lean/declarations/whiskerright-id--c70c4b5389c54ee19116bf8b.md) | 135 | `result-track:c70c4b5389c54ee19116bf8b81213e6ac379aa2d523276a673e56dcb18b87dd3` |
| 10 | `theorem` | [whiskerLeft_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variant1ca16c0e3c3d4537b83e53cc089d554745a236d0124151d21695b930d68fc038.lean/declarations/whiskerleft-comp--dbca0b7da375e2424d767349.md) | 140 | `result-track:dbca0b7da375e2424d7673492ac9852fb2f242926bd35366e1438a716e1b85a2` |
| 11 | `theorem` | [whiskerRight_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variant1ca16c0e3c3d4537b83e53cc089d554745a236d0124151d21695b930d68fc038.lean/declarations/whiskerright-comp--5fcec51d73db3600b94ef80c.md) | 146 | `result-track:5fcec51d73db3600b94ef80c3d729fc45ae953f8ce1a2a9bf5a0b36e91c5cf61` |
| 12 | `def` | [isoWhiskerLeft](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variant1ca16c0e3c3d4537b83e53cc089d554745a236d0124151d21695b930d68fc038.lean/declarations/isowhiskerleft--7d2db19359d8892a853c55b1.md) | 154 | `declaration-track:7d2db19359d8892a853c55b111cbdc715ef5be6f2279cd26a5840204f6e5bba0` |
| 13 | `theorem` | [isoWhiskerLeft_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variant1ca16c0e3c3d4537b83e53cc089d554745a236d0124151d21695b930d68fc038.lean/declarations/isowhiskerleft-hom--60c79a3e968b879cf9105476.md) | 159 | `result-track:60c79a3e968b879cf9105476e25fb08ee63f06b94621b741d92811a13fb9d63b` |
| 14 | `theorem` | [isoWhiskerLeft_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variant1ca16c0e3c3d4537b83e53cc089d554745a236d0124151d21695b930d68fc038.lean/declarations/isowhiskerleft-inv--8d5e044e78f71645b936c3c7.md) | 165 | `result-track:8d5e044e78f71645b936c3c7da2ffb45398d6443d47cd690df016b7577a0d3fc` |
| 15 | `def` | [isoWhiskerRight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variant1ca16c0e3c3d4537b83e53cc089d554745a236d0124151d21695b930d68fc038.lean/declarations/isowhiskerright--6ac2708dcb1c01eaf1f2e2c4.md) | 173 | `declaration-track:6ac2708dcb1c01eaf1f2e2c4987bf77ece04a19ef0182a24706ac4ddf0557ea4` |
| 16 | `theorem` | [isoWhiskerRight_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variant1ca16c0e3c3d4537b83e53cc089d554745a236d0124151d21695b930d68fc038.lean/declarations/isowhiskerright-hom--884ac8c70a00d0ec7a414b67.md) | 178 | `result-track:884ac8c70a00d0ec7a414b67ce4ff89e1721d33d6e16cff61dff9e29052b37d0` |
| 17 | `theorem` | [isoWhiskerRight_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variant1ca16c0e3c3d4537b83e53cc089d554745a236d0124151d21695b930d68fc038.lean/declarations/isowhiskerright-inv--297306748eb281774a75f952.md) | 184 | `result-track:297306748eb281774a75f95254e1526fa58f5285a08a4844b38de4ca22ee1040` |
| 18 | `instance` | [isIso_whiskerLeft](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variant1ca16c0e3c3d4537b83e53cc089d554745a236d0124151d21695b930d68fc038.lean/declarations/isiso-whiskerleft--e4d6b46f8555e979bc3394c9.md) | 189 | `declaration-track:e4d6b46f8555e979bc3394c9db8abd0e11f0bf73b4907bd6b77128cab08e3cb1` |
| 19 | `instance` | [isIso_whiskerRight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variant1ca16c0e3c3d4537b83e53cc089d554745a236d0124151d21695b930d68fc038.lean/declarations/isiso-whiskerright--c9b67f376e34561874780bf7.md) | 194 | `declaration-track:c9b67f376e34561874780bf781a958ad6948c2b75f2b7a2ce8155007fe5795b5` |
| 20 | `theorem` | [whiskerLeft_twice](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variant1ca16c0e3c3d4537b83e53cc089d554745a236d0124151d21695b930d68fc038.lean/declarations/whiskerleft-twice--f374e9127075b226b83cfe5a.md) | 206 | `result-track:f374e9127075b226b83cfe5a70fc19363284e250d534297c1500b905301785a0` |
| 21 | `theorem` | [whiskerRight_twice](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variant1ca16c0e3c3d4537b83e53cc089d554745a236d0124151d21695b930d68fc038.lean/declarations/whiskerright-twice--a7e0a58725e5903ab6644058.md) | 212 | `result-track:a7e0a58725e5903ab6644058e8a92676b2e2bf75577a5af52a04d19098d66ed8` |
| 22 | `theorem` | [whiskerRight_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variant1ca16c0e3c3d4537b83e53cc089d554745a236d0124151d21695b930d68fc038.lean/declarations/whiskerright-left--f6e207e6bb4a024fb869aa34.md) | 217 | `result-track:f6e207e6bb4a024fb869aa344ffccc520742fb4f9fc0527cbc364e0537e74b3f` |
| 23 | `def` | [leftUnitor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variant1ca16c0e3c3d4537b83e53cc089d554745a236d0124151d21695b930d68fc038.lean/declarations/leftunitor--68c3650ad8c752670b943a4e.md) | 235 | `declaration-track:68c3650ad8c752670b943a4ea26f084b97efa8a5ae4b9930f760f895c0a8064d` |
| 24 | `def` | [rightUnitor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variant1ca16c0e3c3d4537b83e53cc089d554745a236d0124151d21695b930d68fc038.lean/declarations/rightunitor--2cf002ab56c1957cdcfc3d68.md) | 246 | `declaration-track:2cf002ab56c1957cdcfc3d68c016ef2d89969a48f57c7bfd8ecab3936d88a935` |
| 25 | `def` | [associator](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variant1ca16c0e3c3d4537b83e53cc089d554745a236d0124151d21695b930d68fc038.lean/declarations/associator--c0a8ef40f1a5504c47ea9328.md) | 264 | `declaration-track:c0a8ef40f1a5504c47ea9328a942bb28fc80368242a00c1e348d2a8baa466ea4` |
| 26 | `theorem` | [assoc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variant1ca16c0e3c3d4537b83e53cc089d554745a236d0124151d21695b930d68fc038.lean/declarations/assoc--803b65abde3dbe83b6f20587.md) | 272 | `result-track:803b65abde3dbe83b6f205874ccb243caa82b5ed00b3757553db91604c43373f` |
| 27 | `theorem` | [triangle](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variant1ca16c0e3c3d4537b83e53cc089d554745a236d0124151d21695b930d68fc038.lean/declarations/triangle--039cc33f92036fb1d31f5a5d.md) | 276 | `result-track:039cc33f92036fb1d31f5a5dd734d8e52a850d8d99e30b1bc4daa5b85a756b3c` |
| 28 | `theorem` | [pentagon](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variant1ca16c0e3c3d4537b83e53cc089d554745a236d0124151d21695b930d68fc038.lean/declarations/pentagon--de714e69f4747325737e36de.md) | 286 | `result-track:de714e69f4747325737e36de1b78e07f608f5192fb0c14e3825ca0294939c6cb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
