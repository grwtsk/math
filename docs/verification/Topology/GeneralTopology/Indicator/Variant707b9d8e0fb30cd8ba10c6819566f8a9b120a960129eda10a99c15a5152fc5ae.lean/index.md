# Verification target: GRWTSK.Topology.GeneralTopology.Indicator.Variant707b9d8e0fb30cd8ba10c6819566f8a9b120a960129eda10a99c15a5152fc5ae

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9d0040a4dbf735790de8ed15a3cee477684388ab",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Indicator/Variant707b9d8e0fb30cd8ba10c6819566f8a9b120a960129eda10a99c15a5152fc5ae.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variant707b9d8e0fb30cd8ba10c6819566f8a9b120a960129eda10a99c15a5152fc5ae.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variant707b9d8e0fb30cd8ba10c6819566f8a9b120a960129eda10a99c15a5152fc5ae.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9d0040a4dbf735790de8ed15a3cee477684388ab`.

Source path: `GRWTSK/Topology/GeneralTopology/Indicator/Variant707b9d8e0fb30cd8ba10c6819566f8a9b120a960129eda10a99c15a5152fc5ae.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Indicator/Variant707b9d8e0fb30cd8ba10c6819566f8a9b120a960129eda10a99c15a5152fc5ae.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Constructions.BorelSpace.Metrizable` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Lebesgue.DominatedConvergence` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [tendsto_measure_of_ae_tendsto_indicator](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variant707b9d8e0fb30cd8ba10c6819566f8a9b120a960129eda10a99c15a5152fc5ae.lean/declarations/tendsto-measure-of-ae-tendsto-indicator--14460a1e6ee5b4a80ec5bbd3.md) | 41 | `result-track:14460a1e6ee5b4a80ec5bbd3f14e097114f354b02a55021deaac15831222e83c` |
| 2 | `lemma` | [tendsto_measure_of_ae_tendsto_indicator_of_isFiniteMeasure](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variant707b9d8e0fb30cd8ba10c6819566f8a9b120a960129eda10a99c15a5152fc5ae.lean/declarations/tendsto-measure-of-ae-tendsto-indicator-of-isfinitemeasure--7f87c638d4eca3b8db238e5b.md) | 59 | `result-track:7f87c638d4eca3b8db238e5b27935988b9abdba4d75a9bb7e687153267e87be8` |
| 3 | `lemma` | [tendsto_measure_of_tendsto_indicator](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variant707b9d8e0fb30cd8ba10c6819566f8a9b120a960129eda10a99c15a5152fc5ae.lean/declarations/tendsto-measure-of-tendsto-indicator--98a67e7cadd0ec856f9f0c7f.md) | 69 | `result-track:98a67e7cadd0ec856f9f0c7f5603e398d25c09a4e8e6cd2f663b0fbb1336b782` |
| 4 | `lemma` | [tendsto_measure_of_tendsto_indicator_of_isFiniteMeasure](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variant707b9d8e0fb30cd8ba10c6819566f8a9b120a960129eda10a99c15a5152fc5ae.lean/declarations/tendsto-measure-of-tendsto-indicator-of-isfinitemeasure--6354cd9544a8fcbe222b2824.md) | 82 | `result-track:6354cd9544a8fcbe222b282480202b386df24cb073108cf78e8a9b466460769f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
