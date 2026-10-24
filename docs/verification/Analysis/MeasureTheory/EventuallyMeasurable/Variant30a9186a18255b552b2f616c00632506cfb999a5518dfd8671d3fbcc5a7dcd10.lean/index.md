# Verification target: GRWTSK.Analysis.MeasureTheory.EventuallyMeasurable.Variant30a9186a18255b552b2f616c00632506cfb999a5518dfd8671d3fbcc5a7dcd10

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1bd69126fbae107fc4b6bde6a8a9673d146901ce",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/EventuallyMeasurable/Variant30a9186a18255b552b2f616c00632506cfb999a5518dfd8671d3fbcc5a7dcd10.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/EventuallyMeasurable/Variant30a9186a18255b552b2f616c00632506cfb999a5518dfd8671d3fbcc5a7dcd10.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/EventuallyMeasurable/Variant30a9186a18255b552b2f616c00632506cfb999a5518dfd8671d3fbcc5a7dcd10.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1bd69126fbae107fc4b6bde6a8a9673d146901ce`.

Source path: `GRWTSK/Analysis/MeasureTheory/EventuallyMeasurable/Variant30a9186a18255b552b2f616c00632506cfb999a5518dfd8671d3fbcc5a7dcd10.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/EventuallyMeasurable/Variant30a9186a18255b552b2f616c00632506cfb999a5518dfd8671d3fbcc5a7dcd10.lean.json)

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
| 1 | `def` | [eventuallyMeasurableSpace](../../../../../mathematics/Analysis/MeasureTheory/EventuallyMeasurable/Variant30a9186a18255b552b2f616c00632506cfb999a5518dfd8671d3fbcc5a7dcd10.lean/declarations/eventuallymeasurablespace--560781eef69fe971ba557b19.md) | 44 | `declaration-track:560781eef69fe971ba557b19e454685524955440dfb0376fefdff5d20b647c78` |
| 2 | `def` | [EventuallyMeasurableSet](../../../../../mathematics/Analysis/MeasureTheory/EventuallyMeasurable/Variant30a9186a18255b552b2f616c00632506cfb999a5518dfd8671d3fbcc5a7dcd10.lean/declarations/eventuallymeasurableset--2aefb72686b262a44be466a2.md) | 55 | `declaration-track:2aefb72686b262a44be466a2137b299186ff38721079b5472bb851a623c66a3e` |
| 3 | `theorem` | [MeasurableSet.eventuallyMeasurableSet](../../../../../mathematics/Analysis/MeasureTheory/EventuallyMeasurable/Variant30a9186a18255b552b2f616c00632506cfb999a5518dfd8671d3fbcc5a7dcd10.lean/declarations/measurableset-eventuallymeasurableset--8fda892a17f4573d9371c2ad.md) | 61 | `result-track:8fda892a17f4573d9371c2adafa5398fb54a8868a25ee08dc8a20d8865194741` |
| 4 | `theorem` | [le_eventuallyMeasurableSpace](../../../../../mathematics/Analysis/MeasureTheory/EventuallyMeasurable/Variant30a9186a18255b552b2f616c00632506cfb999a5518dfd8671d3fbcc5a7dcd10.lean/declarations/le-eventuallymeasurablespace--aa83339e4c15cabf100a3099.md) | 65 | `result-track:aa83339e4c15cabf100a3099f95a9ec508db1211d7a0da7547716c0dd65217de` |
| 5 | `theorem` | [eventuallyMeasurableSet_of_mem_filter](../../../../../mathematics/Analysis/MeasureTheory/EventuallyMeasurable/Variant30a9186a18255b552b2f616c00632506cfb999a5518dfd8671d3fbcc5a7dcd10.lean/declarations/eventuallymeasurableset-of-mem-filter--fcefc743a9b94edbaf912b97.md) | 68 | `result-track:fcefc743a9b94edbaf912b97b62c000ad07adfa2a754466e8c8f902ee9a53455` |
| 6 | `theorem` | [EventuallyMeasurableSet.congr](../../../../../mathematics/Analysis/MeasureTheory/EventuallyMeasurable/Variant30a9186a18255b552b2f616c00632506cfb999a5518dfd8671d3fbcc5a7dcd10.lean/declarations/eventuallymeasurableset-congr--d0f9f82f9c5a545853cf1d5a.md) | 73 | `result-track:d0f9f82f9c5a545853cf1d5ad2165f2cd240c5ef3cf97fbfb43fcee21b196594` |
| 7 | `instance` | [eventuallyMeasurableSingleton](../../../../../mathematics/Analysis/MeasureTheory/EventuallyMeasurable/Variant30a9186a18255b552b2f616c00632506cfb999a5518dfd8671d3fbcc5a7dcd10.lean/declarations/eventuallymeasurablesingleton--b02418255a0b5c51f7d6d98f.md) | 80 | `declaration-track:b02418255a0b5c51f7d6d98f4da64e7824c3d984963baa1f7d98b1cf4d4c09d8` |
| 8 | `def` | [EventuallyMeasurable](../../../../../mathematics/Analysis/MeasureTheory/EventuallyMeasurable/Variant30a9186a18255b552b2f616c00632506cfb999a5518dfd8671d3fbcc5a7dcd10.lean/declarations/eventuallymeasurable--e6486f90f1c35b373273f556.md) | 98 | `declaration-track:e6486f90f1c35b373273f556bc5b8673a59513a8d9f40e1942fbccc5d756804e` |
| 9 | `theorem` | [Measurable.eventuallyMeasurable](../../../../../mathematics/Analysis/MeasureTheory/EventuallyMeasurable/Variant30a9186a18255b552b2f616c00632506cfb999a5518dfd8671d3fbcc5a7dcd10.lean/declarations/measurable-eventuallymeasurable--c6d315af70c8df0bd3edc63a.md) | 102 | `result-track:c6d315af70c8df0bd3edc63a7034b5444760e2b94d69944aebaf847a23775467` |
| 10 | `theorem` | [Measurable.comp_eventuallyMeasurable](../../../../../mathematics/Analysis/MeasureTheory/EventuallyMeasurable/Variant30a9186a18255b552b2f616c00632506cfb999a5518dfd8671d3fbcc5a7dcd10.lean/declarations/measurable-comp-eventuallymeasurable--bb5507accf1b1aa8670e6d66.md) | 105 | `result-track:bb5507accf1b1aa8670e6d6604e73b5bb01cc3d397b278bee5af2bd28e7a589f` |
| 11 | `theorem` | [EventuallyMeasurable.congr](../../../../../mathematics/Analysis/MeasureTheory/EventuallyMeasurable/Variant30a9186a18255b552b2f616c00632506cfb999a5518dfd8671d3fbcc5a7dcd10.lean/declarations/eventuallymeasurable-congr--dd507380be2e9a8211b5a1f8.md) | 111 | `result-track:dd507380be2e9a8211b5a1f8237ae0d55bde29d57fcd04113663d923adaabad9` |
| 12 | `theorem` | [Measurable.eventuallyMeasurable_of_eventuallyEq](../../../../../mathematics/Analysis/MeasureTheory/EventuallyMeasurable/Variant30a9186a18255b552b2f616c00632506cfb999a5518dfd8671d3fbcc5a7dcd10.lean/declarations/measurable-eventuallymeasurable-of-eventuallyeq--2b3c9c6ba431c87ceb074e10.md) | 117 | `result-track:2b3c9c6ba431c87ceb074e101a6dc97f17fc8234c250948c5984e577fe19d7f8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
