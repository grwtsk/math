# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Grind.Variante3251bcb8fbe25cb195356f0a280b746fd38d612851434d6460ef58530b616c8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7119ee91fa0948b49036fd0d8a782054f55b0df5",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Grind/Variante3251bcb8fbe25cb195356f0a280b746fd38d612851434d6460ef58530b616c8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Grind/Variante3251bcb8fbe25cb195356f0a280b746fd38d612851434d6460ef58530b616c8.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Grind/Variante3251bcb8fbe25cb195356f0a280b746fd38d612851434d6460ef58530b616c8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7119ee91fa0948b49036fd0d8a782054f55b0df5`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Grind/Variante3251bcb8fbe25cb195356f0a280b746fd38d612851434d6460ef58530b616c8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Grind/Variante3251bcb8fbe25cb195356f0a280b746fd38d612851434d6460ef58530b616c8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.Grind.Main` — import line 16; external provider; requires a separately pinned dependency.
- `Lean.Meta.Sym.Simp.Goal` — import line 17; external provider; requires a separately pinned dependency.
- `Lean.Meta.Sym.Intro` — import line 18; external provider; requires a separately pinned dependency.
- `Lean.Meta.Sym.Util` — import line 19; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Solve` — import line 20; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Assumption` — import line 21; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mkGoal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Grind/Variante3251bcb8fbe25cb195356f0a280b746fd38d612851434d6460ef58530b616c8.lean/declarations/mkgoal--c2c2df7a06a452d9d8925c66.md) | 57 | `declaration-track:c2c2df7a06a452d9d8925c666e07c147e6aa654b55dd2a0cd86d3433222e573a` |
| 2 | `inductive` | [IntrosResult](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Grind/Variante3251bcb8fbe25cb195356f0a280b746fd38d612851434d6460ef58530b616c8.lean/declarations/introsresult--cf7b67239892036b7a976b64.md) | 63 | `declaration-track:cf7b67239892036b7a976b64a0f3b7f627f866bc2f96b087e2679b95e8711907` |
| 3 | `def` | [Goal.introN](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Grind/Variante3251bcb8fbe25cb195356f0a280b746fd38d612851434d6460ef58530b616c8.lean/declarations/goal-intron--26d12959c635ea0c1021ff77.md) | 68 | `declaration-track:26d12959c635ea0c1021ff774377d2a2b62cc9696d97d6fd8191c11f2c3bf0ea` |
| 4 | `def` | [Goal.intros](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Grind/Variante3251bcb8fbe25cb195356f0a280b746fd38d612851434d6460ef58530b616c8.lean/declarations/goal-intros--087792c16d1e53528e257fa1.md) | 73 | `declaration-track:087792c16d1e53528e257fa1f756e69703934cfe061626177531ba4e845b78f0` |
| 5 | `inductive` | [ApplyResult](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Grind/Variante3251bcb8fbe25cb195356f0a280b746fd38d612851434d6460ef58530b616c8.lean/declarations/applyresult--4236d3f5be52207a325f8b94.md) | 77 | `declaration-track:4236d3f5be52207a325f8b94762fe3f217c561ba0b7df725e46d432d2f1c07ad` |
| 6 | `def` | [Goal.apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Grind/Variante3251bcb8fbe25cb195356f0a280b746fd38d612851434d6460ef58530b616c8.lean/declarations/goal-apply--df1679844d61e3112f3c7fa3.md) | 82 | `declaration-track:df1679844d61e3112f3c7fa3d893c4b470f91b48339b543ea4aff99ab555cdc9` |
| 7 | `inductive` | [SimpGoalResult](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Grind/Variante3251bcb8fbe25cb195356f0a280b746fd38d612851434d6460ef58530b616c8.lean/declarations/simpgoalresult--b4df1f1bcaf6b1d0a0f1c7a9.md) | 86 | `declaration-track:b4df1f1bcaf6b1d0a0f1c7a961eea1fc544f184d809ec0510f3162bb6b27a877` |
| 8 | `def` | [Goal.simp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Grind/Variante3251bcb8fbe25cb195356f0a280b746fd38d612851434d6460ef58530b616c8.lean/declarations/goal-simp--f433d45d21bd09c7e7e46898.md) | 92 | `declaration-track:f433d45d21bd09c7e7e468987cad4c2e7f2f171c0573935524cc095a63c99579` |
| 9 | `def` | [Goal.simpIgnoringNoProgress](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Grind/Variante3251bcb8fbe25cb195356f0a280b746fd38d612851434d6460ef58530b616c8.lean/declarations/goal-simpignoringnoprogress--ad46ee9480ea92bbb081774e.md) | 99 | `declaration-track:ad46ee9480ea92bbb081774ef71c2dfb7b9f57edc5990373bd55f33e098fa33f` |
| 10 | `def` | [Goal.internalize](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Grind/Variante3251bcb8fbe25cb195356f0a280b746fd38d612851434d6460ef58530b616c8.lean/declarations/goal-internalize--227d0c9d59f969e661ca220d.md) | 108 | `declaration-track:227d0c9d59f969e661ca220d558690432cb1a62063b699fb7e4b00bff49e21c8` |
| 11 | `def` | [Goal.internalizeAll](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Grind/Variante3251bcb8fbe25cb195356f0a280b746fd38d612851434d6460ef58530b616c8.lean/declarations/goal-internalizeall--31bdb825ef2513e0134db421.md) | 112 | `declaration-track:31bdb825ef2513e0134db421782c88ab39aed5cfa56ba808e7c28af74a17801f` |
| 12 | `inductive` | [GrindResult](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Grind/Variante3251bcb8fbe25cb195356f0a280b746fd38d612851434d6460ef58530b616c8.lean/declarations/grindresult--5388851b98e205358c349374.md) | 115 | `declaration-track:5388851b98e205358c349374c011101b866df1f03b659e5978c3fa226ed7c343` |
| 13 | `def` | [Goal.grind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Grind/Variante3251bcb8fbe25cb195356f0a280b746fd38d612851434d6460ef58530b616c8.lean/declarations/goal-grind--3a827a86ac65b42c1499a3f5.md) | 123 | `declaration-track:3a827a86ac65b42c1499a3f5eae89174c5265428458f45622d9af3ea3b88ef71` |
| 14 | `def` | [Goal.assumption](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Grind/Variante3251bcb8fbe25cb195356f0a280b746fd38d612851434d6460ef58530b616c8.lean/declarations/goal-assumption--734481a48fcf8ff41eb25c63.md) | 133 | `declaration-track:734481a48fcf8ff41eb25c6354460d8b9403e72f044a86003ea15788c356bb82` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
