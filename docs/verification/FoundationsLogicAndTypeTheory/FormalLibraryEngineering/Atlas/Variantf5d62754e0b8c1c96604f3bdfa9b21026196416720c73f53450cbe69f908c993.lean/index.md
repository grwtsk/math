# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Atlas.Variantf5d62754e0b8c1c96604f3bdfa9b21026196416720c73f53450cbe69f908c993

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2a1f36623963069de48ee616c31dc3d1f51e1f75",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Atlas/Variantf5d62754e0b8c1c96604f3bdfa9b21026196416720c73f53450cbe69f908c993.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Atlas/Variantf5d62754e0b8c1c96604f3bdfa9b21026196416720c73f53450cbe69f908c993.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Atlas/Variantf5d62754e0b8c1c96604f3bdfa9b21026196416720c73f53450cbe69f908c993.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2a1f36623963069de48ee616c31dc3d1f51e1f75`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Atlas/Variantf5d62754e0b8c1c96604f3bdfa9b21026196416720c73f53450cbe69f908c993.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Atlas/Variantf5d62754e0b8c1c96604f3bdfa9b21026196416720c73f53450cbe69f908c993.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.MathematicalTooling.Semantics.Atlas.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.MathematicalTooling.Semantics.Atlas.Foliation` — import line 7; external provider; requires a separately pinned dependency.
- `FormalResearch.MathematicalTooling.Semantics.Atlas.Burden` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [AtlasTheory](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Atlas/Variantf5d62754e0b8c1c96604f3bdfa9b21026196416720c73f53450cbe69f908c993.lean/declarations/atlastheory--d6af6a5f270bb408bf41f83e.md) | 32 | `declaration-track:d6af6a5f270bb408bf41f83e2ba85a0c7265e666256fb14f7b3b5293599fad82` |
| 2 | `structure` | [FiniteAtlas](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Atlas/Variantf5d62754e0b8c1c96604f3bdfa9b21026196416720c73f53450cbe69f908c993.lean/declarations/finiteatlas--48d1f257f5804469d8892cc4.md) | 45 | `declaration-track:48d1f257f5804469d8892cc40b444134d2952843a2163bc26e8dc3c5316d3ab4` |
| 3 | `structure` | [PaperChart](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Atlas/Variantf5d62754e0b8c1c96604f3bdfa9b21026196416720c73f53450cbe69f908c993.lean/declarations/paperchart--155718891cd78a2e73f3fd33.md) | 54 | `declaration-track:155718891cd78a2e73f3fd338a069824a387778882f7af68459870977f9520c3` |
| 4 | `theorem` | [FiniteAtlas.closure_sound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Atlas/Variantf5d62754e0b8c1c96604f3bdfa9b21026196416720c73f53450cbe69f908c993.lean/declarations/finiteatlas-closure-sound--2df74a81e673e564900799a6.md) | 75 | `result-track:2df74a81e673e564900799a6c8e45e0e5ac5817ffb41cb0f2c5eab3347ba29d2` |
| 5 | `def` | [attachChart](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Atlas/Variantf5d62754e0b8c1c96604f3bdfa9b21026196416720c73f53450cbe69f908c993.lean/declarations/attachchart--d20c309654026bd8cfb49544.md) | 82 | `declaration-track:d20c309654026bd8cfb49544186a59685e6ed10d606648e94933d6421c55c757` |
| 6 | `theorem` | [attachChart_extends_facts](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Atlas/Variantf5d62754e0b8c1c96604f3bdfa9b21026196416720c73f53450cbe69f908c993.lean/declarations/attachchart-extends-facts--227e40ae834433714ffe87ba.md) | 94 | `result-track:227e40ae834433714ffe87ba0b5857ed0d83d29dcb49bc25a67822d9b9be4148` |
| 7 | `theorem` | [attachChart_preserves_old_closure](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Atlas/Variantf5d62754e0b8c1c96604f3bdfa9b21026196416720c73f53450cbe69f908c993.lean/declarations/attachchart-preserves-old-closure--956ab278cdd3e473cd3e1ce6.md) | 99 | `result-track:956ab278cdd3e473cd3e1ce65c4a2bb881924112d2e414673f16260db8392c6c` |
| 8 | `theorem` | [attachChart_extends_nodes](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Atlas/Variantf5d62754e0b8c1c96604f3bdfa9b21026196416720c73f53450cbe69f908c993.lean/declarations/attachchart-extends-nodes--a917c17442f6c3572be8a7af.md) | 104 | `result-track:a917c17442f6c3572be8a7afd0c42b7fa3a2dcfbc60dce2d050732ec77bd4899` |
| 9 | `theorem` | [attachChart_extends_bridges](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Atlas/Variantf5d62754e0b8c1c96604f3bdfa9b21026196416720c73f53450cbe69f908c993.lean/declarations/attachchart-extends-bridges--4ac74e29d01ada6ec24b0e55.md) | 109 | `result-track:4ac74e29d01ada6ec24b0e555bd34f2d9533aa50f3a0273f93c01a2266a37c09` |
| 10 | `theorem` | [attachChart_preserves_bridge_interpretation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Atlas/Variantf5d62754e0b8c1c96604f3bdfa9b21026196416720c73f53450cbe69f908c993.lean/declarations/attachchart-preserves-bridge-interpretation--975882cfe2d64e164e39a349.md) | 115 | `result-track:975882cfe2d64e164e39a349ee33753fc0f0d9fd0d8e03e9115f6c0dc054493b` |
| 11 | `theorem` | [attachChart_preserves_targets](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Atlas/Variantf5d62754e0b8c1c96604f3bdfa9b21026196416720c73f53450cbe69f908c993.lean/declarations/attachchart-preserves-targets--e174e2d5cd5c7cff2a12f38c.md) | 122 | `result-track:e174e2d5cd5c7cff2a12f38c86735523e7fbbe437be01bc74ed4c12a67e9c918` |
| 12 | `theorem` | [attachChart_order_independent](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Atlas/Variantf5d62754e0b8c1c96604f3bdfa9b21026196416720c73f53450cbe69f908c993.lean/declarations/attachchart-order-independent--1d7b4482361ec7bc236bb874.md) | 131 | `result-track:1d7b4482361ec7bc236bb8744098111017c442779e70e4bc5b9ec1e2d865a0f6` |
| 13 | `structure` | [TargetedAtlas](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Atlas/Variantf5d62754e0b8c1c96604f3bdfa9b21026196416720c73f53450cbe69f908c993.lean/declarations/targetedatlas--1938c09d9968081326c3feb1.md) | 147 | `declaration-track:1938c09d9968081326c3feb104de1247e38b4d7fc3524472e2bbf13679e2b60e` |
| 14 | `def` | [TargetedAtlas.CompatibleChart](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Atlas/Variantf5d62754e0b8c1c96604f3bdfa9b21026196416720c73f53450cbe69f908c993.lean/declarations/targetedatlas-compatiblechart--e4920a21e46e3ed555dc8bce.md) | 155 | `declaration-track:e4920a21e46e3ed555dc8bce65dd1ce21de5954d24992df938507cf6667b7a88` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Atlas/Variantf5d62754e0b8c1c96604f3bdfa9b21026196416720c73f53450cbe69f908c993.lean/declarations/instance--f190d0a1b896eefa88fd5243.md) | 159 | `declaration-track:f190d0a1b896eefa88fd5243c2478a70ffc6f48a54582b60d4472df22bc715ca` |
| 16 | `def` | [attachTargetedChart](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Atlas/Variantf5d62754e0b8c1c96604f3bdfa9b21026196416720c73f53450cbe69f908c993.lean/declarations/attachtargetedchart--795dc05790fc441617a5a8f6.md) | 167 | `declaration-track:795dc05790fc441617a5a8f6ad78cce20c00a101b402b8365c12656f98da0ff7` |
| 17 | `def` | [tryAttachTargetedChart](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Atlas/Variantf5d62754e0b8c1c96604f3bdfa9b21026196416720c73f53450cbe69f908c993.lean/declarations/tryattachtargetedchart--ae775e326e8068e03e5f1a46.md) | 177 | `declaration-track:ae775e326e8068e03e5f1a460345df80cfc50042586eafb0a92ef96368f2cde7` |
| 18 | `theorem` | [tryAttachTargetedChart_eq_none_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Atlas/Variantf5d62754e0b8c1c96604f3bdfa9b21026196416720c73f53450cbe69f908c993.lean/declarations/tryattachtargetedchart-eq-none-iff--582b6b8cbc4d3a56e51caa87.md) | 182 | `result-track:582b6b8cbc4d3a56e51caa87c630b7088092d5f6a4aa24152dec4110c6c431d2` |
| 19 | `theorem` | [attachTargetedChart_preserves_target_family](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Atlas/Variantf5d62754e0b8c1c96604f3bdfa9b21026196416720c73f53450cbe69f908c993.lean/declarations/attachtargetedchart-preserves-target-family--73f87b39df7725c00f9be04a.md) | 189 | `result-track:73f87b39df7725c00f9be04abf6909834946d4c2677b1f1963c226f4ad3fb25e` |
| 20 | `theorem` | [attachTargetedChart_preserves_leaf_targets](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Atlas/Variantf5d62754e0b8c1c96604f3bdfa9b21026196416720c73f53450cbe69f908c993.lean/declarations/attachtargetedchart-preserves-leaf-targets--5542e2adffd438dc02198761.md) | 194 | `result-track:5542e2adffd438dc02198761afc7cbca08e58bf766e4ab4a966e1c8d700fb76c` |
| 21 | `structure` | [TargetConflict](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Atlas/Variantf5d62754e0b8c1c96604f3bdfa9b21026196416720c73f53450cbe69f908c993.lean/declarations/targetconflict--865dbc444b6f01d42bb6abb8.md) | 205 | `declaration-track:865dbc444b6f01d42bb6abb83c19e3e1821ae3a7c05c881fb548ed5f84143920` |
| 22 | `theorem` | [TargetConflict.blocks_compatibility](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Atlas/Variantf5d62754e0b8c1c96604f3bdfa9b21026196416720c73f53450cbe69f908c993.lean/declarations/targetconflict-blocks-compatibility--3141553d39e65a325aaefd37.md) | 218 | `result-track:3141553d39e65a325aaefd371374052e9e8f6f1b3d75707ec473dd35f9e10343` |
| 23 | `theorem` | [TargetConflict.blocks_attachment](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Atlas/Variantf5d62754e0b8c1c96604f3bdfa9b21026196416720c73f53450cbe69f908c993.lean/declarations/targetconflict-blocks-attachment--29f2816250f0dedecd053e13.md) | 224 | `result-track:29f2816250f0dedecd053e1377c98b3cecf0728248d9a76a24f894aaa4d44432` |
| 24 | `structure` | [ChartConflict](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Atlas/Variantf5d62754e0b8c1c96604f3bdfa9b21026196416720c73f53450cbe69f908c993.lean/declarations/chartconflict--702ffd004d08064390a51324.md) | 231 | `declaration-track:702ffd004d08064390a5132483c77a3ce10e950e34099e14b447fa653d722d07` |
| 25 | `theorem` | [ChartConflict.blocks_admission](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Atlas/Variantf5d62754e0b8c1c96604f3bdfa9b21026196416720c73f53450cbe69f908c993.lean/declarations/chartconflict-blocks-admission--fbd7877ef57c19c50b6713bf.md) | 240 | `result-track:fbd7877ef57c19c50b6713bf79b1dd8f6def33407df074a5082dbbced9233a3c` |
| 26 | `theorem` | [ChartConflict.not_accepted](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Atlas/Variantf5d62754e0b8c1c96604f3bdfa9b21026196416720c73f53450cbe69f908c993.lean/declarations/chartconflict-not-accepted--6c7b366ce2b1cebf7fdfd848.md) | 245 | `result-track:6c7b366ce2b1cebf7fdfd84832ab1da125cb2ba88aa99b2449e782308968c4a2` |
| 27 | `def` | [chartResidual](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Atlas/Variantf5d62754e0b8c1c96604f3bdfa9b21026196416720c73f53450cbe69f908c993.lean/declarations/chartresidual--1bfd06b3ccb62360f346bc0f.md) | 251 | `declaration-track:1bfd06b3ccb62360f346bc0f910cfc1b62e76467a4fe4bc3b9fc8f015eb591d0` |
| 28 | `def` | [chartRank](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Atlas/Variantf5d62754e0b8c1c96604f3bdfa9b21026196416720c73f53450cbe69f908c993.lean/declarations/chartrank--0aa4c73b3ec2e2998ba4578b.md) | 255 | `declaration-track:0aa4c73b3ec2e2998ba4578b99ec5df0de6948cc5bc9ed84dd6276b118b4e3d1` |
| 29 | `def` | [chartTransferGain](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Atlas/Variantf5d62754e0b8c1c96604f3bdfa9b21026196416720c73f53450cbe69f908c993.lean/declarations/charttransfergain--3dd697a2fb3a296a2260c549.md) | 260 | `declaration-track:3dd697a2fb3a296a2260c549ab884b4fb525b18278eacd2018586d82ae6b61a3` |
| 30 | `theorem` | [chart_residual_antitone](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Atlas/Variantf5d62754e0b8c1c96604f3bdfa9b21026196416720c73f53450cbe69f908c993.lean/declarations/chart-residual-antitone--683034300cd29e1d07d100d9.md) | 266 | `result-track:683034300cd29e1d07d100d9d4045707c7fe865a36be5316a2ff593493a573e5` |
| 31 | `theorem` | [chart_burden_antitone](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Atlas/Variantf5d62754e0b8c1c96604f3bdfa9b21026196416720c73f53450cbe69f908c993.lean/declarations/chart-burden-antitone--8637ae70367c259ac83d8904.md) | 273 | `result-track:8637ae70367c259ac83d8904d45eb261d9bfa77e3b8ad0e6b31306c44ae54991` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
