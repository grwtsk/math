# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AddRapp.Varianta3d5fc58f60c4a14992682988937c8c2a0855bce9cf7da20e41f8e8e0831922e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2bea35a00c6cc5cf5c53fb8d30481983ff17c58f",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AddRapp/Varianta3d5fc58f60c4a14992682988937c8c2a0855bce9cf7da20e41f8e8e0831922e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AddRapp/Varianta3d5fc58f60c4a14992682988937c8c2a0855bce9cf7da20e41f8e8e0831922e.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AddRapp/Varianta3d5fc58f60c4a14992682988937c8c2a0855bce9cf7da20e41f8e8e0831922e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2bea35a00c6cc5cf5c53fb8d30481983ff17c58f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AddRapp/Varianta3d5fc58f60c4a14992682988937c8c2a0855bce9cf7da20e41f8e8e0831922e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AddRapp/Varianta3d5fc58f60c4a14992682988937c8c2a0855bce9cf7da20e41f8e8e0831922e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Batteries.Lean.Meta.SavedState` — import line 9; external provider; requires a separately pinned dependency.
- `Aesop.Forward.State.ApplyGoalDiff` — import line 10; external provider; requires a separately pinned dependency.
- `Aesop.Tree.Traversal` — import line 11; external provider; requires a separately pinned dependency.
- `Aesop.Util.UnionFind` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [AddRapp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AddRapp/Varianta3d5fc58f60c4a14992682988937c8c2a0855bce9cf7da20e41f8e8e0831922e.lean/declarations/addrapp--851fb849b7432dc2cc04b740.md) | 21 | `declaration-track:851fb849b7432dc2cc04b740f4e81781bbe11ce71852661718b774c82dd3217d` |
| 2 | `def` | [consumedForwardRuleMatches](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AddRapp/Varianta3d5fc58f60c4a14992682988937c8c2a0855bce9cf7da20e41f8e8e0831922e.lean/declarations/consumedforwardrulematches--0b2bb713af5d7f6e2a522c01.md) | 28 | `declaration-track:0b2bb713af5d7f6e2a522c01b0277e8043ba0347247032fb2c0cb0194e6af6ba` |
| 3 | `def` | [findPathForAssignedMVars](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AddRapp/Varianta3d5fc58f60c4a14992682988937c8c2a0855bce9cf7da20e41f8e8e0831922e.lean/declarations/findpathforassignedmvars--1648e76223c7d6ac6582bfed.md) | 33 | `declaration-track:1648e76223c7d6ac6582bfedc73c12f62f8f26b2fe2d5b8d6ec0d533a1989cba` |
| 4 | `def` | [getGoalsToCopy](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AddRapp/Varianta3d5fc58f60c4a14992682988937c8c2a0855bce9cf7da20e41f8e8e0831922e.lean/declarations/getgoalstocopy--d523ec3b12c4204db4f900d2.md) | 65 | `declaration-track:d523ec3b12c4204db4f900d2ffed681e2b9d981aa635e86478ba480e5dffa02e` |
| 5 | `def` | [copyGoals](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AddRapp/Varianta3d5fc58f60c4a14992682988937c8c2a0855bce9cf7da20e41f8e8e0831922e.lean/declarations/copygoals--b51e81c85a2e92bd915118c3.md) | 87 | `declaration-track:b51e81c85a2e92bd915118c3ca713b1139accd76c78aadff0b6a7a1a018f9a04` |
| 6 | `def` | [makeInitialGoal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AddRapp/Varianta3d5fc58f60c4a14992682988937c8c2a0855bce9cf7da20e41f8e8e0831922e.lean/declarations/makeinitialgoal--5f6d9525028a76f02c727cb0.md) | 127 | `declaration-track:5f6d9525028a76f02c727cb05978649e637fe067d25153475986b53d71dfd754` |
| 7 | `def` | [addRappUnsafe](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AddRapp/Varianta3d5fc58f60c4a14992682988937c8c2a0855bce9cf7da20e41f8e8e0831922e.lean/declarations/addrappunsafe--5cad4977985f7660c1864b30.md) | 158 | `declaration-track:5cad4977985f7660c1864b30b45a7018406b2dd57ccf399e60a709e224a8da3e` |
| 8 | `opaque` | [addRapp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AddRapp/Varianta3d5fc58f60c4a14992682988937c8c2a0855bce9cf7da20e41f8e8e0831922e.lean/declarations/addrapp--9a4216895cc3bceaf5967c49.md) | 321 | `declaration-track:9a4216895cc3bceaf5967c49fccd2c8718d6ee1d915f0b248edf0195af8ba9ac` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
