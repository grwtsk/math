# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DeriveEvalConfigItem.Variantdf4272ceb3e27e2ad6cb59b95cf8b15295d3dec54926847261d5b07c4787dd2b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fd86fd59dfe4107fc4cb0b7cbcbcaeabff15166c",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEvalConfigItem/Variantdf4272ceb3e27e2ad6cb59b95cf8b15295d3dec54926847261d5b07c4787dd2b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEvalConfigItem/Variantdf4272ceb3e27e2ad6cb59b95cf8b15295d3dec54926847261d5b07c4787dd2b.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEvalConfigItem/Variantdf4272ceb3e27e2ad6cb59b95cf8b15295d3dec54926847261d5b07c4787dd2b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fd86fd59dfe4107fc4cb0b7cbcbcaeabff15166c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEvalConfigItem/Variantdf4272ceb3e27e2ad6cb59b95cf8b15295d3dec54926847261d5b07c4787dd2b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEvalConfigItem/Variantdf4272ceb3e27e2ad6cb59b95cf8b15295d3dec54926847261d5b07c4787dd2b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.ConfigEval.Util` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [EvalConfigItemHandlerKind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEvalConfigItem/Variantdf4272ceb3e27e2ad6cb59b95cf8b15295d3dec54926847261d5b07c4787dd2b.lean/declarations/evalconfigitemhandlerkind--435b4b65c80e934fe219e555.md) | 37 | `declaration-track:435b4b65c80e934fe219e5551d9985a55beb36422e917ea6de9b1dd733ad91c3` |
| 2 | `structure` | [EvalConfigItemHandler](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEvalConfigItem/Variantdf4272ceb3e27e2ad6cb59b95cf8b15295d3dec54926847261d5b07c4787dd2b.lean/declarations/evalconfigitemhandler--6fccad72dff6656f614362d6.md) | 46 | `declaration-track:6fccad72dff6656f614362d6d914735b9eae2af99a8cded32e8acd6bb33e1803` |
| 3 | `structure` | [EvalConfigItemView](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEvalConfigItem/Variantdf4272ceb3e27e2ad6cb59b95cf8b15295d3dec54926847261d5b07c4787dd2b.lean/declarations/evalconfigitemview--548c3906692920765330fa9f.md) | 60 | `declaration-track:548c3906692920765330fa9f0a532a70deab1ca6577d314cff562c30fa4c47ef` |
| 4 | `structure` | [HandlerTrie](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEvalConfigItem/Variantdf4272ceb3e27e2ad6cb59b95cf8b15295d3dec54926847261d5b07c4787dd2b.lean/declarations/handlertrie--e3d282c7e92715093e6af9a3.md) | 83 | `declaration-track:e3d282c7e92715093e6af9a3f853603ec819ae163bab03b17bead7fcda9e0466` |
| 5 | `def` | [HandlerTrie.find?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEvalConfigItem/Variantdf4272ceb3e27e2ad6cb59b95cf8b15295d3dec54926847261d5b07c4787dd2b.lean/declarations/handlertrie-find--e95c704590810da6b334a648.md) | 106 | `declaration-track:e95c704590810da6b334a648b6d1c978c67f8e2b29988ae52a5673c53d7dda46` |
| 6 | `def` | [HandlerTrie.insert](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEvalConfigItem/Variantdf4272ceb3e27e2ad6cb59b95cf8b15295d3dec54926847261d5b07c4787dd2b.lean/declarations/handlertrie-insert--0f11e6831f77a319f988374f.md) | 130 | `declaration-track:0f11e6831f77a319f988374f257d04fca0d270fd429ba34588653e6ee3fc5be0` |
| 7 | `def` | [HandlerTrie.insertStruct](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEvalConfigItem/Variantdf4272ceb3e27e2ad6cb59b95cf8b15295d3dec54926847261d5b07c4787dd2b.lean/declarations/handlertrie-insertstruct--e8cea06b169221cede705c41.md) | 149 | `declaration-track:e8cea06b169221cede705c4130099cd6cc59f87cf60833d1ece6d606aef799af` |
| 8 | `def` | [evalBoolItem](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEvalConfigItem/Variantdf4272ceb3e27e2ad6cb59b95cf8b15295d3dec54926847261d5b07c4787dd2b.lean/declarations/evalboolitem--3560e493b82c5c11eeeca12e.md) | 169 | `declaration-track:3560e493b82c5c11eeeca12ebce2d2456c15b01f9586d8c399fb174eccee37e7` |
| 9 | `def` | [addConstInfo'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEvalConfigItem/Variantdf4272ceb3e27e2ad6cb59b95cf8b15295d3dec54926847261d5b07c4787dd2b.lean/declarations/addconstinfo--6a73033e848956f2f69a1381.md) | 177 | `declaration-track:6a73033e848956f2f69a138123b773817336b40a29d14d875510e540e84b756e` |
| 10 | `structure` | [State](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEvalConfigItem/Variantdf4272ceb3e27e2ad6cb59b95cf8b15295d3dec54926847261d5b07c4787dd2b.lean/declarations/state--0f13aaafd19048df48dc9f71.md) | 182 | `declaration-track:0f13aaafd19048df48dc9f71c040b9033a83fe0d1494b8a14610c719dddfbff7` |
| 11 | `abbrev` | [M](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEvalConfigItem/Variantdf4272ceb3e27e2ad6cb59b95cf8b15295d3dec54926847261d5b07c4787dd2b.lean/declarations/m--e7b41e1bf7ce361dfa45e80a.md) | 187 | `declaration-track:e7b41e1bf7ce361dfa45e80ae238570087bbd77757cfef17f7c4f11ed1ce0537` |
| 12 | `def` | [addToDerive](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEvalConfigItem/Variantdf4272ceb3e27e2ad6cb59b95cf8b15295d3dec54926847261d5b07c4787dd2b.lean/declarations/addtoderive--a84a46217af40f47757c200a.md) | 189 | `declaration-track:a84a46217af40f47757c200a5b1af5a841fc54ca164bf1cdb2db5afaf4d060e7` |
| 13 | `def` | [hasToOmit](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEvalConfigItem/Variantdf4272ceb3e27e2ad6cb59b95cf8b15295d3dec54926847261d5b07c4787dd2b.lean/declarations/hastoomit--4180b921c3d8824a2335b4d3.md) | 192 | `declaration-track:4180b921c3d8824a2335b4d3d25686c78d8612b52740d87c71a714b60606bb74` |
| 14 | `def` | [defEvalConfigItem](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEvalConfigItem/Variantdf4272ceb3e27e2ad6cb59b95cf8b15295d3dec54926847261d5b07c4787dd2b.lean/declarations/defevalconfigitem--d599fc99aeb46f0c8504290b.md) | 206 | `declaration-track:d599fc99aeb46f0c8504290b206e92d31ce2dc27e519b8075d681c504ad81665` |
| 15 | `def` | [$fnIdent](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEvalConfigItem/Variantdf4272ceb3e27e2ad6cb59b95cf8b15295d3dec54926847261d5b07c4787dd2b.lean/declarations/fnident--41cab6c32270d776545ad33b.md) | 373 | `declaration-track:41cab6c32270d776545ad33b4db56b970df6ad490e959f14f9258c71c9094739` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
