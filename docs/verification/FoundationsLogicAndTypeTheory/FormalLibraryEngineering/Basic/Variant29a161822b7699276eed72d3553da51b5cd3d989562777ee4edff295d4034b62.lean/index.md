# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Variant29a161822b7699276eed72d3553da51b5cd3d989562777ee4edff295d4034b62

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2c203b5c6891867487729c1852f5847977b56231",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant29a161822b7699276eed72d3553da51b5cd3d989562777ee4edff295d4034b62.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant29a161822b7699276eed72d3553da51b5cd3d989562777ee4edff295d4034b62.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant29a161822b7699276eed72d3553da51b5cd3d989562777ee4edff295d4034b62.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2c203b5c6891867487729c1852f5847977b56231`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant29a161822b7699276eed72d3553da51b5cd3d989562777ee4edff295d4034b62.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant29a161822b7699276eed72d3553da51b5cd3d989562777ee4edff295d4034b62.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta` — import line 11; external provider; requires a separately pinned dependency.
- `Std.Lean.LocalContext` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Meta.sortFVarsByContextOrder](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant29a161822b7699276eed72d3553da51b5cd3d989562777ee4edff295d4034b62.lean/declarations/meta-sortfvarsbycontextorder--de0fa751b144eac7af677298.md) | 26 | `declaration-track:de0fa751b144eac7af677298e13592d62cff7f6957df5c47c1276a4954013e46` |
| 2 | `def` | [getExprMVarDecl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant29a161822b7699276eed72d3553da51b5cd3d989562777ee4edff295d4034b62.lean/declarations/getexprmvardecl--2809fd6e7b8b1fd84316bf6b.md) | 37 | `declaration-track:2809fd6e7b8b1fd84316bf6b353727cec7ba25a2d7a7c1d6b18868667a96f405` |
| 3 | `def` | [declareExprMVar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant29a161822b7699276eed72d3553da51b5cd3d989562777ee4edff295d4034b62.lean/declarations/declareexprmvar--edc8616b8da5d713345533f8.md) | 48 | `declaration-track:edc8616b8da5d713345533f8147e1cba963874cfe79808740b936c4259dd9aeb` |
| 4 | `def` | [isExprMVarAssignedOrDelayedAssigned](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant29a161822b7699276eed72d3553da51b5cd3d989562777ee4edff295d4034b62.lean/declarations/isexprmvarassignedordelayedassigned--c9fc56045e5fe16519b3ec54.md) | 59 | `declaration-track:c9fc56045e5fe16519b3ec5448d8cdbfaddf6c54426ce0c329010bf12065c8df` |
| 5 | `def` | [isExprMVarDeclared](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant29a161822b7699276eed72d3553da51b5cd3d989562777ee4edff295d4034b62.lean/declarations/isexprmvardeclared--792004349e42881d1f854961.md) | 66 | `declaration-track:792004349e42881d1f854961f09f0256966dae7a8b4712c584127df05ff22d5d` |
| 6 | `def` | [delayedAssignExprMVar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant29a161822b7699276eed72d3553da51b5cd3d989562777ee4edff295d4034b62.lean/declarations/delayedassignexprmvar--ae0bbeb9b4599db4d3683f4a.md) | 73 | `declaration-track:ae0bbeb9b4599db4d3683f4af60d931c1cce88cba5f2377b0f33b3ec1e96e3fe` |
| 7 | `def` | [eraseExprMVarAssignment](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant29a161822b7699276eed72d3553da51b5cd3d989562777ee4edff295d4034b62.lean/declarations/eraseexprmvarassignment--7f08c273ee8adbe6d3315b0c.md) | 80 | `declaration-track:7f08c273ee8adbe6d3315b0cd4754f98b5077cfed6aba5d2e40865a257c7be72` |
| 8 | `def` | [modifyExprMVarDecl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant29a161822b7699276eed72d3553da51b5cd3d989562777ee4edff295d4034b62.lean/declarations/modifyexprmvardecl--093ee2586a256ae978236b48.md) | 93 | `declaration-track:093ee2586a256ae978236b48df5dca24ac1e4dc3ac98a618ef0d231d812d22e7` |
| 9 | `def` | [modifyExprMVarLCtx](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant29a161822b7699276eed72d3553da51b5cd3d989562777ee4edff295d4034b62.lean/declarations/modifyexprmvarlctx--3add1025e9a09bb02f670fbf.md) | 107 | `declaration-track:3add1025e9a09bb02f670fbfd5c6c6ba6f8fd0e9e383daeb4516947469174096` |
| 10 | `def` | [setFVarKind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant29a161822b7699276eed72d3553da51b5cd3d989562777ee4edff295d4034b62.lean/declarations/setfvarkind--9734c56bd8b21dccb6d0213e.md) | 116 | `declaration-track:9734c56bd8b21dccb6d0213ecf977c48d9ad7bc6ba7678a06c3cb5c222697f89` |
| 11 | `def` | [setFVarBinderInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant29a161822b7699276eed72d3553da51b5cd3d989562777ee4edff295d4034b62.lean/declarations/setfvarbinderinfo--3456ea5d11ddda3a3da8632e.md) | 125 | `declaration-track:3456ea5d11ddda3a3da8632eeaeb35fb8ee2dd83b2d8ea2e0e984b2173c7a1d1` |
| 12 | `def` | [unassignedExprMVars](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant29a161822b7699276eed72d3553da51b5cd3d989562777ee4edff295d4034b62.lean/declarations/unassignedexprmvars--5f348b93b17d8a7a6ad6bf19.md) | 134 | `declaration-track:5f348b93b17d8a7a6ad6bf19daea5dd56201a3e4eb9850ec8598f7757cf91991` |
| 13 | `def` | [isAssignedOrDelayedAssigned](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant29a161822b7699276eed72d3553da51b5cd3d989562777ee4edff295d4034b62.lean/declarations/isassignedordelayedassigned--fc2aa8a5b38adc78f55f5c1b.md) | 155 | `declaration-track:fc2aa8a5b38adc78f55f5c1bbd03d40b5c9df5f14646a16f5299ed9a58dd1616` |
| 14 | `def` | [isDeclared](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant29a161822b7699276eed72d3553da51b5cd3d989562777ee4edff295d4034b62.lean/declarations/isdeclared--d66de60258af38548ec8df68.md) | 162 | `declaration-track:d66de60258af38548ec8df6883fdc1caad66fa184a82ae5b3d7771cc3cc4ced0` |
| 15 | `def` | [delayedAssign](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant29a161822b7699276eed72d3553da51b5cd3d989562777ee4edff295d4034b62.lean/declarations/delayedassign--caa92ffb78f3bf84023184d8.md) | 169 | `declaration-track:caa92ffb78f3bf84023184d8e74a959e9fa41a89c42a02c3b9fb2e68be64988f` |
| 16 | `def` | [eraseAssignment](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant29a161822b7699276eed72d3553da51b5cd3d989562777ee4edff295d4034b62.lean/declarations/eraseassignment--f96b180b2ae29f823bb9c20e.md) | 176 | `declaration-track:f96b180b2ae29f823bb9c20eda380820d367e67c0aab5c62d556f7bfa2b13d1b` |
| 17 | `def` | [modifyDecl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant29a161822b7699276eed72d3553da51b5cd3d989562777ee4edff295d4034b62.lean/declarations/modifydecl--41997c7563e2bdd91b4cc84d.md) | 186 | `declaration-track:41997c7563e2bdd91b4cc84d3329c7747a5bf2da22052a4d144a143ee4a909a4` |
| 18 | `def` | [modifyLCtx](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant29a161822b7699276eed72d3553da51b5cd3d989562777ee4edff295d4034b62.lean/declarations/modifylctx--87be1147bad5d3a5354069f2.md) | 197 | `declaration-track:87be1147bad5d3a5354069f2f092b26a46367c89a05e053b44edfd05dad64ce4` |
| 19 | `def` | [setFVarKind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant29a161822b7699276eed72d3553da51b5cd3d989562777ee4edff295d4034b62.lean/declarations/setfvarkind--597fd05247c86df412cd0043.md) | 205 | `declaration-track:597fd05247c86df412cd00438ace0dac7c61e7a6e243a5de6aec9a58edb628aa` |
| 20 | `def` | [setFVarBinderInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant29a161822b7699276eed72d3553da51b5cd3d989562777ee4edff295d4034b62.lean/declarations/setfvarbinderinfo--e2a1eada8ca36a29f81f836a.md) | 213 | `declaration-track:e2a1eada8ca36a29f81f836a6c33c9d5b07754cf57c1bd0803787d5338019e18` |
| 21 | `def` | [getMVarDependencies](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant29a161822b7699276eed72d3553da51b5cd3d989562777ee4edff295d4034b62.lean/declarations/getmvardependencies--fdb954a19e731ca55ec18fea.md) | 222 | `declaration-track:fdb954a19e731ca55ec18fea077dfe68c20f491ea05dd5049f0a1fd62f5ad1b7` |
| 22 | `def` | [isSubsingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant29a161822b7699276eed72d3553da51b5cd3d989562777ee4edff295d4034b62.lean/declarations/issubsingleton--c8c1469714cf962784c8c438.md) | 253 | `declaration-track:c8c1469714cf962784c8c4382adddf09684a5c3ac51cafd4185cf9e0f1109130` |
| 23 | `def` | [isIndependentOf](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant29a161822b7699276eed72d3553da51b5cd3d989562777ee4edff295d4034b62.lean/declarations/isindependentof--9a453b4bf711089360125db1.md) | 287 | `declaration-track:9a453b4bf711089360125db116661d5d0b441d6e3f853463fa9064998a552e60` |
| 24 | `def` | [replace](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant29a161822b7699276eed72d3553da51b5cd3d989562777ee4edff295d4034b62.lean/declarations/replace--028d25704b7453fa1fa98227.md) | 310 | `declaration-track:028d25704b7453fa1fa982273c009507b8b1b0a8ad59031ac447b9f622cf4f19` |
| 25 | `def` | [getTypeCleanup](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant29a161822b7699276eed72d3553da51b5cd3d989562777ee4edff295d4034b62.lean/declarations/gettypecleanup--7902e8c7780999f2255ef7b7.md) | 336 | `declaration-track:7902e8c7780999f2255ef7b701e763a8f79b2bccf6d487367706ecf6bcd43433` |
| 26 | `def` | [getUnassignedExprMVars](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant29a161822b7699276eed72d3553da51b5cd3d989562777ee4edff295d4034b62.lean/declarations/getunassignedexprmvars--63f05c0b2305f629147d642f.md) | 348 | `declaration-track:63f05c0b2305f629147d642fc6af932fe726bdae8828f8dff894be3574cdc120` |
| 27 | `def` | [unhygienic](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant29a161822b7699276eed72d3553da51b5cd3d989562777ee4edff295d4034b62.lean/declarations/unhygienic--b453db92e5eda186e0ed0b8d.md) | 355 | `declaration-track:b453db92e5eda186e0ed0b8d01633e5771c00ee8bbfe4f2ff406224363864f68` |
| 28 | `def` | [mkFreshIdWithPrefix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant29a161822b7699276eed72d3553da51b5cd3d989562777ee4edff295d4034b62.lean/declarations/mkfreshidwithprefix--2f2cfefd99c59a0bfebda837.md) | 363 | `declaration-track:2f2cfefd99c59a0bfebda8373af3f58a2c3d7cbdce1f1bcc973f9f404302a468` |
| 29 | `def` | [repeat'Core](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant29a161822b7699276eed72d3553da51b5cd3d989562777ee4edff295d4034b62.lean/declarations/repeat-core--842427983792deb64992d3db.md) | 380 | `declaration-track:842427983792deb64992d3db0f137962afaecb5a36030b83c9ceab6c77ecc32c` |
| 30 | `def` | [repeat'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant29a161822b7699276eed72d3553da51b5cd3d989562777ee4edff295d4034b62.lean/declarations/repeat--f89cc558414c7bb8c72b81b2.md) | 410 | `declaration-track:f89cc558414c7bb8c72b81b2c67761c88583d4d84986822c727095bebcfa8cc8` |
| 31 | `def` | [repeat1'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant29a161822b7699276eed72d3553da51b5cd3d989562777ee4edff295d4034b62.lean/declarations/repeat1--c7fc5972b4dad1f06d4bbbd5.md) | 420 | `declaration-track:c7fc5972b4dad1f06d4bbbd55469ad9eb2fda73a036b5d13c840c9e1f4739202` |
| 32 | `def` | [saturate1](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant29a161822b7699276eed72d3553da51b5cd3d989562777ee4edff295d4034b62.lean/declarations/saturate1--b8552b75c820aeb5e57bb42a.md) | 434 | `declaration-track:b8552b75c820aeb5e57bb42afd0da7de2fbf4f7af8a5304d70bd70cf647ca058` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
