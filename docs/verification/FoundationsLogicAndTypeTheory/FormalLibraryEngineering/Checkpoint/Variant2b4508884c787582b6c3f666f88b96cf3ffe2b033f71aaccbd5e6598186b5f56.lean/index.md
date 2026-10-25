# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Checkpoint.Variant2b4508884c787582b6c3f666f88b96cf3ffe2b033f71aaccbd5e6598186b5f56

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d23e0a4d8efc48159698df00da1169e900c50c03",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Checkpoint/Variant2b4508884c787582b6c3f666f88b96cf3ffe2b033f71aaccbd5e6598186b5f56.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Checkpoint/Variant2b4508884c787582b6c3f666f88b96cf3ffe2b033f71aaccbd5e6598186b5f56.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Checkpoint/Variant2b4508884c787582b6c3f666f88b96cf3ffe2b033f71aaccbd5e6598186b5f56.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d23e0a4d8efc48159698df00da1169e900c50c03`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Checkpoint/Variant2b4508884c787582b6c3f666f88b96cf3ffe2b033f71aaccbd5e6598186b5f56.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Checkpoint/Variant2b4508884c787582b6c3f666f88b96cf3ffe2b033f71aaccbd5e6598186b5f56.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.GraphAccess.Execution` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [AccessCheckpoint](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Checkpoint/Variant2b4508884c787582b6c3f666f88b96cf3ffe2b033f71aaccbd5e6598186b5f56.lean/declarations/accesscheckpoint--3ba19c791447a16640167b12.md) | 12 | `declaration-track:3ba19c791447a16640167b12f631ff4789ef9dc7afd64b0595cc9c551132c357` |
| 2 | `def` | [checkpoint](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Checkpoint/Variant2b4508884c787582b6c3f666f88b96cf3ffe2b033f71aaccbd5e6598186b5f56.lean/declarations/checkpoint--0f2bca68d95c39d4ba06ef19.md) | 35 | `declaration-track:0f2bca68d95c39d4ba06ef19f7c635f50cebfcc5ca8ffa744e9ab0ed1cd782f6` |
| 3 | `def` | [resume](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Checkpoint/Variant2b4508884c787582b6c3f666f88b96cf3ffe2b033f71aaccbd5e6598186b5f56.lean/declarations/resume--7fe2a6a4123b11c692159f66.md) | 56 | `declaration-track:7fe2a6a4123b11c692159f6639874d5ee8a015dc12ae5cf9540538f1fd78f4f9` |
| 4 | `theorem` | [checkpoint_roundtrip](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Checkpoint/Variant2b4508884c787582b6c3f666f88b96cf3ffe2b033f71aaccbd5e6598186b5f56.lean/declarations/checkpoint-roundtrip--425065062c7e920126fc74e1.md) | 66 | `result-track:425065062c7e920126fc74e120a2267692198b8342db36c4a85b867b428bbfd5` |
| 5 | `theorem` | [replay_deterministic](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Checkpoint/Variant2b4508884c787582b6c3f666f88b96cf3ffe2b033f71aaccbd5e6598186b5f56.lean/declarations/replay-deterministic--59f2a2a2c17f09775aa7ea2c.md) | 77 | `result-track:59f2a2a2c17f09775aa7ea2c9be6137d2f9b970429e17debd9b54eb36c2e05b7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
