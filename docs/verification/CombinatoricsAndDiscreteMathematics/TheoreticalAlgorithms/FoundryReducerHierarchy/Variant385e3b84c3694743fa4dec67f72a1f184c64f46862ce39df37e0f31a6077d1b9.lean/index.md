# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FoundryReducerHierarchy.Variant385e3b84c3694743fa4dec67f72a1f184c64f46862ce39df37e0f31a6077d1b9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "666acd35005bb5c87aa666630b36f06c4093324b",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FoundryReducerHierarchy/Variant385e3b84c3694743fa4dec67f72a1f184c64f46862ce39df37e0f31a6077d1b9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FoundryReducerHierarchy/Variant385e3b84c3694743fa4dec67f72a1f184c64f46862ce39df37e0f31a6077d1b9.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FoundryReducerHierarchy/Variant385e3b84c3694743fa4dec67f72a1f184c64f46862ce39df37e0f31a6077d1b9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `666acd35005bb5c87aa666630b36f06c4093324b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FoundryReducerHierarchy/Variant385e3b84c3694743fa4dec67f72a1f184c64f46862ce39df37e0f31a6077d1b9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FoundryReducerHierarchy/Variant385e3b84c3694743fa4dec67f72a1f184c64f46862ce39df37e0f31a6077d1b9.lean.json)

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
| 1 | `structure` | [ReducerPipeline](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FoundryReducerHierarchy/Variant385e3b84c3694743fa4dec67f72a1f184c64f46862ce39df37e0f31a6077d1b9.lean/declarations/reducerpipeline--793eaf137def0019e5ff4933.md) | 19 | `declaration-track:793eaf137def0019e5ff4933e1714cf84b832c4ce604f0b912e7bacb5c3aea14` |
| 2 | `structure` | [FoundryRootReducerPipeline](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FoundryReducerHierarchy/Variant385e3b84c3694743fa4dec67f72a1f184c64f46862ce39df37e0f31a6077d1b9.lean/declarations/foundryrootreducerpipeline--cc1d86bbe69b8fcdc23e56e8.md) | 27 | `declaration-track:cc1d86bbe69b8fcdc23e56e835d104b3f09ffd29bd5caa5e75654ab0481c02b9` |
| 3 | `structure` | [ReducerPipelineEdge](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FoundryReducerHierarchy/Variant385e3b84c3694743fa4dec67f72a1f184c64f46862ce39df37e0f31a6077d1b9.lean/declarations/reducerpipelineedge--2ea43c5ddceb455998262e4d.md) | 38 | `declaration-track:2ea43c5ddceb455998262e4dcde6d68f1eda9ed8063cf872462568cdd9317d19` |
| 4 | `structure` | [ReducerPipelineNetwork](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FoundryReducerHierarchy/Variant385e3b84c3694743fa4dec67f72a1f184c64f46862ce39df37e0f31a6077d1b9.lean/declarations/reducerpipelinenetwork--d12feca95001c8b3ee8ee8f1.md) | 48 | `declaration-track:d12feca95001c8b3ee8ee8f148eaafe3a2451c77dcf6dbfbb17e412424ee819e` |
| 5 | `theorem` | [foundry_first_witness_observer_reducer_pipeline_sound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FoundryReducerHierarchy/Variant385e3b84c3694743fa4dec67f72a1f184c64f46862ce39df37e0f31a6077d1b9.lean/declarations/foundry-first-witness-observer-reducer-pipeline-sound--e06ba6ce5936d6d08a5e87e6.md) | 64 | `result-track:e06ba6ce5936d6d08a5e87e65d15f448843b36ec5431f98ade0dbf0ac86de1b4` |
| 6 | `theorem` | [subordinate_reducer_pipeline_composition_sound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FoundryReducerHierarchy/Variant385e3b84c3694743fa4dec67f72a1f184c64f46862ce39df37e0f31a6077d1b9.lean/declarations/subordinate-reducer-pipeline-composition-sound--fe02e8feb6bdbde130f45561.md) | 77 | `result-track:fe02e8feb6bdbde130f45561d24aa0effc54303dba27f8418b5ba05eb7f400da` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
