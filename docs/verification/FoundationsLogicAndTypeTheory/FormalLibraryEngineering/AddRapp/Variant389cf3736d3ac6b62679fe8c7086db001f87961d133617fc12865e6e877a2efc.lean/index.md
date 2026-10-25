# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AddRapp.Variant389cf3736d3ac6b62679fe8c7086db001f87961d133617fc12865e6e877a2efc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cd804d69d39459ed91fa9e94ec56a77eb500ab06",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AddRapp/Variant389cf3736d3ac6b62679fe8c7086db001f87961d133617fc12865e6e877a2efc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AddRapp/Variant389cf3736d3ac6b62679fe8c7086db001f87961d133617fc12865e6e877a2efc.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AddRapp/Variant389cf3736d3ac6b62679fe8c7086db001f87961d133617fc12865e6e877a2efc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cd804d69d39459ed91fa9e94ec56a77eb500ab06`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AddRapp/Variant389cf3736d3ac6b62679fe8c7086db001f87961d133617fc12865e6e877a2efc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AddRapp/Variant389cf3736d3ac6b62679fe8c7086db001f87961d133617fc12865e6e877a2efc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Batteries.Lean.Meta.SavedState` — import line 14; external provider; requires a separately pinned dependency.
- `Aesop.Forward.State.ApplyGoalDiff` — import line 15; external provider; requires a separately pinned dependency.
- `Aesop.Tree.Traversal` — import line 16; external provider; requires a separately pinned dependency.
- `Aesop.Util.UnionFind` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [AddRapp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AddRapp/Variant389cf3736d3ac6b62679fe8c7086db001f87961d133617fc12865e6e877a2efc.lean/declarations/addrapp--2818e98f51233d4f99004af2.md) | 29 | `declaration-track:2818e98f51233d4f99004af2aab62bc9b85bee29614744f2d75113f8b0d5662e` |
| 2 | `def` | [consumedForwardRuleMatches](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AddRapp/Variant389cf3736d3ac6b62679fe8c7086db001f87961d133617fc12865e6e877a2efc.lean/declarations/consumedforwardrulematches--b168fd5031d1233e0aea2203.md) | 36 | `declaration-track:b168fd5031d1233e0aea2203e957391c2b884b241807380a7da466c30f0685eb` |
| 3 | `def` | [findPathForAssignedMVars](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AddRapp/Variant389cf3736d3ac6b62679fe8c7086db001f87961d133617fc12865e6e877a2efc.lean/declarations/findpathforassignedmvars--4a1b820d9ccbc11fdd9af17d.md) | 41 | `declaration-track:4a1b820d9ccbc11fdd9af17d5e5e3aa276da5f36a0d050a5cb5d27bd0eb88120` |
| 4 | `def` | [getGoalsToCopy](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AddRapp/Variant389cf3736d3ac6b62679fe8c7086db001f87961d133617fc12865e6e877a2efc.lean/declarations/getgoalstocopy--66c526caed206369e056bddf.md) | 73 | `declaration-track:66c526caed206369e056bddf70064615aff35037eb3589cc51a411c843d11b6e` |
| 5 | `def` | [copyGoals](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AddRapp/Variant389cf3736d3ac6b62679fe8c7086db001f87961d133617fc12865e6e877a2efc.lean/declarations/copygoals--d8a5882e310621ab55ee919a.md) | 95 | `declaration-track:d8a5882e310621ab55ee919a528853ceed1d79294d0f002b65a5948b01dbf2c9` |
| 6 | `def` | [makeInitialGoal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AddRapp/Variant389cf3736d3ac6b62679fe8c7086db001f87961d133617fc12865e6e877a2efc.lean/declarations/makeinitialgoal--e183bbafb6696f30f3d63d54.md) | 135 | `declaration-track:e183bbafb6696f30f3d63d5465154d5df71a2af99eadfcc675afe0840d5d9f72` |
| 7 | `def` | [addRappUnsafe](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AddRapp/Variant389cf3736d3ac6b62679fe8c7086db001f87961d133617fc12865e6e877a2efc.lean/declarations/addrappunsafe--46e9a4b922d34d8bae71638c.md) | 166 | `declaration-track:46e9a4b922d34d8bae71638cdd806162cdb56ee2e01353f520c0d183a4687fde` |
| 8 | `opaque` | [addRapp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AddRapp/Variant389cf3736d3ac6b62679fe8c7086db001f87961d133617fc12865e6e877a2efc.lean/declarations/addrapp--9cd228ed6dc9d5baf24f1621.md) | 329 | `declaration-track:9cd228ed6dc9d5baf24f16212c7402523de5ec9d909c21daff7bfd4ab1eec270` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
