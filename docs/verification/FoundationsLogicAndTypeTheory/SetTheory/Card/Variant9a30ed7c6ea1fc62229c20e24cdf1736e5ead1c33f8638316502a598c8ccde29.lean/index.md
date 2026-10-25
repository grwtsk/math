# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Card.Variant9a30ed7c6ea1fc62229c20e24cdf1736e5ead1c33f8638316502a598c8ccde29

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "96e96769a8907ae9000436c7eef12f2c09d856f2",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Card/Variant9a30ed7c6ea1fc62229c20e24cdf1736e5ead1c33f8638316502a598c8ccde29.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Card/Variant9a30ed7c6ea1fc62229c20e24cdf1736e5ead1c33f8638316502a598c8ccde29.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Card/Variant9a30ed7c6ea1fc62229c20e24cdf1736e5ead1c33f8638316502a598c8ccde29.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `96e96769a8907ae9000436c7eef12f2c09d856f2`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Card/Variant9a30ed7c6ea1fc62229c20e24cdf1736e5ead1c33f8638316502a598c8ccde29.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/Card/Variant9a30ed7c6ea1fc62229c20e24cdf1736e5ead1c33f8638316502a598c8ccde29.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.MeasurableSpace.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.Regular` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.Continuum` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.Ordinal` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [generateMeasurableRec](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Card/Variant9a30ed7c6ea1fc62229c20e24cdf1736e5ead1c33f8638316502a598c8ccde29.lean/declarations/generatemeasurablerec--2b39c74f0c29f3f2bb68c9eb.md) | 45 | `declaration-track:2b39c74f0c29f3f2bb68c9eb7a460060ad990f88c248c1f65e4612fc77126fd4` |
| 2 | `theorem` | [self_subset_generateMeasurableRec](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Card/Variant9a30ed7c6ea1fc62229c20e24cdf1736e5ead1c33f8638316502a598c8ccde29.lean/declarations/self-subset-generatemeasurablerec--a2f32578c2f8d57eac38f05a.md) | 50 | `result-track:a2f32578c2f8d57eac38f05a54f8d766e950e145997f7b7ac0da36f825ab6d18` |
| 3 | `theorem` | [empty_mem_generateMeasurableRec](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Card/Variant9a30ed7c6ea1fc62229c20e24cdf1736e5ead1c33f8638316502a598c8ccde29.lean/declarations/empty-mem-generatemeasurablerec--1e41dbcbc165eac88ce525a0.md) | 56 | `result-track:1e41dbcbc165eac88ce525a0f6b366e133f3b9b7821a8ce61964231c327f54c7` |
| 4 | `theorem` | [compl_mem_generateMeasurableRec](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Card/Variant9a30ed7c6ea1fc62229c20e24cdf1736e5ead1c33f8638316502a598c8ccde29.lean/declarations/compl-mem-generatemeasurablerec--ecbd62636a00e0a2327bc59b.md) | 61 | `result-track:ecbd62636a00e0a2327bc59bb2c1e2380b81cf2096cf4d5576cd98065b0b11f5` |
| 5 | `theorem` | [iUnion_mem_generateMeasurableRec](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Card/Variant9a30ed7c6ea1fc62229c20e24cdf1736e5ead1c33f8638316502a598c8ccde29.lean/declarations/iunion-mem-generatemeasurablerec--88feda72c297afd833ba0453.md) | 66 | `result-track:88feda72c297afd833ba045367c271d3a46d0c316768cdfad779b2ba5c4f7320` |
| 6 | `theorem` | [generateMeasurableRec_mono](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Card/Variant9a30ed7c6ea1fc62229c20e24cdf1736e5ead1c33f8638316502a598c8ccde29.lean/declarations/generatemeasurablerec-mono--b40c21e2f694558043b4e861.md) | 72 | `result-track:b40c21e2f694558043b4e8617a13452ea4e255f3401aa31f461256ed063934e2` |
| 7 | `theorem` | [generateMeasurableRec_induction](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Card/Variant9a30ed7c6ea1fc62229c20e24cdf1736e5ead1c33f8638316502a598c8ccde29.lean/declarations/generatemeasurablerec-induction--32322738688b4e42f6942a8d.md) | 81 | `result-track:32322738688b4e42f6942a8d2717e1ac164a1c2bdb62434d15a2366db8ffdbf2` |
| 8 | `theorem` | [generateMeasurableRec_omega1](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Card/Variant9a30ed7c6ea1fc62229c20e24cdf1736e5ead1c33f8638316502a598c8ccde29.lean/declarations/generatemeasurablerec-omega1--225fa88c05bd2c48775518e8.md) | 104 | `result-track:225fa88c05bd2c48775518e812c146806e9ba420b0e75449c125497972c9f5d2` |
| 9 | `theorem` | [generateMeasurableRec_subset](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Card/Variant9a30ed7c6ea1fc62229c20e24cdf1736e5ead1c33f8638316502a598c8ccde29.lean/declarations/generatemeasurablerec-subset--872b878d1f8bb4f627d41260.md) | 125 | `result-track:872b878d1f8bb4f627d41260f721116b206c60a280f14bdd7a9f35f951dd6149` |
| 10 | `theorem` | [generateMeasurable_eq_rec](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Card/Variant9a30ed7c6ea1fc62229c20e24cdf1736e5ead1c33f8638316502a598c8ccde29.lean/declarations/generatemeasurable-eq-rec--dd9e93bef5c2a4e072feaea6.md) | 132 | `result-track:dd9e93bef5c2a4e072feaea6d689bfd037d4cab4762f01479db02f97d12ba6da` |
| 11 | `theorem` | [generateMeasurableRec_of_omega1_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Card/Variant9a30ed7c6ea1fc62229c20e24cdf1736e5ead1c33f8638316502a598c8ccde29.lean/declarations/generatemeasurablerec-of-omega1-le--af20ce80d78e0927125397de.md) | 149 | `result-track:af20ce80d78e0927125397de0f327a911c1eaec48b082a23c59f1332368ae737` |
| 12 | `theorem` | [cardinal_generateMeasurableRec_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Card/Variant9a30ed7c6ea1fc62229c20e24cdf1736e5ead1c33f8638316502a598c8ccde29.lean/declarations/cardinal-generatemeasurablerec-le--1e64e59e4f47ea7a1473b1ee.md) | 156 | `result-track:1e64e59e4f47ea7a1473b1eee10379c281f3907f0c2fb11a85ebf62cdfce19b4` |
| 13 | `theorem` | [cardinal_generateMeasurable_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Card/Variant9a30ed7c6ea1fc62229c20e24cdf1736e5ead1c33f8638316502a598c8ccde29.lean/declarations/cardinal-generatemeasurable-le--d552e1634161478a35081613.md) | 192 | `result-track:d552e1634161478a35081613e682f04e8617b0694a38c07afb0e2cc7a0d3c2ff` |
| 14 | `theorem` | [cardinal_measurableSet_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Card/Variant9a30ed7c6ea1fc62229c20e24cdf1736e5ead1c33f8638316502a598c8ccde29.lean/declarations/cardinal-measurableset-le--140798fc1c66d88bb0b4a4af.md) | 199 | `result-track:140798fc1c66d88bb0b4a4af7f379ba0c69281c9829d3e3e20c92930a87688c5` |
| 15 | `theorem` | [cardinal_generateMeasurable_le_continuum](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Card/Variant9a30ed7c6ea1fc62229c20e24cdf1736e5ead1c33f8638316502a598c8ccde29.lean/declarations/cardinal-generatemeasurable-le-continuum--75dfa596e2ca49db25f929f6.md) | 205 | `result-track:75dfa596e2ca49db25f929f6f2d5afd8759904a47a0a95e7c86ebc9bb1e7863f` |
| 16 | `theorem` | [cardinal_measurableSet_le_continuum](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Card/Variant9a30ed7c6ea1fc62229c20e24cdf1736e5ead1c33f8638316502a598c8ccde29.lean/declarations/cardinal-measurableset-le-continuum--34bf2463a99b63f32958bae4.md) | 213 | `result-track:34bf2463a99b63f32958bae470939b715c9d24c544f79ed1d0e4105dc4e13ea4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
