# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Elab.Variant5bf652ed3842de29ba16d19560e309dc6aafddcce0ec50ee2e0c3a2df957b683

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6eb11dac277c2348131fdf334d007807196c6be6",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Elab/Variant5bf652ed3842de29ba16d19560e309dc6aafddcce0ec50ee2e0c3a2df957b683.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Elab/Variant5bf652ed3842de29ba16d19560e309dc6aafddcce0ec50ee2e0c3a2df957b683.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Elab/Variant5bf652ed3842de29ba16d19560e309dc6aafddcce0ec50ee2e0c3a2df957b683.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6eb11dac277c2348131fdf334d007807196c6be6`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Elab/Variant5bf652ed3842de29ba16d19560e309dc6aafddcce0ec50ee2e0c3a2df957b683.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Elab/Variant5bf652ed3842de29ba16d19560e309dc6aafddcce0ec50ee2e0c3a2df957b683.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Compiler.IR.CompilerM` — import line 15; external provider; requires a separately pinned dependency.
- `Lean.Elab.Frontend` — import line 16; external provider; requires a separately pinned dependency.
- `Lake.DSL.Extensions` — import line 17; external provider; requires a separately pinned dependency.
- `Lake.Util.JsonObject` — import line 18; external provider; requires a separately pinned dependency.
- `Init.System.Platform` — import line 19; external provider; requires a separately pinned dependency.
- `Lake.DSL.AttributesCore` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Elab/Variant5bf652ed3842de29ba16d19560e309dc6aafddcce0ec50ee2e0c3a2df957b683.lean/declarations/builtin-initialize--9eb1e5f25ff9a6031a0b911b.md) | 36 | `declaration-track:9eb1e5f25ff9a6031a0b911b0e840b505b8a692f54d980e4b27fb28058ccf8c6` |
| 2 | `def` | [importModulesUsingCache](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Elab/Variant5bf652ed3842de29ba16d19560e309dc6aafddcce0ec50ee2e0c3a2df957b683.lean/declarations/importmodulesusingcache--45d681be24808bab2958065f.md) | 40 | `declaration-track:45d681be24808bab2958065f09cc92bbb508661a39fd55c91c77512bba89890f` |
| 3 | `def` | [processHeader](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Elab/Variant5bf652ed3842de29ba16d19560e309dc6aafddcce0ec50ee2e0c3a2df957b683.lean/declarations/processheader--3b9e5fd4205cb0834647f994.md) | 53 | `declaration-track:3b9e5fd4205cb0834647f994a83b345940fb1fe60a99bb0640f77f060033f6ce` |
| 4 | `def` | [configModuleName](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Elab/Variant5bf652ed3842de29ba16d19560e309dc6aafddcce0ec50ee2e0c3a2df957b683.lean/declarations/configmodulename--be1441f776d09cc45f3be8f1.md) | 66 | `declaration-track:be1441f776d09cc45f3be8f1fa33fc0afdbbc6e1a9fe464bdd8c6ec2e996633e` |
| 5 | `def` | [elabConfigFile](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Elab/Variant5bf652ed3842de29ba16d19560e309dc6aafddcce0ec50ee2e0c3a2df957b683.lean/declarations/elabconfigfile--c51bc199f6608036f0e9524d.md) | 69 | `declaration-track:c51bc199f6608036f0e9524d20c339ddfa815699a7f6322298803fc919f5117f` |
| 6 | `opaque` | [addToEnv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Elab/Variant5bf652ed3842de29ba16d19560e309dc6aafddcce0ec50ee2e0c3a2df957b683.lean/declarations/addtoenv--6e3f5972df68a4ac0f21eea9.md) | 105 | `declaration-track:6e3f5972df68a4ac0f21eea928a97bdf55b57d15394e3e3d300af10a253ce8ff` |
| 7 | `def` | [importConfigFileCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Elab/Variant5bf652ed3842de29ba16d19560e309dc6aafddcce0ec50ee2e0c3a2df957b683.lean/declarations/importconfigfilecore--fc07b67104da40007fb12691.md) | 111 | `declaration-track:fc07b67104da40007fb126918c6d2d5c4d6f47554cd176e360155260a0b5bcc3` |
| 8 | `structure` | [ConfigTrace](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Elab/Variant5bf652ed3842de29ba16d19560e309dc6aafddcce0ec50ee2e0c3a2df957b683.lean/declarations/configtrace--6108c3addfdb5370a56251f5.md) | 174 | `declaration-track:6108c3addfdb5370a56251f54f98c376191287e43fc8cfefe158be5cfa6aff62` |
| 9 | `def` | [importConfigFile](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Elab/Variant5bf652ed3842de29ba16d19560e309dc6aafddcce0ec50ee2e0c3a2df957b683.lean/declarations/importconfigfile--57cfeb40403583b4a7089d67.md) | 188 | `declaration-track:57cfeb40403583b4a7089d675e9c0b9a316dc9f662e88f01b924bdca63dd1970` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
