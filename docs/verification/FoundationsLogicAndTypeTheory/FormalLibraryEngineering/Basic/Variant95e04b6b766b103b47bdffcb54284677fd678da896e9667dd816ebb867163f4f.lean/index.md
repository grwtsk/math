# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Variant95e04b6b766b103b47bdffcb54284677fd678da896e9667dd816ebb867163f4f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "767fdb19ca01f56a32149ffbb65ee701ffee6502",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant95e04b6b766b103b47bdffcb54284677fd678da896e9667dd816ebb867163f4f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant95e04b6b766b103b47bdffcb54284677fd678da896e9667dd816ebb867163f4f.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant95e04b6b766b103b47bdffcb54284677fd678da896e9667dd816ebb867163f4f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `767fdb19ca01f56a32149ffbb65ee701ffee6502`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant95e04b6b766b103b47bdffcb54284677fd678da896e9667dd816ebb867163f4f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant95e04b6b766b103b47bdffcb54284677fd678da896e9667dd816ebb867163f4f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Order.CollectFacts` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Edge](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant95e04b6b766b103b47bdffcb54284677fd678da896e9667dd816ebb867163f4f.lean/declarations/edge--d837165a5571b8f3132143ad.md) | 21 | `declaration-track:d837165a5571b8f3132143adaad632944cf8d5ee66c346ba57fa2abb69e08302` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant95e04b6b766b103b47bdffcb54284677fd678da896e9667dd816ebb867163f4f.lean/declarations/instance--ffe09669cf0644021b65b693.md) | 30 | `declaration-track:ffe09669cf0644021b65b693d79cc18d551ba83924fcc01466e40605a3254e0a` |
| 3 | `abbrev` | [Graph](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant95e04b6b766b103b47bdffcb54284677fd678da896e9667dd816ebb867163f4f.lean/declarations/graph--228626a6bd959c7d109f32ff.md) | 35 | `declaration-track:228626a6bd959c7d109f32ff4ff6389d628098225563984a1e3d9db533dcb838` |
| 4 | `def` | [addEdge](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant95e04b6b766b103b47bdffcb54284677fd678da896e9667dd816ebb867163f4f.lean/declarations/addedge--b2b9bcea870077940d0daf0a.md) | 40 | `declaration-track:b2b9bcea870077940d0daf0ad1ffe172561ae5e6f72f7ecb0adb6aa3ceed6252` |
| 5 | `def` | [constructLeGraph](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant95e04b6b766b103b47bdffcb54284677fd678da896e9667dd816ebb867163f4f.lean/declarations/constructlegraph--a43a49daea65f42c6ba6831b.md) | 44 | `declaration-track:a43a49daea65f42c6ba6831b985bc0b35c2e0e694cb5c2cc726520249bfc3b72` |
| 6 | `structure` | [DFSState](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant95e04b6b766b103b47bdffcb54284677fd678da896e9667dd816ebb867163f4f.lean/declarations/dfsstate--e92ab83fb66d6448dbb91d7d.md) | 52 | `declaration-track:e92ab83fb66d6448dbb91d7d6ee79b26dd4d0914faf204c68b1fa86ccfd73ea9` |
| 7 | `def` | [buildTransitiveLeProofDFS](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant95e04b6b766b103b47bdffcb54284677fd678da896e9667dd816ebb867163f4f.lean/declarations/buildtransitiveleproofdfs--941249f001c36b7db80a1946.md) | 58 | `declaration-track:941249f001c36b7db80a194664de41aeeced6b66c1d5e7bc94f356550f85274d` |
| 8 | `def` | [buildTransitiveLeProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant95e04b6b766b103b47bdffcb54284677fd678da896e9667dd816ebb867163f4f.lean/declarations/buildtransitiveleproof--23eef6a7b19b99394590b3ee.md) | 72 | `declaration-track:23eef6a7b19b99394590b3ee9637799ff4c5b8c6e6b5acc2614e7094a86a3fc6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
