# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Parse.Variante37076d588c6f4b13af36d5aadbc9e2b2836240b319e0a078dbf13322df4f33d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c5f7aacdbddb53c005236a180c742fe4e42d4e8d",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variante37076d588c6f4b13af36d5aadbc9e2b2836240b319e0a078dbf13322df4f33d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variante37076d588c6f4b13af36d5aadbc9e2b2836240b319e0a078dbf13322df4f33d.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variante37076d588c6f4b13af36d5aadbc9e2b2836240b319e0a078dbf13322df4f33d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c5f7aacdbddb53c005236a180c742fe4e42d4e8d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variante37076d588c6f4b13af36d5aadbc9e2b2836240b319e0a078dbf13322df4f33d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variante37076d588c6f4b13af36d5aadbc9e2b2836240b319e0a078dbf13322df4f33d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std.Data.HashMap` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Declaration` — import line 12; external provider; requires a separately pinned dependency.
- `Std.Internal.Parsec.String` — import line 13; external provider; requires a separately pinned dependency.
- `Lean.Data.Json.Parser` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ExportedEnv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variante37076d588c6f4b13af36d5aadbc9e2b2836240b319e0a078dbf13322df4f33d.lean/declarations/exportedenv--1c3d93d37841b374d5b2e47b.md) | 21 | `declaration-track:1c3d93d37841b374d5b2e47b8fb05639772018a8c4a3db53c53d986d762936a9` |
| 2 | `structure` | [State](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variante37076d588c6f4b13af36d5aadbc9e2b2836240b319e0a078dbf13322df4f33d.lean/declarations/state--80c8b8066c9940af62e2efe2.md) | 31 | `declaration-track:80c8b8066c9940af62e2efe29a18aed3a7c535d322aaf9ef601099a8afba50f6` |
| 3 | `abbrev` | [M](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variante37076d588c6f4b13af36d5aadbc9e2b2836240b319e0a078dbf13322df4f33d.lean/declarations/m--5ea8a9b6c7db28a8175605c1.md) | 40 | `declaration-track:5ea8a9b6c7db28a8175605c103d286e3723473118ee9afdb721a8e55a14bf766` |
| 4 | `def` | [M.run](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variante37076d588c6f4b13af36d5aadbc9e2b2836240b319e0a078dbf13322df4f33d.lean/declarations/m-run--43d48a760f31aa35e3de84f3.md) | 42 | `declaration-track:43d48a760f31aa35e3de84f337f5d7f6cef231d0011d6d29957e2a8c271e9897` |
| 5 | `def` | [fail](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variante37076d588c6f4b13af36d5aadbc9e2b2836240b319e0a078dbf13322df4f33d.lean/declarations/fail--55aa07213d003d3e3cc298c7.md) | 46 | `declaration-track:55aa07213d003d3e3cc298c7a7d8ae1e5e030b6fc91cbae63e799c048e716fa6` |
| 6 | `def` | [getName](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variante37076d588c6f4b13af36d5aadbc9e2b2836240b319e0a078dbf13322df4f33d.lean/declarations/getname--25d8041b4225266d455e6340.md) | 50 | `declaration-track:25d8041b4225266d455e6340544b682cd26ea2dc091eeb7ea086fa9bb59fdb85` |
| 7 | `def` | [addName](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variante37076d588c6f4b13af36d5aadbc9e2b2836240b319e0a078dbf13322df4f33d.lean/declarations/addname--260999fffacda1d31ca4a03b.md) | 55 | `declaration-track:260999fffacda1d31ca4a03b35b71e9eec92bed9d4c3af3f8aeda6b9d2a50952` |
| 8 | `def` | [getLevel](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variante37076d588c6f4b13af36d5aadbc9e2b2836240b319e0a078dbf13322df4f33d.lean/declarations/getlevel--5b5c32ef7e4af0a1e0ccf6c5.md) | 59 | `declaration-track:5b5c32ef7e4af0a1e0ccf6c532e4dad51091f4a66a2702b426fa266bc71af140` |
| 9 | `def` | [addLevel](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variante37076d588c6f4b13af36d5aadbc9e2b2836240b319e0a078dbf13322df4f33d.lean/declarations/addlevel--37419b44642f2fe304921113.md) | 64 | `declaration-track:37419b44642f2fe304921113671d9c5f28ada01591267f6a9952d781db4946c6` |
| 10 | `def` | [getExpr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variante37076d588c6f4b13af36d5aadbc9e2b2836240b319e0a078dbf13322df4f33d.lean/declarations/getexpr--e57eda527fb47015eb20572d.md) | 68 | `declaration-track:e57eda527fb47015eb20572da2ebcbb10971250643eebee57e9f08ca5cfc0e68` |
| 11 | `def` | [addExpr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variante37076d588c6f4b13af36d5aadbc9e2b2836240b319e0a078dbf13322df4f33d.lean/declarations/addexpr--096e093a9b8ebb4869a3ba8e.md) | 73 | `declaration-track:096e093a9b8ebb4869a3ba8e54018cf3535f74ad7a30dfd1528ac07ba1b50b05` |
| 12 | `def` | [getRecursorRule](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variante37076d588c6f4b13af36d5aadbc9e2b2836240b319e0a078dbf13322df4f33d.lean/declarations/getrecursorrule--3408b3ebff6432aa138e2eed.md) | 77 | `declaration-track:3408b3ebff6432aa138e2eedcbd709265d33127cd465ea976143974ca939726e` |
| 13 | `def` | [addRecursorRule](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variante37076d588c6f4b13af36d5aadbc9e2b2836240b319e0a078dbf13322df4f33d.lean/declarations/addrecursorrule--5dfd95dc79cf0e5d7811beff.md) | 82 | `declaration-track:5dfd95dc79cf0e5d7811beff01347447c15a4f153bce8d87354bae96774ac5bf` |
| 14 | `def` | [addConst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variante37076d588c6f4b13af36d5aadbc9e2b2836240b319e0a078dbf13322df4f33d.lean/declarations/addconst--29fefb3d35b2e45cf77f37c9.md) | 86 | `declaration-track:29fefb3d35b2e45cf77f37c937d8cb16c707cc8d6cb4f3079edbdba2bd2fa1f5` |
| 15 | `def` | [parseJsonObj](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variante37076d588c6f4b13af36d5aadbc9e2b2836240b319e0a078dbf13322df4f33d.lean/declarations/parsejsonobj--6c10f7ed5061afd75e45b6bb.md) | 96 | `declaration-track:6c10f7ed5061afd75e45b6bb5206b60f8e43824438496d6377e2c2681397e591` |
| 16 | `def` | [parseNameStr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variante37076d588c6f4b13af36d5aadbc9e2b2836240b319e0a078dbf13322df4f33d.lean/declarations/parsenamestr--2b188bc24e3db2bea163c82d.md) | 100 | `declaration-track:2b188bc24e3db2bea163c82d74a8237509c6180593d1ac78b6ac7edf8b2e3526` |
| 17 | `def` | [parseNameNum](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variante37076d588c6f4b13af36d5aadbc9e2b2836240b319e0a078dbf13322df4f33d.lean/declarations/parsenamenum--f453d9d6746b1a5efb73f542.md) | 106 | `declaration-track:f453d9d6746b1a5efb73f542010d4f85b844fb4e8ec42eea33ec41a5093e55e9` |
| 18 | `def` | [parseLevelSucc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variante37076d588c6f4b13af36d5aadbc9e2b2836240b319e0a078dbf13322df4f33d.lean/declarations/parselevelsucc--7010df0dc35bab2b3dd8e5b9.md) | 112 | `declaration-track:7010df0dc35bab2b3dd8e5b9631e256e65248b8f59c1f798f45c88546d0d350b` |
| 19 | `def` | [parseLevelMax](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variante37076d588c6f4b13af36d5aadbc9e2b2836240b319e0a078dbf13322df4f33d.lean/declarations/parselevelmax--a3ea7750ed0f37f122926a25.md) | 116 | `declaration-track:a3ea7750ed0f37f122926a250508da84b7a080497f19f2b26a2b20a44e1f6434` |
| 20 | `def` | [parseLevelImax](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variante37076d588c6f4b13af36d5aadbc9e2b2836240b319e0a078dbf13322df4f33d.lean/declarations/parselevelimax--eeab02c589b012a0617bce0d.md) | 121 | `declaration-track:eeab02c589b012a0617bce0dfe5a864ed0be9a4bd11cba1729668dddb51f7008` |
| 21 | `def` | [parseLevelParam](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variante37076d588c6f4b13af36d5aadbc9e2b2836240b319e0a078dbf13322df4f33d.lean/declarations/parselevelparam--ca621d45364c498262daeec1.md) | 126 | `declaration-track:ca621d45364c498262daeec137f8d7173c9ad653eca53c0735b7997382d59307` |
| 22 | `def` | [parseExprBVar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variante37076d588c6f4b13af36d5aadbc9e2b2836240b319e0a078dbf13322df4f33d.lean/declarations/parseexprbvar--1036029d264b514483b4a08d.md) | 130 | `declaration-track:1036029d264b514483b4a08db4d528a87a3ed2ebf3d7e97819b33df639afb06f` |
| 23 | `def` | [parseExprSort](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variante37076d588c6f4b13af36d5aadbc9e2b2836240b319e0a078dbf13322df4f33d.lean/declarations/parseexprsort--8d94a9267fa8c4473e716dab.md) | 134 | `declaration-track:8d94a9267fa8c4473e716dab46c2af3210c833206980e51b2977a36bae8a6e68` |
| 24 | `def` | [parseExprConst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variante37076d588c6f4b13af36d5aadbc9e2b2836240b319e0a078dbf13322df4f33d.lean/declarations/parseexprconst--1bfa155d360e3281d6f712f9.md) | 138 | `declaration-track:1bfa155d360e3281d6f712f9a44b8af1f366a95583c3743b9804c1f168c31464` |
| 25 | `def` | [parseExprApp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variante37076d588c6f4b13af36d5aadbc9e2b2836240b319e0a078dbf13322df4f33d.lean/declarations/parseexprapp--df55a704916e06d2c9292464.md) | 150 | `declaration-track:df55a704916e06d2c9292464121b882699a10d4adefff4739edd5c62e389af04` |
| 26 | `def` | [parseBinderInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variante37076d588c6f4b13af36d5aadbc9e2b2836240b319e0a078dbf13322df4f33d.lean/declarations/parsebinderinfo--0885538e75cfa82fe333112b.md) | 159 | `declaration-track:0885538e75cfa82fe333112b4979d6518b7204a9d5ae4d13393345e186e87bbb` |
| 27 | `def` | [parseExprLam](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variante37076d588c6f4b13af36d5aadbc9e2b2836240b319e0a078dbf13322df4f33d.lean/declarations/parseexprlam--01df1f9e930c5db3ecf50bca.md) | 167 | `declaration-track:01df1f9e930c5db3ecf50bca98615d88d6535f2a94b8b24ff8038ac5fd137796` |
| 28 | `def` | [parseExprForallE](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variante37076d588c6f4b13af36d5aadbc9e2b2836240b319e0a078dbf13322df4f33d.lean/declarations/parseexprforalle--a964c684addb6afd8224ff15.md) | 181 | `declaration-track:a964c684addb6afd8224ff15156a478b4cbbe46697aea87ef01f20de82e76310` |
| 29 | `def` | [parseExprLetE](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variante37076d588c6f4b13af36d5aadbc9e2b2836240b319e0a078dbf13322df4f33d.lean/declarations/parseexprlete--b68a07baadcf69da7c2a443c.md) | 195 | `declaration-track:b68a07baadcf69da7c2a443c210fd207a6ac71948c9ffe9088e747078185bccd` |
| 30 | `def` | [parseExprProj](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variante37076d588c6f4b13af36d5aadbc9e2b2836240b319e0a078dbf13322df4f33d.lean/declarations/parseexprproj--6c7849f0054b4adf9b94acef.md) | 210 | `declaration-track:6c7849f0054b4adf9b94acefc972d54f46b63ffe792fdb267c1db6c8ac865d87` |
| 31 | `def` | [parseExprNatLit](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variante37076d588c6f4b13af36d5aadbc9e2b2836240b319e0a078dbf13322df4f33d.lean/declarations/parseexprnatlit--e67672fc6a1228de3284eda8.md) | 221 | `declaration-track:e67672fc6a1228de3284eda8c9763bdb8ad8086b119fceb5fc7ae735fbe1b8bb` |
| 32 | `def` | [parseExprStrLit](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variante37076d588c6f4b13af36d5aadbc9e2b2836240b319e0a078dbf13322df4f33d.lean/declarations/parseexprstrlit--adf73a683b55aa534b549042.md) | 227 | `declaration-track:adf73a683b55aa534b5490426ca3df437bfca27823a966cd23b3803a9f0b2fc1` |
| 33 | `def` | [parseExprMdata](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variante37076d588c6f4b13af36d5aadbc9e2b2836240b319e0a078dbf13322df4f33d.lean/declarations/parseexprmdata--eef6b760336a29819937078c.md) | 231 | `declaration-track:eef6b760336a29819937078cec09cf6f5484680f520143b1b489a36928be280f` |
| 34 | `def` | [getNameList](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variante37076d588c6f4b13af36d5aadbc9e2b2836240b319e0a078dbf13322df4f33d.lean/declarations/getnamelist--987cd0e4ce4c5a2411baf69a.md) | 240 | `declaration-track:987cd0e4ce4c5a2411baf69a50f2ad7d6affd7c20a864f47c19b3b793a38c595` |
| 35 | `def` | [parseAxiomInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variante37076d588c6f4b13af36d5aadbc9e2b2836240b319e0a078dbf13322df4f33d.lean/declarations/parseaxiominfo--7532a20466c6f431d3e34ee3.md) | 245 | `declaration-track:7532a20466c6f431d3e34ee3209c844ab412953bf99832c19b9e8fc5793b2638` |
| 36 | `def` | [parseDefnInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variante37076d588c6f4b13af36d5aadbc9e2b2836240b319e0a078dbf13322df4f33d.lean/declarations/parsedefninfo--5395394e77bd18e283604c48.md) | 257 | `declaration-track:5395394e77bd18e283604c483b3ae435d76c75752921401299647c24d6f968e4` |
| 37 | `def` | [parseThmInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variante37076d588c6f4b13af36d5aadbc9e2b2836240b319e0a078dbf13322df4f33d.lean/declarations/parsethminfo--8b23bc47fc842022d4b00ce8.md) | 288 | `declaration-track:8b23bc47fc842022d4b00ce8f9a0619424726b67451cf20ab0739362dff02390` |
| 38 | `def` | [parseOpaqueInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variante37076d588c6f4b13af36d5aadbc9e2b2836240b319e0a078dbf13322df4f33d.lean/declarations/parseopaqueinfo--54fcd34ad0b02c3df55d8ca3.md) | 303 | `declaration-track:54fcd34ad0b02c3df55d8ca3a95e8c534d741c88eee5cf81125d41c484ed1b49` |
| 39 | `def` | [parseQuotInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variante37076d588c6f4b13af36d5aadbc9e2b2836240b319e0a078dbf13322df4f33d.lean/declarations/parsequotinfo--d3de0ee64d6096ef30c093ed.md) | 320 | `declaration-track:d3de0ee64d6096ef30c093ede945531f6602fe9babf460b330a37bee2e4c7ab7` |
| 40 | `def` | [parseInductInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variante37076d588c6f4b13af36d5aadbc9e2b2836240b319e0a078dbf13322df4f33d.lean/declarations/parseinductinfo--44823703752918a35a53af5d.md) | 339 | `declaration-track:44823703752918a35a53af5d26324ea24843a80dc718bf8432d070aefa958eb0` |
| 41 | `def` | [parseCtorInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variante37076d588c6f4b13af36d5aadbc9e2b2836240b319e0a078dbf13322df4f33d.lean/declarations/parsectorinfo--380a987d5bca5f39474a7eca.md) | 373 | `declaration-track:380a987d5bca5f39474a7ecad1bdd91d25595b62210248b37b8641cd6f660866` |
| 42 | `def` | [parseRecInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variante37076d588c6f4b13af36d5aadbc9e2b2836240b319e0a078dbf13322df4f33d.lean/declarations/parserecinfo--e0d3a459403be001f63db852.md) | 400 | `declaration-track:e0d3a459403be001f63db85284623c9312798655a18a2cb9ca2007b9e55643c4` |
| 43 | `def` | [parseInductive](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variante37076d588c6f4b13af36d5aadbc9e2b2836240b319e0a078dbf13322df4f33d.lean/declarations/parseinductive--835bde2fdb71161579fedd59.md) | 442 | `declaration-track:835bde2fdb71161579fedd59ed9474327ff2b87524ff9f4263a57fb81b69eccf` |
| 44 | `def` | [parseItem](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variante37076d588c6f4b13af36d5aadbc9e2b2836240b319e0a078dbf13322df4f33d.lean/declarations/parseitem--6d8502d4cd4cc2a6192ef61e.md) | 450 | `declaration-track:6d8502d4cd4cc2a6192ef61e6ffdefe32ede15bc5c9f8c4763f88e3073238ad1` |
| 45 | `def` | [parseItems](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variante37076d588c6f4b13af36d5aadbc9e2b2836240b319e0a078dbf13322df4f33d.lean/declarations/parseitems--a2a66768f83b0f89cad76785.md) | 486 | `declaration-track:a2a66768f83b0f89cad767859d153c5271f846751d39780aa630ad1632fafafc` |
| 46 | `def` | [parseMdata](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variante37076d588c6f4b13af36d5aadbc9e2b2836240b319e0a078dbf13322df4f33d.lean/declarations/parsemdata--2cbda778ebd013e585667c60.md) | 495 | `declaration-track:2cbda778ebd013e585667c6021f2d90af259c54cee87e547b8860d678acbf14f` |
| 47 | `def` | [parseFile](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variante37076d588c6f4b13af36d5aadbc9e2b2836240b319e0a078dbf13322df4f33d.lean/declarations/parsefile--ccc9bafbea7926ef6048ce79.md) | 498 | `declaration-track:ccc9bafbea7926ef6048ce79fbdc8f11bdb7a470196988e9f81cc4a97cfe7a69` |
| 48 | `def` | [parseStream](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variante37076d588c6f4b13af36d5aadbc9e2b2836240b319e0a078dbf13322df4f33d.lean/declarations/parsestream--b22dcdb2ac89fc6dfd38a8c3.md) | 504 | `declaration-track:b22dcdb2ac89fc6dfd38a8c3f111718f83301f2d491c9d76e30e208e805df00d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
