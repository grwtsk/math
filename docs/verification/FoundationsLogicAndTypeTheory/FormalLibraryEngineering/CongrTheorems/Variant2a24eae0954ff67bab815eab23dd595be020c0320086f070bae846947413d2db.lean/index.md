# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CongrTheorems.Variant2a24eae0954ff67bab815eab23dd595be020c0320086f070bae846947413d2db

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2b0f7de86c99ab7a804854faf9d97370d0007f8c",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Variant2a24eae0954ff67bab815eab23dd595be020c0320086f070bae846947413d2db.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Variant2a24eae0954ff67bab815eab23dd595be020c0320086f070bae846947413d2db.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Variant2a24eae0954ff67bab815eab23dd595be020c0320086f070bae846947413d2db.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2b0f7de86c99ab7a804854faf9d97370d0007f8c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Variant2a24eae0954ff67bab815eab23dd595be020c0320086f070bae846947413d2db.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Variant2a24eae0954ff67bab815eab23dd595be020c0320086f070bae846947413d2db.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Structure` — import line 10; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Subst` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Meta.FunInfo` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [CongrArgKind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Variant2a24eae0954ff67bab815eab23dd595be020c0320086f070bae846947413d2db.lean/declarations/congrargkind--885f8f213f485937ed4f77a5.md) | 16 | `declaration-track:885f8f213f485937ed4f77a57ece967cfd132f8f029ab1004a4cd4e2616c7c5c` |
| 2 | `structure` | [CongrTheorem](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Variant2a24eae0954ff67bab815eab23dd595be020c0320086f070bae846947413d2db.lean/declarations/congrtheorem--2b6fa4ebd6fa51ca73a358a6.md) | 41 | `declaration-track:2b6fa4ebd6fa51ca73a358a6c4c39376fb87e9277ad1c8bae97ad6c5e05d1707` |
| 3 | `def` | [addPrimeToFVarUserNames](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Variant2a24eae0954ff67bab815eab23dd595be020c0320086f070bae846947413d2db.lean/declarations/addprimetofvarusernames--8e51bd4715ad65a5911e804e.md) | 46 | `declaration-track:8e51bd4715ad65a5911e804eb33aa979a75a7c571f81ba699092bcd3bc6d59c6` |
| 4 | `def` | [setBinderInfosD](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Variant2a24eae0954ff67bab815eab23dd595be020c0320086f070bae846947413d2db.lean/declarations/setbinderinfosd--09851b4ee94812622f22abb1.md) | 53 | `declaration-track:09851b4ee94812622f22abb1a6f3f7da77635ab1795301057c1b7852083ea6b2` |
| 5 | `def` | [mkHCongrWithArity](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Variant2a24eae0954ff67bab815eab23dd595be020c0320086f070bae846947413d2db.lean/declarations/mkhcongrwitharity--974436628100202c9250172d.md) | 60 | `declaration-track:974436628100202c9250172de758bdaface88ebf722a7ed4fbf117f2751fcd0d` |
| 6 | `def` | [mkHCongr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Variant2a24eae0954ff67bab815eab23dd595be020c0320086f070bae846947413d2db.lean/declarations/mkhcongr--b13d039a14533f76b832614a.md) | 120 | `declaration-track:b13d039a14533f76b832614a2add8fe2161ec34bdd1e5a4a17704fe37c5b9a30` |
| 7 | `def` | [fixKindsForDependencies](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Variant2a24eae0954ff67bab815eab23dd595be020c0320086f070bae846947413d2db.lean/declarations/fixkindsfordependencies--56b1d05a0488f538b867cbc3.md) | 126 | `declaration-track:56b1d05a0488f538b867cbc3df85b4025aa2376c3c069ff9fcdab9e83a430e4f` |
| 8 | `def` | [hasCastLike](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Variant2a24eae0954ff67bab815eab23dd595be020c0320086f070bae846947413d2db.lean/declarations/hascastlike--423b60ca04b1b5d19f04321b.md) | 138 | `declaration-track:423b60ca04b1b5d19f04321b9d2d981d15dd0cad36e53ca313154968c5135ad4` |
| 9 | `def` | [withNext](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Variant2a24eae0954ff67bab815eab23dd595be020c0320086f070bae846947413d2db.lean/declarations/withnext--59bf14de6fa5d5ac503a7be1.md) | 141 | `declaration-track:59bf14de6fa5d5ac503a7be1f0158af30baf5c2e7e9f61f4f4c907d9496244a0` |
| 10 | `def` | [shouldUseSubsingletonInst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Variant2a24eae0954ff67bab815eab23dd595be020c0320086f070bae846947413d2db.lean/declarations/shouldusesubsingletoninst--2d226227d922bc5d9c0502f6.md) | 148 | `declaration-track:2d226227d922bc5d9c0502f656c0a714cbc9d46e9be4c7a2023073620eb725f5` |
| 11 | `def` | [getClassSubobjectMask?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Variant2a24eae0954ff67bab815eab23dd595be020c0320086f070bae846947413d2db.lean/declarations/getclasssubobjectmask--a01134b9af456a0314185da3.md) | 162 | `declaration-track:a01134b9af456a0314185da348e476c9e9417b0822eb771770c8eb08b7402ade` |
| 12 | `def` | [getCongrSimpKinds](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Variant2a24eae0954ff67bab815eab23dd595be020c0320086f070bae846947413d2db.lean/declarations/getcongrsimpkinds--af8cc726273eb3721eb9cada.md) | 178 | `declaration-track:af8cc726273eb3721eb9cada659fd886e3257a604f3507126cce5d2c51b282a5` |
| 13 | `def` | [getCongrSimpKindsForArgZero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Variant2a24eae0954ff67bab815eab23dd595be020c0320086f070bae846947413d2db.lean/declarations/getcongrsimpkindsforargzero--d4cf6e24c274a56fa5a86cfa.md) | 220 | `declaration-track:d4cf6e24c274a56fa5a86cfa60daf6db8a417c7d16098b862f91ae03ef8ea030` |
| 14 | `inductive` | [EqInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Variant2a24eae0954ff67bab815eab23dd595be020c0320086f070bae846947413d2db.lean/declarations/eqinfo--997c565626236fb408fbe17e.md) | 241 | `declaration-track:997c565626236fb408fbe17e79996a9b0fefa775233425727c8cb3eb01eaa9ec` |
| 15 | `def` | [getFVarId](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Variant2a24eae0954ff67bab815eab23dd595be020c0320086f070bae846947413d2db.lean/declarations/getfvarid--1adb135a5089ddba17f91d98.md) | 255 | `declaration-track:1adb135a5089ddba17f91d98fe174e5212a0494f73c7da1de3ad2a31839ae5fb` |
| 16 | `def` | [mkCast](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Variant2a24eae0954ff67bab815eab23dd595be020c0320086f070bae846947413d2db.lean/declarations/mkcast--e61579c0e2ad6352dbc63001.md) | 263 | `declaration-track:e61579c0e2ad6352dbc630016d2eaf9f00a78e54da400a14bcb6a4151395bd25` |
| 17 | `def` | [mkCongrSimpCore?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Variant2a24eae0954ff67bab815eab23dd595be020c0320086f070bae846947413d2db.lean/declarations/mkcongrsimpcore--56b77ea24d855cb7fcb536c0.md) | 296 | `declaration-track:56b77ea24d855cb7fcb536c0e0f1eb8d2f7a3fb1f71823e3b4c71418b5b9db9c` |
| 18 | `def` | [mkCongrSimp?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Variant2a24eae0954ff67bab815eab23dd595be020c0320086f070bae846947413d2db.lean/declarations/mkcongrsimp--d33ffe58a478fb604b2d518c.md) | 387 | `declaration-track:d33ffe58a478fb604b2d518c2c2979ec1068c91572e55507209e814fd2469044` |
| 19 | `def` | [hcongrThmSuffixBase](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Variant2a24eae0954ff67bab815eab23dd595be020c0320086f070bae846947413d2db.lean/declarations/hcongrthmsuffixbase--93c32336accf6e07d681b207.md) | 392 | `declaration-track:93c32336accf6e07d681b2078a4ac057be5855daee2565ccf71e2fcc0241fbd6` |
| 20 | `def` | [hcongrThmSuffixBasePrefix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Variant2a24eae0954ff67bab815eab23dd595be020c0320086f070bae846947413d2db.lean/declarations/hcongrthmsuffixbaseprefix--6a723b52b72fce5c9a97c53c.md) | 393 | `declaration-track:6a723b52b72fce5c9a97c53ce3a4d060e697fde64f42a121d35c6066c9bf0d1c` |
| 21 | `def` | [isHCongrReservedNameSuffix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Variant2a24eae0954ff67bab815eab23dd595be020c0320086f070bae846947413d2db.lean/declarations/ishcongrreservednamesuffix--5f1c53c15ad9a6fd373890b0.md) | 396 | `declaration-track:5f1c53c15ad9a6fd373890b01fc17dea995b9b4d0638dcc67ad39c8ea34d3122` |
| 22 | `def` | [congrSimpSuffix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Variant2a24eae0954ff67bab815eab23dd595be020c0320086f070bae846947413d2db.lean/declarations/congrsimpsuffix--8e6f97bd3fd5913f19998310.md) | 399 | `declaration-track:8e6f97bd3fd5913f199983100baf3816a53b3f86b5c24b4ef24ba23466e86c33` |
| 23 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Variant2a24eae0954ff67bab815eab23dd595be020c0320086f070bae846947413d2db.lean/declarations/builtin-initialize--ccc43445160f2b4cddd9ae2c.md) | 401 | `declaration-track:ccc43445160f2b4cddd9ae2c55709f2626e68cfec8bf90780be966a3fadfb047` |
| 24 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Variant2a24eae0954ff67bab815eab23dd595be020c0320086f070bae846947413d2db.lean/declarations/builtin-initialize--27eb1491ba7599b1e15397d6.md) | 403 | `declaration-track:27eb1491ba7599b1e15397d62d9376d7d3ec08380f8b77a3dd9efd60eb9dc2d5` |
| 25 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Variant2a24eae0954ff67bab815eab23dd595be020c0320086f070bae846947413d2db.lean/declarations/builtin-initialize--b3b4b9a600410581ce73c7d4.md) | 405 | `declaration-track:b3b4b9a600410581ce73c7d4ffc6ec62a9a49464878f35f619d84ba20bd36e04` |
| 26 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Variant2a24eae0954ff67bab815eab23dd595be020c0320086f070bae846947413d2db.lean/declarations/builtin-initialize--6b03598b54d76b5a3aebac07.md) | 410 | `declaration-track:6b03598b54d76b5a3aebac07a55deb07b1defc924cb22313b2b4f99e2dc1ae98` |
| 27 | `def` | [mkHCongrWithArityForConst?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Variant2a24eae0954ff67bab815eab23dd595be020c0320086f070bae846947413d2db.lean/declarations/mkhcongrwitharityforconst--11b28a9a4bae90dbb94903d9.md) | 452 | `declaration-track:11b28a9a4bae90dbb94903d952ad4d5c31307bbecb86e021905a9e98e8434165` |
| 28 | `def` | [mkCongrSimpForConst?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Variant2a24eae0954ff67bab815eab23dd595be020c0320086f070bae846947413d2db.lean/declarations/mkcongrsimpforconst--e0515e1e0584570fd4bf4882.md) | 470 | `declaration-track:e0515e1e0584570fd4bf4882b8cce0ca2f3d62be6ba3d50121e84870cdba9c81` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
