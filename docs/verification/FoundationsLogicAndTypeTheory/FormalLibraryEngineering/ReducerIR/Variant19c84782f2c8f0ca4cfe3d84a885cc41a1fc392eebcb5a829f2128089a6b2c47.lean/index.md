# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ReducerIR.Variant19c84782f2c8f0ca4cfe3d84a885cc41a1fc392eebcb5a829f2128089a6b2c47

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7a9e1cbb69746dab95aa08a8faaa435a938135b2",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReducerIR/Variant19c84782f2c8f0ca4cfe3d84a885cc41a1fc392eebcb5a829f2128089a6b2c47.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReducerIR/Variant19c84782f2c8f0ca4cfe3d84a885cc41a1fc392eebcb5a829f2128089a6b2c47.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReducerIR/Variant19c84782f2c8f0ca4cfe3d84a885cc41a1fc392eebcb5a829f2128089a6b2c47.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7a9e1cbb69746dab95aa08a8faaa435a938135b2`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReducerIR/Variant19c84782f2c8f0ca4cfe3d84a885cc41a1fc392eebcb5a829f2128089a6b2c47.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReducerIR/Variant19c84782f2c8f0ca4cfe3d84a885cc41a1fc392eebcb5a829f2128089a6b2c47.lean.json)

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
| 1 | `inductive` | [Rep](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReducerIR/Variant19c84782f2c8f0ca4cfe3d84a885cc41a1fc392eebcb5a829f2128089a6b2c47.lean/declarations/rep--335ed5f9f846407a4f9cb998.md) | 21 | `declaration-track:335ed5f9f846407a4f9cb998410592a0fd5bc9689026b80c086056930c271783` |
| 2 | `def` | [Rep.Denote](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReducerIR/Variant19c84782f2c8f0ca4cfe3d84a885cc41a1fc392eebcb5a829f2128089a6b2c47.lean/declarations/rep-denote--c44d3f8b2e81009f65e062a9.md) | 28 | `declaration-track:c44d3f8b2e81009f65e062a91aeb59bb06704461dfd620587e62d86f14240be4` |
| 3 | `inductive` | [ReducerIR](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReducerIR/Variant19c84782f2c8f0ca4cfe3d84a885cc41a1fc392eebcb5a829f2128089a6b2c47.lean/declarations/reducerir--7de19b300dc86905109f1dc1.md) | 34 | `declaration-track:7de19b300dc86905109f1dc1c1ac9ea57960cd29167686c4a10554521aaaf548` |
| 4 | `def` | [eval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReducerIR/Variant19c84782f2c8f0ca4cfe3d84a885cc41a1fc392eebcb5a829f2128089a6b2c47.lean/declarations/eval--b54775ed3f2af76b758ced00.md) | 46 | `declaration-track:b54775ed3f2af76b758ced001b08cc4227675df074b7e6e333feb6fa3ae52322` |
| 5 | `theorem` | [eval_identity](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReducerIR/Variant19c84782f2c8f0ca4cfe3d84a885cc41a1fc392eebcb5a829f2128089a6b2c47.lean/declarations/eval-identity--18244961bea2f5ed48142c2c.md) | 56 | `result-track:18244961bea2f5ed48142c2c64fd8715c8b546a9d260818efb2d6f43fba613e7` |
| 6 | `theorem` | [eval_compose](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReducerIR/Variant19c84782f2c8f0ca4cfe3d84a885cc41a1fc392eebcb5a829f2128089a6b2c47.lean/declarations/eval-compose--896a43149b634a987c400dd1.md) | 61 | `result-track:896a43149b634a987c400dd1dddeb2423e45748a1c3bda4ecbf372cec2021d02` |
| 7 | `theorem` | [eval_sequenceModulo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReducerIR/Variant19c84782f2c8f0ca4cfe3d84a885cc41a1fc392eebcb5a829f2128089a6b2c47.lean/declarations/eval-sequencemodulo--6fc656e468c51532e839c24c.md) | 69 | `result-track:6fc656e468c51532e839c24c1668749caf1f6e6465336c02c2a2d35a17461a90` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
