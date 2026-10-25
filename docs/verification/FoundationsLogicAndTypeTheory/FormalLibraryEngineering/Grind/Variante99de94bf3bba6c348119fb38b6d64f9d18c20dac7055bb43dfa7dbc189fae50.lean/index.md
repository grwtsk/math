# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Grind.Variante99de94bf3bba6c348119fb38b6d64f9d18c20dac7055bb43dfa7dbc189fae50

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2dee6080ad4798d72db8b4fcd6f587597e00053d",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Grind/Variante99de94bf3bba6c348119fb38b6d64f9d18c20dac7055bb43dfa7dbc189fae50.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Grind/Variante99de94bf3bba6c348119fb38b6d64f9d18c20dac7055bb43dfa7dbc189fae50.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Grind/Variante99de94bf3bba6c348119fb38b6d64f9d18c20dac7055bb43dfa7dbc189fae50.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2dee6080ad4798d72db8b4fcd6f587597e00053d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Grind/Variante99de94bf3bba6c348119fb38b6d64f9d18c20dac7055bb43dfa7dbc189fae50.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Grind/Variante99de94bf3bba6c348119fb38b6d64f9d18c20dac7055bb43dfa7dbc189fae50.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.Grind.Main` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Meta.Sym.Simp.Goal` — import line 12; external provider; requires a separately pinned dependency.
- `Lean.Meta.Sym.Intro` — import line 13; external provider; requires a separately pinned dependency.
- `Lean.Meta.Sym.Util` — import line 14; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Solve` — import line 15; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Assumption` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mkGoal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Grind/Variante99de94bf3bba6c348119fb38b6d64f9d18c20dac7055bb43dfa7dbc189fae50.lean/declarations/mkgoal--dac6f4e0150c6cb89bca5638.md) | 49 | `declaration-track:dac6f4e0150c6cb89bca5638e3e23f2ab8c37e030b766e8264224e75d08700fb` |
| 2 | `inductive` | [IntrosResult](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Grind/Variante99de94bf3bba6c348119fb38b6d64f9d18c20dac7055bb43dfa7dbc189fae50.lean/declarations/introsresult--e55a09cb04cb7bcc6dfada02.md) | 55 | `declaration-track:e55a09cb04cb7bcc6dfada026a5f8906955347990ab08b37eec1f59d927fc7b4` |
| 3 | `def` | [Goal.introN](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Grind/Variante99de94bf3bba6c348119fb38b6d64f9d18c20dac7055bb43dfa7dbc189fae50.lean/declarations/goal-intron--778656537723da993979bb84.md) | 60 | `declaration-track:778656537723da993979bb84c83492fdbc74c7d63580c80f708cdb944488f2e3` |
| 4 | `def` | [Goal.intros](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Grind/Variante99de94bf3bba6c348119fb38b6d64f9d18c20dac7055bb43dfa7dbc189fae50.lean/declarations/goal-intros--abca3b028bab42c5a19d7287.md) | 65 | `declaration-track:abca3b028bab42c5a19d7287296373c22ad5ce0ee791eb53e2b6c75b58869b17` |
| 5 | `inductive` | [ApplyResult](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Grind/Variante99de94bf3bba6c348119fb38b6d64f9d18c20dac7055bb43dfa7dbc189fae50.lean/declarations/applyresult--7f8eea2b618f69b62a45dd29.md) | 69 | `declaration-track:7f8eea2b618f69b62a45dd2939eb2d4fa4c70aef38ad5bcc1bd6ab89c5b19269` |
| 6 | `def` | [Goal.apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Grind/Variante99de94bf3bba6c348119fb38b6d64f9d18c20dac7055bb43dfa7dbc189fae50.lean/declarations/goal-apply--161d2e53fe2cbefc11ca1234.md) | 74 | `declaration-track:161d2e53fe2cbefc11ca12341709dc184931c89cf80124d6babe0dcbed43c21f` |
| 7 | `inductive` | [SimpGoalResult](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Grind/Variante99de94bf3bba6c348119fb38b6d64f9d18c20dac7055bb43dfa7dbc189fae50.lean/declarations/simpgoalresult--3e05b0a10a7da397c03b7d6a.md) | 78 | `declaration-track:3e05b0a10a7da397c03b7d6a435283e08d73a34fa2a1850f6ab08a7daf4450f8` |
| 8 | `def` | [Goal.simp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Grind/Variante99de94bf3bba6c348119fb38b6d64f9d18c20dac7055bb43dfa7dbc189fae50.lean/declarations/goal-simp--acfdf48a33e2bb715f12cdd4.md) | 84 | `declaration-track:acfdf48a33e2bb715f12cdd44f7d3bd5fedc092d55c4de000a1ef52b940dc792` |
| 9 | `def` | [Goal.simpIgnoringNoProgress](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Grind/Variante99de94bf3bba6c348119fb38b6d64f9d18c20dac7055bb43dfa7dbc189fae50.lean/declarations/goal-simpignoringnoprogress--2a91994577fb210d4853756d.md) | 91 | `declaration-track:2a91994577fb210d4853756d25343942b6d2882874ac629e650eeea37b5d3cd6` |
| 10 | `def` | [Goal.internalize](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Grind/Variante99de94bf3bba6c348119fb38b6d64f9d18c20dac7055bb43dfa7dbc189fae50.lean/declarations/goal-internalize--c5d95f05a3946bf9f0eabbec.md) | 100 | `declaration-track:c5d95f05a3946bf9f0eabbec6a467be40ba0b1a528e3ecbfe88f63f6cf0969e7` |
| 11 | `def` | [Goal.internalizeAll](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Grind/Variante99de94bf3bba6c348119fb38b6d64f9d18c20dac7055bb43dfa7dbc189fae50.lean/declarations/goal-internalizeall--851ba48b7fa7688f8e0b829f.md) | 104 | `declaration-track:851ba48b7fa7688f8e0b829f4066910a518842f3f50a6f406a3ac4da50f3f08a` |
| 12 | `inductive` | [GrindResult](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Grind/Variante99de94bf3bba6c348119fb38b6d64f9d18c20dac7055bb43dfa7dbc189fae50.lean/declarations/grindresult--0744dc773fb4771bfd8ffb57.md) | 107 | `declaration-track:0744dc773fb4771bfd8ffb574a32661dbcee79c2ac0233f0eff31fe1aa8ad579` |
| 13 | `def` | [Goal.grind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Grind/Variante99de94bf3bba6c348119fb38b6d64f9d18c20dac7055bb43dfa7dbc189fae50.lean/declarations/goal-grind--036a680e138e47639e23ab99.md) | 115 | `declaration-track:036a680e138e47639e23ab996582a1b628309968efbfbab7fb895bdeca9eb425` |
| 14 | `def` | [Goal.assumption](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Grind/Variante99de94bf3bba6c348119fb38b6d64f9d18c20dac7055bb43dfa7dbc189fae50.lean/declarations/goal-assumption--82f33722be8d8225b5cca239.md) | 125 | `declaration-track:82f33722be8d8225b5cca239e6c9c8a4b44fdb497a40a1dd0886f4d77acd189d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
