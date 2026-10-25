# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Variant865d300daf75865e4c456b7bf0b5f3d576ebe5dfbb770d7b3db0336703d49c4b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3273033ea6b5cab238ad9677058c0f6ceb7cdc9b",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant865d300daf75865e4c456b7bf0b5f3d576ebe5dfbb770d7b3db0336703d49c4b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant865d300daf75865e4c456b7bf0b5f3d576ebe5dfbb770d7b3db0336703d49c4b.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant865d300daf75865e4c456b7bf0b5f3d576ebe5dfbb770d7b3db0336703d49c4b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3273033ea6b5cab238ad9677058c0f6ceb7cdc9b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant865d300daf75865e4c456b7bf0b5f3d576ebe5dfbb770d7b3db0336703d49c4b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant865d300daf75865e4c456b7bf0b5f3d576ebe5dfbb770d7b3db0336703d49c4b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Order.CollectFacts` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Edge](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant865d300daf75865e4c456b7bf0b5f3d576ebe5dfbb770d7b3db0336703d49c4b.lean/declarations/edge--2fc5f60921440e06d161ab33.md) | 29 | `declaration-track:2fc5f60921440e06d161ab338376d1d54d865f5f99c9d70d4950164e1343a7ef` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant865d300daf75865e4c456b7bf0b5f3d576ebe5dfbb770d7b3db0336703d49c4b.lean/declarations/instance--c9ffac66a82fe4fbb1ea00af.md) | 38 | `declaration-track:c9ffac66a82fe4fbb1ea00af898564e2ee445c4f70148d1f2e2609250520bd90` |
| 3 | `abbrev` | [Graph](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant865d300daf75865e4c456b7bf0b5f3d576ebe5dfbb770d7b3db0336703d49c4b.lean/declarations/graph--e38c5659e71225b7e0621164.md) | 43 | `declaration-track:e38c5659e71225b7e06211649c9c918f621d0c832a0a6d1e2aae07f5b93be308` |
| 4 | `def` | [addEdge](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant865d300daf75865e4c456b7bf0b5f3d576ebe5dfbb770d7b3db0336703d49c4b.lean/declarations/addedge--af01b01e6339e7d166c4042c.md) | 48 | `declaration-track:af01b01e6339e7d166c4042ca203f2ff203493f1a3d0fcb4c3b71f97ea5bc00e` |
| 5 | `def` | [constructLeGraph](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant865d300daf75865e4c456b7bf0b5f3d576ebe5dfbb770d7b3db0336703d49c4b.lean/declarations/constructlegraph--8bd4c157bf139bfe2f7210b5.md) | 52 | `declaration-track:8bd4c157bf139bfe2f7210b5079f1fdd4d79b902dfb67072c17e42c278066862` |
| 6 | `structure` | [DFSState](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant865d300daf75865e4c456b7bf0b5f3d576ebe5dfbb770d7b3db0336703d49c4b.lean/declarations/dfsstate--582f94096c15480a790d203b.md) | 60 | `declaration-track:582f94096c15480a790d203ba6ef70cfa46e095741f82c869027796dc74f6d5a` |
| 7 | `def` | [buildTransitiveLeProofDFS](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant865d300daf75865e4c456b7bf0b5f3d576ebe5dfbb770d7b3db0336703d49c4b.lean/declarations/buildtransitiveleproofdfs--d2bdd75623143ca32123329b.md) | 66 | `declaration-track:d2bdd75623143ca32123329b57988844cfe04fee2248ddbdab63b879af031585` |
| 8 | `def` | [buildTransitiveLeProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant865d300daf75865e4c456b7bf0b5f3d576ebe5dfbb770d7b3db0336703d49c4b.lean/declarations/buildtransitiveleproof--930c8d2f02cb2b1e7d836253.md) | 80 | `declaration-track:930c8d2f02cb2b1e7d836253a4fd63dcf2ed134f43425bb2e4cca97b76bc507f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
