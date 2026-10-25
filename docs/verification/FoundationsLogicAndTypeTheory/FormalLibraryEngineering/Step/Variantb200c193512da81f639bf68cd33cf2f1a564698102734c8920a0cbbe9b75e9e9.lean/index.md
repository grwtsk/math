# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Step.Variantb200c193512da81f639bf68cd33cf2f1a564698102734c8920a0cbbe9b75e9e9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a7beeaa1f48481ceecca6dc24c72a29344d5c283",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Step/Variantb200c193512da81f639bf68cd33cf2f1a564698102734c8920a0cbbe9b75e9e9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Step/Variantb200c193512da81f639bf68cd33cf2f1a564698102734c8920a0cbbe9b75e9e9.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Step/Variantb200c193512da81f639bf68cd33cf2f1a564698102734c8920a0cbbe9b75e9e9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a7beeaa1f48481ceecca6dc24c72a29344d5c283`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Step/Variantb200c193512da81f639bf68cd33cf2f1a564698102734c8920a0cbbe9b75e9e9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Step/Variantb200c193512da81f639bf68cd33cf2f1a564698102734c8920a0cbbe9b75e9e9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Batteries.Tactic.PermuteGoals` — import line 11; external provider; requires a separately pinned dependency.
- `Batteries.Lean.Meta.SavedState` — import line 12; external provider; requires a separately pinned dependency.
- `Aesop.Script.Util` — import line 13; external provider; requires a separately pinned dependency.
- `Aesop.Util.EqualUpToIds` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mkOneBasedNumLit](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Step/Variantb200c193512da81f639bf68cd33cf2f1a564698102734c8920a0cbbe9b75e9e9.lean/declarations/mkonebasednumlit--a012c51a400ad55c37f04110.md) | 25 | `declaration-track:a012c51a400ad55c37f04110bf995f023a82a2e7fee5d981df9492f24b39d770` |
| 2 | `def` | [mkOnGoal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Step/Variantb200c193512da81f639bf68cd33cf2f1a564698102734c8920a0cbbe9b75e9e9.lean/declarations/mkongoal--62847fa7243eb6a3c057b323.md) | 28 | `declaration-track:62847fa7243eb6a3c057b3239e75dba70d48c380bd522241a1523df11980a0a9` |
| 3 | `structure` | [Step](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Step/Variantb200c193512da81f639bf68cd33cf2f1a564698102734c8920a0cbbe9b75e9e9.lean/declarations/step--5aa9db31e1cc1e868eb817be.md) | 35 | `declaration-track:5aa9db31e1cc1e868eb817be43518f5d5537c95407580d0867dc987b8416e3ad` |
| 4 | `def` | [TacticState.applyStep](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Step/Variantb200c193512da81f639bf68cd33cf2f1a564698102734c8920a0cbbe9b75e9e9.lean/declarations/tacticstate-applystep--d13557154533e99413b32232.md) | 42 | `declaration-track:d13557154533e99413b322320355fe529c01738c719694e4340148c0a98b8e48` |
| 5 | `def` | [uTactic](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Step/Variantb200c193512da81f639bf68cd33cf2f1a564698102734c8920a0cbbe9b75e9e9.lean/declarations/utactic--5dc8eba2c098900b7c6f72b0.md) | 49 | `declaration-track:5dc8eba2c098900b7c6f72b01da60816c9cfb18069a8d41c769417faee7c8536` |
| 6 | `def` | [sTactic?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Step/Variantb200c193512da81f639bf68cd33cf2f1a564698102734c8920a0cbbe9b75e9e9.lean/declarations/stactic--6820a3fa8589cb16b9ec5bbe.md) | 52 | `declaration-track:6820a3fa8589cb16b9ec5bbee3df979afb4e23b242dc7d2f852a6935b85dd66f` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Step/Variantb200c193512da81f639bf68cd33cf2f1a564698102734c8920a0cbbe9b75e9e9.lean/declarations/instance--bea63da71764057b755c5528.md) | 55 | `declaration-track:bea63da71764057b755c5528e654721c4b36125171afb3649bd91c6a57751822` |
| 8 | `def` | [mkSorry](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Step/Variantb200c193512da81f639bf68cd33cf2f1a564698102734c8920a0cbbe9b75e9e9.lean/declarations/mksorry--914f9eeaf258a2728cb78b30.md) | 59 | `declaration-track:914f9eeaf258a2728cb78b30baea12beee97c4c2f8c2a55c97bf701242bbe680` |
| 9 | `def` | [render](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Step/Variantb200c193512da81f639bf68cd33cf2f1a564698102734c8920a0cbbe9b75e9e9.lean/declarations/render--75459609ab17484c1c867547.md) | 68 | `declaration-track:75459609ab17484c1c867547aa6b79055ca85b6ed4acb485c8b0b48ae7640bec` |
| 10 | `def` | [validate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Step/Variantb200c193512da81f639bf68cd33cf2f1a564698102734c8920a0cbbe9b75e9e9.lean/declarations/validate--b3df9460da60e165a8faccb9.md) | 76 | `declaration-track:b3df9460da60e165a8faccb950cc7f088ed6e164794d94dd6eb2151b9499b7c5` |
| 11 | `structure` | [LazyStep](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Step/Variantb200c193512da81f639bf68cd33cf2f1a564698102734c8920a0cbbe9b75e9e9.lean/declarations/lazystep--a823fde6bfa82d4b51c225ea.md) | 99 | `declaration-track:a823fde6bfa82d4b51c225ea26c51217313f065b9f2375e90217a5e98a5bda4f` |
| 12 | `def` | [runFirstSuccessfulTacticBuilder](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Step/Variantb200c193512da81f639bf68cd33cf2f1a564698102734c8920a0cbbe9b75e9e9.lean/declarations/runfirstsuccessfultacticbuilder--eafadfc095847a2a39586f65.md) | 116 | `declaration-track:eafadfc095847a2a39586f656b7326bd037665a999642c61193bf4601e038c4f` |
| 13 | `def` | [toStep](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Step/Variantb200c193512da81f639bf68cd33cf2f1a564698102734c8920a0cbbe9b75e9e9.lean/declarations/tostep--f4bfee01990118586ceaa01e.md) | 141 | `declaration-track:f4bfee01990118586ceaa01e82db272a767fb9881571e07cf67e1b1cadce478b` |
| 14 | `structure` | [BuildInput](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Step/Variantb200c193512da81f639bf68cd33cf2f1a564698102734c8920a0cbbe9b75e9e9.lean/declarations/buildinput--ba678eefb1ac5d3318208462.md) | 149 | `declaration-track:ba678eefb1ac5d3318208462ecf7e61c829b77ea829cea1dc9245b9837b025af` |
| 15 | `def` | [build](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Step/Variantb200c193512da81f639bf68cd33cf2f1a564698102734c8920a0cbbe9b75e9e9.lean/declarations/build--57ee9567ffe6965504993ccd.md) | 155 | `declaration-track:57ee9567ffe6965504993ccd3d79d26527da7aa559114b3cba75eb03c6ec4f99` |
| 16 | `def` | [erasePostStateAssignments](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Step/Variantb200c193512da81f639bf68cd33cf2f1a564698102734c8920a0cbbe9b75e9e9.lean/declarations/erasepoststateassignments--fffe5b417512f6b524cc80d3.md) | 166 | `declaration-track:fffe5b417512f6b524cc80d3ba40ee0db13067ec9124b46c57e65a86d9baca37` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
