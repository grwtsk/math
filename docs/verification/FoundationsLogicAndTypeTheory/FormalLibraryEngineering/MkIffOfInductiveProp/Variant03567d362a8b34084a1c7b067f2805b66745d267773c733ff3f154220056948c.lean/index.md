# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MkIffOfInductiveProp.Variant03567d362a8b34084a1c7b067f2805b66745d267773c733ff3f154220056948c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "068d112745a91e0800c116b795d31fe8c3265491",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkIffOfInductiveProp/Variant03567d362a8b34084a1c7b067f2805b66745d267773c733ff3f154220056948c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkIffOfInductiveProp/Variant03567d362a8b34084a1c7b067f2805b66745d267773c733ff3f154220056948c.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkIffOfInductiveProp/Variant03567d362a8b34084a1c7b067f2805b66745d267773c733ff3f154220056948c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `068d112745a91e0800c116b795d31fe8c3265491`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkIffOfInductiveProp/Variant03567d362a8b34084a1c7b067f2805b66745d267773c733ff3f154220056948c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkIffOfInductiveProp/Variant03567d362a8b34084a1c7b067f2805b66745d267773c733ff3f154220056948c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.Tactic.Basic` — import line 16; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Apply` — import line 17; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Cases` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [MVarId.existsi](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkIffOfInductiveProp/Variant03567d362a8b34084a1c7b067f2805b66745d267773c733ff3f154220056948c.lean/declarations/mvarid-existsi--b343d87ce7e739e3ac59254b.md) | 27 | `declaration-track:b343d87ce7e739e3ac59254b4504cb3784f439cc5dec7dd59acbce25d5399e34` |
| 2 | `def` | [MVarId.nthConstructor](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkIffOfInductiveProp/Variant03567d362a8b34084a1c7b067f2805b66745d267773c733ff3f154220056948c.lean/declarations/mvarid-nthconstructor--c4467fed14cd33ebcd372bca.md) | 41 | `declaration-track:c4467fed14cd33ebcd372bca6cb1c616dd14e7fd3f2af6a3bccc83214ae47f46` |
| 3 | `def` | [select](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkIffOfInductiveProp/Variant03567d362a8b34084a1c7b067f2805b66745d267773c733ff3f154220056948c.lean/declarations/select--bfa58fa59e6db8400175d6fd.md) | 59 | `declaration-track:bfa58fa59e6db8400175d6fd72b8edb6832d873e1433f3117cd925f9483a7808` |
| 4 | `def` | [compactRelation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkIffOfInductiveProp/Variant03567d362a8b34084a1c7b067f2805b66745d267773c733ff3f154220056948c.lean/declarations/compactrelation--bce5f1c8fe20aec78ec68e26.md) | 79 | `declaration-track:bce5f1c8fe20aec78ec68e26c73b9ac9d2b690563ecb2e373dec8a94c7af93d7` |
| 5 | `def` | [updateLambdaBinderInfoD!](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkIffOfInductiveProp/Variant03567d362a8b34084a1c7b067f2805b66745d267773c733ff3f154220056948c.lean/declarations/updatelambdabinderinfod--19b0da96a1e9c0c7c81c2008.md) | 93 | `declaration-track:19b0da96a1e9c0c7c81c2008bbe97018e55bec3a411ea4aa4a170ee52e166412` |
| 6 | `def` | [mkExistsList](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkIffOfInductiveProp/Variant03567d362a8b34084a1c7b067f2805b66745d267773c733ff3f154220056948c.lean/declarations/mkexistslist--d87ec5b7a55b79aa0e41cae3.md) | 100 | `declaration-track:d87ec5b7a55b79aa0e41cae3346b0818983245538e9422e24ae026df075de52a` |
| 7 | `def` | [mkOpList](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkIffOfInductiveProp/Variant03567d362a8b34084a1c7b067f2805b66745d267773c733ff3f154220056948c.lean/declarations/mkoplist--e896c4c7c3594240cfb736d1.md) | 113 | `declaration-track:e896c4c7c3594240cfb736d1ed496fcaf70c400ce7ebe4d5a7e06d85c3f30022` |
| 8 | `def` | [mkAndList](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkIffOfInductiveProp/Variant03567d362a8b34084a1c7b067f2805b66745d267773c733ff3f154220056948c.lean/declarations/mkandlist--9d36a0cb5ec7c1c4c86f85ae.md) | 119 | `declaration-track:9d36a0cb5ec7c1c4c86f85ae16acca2ee49d94c339fedb0276c4947a41ed5493` |
| 9 | `def` | [mkOrList](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkIffOfInductiveProp/Variant03567d362a8b34084a1c7b067f2805b66745d267773c733ff3f154220056948c.lean/declarations/mkorlist--279abee9a03751d1e7eb09f5.md) | 122 | `declaration-track:279abee9a03751d1e7eb09f5ec26d1bee74123c5ebd0359fd6b00872f7701251` |
| 10 | `def` | [List.init](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkIffOfInductiveProp/Variant03567d362a8b34084a1c7b067f2805b66745d267773c733ff3f154220056948c.lean/declarations/list-init--739519511822fe3563d61d5b.md) | 125 | `declaration-track:739519511822fe3563d61d5ba79b68685c46603e6abda2ed7b62db8bdb079b76` |
| 11 | `structure` | [Shape](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkIffOfInductiveProp/Variant03567d362a8b34084a1c7b067f2805b66745d267773c733ff3f154220056948c.lean/declarations/shape--2fb82e0ce9fba842e2ad3d15.md) | 132 | `declaration-track:2fb82e0ce9fba842e2ad3d15923036d128b8baa5d5b44f4c0d8b3bf1c3a5f8b5` |
| 12 | `def` | [constrToProp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkIffOfInductiveProp/Variant03567d362a8b34084a1c7b067f2805b66745d267773c733ff3f154220056948c.lean/declarations/constrtoprop--116b407c793ae8a6bf911136.md) | 161 | `declaration-track:116b407c793ae8a6bf911136383cdd52e1b706b510f4ff2980a4aff793debe67` |
| 13 | `def` | [splitThenConstructor](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkIffOfInductiveProp/Variant03567d362a8b34084a1c7b067f2805b66745d267773c733ff3f154220056948c.lean/declarations/splitthenconstructor--7a41e3410eccfe347ae21754.md) | 196 | `declaration-track:7a41e3410eccfe347ae21754364486cbfbc6acff8188ff0f50eb055174d29e0c` |
| 14 | `def` | [toCases](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkIffOfInductiveProp/Variant03567d362a8b34084a1c7b067f2805b66745d267773c733ff3f154220056948c.lean/declarations/tocases--5e2f0d788e07195626cbd0a2.md) | 215 | `declaration-track:5e2f0d788e07195626cbd0a2b134dde574d237906adc68614476b8326ac2216a` |
| 15 | `def` | [nCasesSum](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkIffOfInductiveProp/Variant03567d362a8b34084a1c7b067f2805b66745d267773c733ff3f154220056948c.lean/declarations/ncasessum--f772a9bea6d77b13c3da4410.md) | 236 | `declaration-track:f772a9bea6d77b13c3da441007b8986fbb08324c501d19001e62f7a84c4b2a6b` |
| 16 | `def` | [nCasesProd](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkIffOfInductiveProp/Variant03567d362a8b34084a1c7b067f2805b66745d267773c733ff3f154220056948c.lean/declarations/ncasesprod--27e8820a54beb7ca028df657.md) | 249 | `declaration-track:27e8820a54beb7ca028df657b2debcb487afec5227f39f6d14d63611c6f778f9` |
| 17 | `def` | [listBoolMerge](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkIffOfInductiveProp/Variant03567d362a8b34084a1c7b067f2805b66745d267773c733ff3f154220056948c.lean/declarations/listboolmerge--8a6df3e05116fd2c89ae3502.md) | 268 | `declaration-track:8a6df3e05116fd2c89ae35029669a37a1f5e1a9d046fdc0af0026420fb5106b7` |
| 18 | `def` | [toInductive](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkIffOfInductiveProp/Variant03567d362a8b34084a1c7b067f2805b66745d267773c733ff3f154220056948c.lean/declarations/toinductive--d442ee3164c7db99120a67af.md) | 276 | `declaration-track:d442ee3164c7db99120a67af8a651a60faaf1527670dbdf8767749c6e7abd22e` |
| 19 | `def` | [mkIffOfInductivePropImpl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkIffOfInductiveProp/Variant03567d362a8b34084a1c7b067f2805b66745d267773c733ff3f154220056948c.lean/declarations/mkiffofinductivepropimpl--0e9ef1b4c6195e5e72c49846.md) | 325 | `declaration-track:0e9ef1b4c6195e5e72c498461463df3a61e13959a80ccb5bacc2eece93c87064` |
| 20 | `def` | [mkSumOfProducts](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkIffOfInductiveProp/Variant03567d362a8b34084a1c7b067f2805b66745d267773c733ff3f154220056948c.lean/declarations/mksumofproducts--179312806c34a05bb4a8f135.md) | 370 | `declaration-track:179312806c34a05bb4a8f135054021a072e49cd6ddab7d9988c8c04d08b935e1` |
| 21 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkIffOfInductiveProp/Variant03567d362a8b34084a1c7b067f2805b66745d267773c733ff3f154220056948c.lean/declarations/builtin-initialize--fd6d66c4c998abe1def033f2.md) | 375 | `declaration-track:fd6d66c4c998abe1def033f2a3c740064a76283d416eb767564064283e7b9ed7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
