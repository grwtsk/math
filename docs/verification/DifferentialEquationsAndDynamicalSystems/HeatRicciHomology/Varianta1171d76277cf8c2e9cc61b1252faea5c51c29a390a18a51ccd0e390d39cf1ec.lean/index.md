# Verification target: GRWTSK.DifferentialEquationsAndDynamicalSystems.HeatRicciHomology.Varianta1171d76277cf8c2e9cc61b1252faea5c51c29a390a18a51ccd0e390d39cf1ec

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1bf3538e981bcadcb5dedc0d54afadae7cac4b98",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/DifferentialEquationsAndDynamicalSystems/HeatRicciHomology/Varianta1171d76277cf8c2e9cc61b1252faea5c51c29a390a18a51ccd0e390d39cf1ec.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/DifferentialEquationsAndDynamicalSystems/HeatRicciHomology/Varianta1171d76277cf8c2e9cc61b1252faea5c51c29a390a18a51ccd0e390d39cf1ec.lean/index.md) · [Full source](../../../../mathematics/DifferentialEquationsAndDynamicalSystems/HeatRicciHomology/Varianta1171d76277cf8c2e9cc61b1252faea5c51c29a390a18a51ccd0e390d39cf1ec.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1bf3538e981bcadcb5dedc0d54afadae7cac4b98`.

Source path: `GRWTSK/DifferentialEquationsAndDynamicalSystems/HeatRicciHomology/Varianta1171d76277cf8c2e9cc61b1252faea5c51c29a390a18a51ccd0e390d39cf1ec.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/DifferentialEquationsAndDynamicalSystems/HeatRicciHomology/Varianta1171d76277cf8c2e9cc61b1252faea5c51c29a390a18a51ccd0e390d39cf1ec.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Flow.AnalyticPDE` — import line 6; external provider; requires a separately pinned dependency.
- `Surface.Flow.HilbertTopology` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [analytic_heat_ricci_flow_preserves_declared_homology](../../../../mathematics/DifferentialEquationsAndDynamicalSystems/HeatRicciHomology/Varianta1171d76277cf8c2e9cc61b1252faea5c51c29a390a18a51ccd0e390d39cf1ec.lean/declarations/analytic-heat-ricci-flow-preserves-declared-homology--1490ed4ebe15cdc390c9946a.md) | 37 | `result-track:1490ed4ebe15cdc390c9946a914beba0d214f5925faecae3484c5bcc499c6633` |
| 2 | `structure` | [HilbertFlowHeatRicciHomologySeed](../../../../mathematics/DifferentialEquationsAndDynamicalSystems/HeatRicciHomology/Varianta1171d76277cf8c2e9cc61b1252faea5c51c29a390a18a51ccd0e390d39cf1ec.lean/declarations/hilbertflowheatriccihomologyseed--37f2a23d2d40e57d28bc8535.md) | 51 | `declaration-track:37f2a23d2d40e57d28bc853599e13e59039082e496edfea31361d8e75f601e91` |
| 3 | `def` | [HilbertFlowHeatRicciHomologySeed.certifiedForMajorProof](../../../../mathematics/DifferentialEquationsAndDynamicalSystems/HeatRicciHomology/Varianta1171d76277cf8c2e9cc61b1252faea5c51c29a390a18a51ccd0e390d39cf1ec.lean/declarations/hilbertflowheatriccihomologyseed-certifiedformajorproof--68e21b8079010ecea4c1cd22.md) | 67 | `declaration-track:68e21b8079010ecea4c1cd2235aacec7dd01d975156c0ba8f69b94ac3fc5cca8` |
| 4 | `theorem` | [HilbertFlowHeatRicciHomologySeed.certifiedForMajorProof_of_fields](../../../../mathematics/DifferentialEquationsAndDynamicalSystems/HeatRicciHomology/Varianta1171d76277cf8c2e9cc61b1252faea5c51c29a390a18a51ccd0e390d39cf1ec.lean/declarations/hilbertflowheatriccihomologyseed-certifiedformajorproof-of-fields--204dc6eba9c5940bafc25516.md) | 73 | `result-track:204dc6eba9c5940bafc25516a508e6f1f809b9226090a85706bac46687ba31e4` |
| 5 | `theorem` | [HilbertFlowHeatRicciHomologySeed.implies_trace_scaffold_theoremReady](../../../../mathematics/DifferentialEquationsAndDynamicalSystems/HeatRicciHomology/Varianta1171d76277cf8c2e9cc61b1252faea5c51c29a390a18a51ccd0e390d39cf1ec.lean/declarations/hilbertflowheatriccihomologyseed-implies-trace-scaffold-theoremready--9d27e1f09da42319f57d1c86.md) | 83 | `result-track:9d27e1f09da42319f57d1c86af33b5b214764b4600877bdcdc726c7ad394543d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
