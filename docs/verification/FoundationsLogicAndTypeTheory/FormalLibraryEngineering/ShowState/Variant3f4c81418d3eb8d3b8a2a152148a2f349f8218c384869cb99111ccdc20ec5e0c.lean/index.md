# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ShowState.Variant3f4c81418d3eb8d3b8a2a152148a2f349f8218c384869cb99111ccdc20ec5e0c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "98310d2b247b37cc5343654a76bc15e6ebd2ee4b",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShowState/Variant3f4c81418d3eb8d3b8a2a152148a2f349f8218c384869cb99111ccdc20ec5e0c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShowState/Variant3f4c81418d3eb8d3b8a2a152148a2f349f8218c384869cb99111ccdc20ec5e0c.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShowState/Variant3f4c81418d3eb8d3b8a2a152148a2f349f8218c384869cb99111ccdc20ec5e0c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `98310d2b247b37cc5343654a76bc15e6ebd2ee4b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShowState/Variant3f4c81418d3eb8d3b8a2a152148a2f349f8218c384869cb99111ccdc20ec5e0c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShowState/Variant3f4c81418d3eb8d3b8a2a152148a2f349f8218c384869cb99111ccdc20ec5e0c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.Grind.PP` — import line 9; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.EMatchTheoremParam` — import line 10; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Split` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ppAsserted?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShowState/Variant3f4c81418d3eb8d3b8a2a152148a2f349f8218c384869cb99111ccdc20ec5e0c.lean/declarations/ppasserted--8f3f3dd8bcbfa58302b30088.md) | 16 | `declaration-track:8f3f3dd8bcbfa58302b3008875bf84069751254645523742aa159941fd0dd715` |
| 2 | `def` | [evalShowAsserted](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShowState/Variant3f4c81418d3eb8d3b8a2a152148a2f349f8218c384869cb99111ccdc20ec5e0c.lean/declarations/evalshowasserted--e5ee75c3577cc91428a170ab.md) | 22 | `declaration-track:e5ee75c3577cc91428a170ab672ce56dbe0f9b10b60ec009cc659bd1fc07d01a` |
| 3 | `def` | [ppProps?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShowState/Variant3f4c81418d3eb8d3b8a2a152148a2f349f8218c384869cb99111ccdc20ec5e0c.lean/declarations/ppprops--572c5011ea6eeed4307b26c5.md) | 28 | `declaration-track:572c5011ea6eeed4307b26c521abe5a2d98f10eeee64e789a850fbb5fcfbf57e` |
| 4 | `def` | [showProps](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShowState/Variant3f4c81418d3eb8d3b8a2a152148a2f349f8218c384869cb99111ccdc20ec5e0c.lean/declarations/showprops--7c221d84a58cb1adbdd9b947.md) | 36 | `declaration-track:7c221d84a58cb1adbdd9b9474cc07fb50fb9d04db663c71cdeb3e7dc25322b56` |
| 5 | `def` | [evalShowTrue](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShowState/Variant3f4c81418d3eb8d3b8a2a152148a2f349f8218c384869cb99111ccdc20ec5e0c.lean/declarations/evalshowtrue--804051b01baa81c58b1ecd00.md) | 42 | `declaration-track:804051b01baa81c58b1ecd00a3a04c02c10469430fbb4eaf33dc6e042a82c705` |
| 6 | `def` | [evalShowFalse](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShowState/Variant3f4c81418d3eb8d3b8a2a152148a2f349f8218c384869cb99111ccdc20ec5e0c.lean/declarations/evalshowfalse--6947d6aa0b9febf35d75351e.md) | 46 | `declaration-track:6947d6aa0b9febf35d75351e3c0142d5f56efc68b83baa64a7060e0851b5b3d5` |
| 7 | `def` | [ppEqcs?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShowState/Variant3f4c81418d3eb8d3b8a2a152148a2f349f8218c384869cb99111ccdc20ec5e0c.lean/declarations/ppeqcs--88908b62ce2e230def949272.md) | 50 | `declaration-track:88908b62ce2e230def949272a29dbfdf8c22d637b4b0d50ddba0e2c136a0dc1a` |
| 8 | `def` | [evalShowEqcs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShowState/Variant3f4c81418d3eb8d3b8a2a152148a2f349f8218c384869cb99111ccdc20ec5e0c.lean/declarations/evalshoweqcs--37b59dedf8282fd87c5b4307.md) | 85 | `declaration-track:37b59dedf8282fd87c5b4307f76ea26009538e66c870f313adde58c39c3a9998` |
| 9 | `def` | [pushIfSome](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShowState/Variant3f4c81418d3eb8d3b8a2a152148a2f349f8218c384869cb99111ccdc20ec5e0c.lean/declarations/pushifsome--222ab8ac8433f7d9d52ce93c.md) | 91 | `declaration-track:222ab8ac8433f7d9d52ce93c9e41f984f486ecd499d26781f49ce28bafbb15dc` |
| 10 | `def` | [showState](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShowState/Variant3f4c81418d3eb8d3b8a2a152148a2f349f8218c384869cb99111ccdc20ec5e0c.lean/declarations/showstate--619546b3881710d93d11a88a.md) | 94 | `declaration-track:619546b3881710d93d11a88a89b57783c39e28d5983ff794ef4291577b27b165` |
| 11 | `def` | [evalShowState](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShowState/Variant3f4c81418d3eb8d3b8a2a152148a2f349f8218c384869cb99111ccdc20ec5e0c.lean/declarations/evalshowstate--efd101f6f0578f9ceb83deaf.md) | 102 | `declaration-track:efd101f6f0578f9ceb83deafb72a213ef37d5dc9f4d95c45dcd396f07b6ec369` |
| 12 | `def` | [evalShowCases](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShowState/Variant3f4c81418d3eb8d3b8a2a152148a2f349f8218c384869cb99111ccdc20ec5e0c.lean/declarations/evalshowcases--bbb1fd4dfc1c0c521280b09d.md) | 107 | `declaration-track:bbb1fd4dfc1c0c521280b09de187afd943bdcb673b1e6ad1fc7d5944a58cee8d` |
| 13 | `def` | [evalShowLocalThms](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShowState/Variant3f4c81418d3eb8d3b8a2a152148a2f349f8218c384869cb99111ccdc20ec5e0c.lean/declarations/evalshowlocalthms--37864fd90cb8b4fff14c7c7f.md) | 118 | `declaration-track:37864fd90cb8b4fff14c7c7f9f6cd73e5327070ff7aa2cbdc9a68e2662725929` |
| 14 | `def` | [evalShowTerm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShowState/Variant3f4c81418d3eb8d3b8a2a152148a2f349f8218c384869cb99111ccdc20ec5e0c.lean/declarations/evalshowterm--4169293fd257ec00d926efe5.md) | 127 | `declaration-track:4169293fd257ec00d926efe53c3fc288227ef1658bdb20de945c80b0b31e067f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
