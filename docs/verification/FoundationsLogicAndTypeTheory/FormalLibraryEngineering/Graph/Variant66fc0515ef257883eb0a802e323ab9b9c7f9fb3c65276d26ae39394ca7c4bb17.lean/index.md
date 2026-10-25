# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Graph.Variant66fc0515ef257883eb0a802e323ab9b9c7f9fb3c65276d26ae39394ca7c4bb17

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4095d470c9f05ba5b790933f64a677c3a5835aeb",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Graph/Variant66fc0515ef257883eb0a802e323ab9b9c7f9fb3c65276d26ae39394ca7c4bb17.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Graph/Variant66fc0515ef257883eb0a802e323ab9b9c7f9fb3c65276d26ae39394ca7c4bb17.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Graph/Variant66fc0515ef257883eb0a802e323ab9b9c7f9fb3c65276d26ae39394ca7c4bb17.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4095d470c9f05ba5b790933f64a677c3a5835aeb`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Graph/Variant66fc0515ef257883eb0a802e323ab9b9c7f9fb3c65276d26ae39394ca7c4bb17.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Graph/Variant66fc0515ef257883eb0a802e323ab9b9c7f9fb3c65276d26ae39394ca7c4bb17.lean.json)

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
| 1 | `structure` | [WeightedGraph](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Graph/Variant66fc0515ef257883eb0a802e323ab9b9c7f9fb3c65276d26ae39394ca7c4bb17.lean/declarations/weightedgraph--4546a8b8aadce0230ee03a08.md) | 6 | `declaration-track:4546a8b8aadce0230ee03a089e63eb500121f60a94f4451767011910774a63bd` |
| 2 | `structure` | [OllivierRicciDescriptor](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Graph/Variant66fc0515ef257883eb0a802e323ab9b9c7f9fb3c65276d26ae39394ca7c4bb17.lean/declarations/ollivierriccidescriptor--59ae95569be2624e1a77e918.md) | 12 | `declaration-track:59ae95569be2624e1a77e918485d9f2679ef907eaf1da908d76f89a86227f79e` |
| 3 | `structure` | [FormanRicciDescriptor](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Graph/Variant66fc0515ef257883eb0a802e323ab9b9c7f9fb3c65276d26ae39394ca7c4bb17.lean/declarations/formanriccidescriptor--585399b823eaca9bbeedf8c7.md) | 17 | `declaration-track:585399b823eaca9bbeedf8c74a677d081e31f746a1539d067e76f0e5c48679fa` |
| 4 | `structure` | [GraphRicciFlowDescriptor](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Graph/Variant66fc0515ef257883eb0a802e323ab9b9c7f9fb3c65276d26ae39394ca7c4bb17.lean/declarations/graphricciflowdescriptor--f993a420e3ed419aa6b6663a.md) | 21 | `declaration-track:f993a420e3ed419aa6b6663a8c63fdea8dfebafa5c13a8a156f6c1ed66f14a0a` |
| 5 | `theorem` | [weightedGraph_has_finite_vertex_count](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Graph/Variant66fc0515ef257883eb0a802e323ab9b9c7f9fb3c65276d26ae39394ca7c4bb17.lean/declarations/weightedgraph-has-finite-vertex-count--7857718675877afa74ea0360.md) | 27 | `result-track:7857718675877afa74ea0360e31797cf692ff540dac5258d942ee9091ec91bf7` |
| 6 | `theorem` | [ollivierRicciDescriptor_tracks_graph](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Graph/Variant66fc0515ef257883eb0a802e323ab9b9c7f9fb3c65276d26ae39394ca7c4bb17.lean/declarations/ollivierriccidescriptor-tracks-graph--567a85b92244e1aefd12c703.md) | 31 | `result-track:567a85b92244e1aefd12c7035fafdbd14d79d134c5d058b2e3968b41569f7bd9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
