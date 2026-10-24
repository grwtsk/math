# Verification target: GRWTSK.Analysis.MeasureTheory.EventuallyMeasurable.Variant21ce3ab13009adec7c1bc975349927934fb21e6ebd2c384bab4531d1a3772d4b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "82423dfc0dc133cc4ee295ed1cbabb53915c9f86",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/EventuallyMeasurable/Variant21ce3ab13009adec7c1bc975349927934fb21e6ebd2c384bab4531d1a3772d4b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/EventuallyMeasurable/Variant21ce3ab13009adec7c1bc975349927934fb21e6ebd2c384bab4531d1a3772d4b.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/EventuallyMeasurable/Variant21ce3ab13009adec7c1bc975349927934fb21e6ebd2c384bab4531d1a3772d4b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `82423dfc0dc133cc4ee295ed1cbabb53915c9f86`.

Source path: `GRWTSK/Analysis/MeasureTheory/EventuallyMeasurable/Variant21ce3ab13009adec7c1bc975349927934fb21e6ebd2c384bab4531d1a3772d4b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/EventuallyMeasurable/Variant21ce3ab13009adec7c1bc975349927934fb21e6ebd2c384bab4531d1a3772d4b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.MeasurableSpace.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.CountableInter` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [EventuallyMeasurableSpace](../../../../../mathematics/Analysis/MeasureTheory/EventuallyMeasurable/Variant21ce3ab13009adec7c1bc975349927934fb21e6ebd2c384bab4531d1a3772d4b.lean/declarations/eventuallymeasurablespace--edf5acafecd4536f97a84f2a.md) | 40 | `declaration-track:edf5acafecd4536f97a84f2a116f6bb12e45a8266e58dede112bf0778fc15a63` |
| 2 | `def` | [EventuallyMeasurableSet](../../../../../mathematics/Analysis/MeasureTheory/EventuallyMeasurable/Variant21ce3ab13009adec7c1bc975349927934fb21e6ebd2c384bab4531d1a3772d4b.lean/declarations/eventuallymeasurableset--3766981dc9d5e9dae37cccbd.md) | 51 | `declaration-track:3766981dc9d5e9dae37cccbd931f743b19449576d65bf28fab646a3c4c5d285f` |
| 3 | `theorem` | [MeasurableSet.eventuallyMeasurableSet](../../../../../mathematics/Analysis/MeasureTheory/EventuallyMeasurable/Variant21ce3ab13009adec7c1bc975349927934fb21e6ebd2c384bab4531d1a3772d4b.lean/declarations/measurableset-eventuallymeasurableset--a942b3891d098b548b8a126c.md) | 57 | `result-track:a942b3891d098b548b8a126c2bb38289bf97f3d1db82e5bcf4322d0a524d4082` |
| 4 | `theorem` | [EventuallyMeasurableSpace.measurable_le](../../../../../mathematics/Analysis/MeasureTheory/EventuallyMeasurable/Variant21ce3ab13009adec7c1bc975349927934fb21e6ebd2c384bab4531d1a3772d4b.lean/declarations/eventuallymeasurablespace-measurable-le--bcfb1631e03d293dfdf8b81b.md) | 61 | `result-track:bcfb1631e03d293dfdf8b81be4f0a784f4d267b10ec90fb007b3578087b46203` |
| 5 | `theorem` | [eventuallyMeasurableSet_of_mem_filter](../../../../../mathematics/Analysis/MeasureTheory/EventuallyMeasurable/Variant21ce3ab13009adec7c1bc975349927934fb21e6ebd2c384bab4531d1a3772d4b.lean/declarations/eventuallymeasurableset-of-mem-filter--8c0b8ed682b8f15b63002948.md) | 64 | `result-track:8c0b8ed682b8f15b63002948f45c75520660d834829aceaca92096b98efaddea` |
| 6 | `theorem` | [EventuallyMeasurableSet.congr](../../../../../mathematics/Analysis/MeasureTheory/EventuallyMeasurable/Variant21ce3ab13009adec7c1bc975349927934fb21e6ebd2c384bab4531d1a3772d4b.lean/declarations/eventuallymeasurableset-congr--28b8b27bb07a5a86c698c918.md) | 69 | `result-track:28b8b27bb07a5a86c698c9188a708b8a8ffcb5e40660a4d0f447af65def15fe9` |
| 7 | `instance` | [measurableSingleton](../../../../../mathematics/Analysis/MeasureTheory/EventuallyMeasurable/Variant21ce3ab13009adec7c1bc975349927934fb21e6ebd2c384bab4531d1a3772d4b.lean/declarations/measurablesingleton--a7147ee3019b3c337434f153.md) | 78 | `declaration-track:a7147ee3019b3c337434f1530e8a42fb080dc134b338391593442c61c7842beb` |
| 8 | `def` | [EventuallyMeasurable](../../../../../mathematics/Analysis/MeasureTheory/EventuallyMeasurable/Variant21ce3ab13009adec7c1bc975349927934fb21e6ebd2c384bab4531d1a3772d4b.lean/declarations/eventuallymeasurable--814ac003ad030ed14f5a7ee4.md) | 98 | `declaration-track:814ac003ad030ed14f5a7ee4bb2e1bb3c92c340ca72fd1cbd6a71f9c07033167` |
| 9 | `theorem` | [Measurable.eventuallyMeasurable](../../../../../mathematics/Analysis/MeasureTheory/EventuallyMeasurable/Variant21ce3ab13009adec7c1bc975349927934fb21e6ebd2c384bab4531d1a3772d4b.lean/declarations/measurable-eventuallymeasurable--eb8a400ad3576a9ca6f2995a.md) | 102 | `result-track:eb8a400ad3576a9ca6f2995afc1cd2e5304e7f89d323b3f8c65053b23812d16e` |
| 10 | `theorem` | [Measurable.comp_eventuallyMeasurable](../../../../../mathematics/Analysis/MeasureTheory/EventuallyMeasurable/Variant21ce3ab13009adec7c1bc975349927934fb21e6ebd2c384bab4531d1a3772d4b.lean/declarations/measurable-comp-eventuallymeasurable--7ed803a545b412e3cf32e933.md) | 105 | `result-track:7ed803a545b412e3cf32e933a76d908d189954e636b01de6cde6a95af7e41ec6` |
| 11 | `theorem` | [EventuallyMeasurable.congr](../../../../../mathematics/Analysis/MeasureTheory/EventuallyMeasurable/Variant21ce3ab13009adec7c1bc975349927934fb21e6ebd2c384bab4531d1a3772d4b.lean/declarations/eventuallymeasurable-congr--74c04946f634eea91c3b46dc.md) | 111 | `result-track:74c04946f634eea91c3b46dc1d7d74aa85732bf259a370d70f64a5f9e2ac025c` |
| 12 | `theorem` | [Measurable.eventuallyMeasurable_of_eventuallyEq](../../../../../mathematics/Analysis/MeasureTheory/EventuallyMeasurable/Variant21ce3ab13009adec7c1bc975349927934fb21e6ebd2c384bab4531d1a3772d4b.lean/declarations/measurable-eventuallymeasurable-of-eventuallyeq--a25e5000730007661166034d.md) | 117 | `result-track:a25e5000730007661166034d8b31dcf698d281b7a53224eb537e09b8c4623e6c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
