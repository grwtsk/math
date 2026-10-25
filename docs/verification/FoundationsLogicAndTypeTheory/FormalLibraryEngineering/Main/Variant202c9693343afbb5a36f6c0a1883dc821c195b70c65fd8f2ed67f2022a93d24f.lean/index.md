# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Main.Variant202c9693343afbb5a36f6c0a1883dc821c195b70c65fd8f2ed67f2022a93d24f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "40b37f115f24c3808213a11fef1c721a999bb885",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant202c9693343afbb5a36f6c0a1883dc821c195b70c65fd8f2ed67f2022a93d24f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant202c9693343afbb5a36f6c0a1883dc821c195b70c65fd8f2ed67f2022a93d24f.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant202c9693343afbb5a36f6c0a1883dc821c195b70c65fd8f2ed67f2022a93d24f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `40b37f115f24c3808213a11fef1c721a999bb885`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant202c9693343afbb5a36f6c0a1883dc821c195b70c65fd8f2ed67f2022a93d24f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant202c9693343afbb5a36f6c0a1883dc821c195b70c65fd8f2ed67f2022a93d24f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.PrettyPrinter` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.ExposeNames` — import line 12; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Simp.Diagnostics` — import line 13; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Simp.Rewrite` — import line 14; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.MarkAccessible` — import line 15; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Proj` — import line 16; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.ForallProp` — import line 17; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.CtorIdx` — import line 18; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Intro` — import line 19; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Solve` — import line 20; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.EMatch` — import line 21; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.MarkNestedSubsingletons` — import line 22; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Internalize` — import line 23; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.SimpUtil` — import line 24; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.LawfulEqCmp` — import line 25; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.ReflCmp` — import line 26; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.PP` — import line 27; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Core` — import line 28; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [getDefaultExtensionState](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant202c9693343afbb5a36f6c0a1883dc821c195b70c65fd8f2ed67f2022a93d24f.lean/declarations/getdefaultextensionstate--8cd4617532ba09d98bd70022.md) | 35 | `declaration-track:8cd4617532ba09d98bd70022dec366e2ceea122012ed5be3e69badb3472b5386` |
| 2 | `def` | [getOnlyExtensionState](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant202c9693343afbb5a36f6c0a1883dc821c195b70c65fd8f2ed67f2022a93d24f.lean/declarations/getonlyextensionstate--6ea21a849a41e4a2a0cacd55.md) | 38 | `declaration-track:6ea21a849a41e4a2a0cacd55ba8af80039dc2920e3c2e1451d4cb29f27c28e37` |
| 3 | `def` | [getLiaExtensions](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant202c9693343afbb5a36f6c0a1883dc821c195b70c65fd8f2ed67f2022a93d24f.lean/declarations/getliaextensions--741737227b487fab429f654c.md) | 55 | `declaration-track:741737227b487fab429f654c22a2b1c8e1969c9099aed50aac9a0e916fac2e49` |
| 4 | `structure` | [Params](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant202c9693343afbb5a36f6c0a1883dc821c195b70c65fd8f2ed67f2022a93d24f.lean/declarations/params--815a6d4df00f3dc853bcad3a.md) | 58 | `declaration-track:815a6d4df00f3dc853bcad3a5d5c651e771efe60f98b8040f01b0af9d851bfda` |
| 5 | `def` | [mkParams](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant202c9693343afbb5a36f6c0a1883dc821c195b70c65fd8f2ed67f2022a93d24f.lean/declarations/mkparams--dbeb9c73ea7c54556e095282.md) | 70 | `declaration-track:dbeb9c73ea7c54556e095282cabcb8e0736917fdedcb8890244f9bfd17241eaa` |
| 6 | `def` | [mkDefaultParams](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant202c9693343afbb5a36f6c0a1883dc821c195b70c65fd8f2ed67f2022a93d24f.lean/declarations/mkdefaultparams--328e3aa1c20a5a9ea1fd6748.md) | 76 | `declaration-track:328e3aa1c20a5a9ea1fd67483e6210c540130c1210c1ccc0f95d6de4c4bc7d07` |
| 7 | `def` | [mkOnlyParams](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant202c9693343afbb5a36f6c0a1883dc821c195b70c65fd8f2ed67f2022a93d24f.lean/declarations/mkonlyparams--55ea497794318fbe65a6516b.md) | 79 | `declaration-track:55ea497794318fbe65a6516b10e7101435f1c63cb5a7431549f024023a23dee3` |
| 8 | `def` | [mkMethods](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant202c9693343afbb5a36f6c0a1883dc821c195b70c65fd8f2ed67f2022a93d24f.lean/declarations/mkmethods--1666a36116a5e14fdc1c290b.md) | 82 | `declaration-track:1666a36116a5e14fdc1c290bac010f268f65ac49f53d419dbb9ee4ff2191ac28` |
| 9 | `def` | [discharge?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant202c9693343afbb5a36f6c0a1883dc821c195b70c65fd8f2ed67f2022a93d24f.lean/declarations/discharge--ac1d42dc7eb75883061b2bf0.md) | 105 | `declaration-track:ac1d42dc7eb75883061b2bf0c9a333881405c4597d63a95808e557e6496757cf` |
| 10 | `def` | [GrindM.run](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant202c9693343afbb5a36f6c0a1883dc821c195b70c65fd8f2ed67f2022a93d24f.lean/declarations/grindm-run--f326b22bf529d32ad5fae7a1.md) | 117 | `declaration-track:f326b22bf529d32ad5fae7a102042e4493dddfc46fff68c0aa33eab99f2d8a2b` |
| 11 | `def` | [mkCleanState](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant202c9693343afbb5a36f6c0a1883dc821c195b70c65fd8f2ed67f2022a93d24f.lean/declarations/mkcleanstate--538ca1bc3b8bbcf7ef1761a3.md) | 134 | `declaration-track:538ca1bc3b8bbcf7ef1761a3c10c31bc57cf011a2d175fc0b0b5130fdc2828b1` |
| 12 | `def` | [assertExtra](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant202c9693343afbb5a36f6c0a1883dc821c195b70c65fd8f2ed67f2022a93d24f.lean/declarations/assertextra--b9e46c799b2e781f60c1a34c.md) | 145 | `declaration-track:b9e46c799b2e781f60c1a34c6d8b4cca06324d71b83baa23944e2b5308b7ae07` |
| 13 | `def` | [initENodeCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant202c9693343afbb5a36f6c0a1883dc821c195b70c65fd8f2ed67f2022a93d24f.lean/declarations/initenodecore--a256c9b44329a8850ba0ab70.md) | 154 | `declaration-track:a256c9b44329a8850ba0ab70da3ce7c701214522aa33c914aeffcf0fa25de64e` |
| 14 | `def` | [mkGoalCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant202c9693343afbb5a36f6c0a1883dc821c195b70c65fd8f2ed67f2022a93d24f.lean/declarations/mkgoalcore--a66be76b233c610755f4412b.md) | 160 | `declaration-track:a66be76b233c610755f4412b32cec64c37de01eae89956ca2ea4b5fb055e7995` |
| 15 | `structure` | [Result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant202c9693343afbb5a36f6c0a1883dc821c195b70c65fd8f2ed67f2022a93d24f.lean/declarations/result--c3615f26d4085c7b7082407a.md) | 182 | `declaration-track:c3615f26d4085c7b7082407a902d2c1948fc56323a85a5bf92f011b68e8d21ac` |
| 16 | `def` | [countersToMessageData](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant202c9693343afbb5a36f6c0a1883dc821c195b70c65fd8f2ed67f2022a93d24f.lean/declarations/counterstomessagedata--2a35b9f55f0fc8185b94bd06.md) | 191 | `declaration-track:2a35b9f55f0fc8185b94bd060441d5c5e428fca739950080a7873481efb0b919` |
| 17 | `def` | [countersWithOriginToMessageData](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant202c9693343afbb5a36f6c0a1883dc821c195b70c65fd8f2ed67f2022a93d24f.lean/declarations/counterswithorigintomessagedata--d3da80d61e7f9ad6e617cae0.md) | 197 | `declaration-track:d3da80d61e7f9ad6e617cae08bbe0d7b6e3f73514e33e1545410f55623fb2c53` |
| 18 | `def` | [splitDiagInfoToMessageData](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant202c9693343afbb5a36f6c0a1883dc821c195b70c65fd8f2ed67f2022a93d24f.lean/declarations/splitdiaginfotomessagedata--1052bce5d81779c84bd85646.md) | 205 | `declaration-track:1052bce5d81779c84bd856467dcbf67a6e9967e85985a9c52216c0066f0df58a` |
| 19 | `def` | [mkGlobalDiag](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant202c9693343afbb5a36f6c0a1883dc821c195b70c65fd8f2ed67f2022a93d24f.lean/declarations/mkglobaldiag--ea304faa8aa4125e843e6b5e.md) | 220 | `declaration-track:ea304faa8aa4125e843e6b5e94edc72a9ce806248af2768dac02017622251a1e` |
| 20 | `def` | [Result.hasFailed](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant202c9693343afbb5a36f6c0a1883dc821c195b70c65fd8f2ed67f2022a93d24f.lean/declarations/result-hasfailed--be3dd4d94d8e4841f9e1664b.md) | 249 | `declaration-track:be3dd4d94d8e4841f9e1664b11fd7e07b6a41f82746d1d18874bdc40c966a0d5` |
| 21 | `def` | [Result.toMessageData](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant202c9693343afbb5a36f6c0a1883dc821c195b70c65fd8f2ed67f2022a93d24f.lean/declarations/result-tomessagedata--f401f126822ce2281626e164.md) | 252 | `declaration-track:f401f126822ce2281626e1649565379ccb15559c64c509621556498ee747f35c` |
| 22 | `def` | [collectUsedOrigins](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant202c9693343afbb5a36f6c0a1883dc821c195b70c65fd8f2ed67f2022a93d24f.lean/declarations/collectusedorigins--dd6a0fc97160c770b8949f15.md) | 272 | `declaration-track:dd6a0fc97160c770b8949f1525aad0bcff0292e8bfac995c78c7d184468d971a` |
| 23 | `def` | [checkUnusedActivations](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant202c9693343afbb5a36f6c0a1883dc821c195b70c65fd8f2ed67f2022a93d24f.lean/declarations/checkunusedactivations--442bbf2edc986e456bd83d8c.md) | 297 | `declaration-track:442bbf2edc986e456bd83d8c3345416569fbdea872d30e982f6e36486a2a0c3d` |
| 24 | `def` | [processHypotheses](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant202c9693343afbb5a36f6c0a1883dc821c195b70c65fd8f2ed67f2022a93d24f.lean/declarations/processhypotheses--c75b36fdab256f293811fe9b.md) | 324 | `declaration-track:c75b36fdab256f293811fe9ba64e8827c0495812cb43321d02b6388cd9fe1f3b` |
| 25 | `def` | [initCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant202c9693343afbb5a36f6c0a1883dc821c195b70c65fd8f2ed67f2022a93d24f.lean/declarations/initcore--21d8c30c08a63bf6322d3628.md) | 348 | `declaration-track:21d8c30c08a63bf6322d3628317aafdbdc8497d96de743544a3a9f5232bd6760` |
| 26 | `def` | [traceEMatchDiagsCompact](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant202c9693343afbb5a36f6c0a1883dc821c195b70c65fd8f2ed67f2022a93d24f.lean/declarations/traceematchdiagscompact--c87f0d02c61fd43447a01084.md) | 361 | `declaration-track:c87f0d02c61fd43447a01084682975081637ed626d7de447709a8384a2fe20b4` |
| 27 | `def` | [mkResult](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant202c9693343afbb5a36f6c0a1883dc821c195b70c65fd8f2ed67f2022a93d24f.lean/declarations/mkresult--8cbc7f7ef0c8a7947a319150.md) | 375 | `declaration-track:8cbc7f7ef0c8a7947a319150970f61fbf05aa5b035ced497d996f26f37070b3c` |
| 28 | `def` | [GrindM.runAtGoal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant202c9693343afbb5a36f6c0a1883dc821c195b70c65fd8f2ed67f2022a93d24f.lean/declarations/grindm-runatgoal--75323fe8f371daf49327e67e.md) | 389 | `declaration-track:75323fe8f371daf49327e67e21a88ec4f2c42b23431b95ce4887115e54f1aaae` |
| 29 | `def` | [main](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant202c9693343afbb5a36f6c0a1883dc821c195b70c65fd8f2ed67f2022a93d24f.lean/declarations/main--91eeceac397a41632df9a349.md) | 396 | `declaration-track:91eeceac397a41632df9a349294f90590d50364d8047d93dcfa79f02049dfd6a` |
| 30 | `def` | [resolveDelayedMVarAssignments](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant202c9693343afbb5a36f6c0a1883dc821c195b70c65fd8f2ed67f2022a93d24f.lean/declarations/resolvedelayedmvarassignments--6c6e04cdb427ee34064c857b.md) | 424 | `declaration-track:6c6e04cdb427ee34064c857bf0e4995cf53d0c818c9ab7054b59e7dbf778552c` |
| 31 | `def` | [withProtectedMCtx](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant202c9693343afbb5a36f6c0a1883dc821c195b70c65fd8f2ed67f2022a93d24f.lean/declarations/withprotectedmctx--c7f52b70a30b2c49c89cb981.md) | 459 | `declaration-track:c7f52b70a30b2c49c89cb9815685c9ed661456731a6ae87a93f8ab272dcfe1fb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
