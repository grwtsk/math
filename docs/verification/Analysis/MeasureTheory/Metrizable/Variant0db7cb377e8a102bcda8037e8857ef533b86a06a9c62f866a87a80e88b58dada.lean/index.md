# Verification target: GRWTSK.Analysis.MeasureTheory.Metrizable.Variant0db7cb377e8a102bcda8037e8857ef533b86a06a9c62f866a87a80e88b58dada

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ecf94bdc7041124b91c86d7d3c33fc6bc2a0bacc",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Metrizable/Variant0db7cb377e8a102bcda8037e8857ef533b86a06a9c62f866a87a80e88b58dada.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Metrizable/Variant0db7cb377e8a102bcda8037e8857ef533b86a06a9c62f866a87a80e88b58dada.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Metrizable/Variant0db7cb377e8a102bcda8037e8857ef533b86a06a9c62f866a87a80e88b58dada.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ecf94bdc7041124b91c86d7d3c33fc6bc2a0bacc`.

Source path: `GRWTSK/Analysis/MeasureTheory/Metrizable/Variant0db7cb377e8a102bcda8037e8857ef533b86a06a9c62f866a87a80e88b58dada.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Metrizable/Variant0db7cb377e8a102bcda8037e8857ef533b86a06a9c62f866a87a80e88b58dada.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Constructions.BorelSpace.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Metrizable` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [measurable_of_tendsto_ennreal'](../../../../../mathematics/Analysis/MeasureTheory/Metrizable/Variant0db7cb377e8a102bcda8037e8857ef533b86a06a9c62f866a87a80e88b58dada.lean/declarations/measurable-of-tendsto-ennreal--e005754bedd870c7dfdf70d5.md) | 29 | `result-track:e005754bedd870c7dfdf70d5aed6de35f54def943cf3fb7a892e19562b531cd2` |
| 2 | `theorem` | [measurable_of_tendsto_ennreal](../../../../../mathematics/Analysis/MeasureTheory/Metrizable/Variant0db7cb377e8a102bcda8037e8857ef533b86a06a9c62f866a87a80e88b58dada.lean/declarations/measurable-of-tendsto-ennreal--443b79b71d4dc1461afb20f9.md) | 43 | `result-track:443b79b71d4dc1461afb20f901ade0fb887652dc8235e4a2229a16f94c668236` |
| 3 | `theorem` | [measurable_of_tendsto_nnreal'](../../../../../mathematics/Analysis/MeasureTheory/Metrizable/Variant0db7cb377e8a102bcda8037e8857ef533b86a06a9c62f866a87a80e88b58dada.lean/declarations/measurable-of-tendsto-nnreal--05d9d0ac2a35a01fe849d664.md) | 49 | `result-track:05d9d0ac2a35a01fe849d664cc58adfa1f71d590ef7da79670bbec6270c46029` |
| 4 | `theorem` | [measurable_of_tendsto_nnreal](../../../../../mathematics/Analysis/MeasureTheory/Metrizable/Variant0db7cb377e8a102bcda8037e8857ef533b86a06a9c62f866a87a80e88b58dada.lean/declarations/measurable-of-tendsto-nnreal--6a872ae7bd756130baa89c93.md) | 59 | `result-track:6a872ae7bd756130baa89c939b83bb0d2f38be34863920076097ef602e076e46` |
| 5 | `theorem` | [measurable_of_tendsto_metrizable'](../../../../../mathematics/Analysis/MeasureTheory/Metrizable/Variant0db7cb377e8a102bcda8037e8857ef533b86a06a9c62f866a87a80e88b58dada.lean/declarations/measurable-of-tendsto-metrizable--4245c098394a9b7c6a2b3bae.md) | 66 | `result-track:4245c098394a9b7c6a2b3bae1ff522ba6d34b3c219138a6192bccfb03fb1c776` |
| 6 | `theorem` | [measurable_of_tendsto_metrizable](../../../../../mathematics/Analysis/MeasureTheory/Metrizable/Variant0db7cb377e8a102bcda8037e8857ef533b86a06a9c62f866a87a80e88b58dada.lean/declarations/measurable-of-tendsto-metrizable--fd92cd903094c10c033179b4.md) | 87 | `result-track:fd92cd903094c10c033179b4558de3118eb3f248bd6cce09cf7e51bf2390280d` |
| 7 | `theorem` | [aemeasurable_of_tendsto_metrizable_ae](../../../../../mathematics/Analysis/MeasureTheory/Metrizable/Variant0db7cb377e8a102bcda8037e8857ef533b86a06a9c62f866a87a80e88b58dada.lean/declarations/aemeasurable-of-tendsto-metrizable-ae--94f2768adadc2e2c25827e67.md) | 92 | `result-track:94f2768adadc2e2c25827e67ae18324113e7977c34c680b4ca25abfadb30209b` |
| 8 | `theorem` | [aemeasurable_of_tendsto_metrizable_ae'](../../../../../mathematics/Analysis/MeasureTheory/Metrizable/Variant0db7cb377e8a102bcda8037e8857ef533b86a06a9c62f866a87a80e88b58dada.lean/declarations/aemeasurable-of-tendsto-metrizable-ae--839866279245edde38a4a37e.md) | 116 | `result-track:839866279245edde38a4a37e9ebc970fd1f0fd44b21b101f714c435fb44c82ce` |
| 9 | `theorem` | [aemeasurable_of_unif_approx](../../../../../mathematics/Analysis/MeasureTheory/Metrizable/Variant0db7cb377e8a102bcda8037e8857ef533b86a06a9c62f866a87a80e88b58dada.lean/declarations/aemeasurable-of-unif-approx--9d87690f5cc1e1168755e503.md) | 122 | `result-track:9d87690f5cc1e1168755e503f7e9a7d14e36b01da770b2e750e7ea19f0dc7170` |
| 10 | `theorem` | [measurable_of_tendsto_metrizable_ae](../../../../../mathematics/Analysis/MeasureTheory/Metrizable/Variant0db7cb377e8a102bcda8037e8857ef533b86a06a9c62f866a87a80e88b58dada.lean/declarations/measurable-of-tendsto-metrizable-ae--05928537bd77b414684de98e.md) | 139 | `result-track:05928537bd77b414684de98e15c30f25916fd9596fdd5169a60137159b82a091` |
| 11 | `theorem` | [measurable_limit_of_tendsto_metrizable_ae](../../../../../mathematics/Analysis/MeasureTheory/Metrizable/Variant0db7cb377e8a102bcda8037e8857ef533b86a06a9c62f866a87a80e88b58dada.lean/declarations/measurable-limit-of-tendsto-metrizable-ae--3eeb29c1019e113373202bcf.md) | 146 | `result-track:3eeb29c1019e113373202bcfd968e9b68c068f8509ba09df6cc20d58ff51d975` |
| 12 | `lemma` | [measurableSet_of_tendsto_indicator](../../../../../mathematics/Analysis/MeasureTheory/Metrizable/Variant0db7cb377e8a102bcda8037e8857ef533b86a06a9c62f866a87a80e88b58dada.lean/declarations/measurableset-of-tendsto-indicator--d076057d2cd815239d498d30.md) | 184 | `result-track:d076057d2cd815239d498d300cc31abe64ed448c021d3629184dcac59f62f100` |
| 13 | `lemma` | [nullMeasurableSet_of_tendsto_indicator](../../../../../mathematics/Analysis/MeasureTheory/Metrizable/Variant0db7cb377e8a102bcda8037e8857ef533b86a06a9c62f866a87a80e88b58dada.lean/declarations/nullmeasurableset-of-tendsto-indicator--e95f148887961e389a5a7b1f.md) | 192 | `result-track:e95f148887961e389a5a7b1f53318d8a843990f038641516a30ee064eb0e1148` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
