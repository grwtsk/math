# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SimpH.Variantb4fb1623b7113e3a93785acb840d25c406f370f69eeb921c21cacf811d0da4e9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "25a0c4de815639b2326686698b2403f757c1035d",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpH/Variantb4fb1623b7113e3a93785acb840d25c406f370f69eeb921c21cacf811d0da4e9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpH/Variantb4fb1623b7113e3a93785acb840d25c406f370f69eeb921c21cacf811d0da4e9.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpH/Variantb4fb1623b7113e3a93785acb840d25c406f370f69eeb921c21cacf811d0da4e9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `25a0c4de815639b2326686698b2403f757c1035d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpH/Variantb4fb1623b7113e3a93785acb840d25c406f370f69eeb921c21cacf811d0da4e9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpH/Variantb4fb1623b7113e3a93785acb840d25c406f370f69eeb921c21cacf811d0da4e9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.Contradiction` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [State](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpH/Variantb4fb1623b7113e3a93785acb840d25c406f370f69eeb921c21cacf811d0da4e9.lean/declarations/state--36934b646cb741cd8d41d7be.md) | 32 | `declaration-track:36934b646cb741cd8d41d7be7af357199487bded8c7ae6d4b58415437d574f98` |
| 2 | `abbrev` | [M](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpH/Variantb4fb1623b7113e3a93785acb840d25c406f370f69eeb921c21cacf811d0da4e9.lean/declarations/m--7792d90dbfae742519096c4b.md) | 38 | `declaration-track:7792d90dbfae742519096c4bac6df6c0e78f1a24ac493b8f22e0a03e3c5c980f` |
| 3 | `def` | [applySubst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpH/Variantb4fb1623b7113e3a93785acb840d25c406f370f69eeb921c21cacf811d0da4e9.lean/declarations/applysubst--30502f36e82c94b3628a9d49.md) | 44 | `declaration-track:30502f36e82c94b3628a9d495524be71bc05b71e739dfba49245fef5a3c881a9` |
| 4 | `def` | [substRHS](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpH/Variantb4fb1623b7113e3a93785acb840d25c406f370f69eeb921c21cacf811d0da4e9.lean/declarations/substrhs--9ef3ef3e45b78aeac5787744.md) | 53 | `declaration-track:9ef3ef3e45b78aeac5787744d539889feb018d0220e2ab4db539a0a88541960a` |
| 5 | `def` | [isDone](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpH/Variantb4fb1623b7113e3a93785acb840d25c406f370f69eeb921c21cacf811d0da4e9.lean/declarations/isdone--679853ec377cad5fa7c65139.md) | 63 | `declaration-track:679853ec377cad5fa7c65139549033c2bc2c196f0348a55b832a10feee81afcb` |
| 6 | `def` | [contradiction](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpH/Variantb4fb1623b7113e3a93785acb840d25c406f370f69eeb921c21cacf811d0da4e9.lean/declarations/contradiction--791f2705df044458ec8b2e11.md) | 67 | `declaration-track:791f2705df044458ec8b2e1174325f44c4b5b39244c4132bb908813d8945cee2` |
| 7 | `def` | [trySubstVarsAndContradiction](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpH/Variantb4fb1623b7113e3a93785acb840d25c406f370f69eeb921c21cacf811d0da4e9.lean/declarations/trysubstvarsandcontradiction--522a41f130b8fe5105d16fd3.md) | 74 | `declaration-track:522a41f130b8fe5105d16fd3a96d57bd899dfc77fafe2490907713a3c2926a6b` |
| 8 | `def` | [processNextEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpH/Variantb4fb1623b7113e3a93785acb840d25c406f370f69eeb921c21cacf811d0da4e9.lean/declarations/processnexteq--db7c3ce2ac89c328c1a4c1aa.md) | 85 | `declaration-track:db7c3ce2ac89c328c1a4c1aac01e568d4d4eae0d28ab363ef5c1b64a8392987b` |
| 9 | `def` | [go](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpH/Variantb4fb1623b7113e3a93785acb840d25c406f370f69eeb921c21cacf811d0da4e9.lean/declarations/go--58c6668daf1d6ff1c4fb4bdf.md) | 121 | `declaration-track:58c6668daf1d6ff1c4fb4bdfd31decb3d7c09dd4931a6d25d394c73c8571fa97` |
| 10 | `def` | [simpH](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpH/Variantb4fb1623b7113e3a93785acb840d25c406f370f69eeb921c21cacf811d0da4e9.lean/declarations/simph--69bf2feb1c50b36032f162f1.md) | 137 | `declaration-track:69bf2feb1c50b36032f162f136918f98c5566820d05e0ee842b30fcbc6a30b65` |
| 11 | `def` | [simpH?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpH/Variantb4fb1623b7113e3a93785acb840d25c406f370f69eeb921c21cacf811d0da4e9.lean/declarations/simph--83700465d8e59e930ecde943.md) | 163 | `declaration-track:83700465d8e59e930ecde94361a0c8df7f7271dd3ef921d29ff4a842365cf89d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
