# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LoopProtection.Variant3e26c7a3f4bceb7c99475e78ebbf0c79a76f130d51fc029e57db0844d98a0a87

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "277b4c8fa59addefcb02853153daf138ce47812d",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LoopProtection/Variant3e26c7a3f4bceb7c99475e78ebbf0c79a76f130d51fc029e57db0844d98a0a87.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LoopProtection/Variant3e26c7a3f4bceb7c99475e78ebbf0c79a76f130d51fc029e57db0844d98a0a87.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LoopProtection/Variant3e26c7a3f4bceb7c99475e78ebbf0c79a76f130d51fc029e57db0844d98a0a87.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `277b4c8fa59addefcb02853153daf138ce47812d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LoopProtection/Variant3e26c7a3f4bceb7c99475e78ebbf0c79a76f130d51fc029e57db0844d98a0a87.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LoopProtection/Variant3e26c7a3f4bceb7c99475e78ebbf0c79a76f130d51fc029e57db0844d98a0a87.lean.json)

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
| 1 | `def` | [withFreshUsedTheorems](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LoopProtection/Variant3e26c7a3f4bceb7c99475e78ebbf0c79a76f130d51fc029e57db0844d98a0a87.lean/declarations/withfreshusedtheorems--d4b799987923a42fa1fd1e25.md) | 31 | `declaration-track:d4b799987923a42fa1fd1e2594c56d6ea4ff79030f6afda8ee024031ad44f898` |
| 2 | `def` | [ppOrigins](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LoopProtection/Variant3e26c7a3f4bceb7c99475e78ebbf0c79a76f130d51fc029e57db0844d98a0a87.lean/declarations/pporigins--50f06e5e219db80caa228cd5.md) | 36 | `declaration-track:50f06e5e219db80caa228cd5ebdb905f614d6193514facd622977cde26458a6e` |
| 3 | `def` | [mkLoopWarningMsg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LoopProtection/Variant3e26c7a3f4bceb7c99475e78ebbf0c79a76f130d51fc029e57db0844d98a0a87.lean/declarations/mkloopwarningmsg--d7ac8f1acce6fd402549de96.md) | 39 | `declaration-track:d7ac8f1acce6fd402549de9637574cfb19323f3c7e63dcb5c1fe87ca1bcb4a68` |
| 4 | `def` | [shouldCheckLoops](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LoopProtection/Variant3e26c7a3f4bceb7c99475e78ebbf0c79a76f130d51fc029e57db0844d98a0a87.lean/declarations/shouldcheckloops--724623515d9ea87b51c35deb.md) | 54 | `declaration-track:724623515d9ea87b51c35deb2f8e5829d805212c3555553cc0a1c2f7e73f1e05` |
| 5 | `def` | [checkLoops](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LoopProtection/Variant3e26c7a3f4bceb7c99475e78ebbf0c79a76f130d51fc029e57db0844d98a0a87.lean/declarations/checkloops--a23124b0cd7d9a5d3fa3d043.md) | 68 | `declaration-track:a23124b0cd7d9a5d3fa3d0437703adae701ce8b5f5fd61538dd3d45254ddb81a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
