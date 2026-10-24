# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FoundryReducerHierarchy.Variant47612b6717926503f5fd5555fbb878495775bf533afa204d63aa650496e6e0fe

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5403c3a945a0b60e9615a5e3aa5b81250c61d5bb",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FoundryReducerHierarchy/Variant47612b6717926503f5fd5555fbb878495775bf533afa204d63aa650496e6e0fe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FoundryReducerHierarchy/Variant47612b6717926503f5fd5555fbb878495775bf533afa204d63aa650496e6e0fe.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FoundryReducerHierarchy/Variant47612b6717926503f5fd5555fbb878495775bf533afa204d63aa650496e6e0fe.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5403c3a945a0b60e9615a5e3aa5b81250c61d5bb`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FoundryReducerHierarchy/Variant47612b6717926503f5fd5555fbb878495775bf533afa204d63aa650496e6e0fe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FoundryReducerHierarchy/Variant47612b6717926503f5fd5555fbb878495775bf533afa204d63aa650496e6e0fe.lean.json)

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
| 1 | `structure` | [ReducerPipeline](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FoundryReducerHierarchy/Variant47612b6717926503f5fd5555fbb878495775bf533afa204d63aa650496e6e0fe.lean/declarations/reducerpipeline--8ea6be5f596f5a480772f93e.md) | 11 | `declaration-track:8ea6be5f596f5a480772f93ea04eaef2cbae841a7b4f8adca63f1be3fd7c4f12` |
| 2 | `structure` | [FoundryRootReducerPipeline](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FoundryReducerHierarchy/Variant47612b6717926503f5fd5555fbb878495775bf533afa204d63aa650496e6e0fe.lean/declarations/foundryrootreducerpipeline--9de1a330757b4ec0fca2536f.md) | 19 | `declaration-track:9de1a330757b4ec0fca2536fd8a2dc19eae1b9f0cfa7a04bd5b6dc5e1881a4e2` |
| 3 | `structure` | [ReducerPipelineEdge](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FoundryReducerHierarchy/Variant47612b6717926503f5fd5555fbb878495775bf533afa204d63aa650496e6e0fe.lean/declarations/reducerpipelineedge--07cb95d3791fce42799d6ed4.md) | 30 | `declaration-track:07cb95d3791fce42799d6ed4bec65696e33c1156351d018aacff11e5c4680599` |
| 4 | `structure` | [ReducerPipelineNetwork](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FoundryReducerHierarchy/Variant47612b6717926503f5fd5555fbb878495775bf533afa204d63aa650496e6e0fe.lean/declarations/reducerpipelinenetwork--9dd8fbfd44a21f0b2584ff3d.md) | 40 | `declaration-track:9dd8fbfd44a21f0b2584ff3de15b5222256a8cfcd0ea095621fc02f0ffcfe044` |
| 5 | `theorem` | [foundry_first_witness_observer_reducer_pipeline_sound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FoundryReducerHierarchy/Variant47612b6717926503f5fd5555fbb878495775bf533afa204d63aa650496e6e0fe.lean/declarations/foundry-first-witness-observer-reducer-pipeline-sound--eab6c23dd47308d674f6507e.md) | 56 | `result-track:eab6c23dd47308d674f6507e18bd500fcdc290ee698e37ec2c5eed0fed32a1f3` |
| 6 | `theorem` | [subordinate_reducer_pipeline_composition_sound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FoundryReducerHierarchy/Variant47612b6717926503f5fd5555fbb878495775bf533afa204d63aa650496e6e0fe.lean/declarations/subordinate-reducer-pipeline-composition-sound--e344762e2db31bd6c6a9c1e3.md) | 69 | `result-track:e344762e2db31bd6c6a9c1e37a8e2f344ef991b772a6458878d48440446d466d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
