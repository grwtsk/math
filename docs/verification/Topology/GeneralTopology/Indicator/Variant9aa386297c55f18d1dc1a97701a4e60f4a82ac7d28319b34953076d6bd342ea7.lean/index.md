# Verification target: GRWTSK.Topology.GeneralTopology.Indicator.Variant9aa386297c55f18d1dc1a97701a4e60f4a82ac7d28319b34953076d6bd342ea7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cddacc48e361eba2fe6d6a5e59e77d872d9ea922",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Indicator/Variant9aa386297c55f18d1dc1a97701a4e60f4a82ac7d28319b34953076d6bd342ea7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variant9aa386297c55f18d1dc1a97701a4e60f4a82ac7d28319b34953076d6bd342ea7.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variant9aa386297c55f18d1dc1a97701a4e60f4a82ac7d28319b34953076d6bd342ea7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cddacc48e361eba2fe6d6a5e59e77d872d9ea922`.

Source path: `GRWTSK/Topology/GeneralTopology/Indicator/Variant9aa386297c55f18d1dc1a97701a4e60f4a82ac7d28319b34953076d6bd342ea7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Indicator/Variant9aa386297c55f18d1dc1a97701a4e60f4a82ac7d28319b34953076d6bd342ea7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Constructions.BorelSpace.Metrizable` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Lebesgue.DominatedConvergence` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [tendsto_measure_of_ae_tendsto_indicator](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variant9aa386297c55f18d1dc1a97701a4e60f4a82ac7d28319b34953076d6bd342ea7.lean/declarations/tendsto-measure-of-ae-tendsto-indicator--701edb49b5c9c4c3ed6b5c3f.md) | 49 | `result-track:701edb49b5c9c4c3ed6b5c3feeef57824a06ff619c8776f31b0073b74a5a15c3` |
| 2 | `lemma` | [tendsto_measure_of_ae_tendsto_indicator_of_isFiniteMeasure](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variant9aa386297c55f18d1dc1a97701a4e60f4a82ac7d28319b34953076d6bd342ea7.lean/declarations/tendsto-measure-of-ae-tendsto-indicator-of-isfinitemeasure--3d5cff939603dc3c7245c565.md) | 67 | `result-track:3d5cff939603dc3c7245c5656de2606dff4b3a636327cf023bd7de8e2f655c85` |
| 3 | `lemma` | [tendsto_measure_of_tendsto_indicator](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variant9aa386297c55f18d1dc1a97701a4e60f4a82ac7d28319b34953076d6bd342ea7.lean/declarations/tendsto-measure-of-tendsto-indicator--057b651566d96a956b47650c.md) | 77 | `result-track:057b651566d96a956b47650c9b37bed00301ec561bf2bf8d4d3cd4ae743e7b11` |
| 4 | `lemma` | [tendsto_measure_of_tendsto_indicator_of_isFiniteMeasure](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variant9aa386297c55f18d1dc1a97701a4e60f4a82ac7d28319b34953076d6bd342ea7.lean/declarations/tendsto-measure-of-tendsto-indicator-of-isfinitemeasure--9d56619ac780237d2ac0b723.md) | 90 | `result-track:9d56619ac780237d2ac0b723aca7b08d3eff381e84387f5c9a95029d7cc419d4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
