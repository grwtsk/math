# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TacticState.Variantfb5e72020db3a4a81151815d9f3237a343356d086fb93812a943b9916c1e8978

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "08c89a1b3e81bb9a44b86f8bae2c1cb890eb6abd",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TacticState/Variantfb5e72020db3a4a81151815d9f3237a343356d086fb93812a943b9916c1e8978.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TacticState/Variantfb5e72020db3a4a81151815d9f3237a343356d086fb93812a943b9916c1e8978.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TacticState/Variantfb5e72020db3a4a81151815d9f3237a343356d086fb93812a943b9916c1e8978.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `08c89a1b3e81bb9a44b86f8bae2c1cb890eb6abd`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TacticState/Variantfb5e72020db3a4a81151815d9f3237a343356d086fb93812a943b9916c1e8978.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TacticState/Variantfb5e72020db3a4a81151815d9f3237a343356d086fb93812a943b9916c1e8978.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Batteries.Lean.Meta.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Lean.Meta.CollectMVars` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [TacticState](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TacticState/Variantfb5e72020db3a4a81151815d9f3237a343356d086fb93812a943b9916c1e8978.lean/declarations/tacticstate--ce99ec9adfa91e1345fdad50.md) | 28 | `declaration-track:ce99ec9adfa91e1345fdad5016e059cdd4280327655baea66ca7875ffcca6e5d` |
| 2 | `def` | [mkInitial](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TacticState/Variantfb5e72020db3a4a81151815d9f3237a343356d086fb93812a943b9916c1e8978.lean/declarations/mkinitial--b9101dd3e8b5817cde90bfe8.md) | 35 | `declaration-track:b9101dd3e8b5817cde90bfe8a5511e40ee431047bb04148a72e265135eeb5ac0` |
| 3 | `def` | [throwUnknownGoalError](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TacticState/Variantfb5e72020db3a4a81151815d9f3237a343356d086fb93812a943b9916c1e8978.lean/declarations/throwunknowngoalerror--c2d3a0d46c7835be9b49eacd.md) | 41 | `declaration-track:c2d3a0d46c7835be9b49eacd858e6394e9dd1d91411d898131d917229b4e7548` |
| 4 | `def` | [getVisibleGoalIndex?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TacticState/Variantfb5e72020db3a4a81151815d9f3237a343356d086fb93812a943b9916c1e8978.lean/declarations/getvisiblegoalindex--07caf699868ea00a7977ab83.md) | 44 | `declaration-track:07caf699868ea00a7977ab83fe0f0299d2daf621c0d9e81af896be84716ec5d0` |
| 5 | `def` | [getVisibleGoalIndex](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TacticState/Variantfb5e72020db3a4a81151815d9f3237a343356d086fb93812a943b9916c1e8978.lean/declarations/getvisiblegoalindex--93ebac95449a2487b78db8f4.md) | 47 | `declaration-track:93ebac95449a2487b78db8f4d2271344cd160e7a449b1a26f7eeb3649d8735ea` |
| 6 | `def` | [getMainGoal?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TacticState/Variantfb5e72020db3a4a81151815d9f3237a343356d086fb93812a943b9916c1e8978.lean/declarations/getmaingoal--cd58feb502aac2bd8b992061.md) | 53 | `declaration-track:cd58feb502aac2bd8b9920613257e6403ccb521024b5ec8cb34ee18bc1a75d07` |
| 7 | `def` | [visibleGoalsHaveMVars](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TacticState/Variantfb5e72020db3a4a81151815d9f3237a343356d086fb93812a943b9916c1e8978.lean/declarations/visiblegoalshavemvars--b034a433404a3fe6987635a7.md) | 56 | `declaration-track:b034a433404a3fe6987635a71e1c42085bf3dbdd38618ce0c0f07bbbfcc78272` |
| 8 | `def` | [solveVisibleGoals](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TacticState/Variantfb5e72020db3a4a81151815d9f3237a343356d086fb93812a943b9916c1e8978.lean/declarations/solvevisiblegoals--2f82256929a694e982a3b37f.md) | 59 | `declaration-track:2f82256929a694e982a3b37f76a9db99c8d0ca4bb4909cecb34731a01fe83c2d` |
| 9 | `def` | [replaceWithArray](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TacticState/Variantfb5e72020db3a4a81151815d9f3237a343356d086fb93812a943b9916c1e8978.lean/declarations/replacewitharray--836b151a9876f1f3db16a217.md) | 62 | `declaration-track:836b151a9876f1f3db16a21736913b892caeebe6f74bf86a410ef34973e6a4d6` |
| 10 | `def` | [eraseSolvedGoals](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TacticState/Variantfb5e72020db3a4a81151815d9f3237a343356d086fb93812a943b9916c1e8978.lean/declarations/erasesolvedgoals--d3a55adea0f206407181ee08.md) | 74 | `declaration-track:d3a55adea0f206407181ee0822ef2d70a16308639e938097a5bc9668a61c3fcc` |
| 11 | `def` | [applyTactic](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TacticState/Variantfb5e72020db3a4a81151815d9f3237a343356d086fb93812a943b9916c1e8978.lean/declarations/applytactic--b028b876a2791bc9b4102fbe.md) | 85 | `declaration-track:b028b876a2791bc9b4102fbe34b4d4a81ca391b75ff3c2fce6423baec70ef510` |
| 12 | `def` | [focus](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TacticState/Variantfb5e72020db3a4a81151815d9f3237a343356d086fb93812a943b9916c1e8978.lean/declarations/focus--c5b00ccbb55e6bd9dee78b28.md) | 96 | `declaration-track:c5b00ccbb55e6bd9dee78b28ece030a62c6698d8246e3e76fcc79b0fc7494404` |
| 13 | `def` | [onGoalM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TacticState/Variantfb5e72020db3a4a81151815d9f3237a343356d086fb93812a943b9916c1e8978.lean/declarations/ongoalm--32a69358905dedef9dd734cb.md) | 106 | `declaration-track:32a69358905dedef9dd734cbbaa01dead62fd1096750fe0dca7add98f93b9a3f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
