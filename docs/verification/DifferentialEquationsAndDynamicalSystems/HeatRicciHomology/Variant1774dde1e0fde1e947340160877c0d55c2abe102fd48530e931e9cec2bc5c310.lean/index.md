# Verification target: GRWTSK.DifferentialEquationsAndDynamicalSystems.HeatRicciHomology.Variant1774dde1e0fde1e947340160877c0d55c2abe102fd48530e931e9cec2bc5c310

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d5fb1e603ef5ce3f570c8d6fc6e3d5ca81f623ee",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/DifferentialEquationsAndDynamicalSystems/HeatRicciHomology/Variant1774dde1e0fde1e947340160877c0d55c2abe102fd48530e931e9cec2bc5c310.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/DifferentialEquationsAndDynamicalSystems/HeatRicciHomology/Variant1774dde1e0fde1e947340160877c0d55c2abe102fd48530e931e9cec2bc5c310.lean/index.md) · [Full source](../../../../mathematics/DifferentialEquationsAndDynamicalSystems/HeatRicciHomology/Variant1774dde1e0fde1e947340160877c0d55c2abe102fd48530e931e9cec2bc5c310.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d5fb1e603ef5ce3f570c8d6fc6e3d5ca81f623ee`.

Source path: `GRWTSK/DifferentialEquationsAndDynamicalSystems/HeatRicciHomology/Variant1774dde1e0fde1e947340160877c0d55c2abe102fd48530e931e9cec2bc5c310.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/DifferentialEquationsAndDynamicalSystems/HeatRicciHomology/Variant1774dde1e0fde1e947340160877c0d55c2abe102fd48530e931e9cec2bc5c310.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Flow.AnalyticPDE` — import line 1; external provider; requires a separately pinned dependency.
- `Surface.Flow.HilbertTopology` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [analytic_heat_ricci_flow_preserves_declared_homology](../../../../mathematics/DifferentialEquationsAndDynamicalSystems/HeatRicciHomology/Variant1774dde1e0fde1e947340160877c0d55c2abe102fd48530e931e9cec2bc5c310.lean/declarations/analytic-heat-ricci-flow-preserves-declared-homology--81f5de0b6d2f48caa2a20129.md) | 29 | `result-track:81f5de0b6d2f48caa2a20129f2502568fa411626103a19be12fb172b1b7dfd4b` |
| 2 | `structure` | [HilbertFlowHeatRicciHomologySeed](../../../../mathematics/DifferentialEquationsAndDynamicalSystems/HeatRicciHomology/Variant1774dde1e0fde1e947340160877c0d55c2abe102fd48530e931e9cec2bc5c310.lean/declarations/hilbertflowheatriccihomologyseed--3f7868a9918d0e3ee0bade1b.md) | 43 | `declaration-track:3f7868a9918d0e3ee0bade1b3c7ac6ee23ea24bbd5d597d3f10949ee02b10d99` |
| 3 | `def` | [HilbertFlowHeatRicciHomologySeed.certifiedForMajorProof](../../../../mathematics/DifferentialEquationsAndDynamicalSystems/HeatRicciHomology/Variant1774dde1e0fde1e947340160877c0d55c2abe102fd48530e931e9cec2bc5c310.lean/declarations/hilbertflowheatriccihomologyseed-certifiedformajorproof--5a2da5d00bf271a3a610d1bb.md) | 59 | `declaration-track:5a2da5d00bf271a3a610d1bb226fd024d0e613c28b1ea394c862a81a20284a5d` |
| 4 | `theorem` | [HilbertFlowHeatRicciHomologySeed.certifiedForMajorProof_of_fields](../../../../mathematics/DifferentialEquationsAndDynamicalSystems/HeatRicciHomology/Variant1774dde1e0fde1e947340160877c0d55c2abe102fd48530e931e9cec2bc5c310.lean/declarations/hilbertflowheatriccihomologyseed-certifiedformajorproof-of-fields--cdea0628dd5243925170f332.md) | 65 | `result-track:cdea0628dd5243925170f33299e21450cd9e8c7f93fbcf632fa8f34dd18f5ce3` |
| 5 | `theorem` | [HilbertFlowHeatRicciHomologySeed.implies_trace_scaffold_theoremReady](../../../../mathematics/DifferentialEquationsAndDynamicalSystems/HeatRicciHomology/Variant1774dde1e0fde1e947340160877c0d55c2abe102fd48530e931e9cec2bc5c310.lean/declarations/hilbertflowheatriccihomologyseed-implies-trace-scaffold-theoremready--fdbb5eeb434e390f49a325f7.md) | 75 | `result-track:fdbb5eeb434e390f49a325f78d1cf7ee60f8946ba82e56ce83db8a65cbe61fd9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
