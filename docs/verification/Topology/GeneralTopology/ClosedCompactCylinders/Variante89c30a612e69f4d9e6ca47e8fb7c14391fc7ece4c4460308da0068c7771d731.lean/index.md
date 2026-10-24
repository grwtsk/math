# Verification target: GRWTSK.Topology.GeneralTopology.ClosedCompactCylinders.Variante89c30a612e69f4d9e6ca47e8fb7c14391fc7ece4c4460308da0068c7771d731

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6c458d555d33554b5589653738b19ac75861cf9e",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ClosedCompactCylinders/Variante89c30a612e69f4d9e6ca47e8fb7c14391fc7ece4c4460308da0068c7771d731.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ClosedCompactCylinders/Variante89c30a612e69f4d9e6ca47e8fb7c14391fc7ece4c4460308da0068c7771d731.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ClosedCompactCylinders/Variante89c30a612e69f4d9e6ca47e8fb7c14391fc7ece4c4460308da0068c7771d731.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6c458d555d33554b5589653738b19ac75861cf9e`.

Source path: `GRWTSK/Topology/GeneralTopology/ClosedCompactCylinders/Variante89c30a612e69f4d9e6ca47e8fb7c14391fc7ece4c4460308da0068c7771d731.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ClosedCompactCylinders/Variante89c30a612e69f4d9e6ca47e8fb7c14391fc7ece4c4460308da0068c7771d731.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Constructions.BorelSpace.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Constructions.Cylinders` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [closedCompactCylinders](../../../../../mathematics/Topology/GeneralTopology/ClosedCompactCylinders/Variante89c30a612e69f4d9e6ca47e8fb7c14391fc7ece4c4460308da0068c7771d731.lean/declarations/closedcompactcylinders--e450e7bcbff4340545609445.md) | 35 | `declaration-track:e450e7bcbff4340545609445594c43ca1bd1be2caa15e7460f75e23c2ec8cec9` |
| 2 | `theorem` | [empty_mem_closedCompactCylinders](../../../../../mathematics/Topology/GeneralTopology/ClosedCompactCylinders/Variante89c30a612e69f4d9e6ca47e8fb7c14391fc7ece4c4460308da0068c7771d731.lean/declarations/empty-mem-closedcompactcylinders--f1a599ae942091e1629ab075.md) | 39 | `result-track:f1a599ae942091e1629ab075f682fbd2c73a7e1fd9e6e033a38f39886e0cfd54` |
| 3 | `theorem` | [mem_closedCompactCylinders](../../../../../mathematics/Topology/GeneralTopology/ClosedCompactCylinders/Variante89c30a612e69f4d9e6ca47e8fb7c14391fc7ece4c4460308da0068c7771d731.lean/declarations/mem-closedcompactcylinders--050d9e9dda87cf8812034332.md) | 43 | `result-track:050d9e9dda87cf8812034332e88baf4c850db55e2ecd22875f84d6a71829a5c3` |
| 4 | `def` | [closedCompactCylinders.finset](../../../../../mathematics/Topology/GeneralTopology/ClosedCompactCylinders/Variante89c30a612e69f4d9e6ca47e8fb7c14391fc7ece4c4460308da0068c7771d731.lean/declarations/closedcompactcylinders-finset--409332e0b78e5bd1a70e4dd4.md) | 49 | `declaration-track:409332e0b78e5bd1a70e4dd444a81725d3efdd8e5f5231ba64d4f91900b3b53b` |
| 5 | `def` | [closedCompactCylinders.set](../../../../../mathematics/Topology/GeneralTopology/ClosedCompactCylinders/Variante89c30a612e69f4d9e6ca47e8fb7c14391fc7ece4c4460308da0068c7771d731.lean/declarations/closedcompactcylinders-set--2142b4927df26cce7a9b5489.md) | 54 | `declaration-track:2142b4927df26cce7a9b5489e57501a04509f742bedae410df7b960c687e6fe2` |
| 6 | `theorem` | [closedCompactCylinders.isClosed](../../../../../mathematics/Topology/GeneralTopology/ClosedCompactCylinders/Variante89c30a612e69f4d9e6ca47e8fb7c14391fc7ece4c4460308da0068c7771d731.lean/declarations/closedcompactcylinders-isclosed--9d9c732c4356034fac8f5d7a.md) | 58 | `result-track:9d9c732c4356034fac8f5d7ab0ffa97f77ae38b669baa0508d438d73d39118dd` |
| 7 | `theorem` | [closedCompactCylinders.isCompact](../../../../../mathematics/Topology/GeneralTopology/ClosedCompactCylinders/Variante89c30a612e69f4d9e6ca47e8fb7c14391fc7ece4c4460308da0068c7771d731.lean/declarations/closedcompactcylinders-iscompact--a638fe7287d41c1bfdf546a7.md) | 62 | `result-track:a638fe7287d41c1bfdf546a7174b5f6b3998bd633b84e1c4905b2f276721f5ce` |
| 8 | `theorem` | [closedCompactCylinders.eq_cylinder](../../../../../mathematics/Topology/GeneralTopology/ClosedCompactCylinders/Variante89c30a612e69f4d9e6ca47e8fb7c14391fc7ece4c4460308da0068c7771d731.lean/declarations/closedcompactcylinders-eq-cylinder--fcc2b1f990e332fa8f2a7606.md) | 66 | `result-track:fcc2b1f990e332fa8f2a7606d770f7d2b550b9f4c8ba37ce56d8d3fadd557017` |
| 9 | `theorem` | [cylinder_mem_closedCompactCylinders](../../../../../mathematics/Topology/GeneralTopology/ClosedCompactCylinders/Variante89c30a612e69f4d9e6ca47e8fb7c14391fc7ece4c4460308da0068c7771d731.lean/declarations/cylinder-mem-closedcompactcylinders--00b3280e3c58e6df47ef4518.md) | 70 | `result-track:00b3280e3c58e6df47ef45180e4af5e371c2c2ff0bb76afb35db22143de29261` |
| 10 | `theorem` | [mem_measurableCylinders_of_mem_closedCompactCylinders](../../../../../mathematics/Topology/GeneralTopology/ClosedCompactCylinders/Variante89c30a612e69f4d9e6ca47e8fb7c14391fc7ece4c4460308da0068c7771d731.lean/declarations/mem-measurablecylinders-of-mem-closedcompactcylinders--34cbf83b416d4aa6ed48e8a6.md) | 76 | `result-track:34cbf83b416d4aa6ed48e8a6062b6a6bd17e71abf0e07169b874b7a3044a8517` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
