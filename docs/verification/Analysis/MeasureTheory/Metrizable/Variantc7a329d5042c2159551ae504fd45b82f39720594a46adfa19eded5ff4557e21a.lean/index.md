# Verification target: GRWTSK.Analysis.MeasureTheory.Metrizable.Variantc7a329d5042c2159551ae504fd45b82f39720594a46adfa19eded5ff4557e21a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f73e1446affd40b5b4d32215dd098d03b7020b54",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Metrizable/Variantc7a329d5042c2159551ae504fd45b82f39720594a46adfa19eded5ff4557e21a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Metrizable/Variantc7a329d5042c2159551ae504fd45b82f39720594a46adfa19eded5ff4557e21a.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Metrizable/Variantc7a329d5042c2159551ae504fd45b82f39720594a46adfa19eded5ff4557e21a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f73e1446affd40b5b4d32215dd098d03b7020b54`.

Source path: `GRWTSK/Analysis/MeasureTheory/Metrizable/Variantc7a329d5042c2159551ae504fd45b82f39720594a46adfa19eded5ff4557e21a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Metrizable/Variantc7a329d5042c2159551ae504fd45b82f39720594a46adfa19eded5ff4557e21a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Constructions.BorelSpace.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Metrizable` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [measurable_of_tendsto_ennreal'](../../../../../mathematics/Analysis/MeasureTheory/Metrizable/Variantc7a329d5042c2159551ae504fd45b82f39720594a46adfa19eded5ff4557e21a.lean/declarations/measurable-of-tendsto-ennreal--77f7be6eac70222d91afd0ea.md) | 37 | `result-track:77f7be6eac70222d91afd0eacce8abddfa56dc14123de3ee7ef48d07e4250951` |
| 2 | `theorem` | [measurable_of_tendsto_ennreal](../../../../../mathematics/Analysis/MeasureTheory/Metrizable/Variantc7a329d5042c2159551ae504fd45b82f39720594a46adfa19eded5ff4557e21a.lean/declarations/measurable-of-tendsto-ennreal--6b1881067b89ced7a5da125c.md) | 51 | `result-track:6b1881067b89ced7a5da125c7bd4e5faaeaf0e0338f074c9093974f8c8701bb4` |
| 3 | `theorem` | [measurable_of_tendsto_nnreal'](../../../../../mathematics/Analysis/MeasureTheory/Metrizable/Variantc7a329d5042c2159551ae504fd45b82f39720594a46adfa19eded5ff4557e21a.lean/declarations/measurable-of-tendsto-nnreal--7d1900eeb9f58756874facd7.md) | 57 | `result-track:7d1900eeb9f58756874facd7f22d3841fff96f6fc8e13c5fe5646f0147772701` |
| 4 | `theorem` | [measurable_of_tendsto_nnreal](../../../../../mathematics/Analysis/MeasureTheory/Metrizable/Variantc7a329d5042c2159551ae504fd45b82f39720594a46adfa19eded5ff4557e21a.lean/declarations/measurable-of-tendsto-nnreal--bd32e88f517430b38d42e615.md) | 67 | `result-track:bd32e88f517430b38d42e6153927bc6854f35293c172edea3a676b1c17cfbb76` |
| 5 | `theorem` | [measurable_of_tendsto_metrizable'](../../../../../mathematics/Analysis/MeasureTheory/Metrizable/Variantc7a329d5042c2159551ae504fd45b82f39720594a46adfa19eded5ff4557e21a.lean/declarations/measurable-of-tendsto-metrizable--bb77ef0c10ed718cc265b855.md) | 74 | `result-track:bb77ef0c10ed718cc265b855a80e4a6ad021069f0c6173a8ebea63f45dad8656` |
| 6 | `theorem` | [measurable_of_tendsto_metrizable](../../../../../mathematics/Analysis/MeasureTheory/Metrizable/Variantc7a329d5042c2159551ae504fd45b82f39720594a46adfa19eded5ff4557e21a.lean/declarations/measurable-of-tendsto-metrizable--201f02dd6f5eef09f21f98e8.md) | 95 | `result-track:201f02dd6f5eef09f21f98e8aea42130c522b22d1bb67c0a1d7ee98a3dfd15b8` |
| 7 | `theorem` | [aemeasurable_of_tendsto_metrizable_ae](../../../../../mathematics/Analysis/MeasureTheory/Metrizable/Variantc7a329d5042c2159551ae504fd45b82f39720594a46adfa19eded5ff4557e21a.lean/declarations/aemeasurable-of-tendsto-metrizable-ae--8a5790dd6de0c4bc3485b4b8.md) | 100 | `result-track:8a5790dd6de0c4bc3485b4b840394550c672b0718a3459276b06b3767a2b1672` |
| 8 | `theorem` | [aemeasurable_of_tendsto_metrizable_ae'](../../../../../mathematics/Analysis/MeasureTheory/Metrizable/Variantc7a329d5042c2159551ae504fd45b82f39720594a46adfa19eded5ff4557e21a.lean/declarations/aemeasurable-of-tendsto-metrizable-ae--921bf7f3cf9e6ebacb67b721.md) | 124 | `result-track:921bf7f3cf9e6ebacb67b7214597fd6ffa4608628ce824410a7b75feec76fcd4` |
| 9 | `theorem` | [aemeasurable_of_unif_approx](../../../../../mathematics/Analysis/MeasureTheory/Metrizable/Variantc7a329d5042c2159551ae504fd45b82f39720594a46adfa19eded5ff4557e21a.lean/declarations/aemeasurable-of-unif-approx--ad7656efea0309603f11a7af.md) | 130 | `result-track:ad7656efea0309603f11a7af1b2bf2bf7cde5373118123e0537264146cb9cfbe` |
| 10 | `theorem` | [measurable_of_tendsto_metrizable_ae](../../../../../mathematics/Analysis/MeasureTheory/Metrizable/Variantc7a329d5042c2159551ae504fd45b82f39720594a46adfa19eded5ff4557e21a.lean/declarations/measurable-of-tendsto-metrizable-ae--2fe0fddd0d3c706e029879e0.md) | 147 | `result-track:2fe0fddd0d3c706e029879e04399a5dde7892f5cc99f4521cb6e64f5599e561e` |
| 11 | `theorem` | [measurable_limit_of_tendsto_metrizable_ae](../../../../../mathematics/Analysis/MeasureTheory/Metrizable/Variantc7a329d5042c2159551ae504fd45b82f39720594a46adfa19eded5ff4557e21a.lean/declarations/measurable-limit-of-tendsto-metrizable-ae--8e6b782ffa9c147839143340.md) | 154 | `result-track:8e6b782ffa9c147839143340a262bfd73d47d320f3b22a6f2c589f1c1060972d` |
| 12 | `lemma` | [measurableSet_of_tendsto_indicator](../../../../../mathematics/Analysis/MeasureTheory/Metrizable/Variantc7a329d5042c2159551ae504fd45b82f39720594a46adfa19eded5ff4557e21a.lean/declarations/measurableset-of-tendsto-indicator--8b3cee711cb0e576a8ee37b0.md) | 192 | `result-track:8b3cee711cb0e576a8ee37b07725eae57a735010b1638c9ef85cff1033d33e73` |
| 13 | `lemma` | [nullMeasurableSet_of_tendsto_indicator](../../../../../mathematics/Analysis/MeasureTheory/Metrizable/Variantc7a329d5042c2159551ae504fd45b82f39720594a46adfa19eded5ff4557e21a.lean/declarations/nullmeasurableset-of-tendsto-indicator--4d36b0f927b12889ed8c8f0d.md) | 200 | `result-track:4d36b0f927b12889ed8c8f0d065446e2b46e42d9848b7a070916bec01efedf4c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
