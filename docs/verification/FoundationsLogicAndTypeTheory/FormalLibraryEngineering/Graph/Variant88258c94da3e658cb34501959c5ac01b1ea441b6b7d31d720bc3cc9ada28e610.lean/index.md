# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Graph.Variant88258c94da3e658cb34501959c5ac01b1ea441b6b7d31d720bc3cc9ada28e610

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "30aa7f8d53096a6fbad51efcc7b7f8158836b16b",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Graph/Variant88258c94da3e658cb34501959c5ac01b1ea441b6b7d31d720bc3cc9ada28e610.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Graph/Variant88258c94da3e658cb34501959c5ac01b1ea441b6b7d31d720bc3cc9ada28e610.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Graph/Variant88258c94da3e658cb34501959c5ac01b1ea441b6b7d31d720bc3cc9ada28e610.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `30aa7f8d53096a6fbad51efcc7b7f8158836b16b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Graph/Variant88258c94da3e658cb34501959c5ac01b1ea441b6b7d31d720bc3cc9ada28e610.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Graph/Variant88258c94da3e658cb34501959c5ac01b1ea441b6b7d31d720bc3cc9ada28e610.lean.json)

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
| 1 | `structure` | [WeightedGraph](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Graph/Variant88258c94da3e658cb34501959c5ac01b1ea441b6b7d31d720bc3cc9ada28e610.lean/declarations/weightedgraph--c92d1b15ac6ca6faad41b480.md) | 14 | `declaration-track:c92d1b15ac6ca6faad41b480bbcf0c607b97bee14ef25200aa4ec8c845a8f2d2` |
| 2 | `structure` | [OllivierRicciDescriptor](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Graph/Variant88258c94da3e658cb34501959c5ac01b1ea441b6b7d31d720bc3cc9ada28e610.lean/declarations/ollivierriccidescriptor--51810e03a9336e0fe31d73df.md) | 20 | `declaration-track:51810e03a9336e0fe31d73df01c47a01ebc1f95d1b42d096a11764840c749bb9` |
| 3 | `structure` | [FormanRicciDescriptor](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Graph/Variant88258c94da3e658cb34501959c5ac01b1ea441b6b7d31d720bc3cc9ada28e610.lean/declarations/formanriccidescriptor--2823e4293cc2dacf06ca807f.md) | 25 | `declaration-track:2823e4293cc2dacf06ca807fa0a804bee0ade7276e464c677199d5742a444ef9` |
| 4 | `structure` | [GraphRicciFlowDescriptor](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Graph/Variant88258c94da3e658cb34501959c5ac01b1ea441b6b7d31d720bc3cc9ada28e610.lean/declarations/graphricciflowdescriptor--843deed692b938e195497acd.md) | 29 | `declaration-track:843deed692b938e195497acd1c0b71444c923db5a65efc28b9376e3ae1027d37` |
| 5 | `theorem` | [weightedGraph_has_finite_vertex_count](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Graph/Variant88258c94da3e658cb34501959c5ac01b1ea441b6b7d31d720bc3cc9ada28e610.lean/declarations/weightedgraph-has-finite-vertex-count--0e5f744de27377f360605fdd.md) | 35 | `result-track:0e5f744de27377f360605fddc106c08315dd502f6fede1bf859a7f976e482cea` |
| 6 | `theorem` | [ollivierRicciDescriptor_tracks_graph](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Graph/Variant88258c94da3e658cb34501959c5ac01b1ea441b6b7d31d720bc3cc9ada28e610.lean/declarations/ollivierriccidescriptor-tracks-graph--ab9e7b08a331a16bb7ebd59f.md) | 39 | `result-track:ab9e7b08a331a16bb7ebd59fbb1db2c7eddb203043379e0299fcdef65bd49248` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
