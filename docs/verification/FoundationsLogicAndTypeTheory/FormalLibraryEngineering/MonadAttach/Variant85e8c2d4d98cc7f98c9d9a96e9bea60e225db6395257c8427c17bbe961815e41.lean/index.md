# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MonadAttach.Variant85e8c2d4d98cc7f98c9d9a96e9bea60e225db6395257c8427c17bbe961815e41

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "49d5167b240adbe58de952865f9383506b19c2d4",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadAttach/Variant85e8c2d4d98cc7f98c9d9a96e9bea60e225db6395257c8427c17bbe961815e41.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadAttach/Variant85e8c2d4d98cc7f98c9d9a96e9bea60e225db6395257c8427c17bbe961815e41.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadAttach/Variant85e8c2d4d98cc7f98c9d9a96e9bea60e225db6395257c8427c17bbe961815e41.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `49d5167b240adbe58de952865f9383506b19c2d4`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadAttach/Variant85e8c2d4d98cc7f98c9d9a96e9bea60e225db6395257c8427c17bbe961815e41.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadAttach/Variant85e8c2d4d98cc7f98c9d9a96e9bea60e225db6395257c8427c17bbe961815e41.lean.json)

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
| 1 | `class` | [MonadAttach](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadAttach/Variant85e8c2d4d98cc7f98c9d9a96e9bea60e225db6395257c8427c17bbe961815e41.lean/declarations/monadattach--713eff2edd191e8c485b5514.md) | 30 | `declaration-track:713eff2edd191e8c485b551422b8203d96b911dcb877fcb3bce96d86cbf7e542` |
| 2 | `class` | [WeaklyLawfulMonadAttach](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadAttach/Variant85e8c2d4d98cc7f98c9d9a96e9bea60e225db6395257c8427c17bbe961815e41.lean/declarations/weaklylawfulmonadattach--f91eba6080764570334185cb.md) | 44 | `declaration-track:f91eba6080764570334185cbff8dbe0d3b4164dbc262e5978a6265c87d3e0651` |
| 3 | `class` | [LawfulMonadAttach](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadAttach/Variant85e8c2d4d98cc7f98c9d9a96e9bea60e225db6395257c8427c17bbe961815e41.lean/declarations/lawfulmonadattach--7ee36a393047369a6a72bb80.md) | 51 | `declaration-track:7ee36a393047369a6a72bb806eac6647a4215ec7661cd5a95322960948f4b740` |
| 4 | `def` | [MonadAttach.pbind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadAttach/Variant85e8c2d4d98cc7f98c9d9a96e9bea60e225db6395257c8427c17bbe961815e41.lean/declarations/monadattach-pbind--a76d0a168b3753b10a862adb.md) | 62 | `declaration-track:a76d0a168b3753b10a862adba63f2aab728c7615ec02ed83858e7b62a34d37ab` |
| 5 | `def` | [MonadAttach.trivial](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadAttach/Variant85e8c2d4d98cc7f98c9d9a96e9bea60e225db6395257c8427c17bbe961815e41.lean/declarations/monadattach-trivial--85d6a733cd1c5f80d7c0bfca.md) | 74 | `declaration-track:85d6a733cd1c5f80d7c0bfca2093efa0f4392c69ed38f13738e0ca60e08acddd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
