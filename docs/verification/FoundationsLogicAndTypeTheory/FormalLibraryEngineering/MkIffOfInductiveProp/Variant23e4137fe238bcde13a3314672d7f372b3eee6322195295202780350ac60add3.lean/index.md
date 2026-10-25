# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MkIffOfInductiveProp.Variant23e4137fe238bcde13a3314672d7f372b3eee6322195295202780350ac60add3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "69231d1701ca08e19c15c06fd8a26d085c5ffec3",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkIffOfInductiveProp/Variant23e4137fe238bcde13a3314672d7f372b3eee6322195295202780350ac60add3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkIffOfInductiveProp/Variant23e4137fe238bcde13a3314672d7f372b3eee6322195295202780350ac60add3.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkIffOfInductiveProp/Variant23e4137fe238bcde13a3314672d7f372b3eee6322195295202780350ac60add3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `69231d1701ca08e19c15c06fd8a26d085c5ffec3`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkIffOfInductiveProp/Variant23e4137fe238bcde13a3314672d7f372b3eee6322195295202780350ac60add3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkIffOfInductiveProp/Variant23e4137fe238bcde13a3314672d7f372b3eee6322195295202780350ac60add3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.Tactic.Basic` — import line 21; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Apply` — import line 22; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Cases` — import line 23; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [MVarId.existsi](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkIffOfInductiveProp/Variant23e4137fe238bcde13a3314672d7f372b3eee6322195295202780350ac60add3.lean/declarations/mvarid-existsi--95cf3a6504835bb234e06981.md) | 35 | `declaration-track:95cf3a6504835bb234e06981bfc46721feef897f4673e9cbd08aff35ee4fc82d` |
| 2 | `def` | [MVarId.nthConstructor](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkIffOfInductiveProp/Variant23e4137fe238bcde13a3314672d7f372b3eee6322195295202780350ac60add3.lean/declarations/mvarid-nthconstructor--11057d2c3c709857851ed601.md) | 49 | `declaration-track:11057d2c3c709857851ed6018ee3713451a39fb55adcf8ba03e68c657671292a` |
| 3 | `def` | [select](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkIffOfInductiveProp/Variant23e4137fe238bcde13a3314672d7f372b3eee6322195295202780350ac60add3.lean/declarations/select--9ca4b4e19f428c95b7f44b88.md) | 67 | `declaration-track:9ca4b4e19f428c95b7f44b88adb251538a1279450b47812aa7dedcacc14ab928` |
| 4 | `def` | [compactRelation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkIffOfInductiveProp/Variant23e4137fe238bcde13a3314672d7f372b3eee6322195295202780350ac60add3.lean/declarations/compactrelation--1ff57efc557443c3c27723e0.md) | 87 | `declaration-track:1ff57efc557443c3c27723e0b9a05a7e3834ed700cf8a2963994d0964db743b6` |
| 5 | `def` | [updateLambdaBinderInfoD!](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkIffOfInductiveProp/Variant23e4137fe238bcde13a3314672d7f372b3eee6322195295202780350ac60add3.lean/declarations/updatelambdabinderinfod--bf0d111ed22ea6677082a33e.md) | 101 | `declaration-track:bf0d111ed22ea6677082a33e58463db0421496d68ca328ee1ea0ffefbffe15a5` |
| 6 | `def` | [mkExistsList](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkIffOfInductiveProp/Variant23e4137fe238bcde13a3314672d7f372b3eee6322195295202780350ac60add3.lean/declarations/mkexistslist--434645c22f9fa04635a9aae4.md) | 108 | `declaration-track:434645c22f9fa04635a9aae483f0e899634d962576531afb1468627a2052b63f` |
| 7 | `def` | [mkOpList](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkIffOfInductiveProp/Variant23e4137fe238bcde13a3314672d7f372b3eee6322195295202780350ac60add3.lean/declarations/mkoplist--5911b9b221a8771feccafbd9.md) | 121 | `declaration-track:5911b9b221a8771feccafbd9c807e464f704401d737f8fa857e2af4de43a119e` |
| 8 | `def` | [mkAndList](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkIffOfInductiveProp/Variant23e4137fe238bcde13a3314672d7f372b3eee6322195295202780350ac60add3.lean/declarations/mkandlist--96d2ef7e85983854c44355c2.md) | 127 | `declaration-track:96d2ef7e85983854c44355c2f8b59292c13d44215c9af8429a1db2a5e2ba94ee` |
| 9 | `def` | [mkOrList](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkIffOfInductiveProp/Variant23e4137fe238bcde13a3314672d7f372b3eee6322195295202780350ac60add3.lean/declarations/mkorlist--703c848dc35323c8fb082524.md) | 130 | `declaration-track:703c848dc35323c8fb0825244b3ebcaa1a307a4e9e66fdf1cca8c4ca0848b666` |
| 10 | `def` | [List.init](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkIffOfInductiveProp/Variant23e4137fe238bcde13a3314672d7f372b3eee6322195295202780350ac60add3.lean/declarations/list-init--a5ee13c79bc5332b4a1de2fa.md) | 133 | `declaration-track:a5ee13c79bc5332b4a1de2fa859410a1c4a8c79ef33a648335d76394af96bae6` |
| 11 | `structure` | [Shape](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkIffOfInductiveProp/Variant23e4137fe238bcde13a3314672d7f372b3eee6322195295202780350ac60add3.lean/declarations/shape--4156902b13f57d98d80bd814.md) | 140 | `declaration-track:4156902b13f57d98d80bd8147743f4a5d3272ecc9af720528fd93b09203575f5` |
| 12 | `def` | [constrToProp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkIffOfInductiveProp/Variant23e4137fe238bcde13a3314672d7f372b3eee6322195295202780350ac60add3.lean/declarations/constrtoprop--16214e41375d08aca78d6482.md) | 169 | `declaration-track:16214e41375d08aca78d6482968a00a6c6df0395b9217f203e8c17d901c9c988` |
| 13 | `def` | [splitThenConstructor](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkIffOfInductiveProp/Variant23e4137fe238bcde13a3314672d7f372b3eee6322195295202780350ac60add3.lean/declarations/splitthenconstructor--012ef6e7817f6e253062182d.md) | 204 | `declaration-track:012ef6e7817f6e253062182dd60ba6c3f97b20cec4886e720d33dfeacabb0fe7` |
| 14 | `def` | [toCases](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkIffOfInductiveProp/Variant23e4137fe238bcde13a3314672d7f372b3eee6322195295202780350ac60add3.lean/declarations/tocases--da94d28132411e22a90fe34c.md) | 223 | `declaration-track:da94d28132411e22a90fe34c1006ea6c1a87db7c2e27241d18cc9b12f59004e3` |
| 15 | `def` | [nCasesSum](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkIffOfInductiveProp/Variant23e4137fe238bcde13a3314672d7f372b3eee6322195295202780350ac60add3.lean/declarations/ncasessum--8647671eef7eda707c48c2ba.md) | 244 | `declaration-track:8647671eef7eda707c48c2ba0a87eaefff9e820f7b58c3c3a6300f5e2db83890` |
| 16 | `def` | [nCasesProd](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkIffOfInductiveProp/Variant23e4137fe238bcde13a3314672d7f372b3eee6322195295202780350ac60add3.lean/declarations/ncasesprod--768e427ad1d35617b803c1a9.md) | 257 | `declaration-track:768e427ad1d35617b803c1a9bf7fd5a6c1f851b12db0a8b46a8bdd0ddb1566a4` |
| 17 | `def` | [listBoolMerge](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkIffOfInductiveProp/Variant23e4137fe238bcde13a3314672d7f372b3eee6322195295202780350ac60add3.lean/declarations/listboolmerge--8f7103ad0ed0b5f9d4cbe2ad.md) | 276 | `declaration-track:8f7103ad0ed0b5f9d4cbe2adb09cea80de0d618a4268710ac18f817631b0317e` |
| 18 | `def` | [toInductive](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkIffOfInductiveProp/Variant23e4137fe238bcde13a3314672d7f372b3eee6322195295202780350ac60add3.lean/declarations/toinductive--3e094a8c248c86b36ea97810.md) | 284 | `declaration-track:3e094a8c248c86b36ea97810568a76e3f9c79cb6422ca51d38feaff4b88ec949` |
| 19 | `def` | [mkIffOfInductivePropImpl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkIffOfInductiveProp/Variant23e4137fe238bcde13a3314672d7f372b3eee6322195295202780350ac60add3.lean/declarations/mkiffofinductivepropimpl--2f1e823f8760751ecc037bb5.md) | 333 | `declaration-track:2f1e823f8760751ecc037bb578403c1c9eb8c82c82e9acd2422b57d2ac37c01f` |
| 20 | `def` | [mkSumOfProducts](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkIffOfInductiveProp/Variant23e4137fe238bcde13a3314672d7f372b3eee6322195295202780350ac60add3.lean/declarations/mksumofproducts--5d5f76fa2027f5edff8571b7.md) | 378 | `declaration-track:5d5f76fa2027f5edff8571b799b58fa68b68606e60cbbd72161ae6173d7b86ca` |
| 21 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkIffOfInductiveProp/Variant23e4137fe238bcde13a3314672d7f372b3eee6322195295202780350ac60add3.lean/declarations/builtin-initialize--0517552f4f4f7d97260b7bda.md) | 383 | `declaration-track:0517552f4f4f7d97260b7bdace8379b5000bf02ef83569f361169b9f4972ad3e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
