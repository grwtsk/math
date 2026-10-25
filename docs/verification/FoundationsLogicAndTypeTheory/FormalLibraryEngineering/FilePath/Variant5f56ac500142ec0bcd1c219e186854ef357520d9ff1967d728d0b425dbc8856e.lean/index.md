# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FilePath.Variant5f56ac500142ec0bcd1c219e186854ef357520d9ff1967d728d0b425dbc8856e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2e6c65e442f84c964a4ad4dc2853ca321d051200",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilePath/Variant5f56ac500142ec0bcd1c219e186854ef357520d9ff1967d728d0b425dbc8856e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilePath/Variant5f56ac500142ec0bcd1c219e186854ef357520d9ff1967d728d0b425dbc8856e.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilePath/Variant5f56ac500142ec0bcd1c219e186854ef357520d9ff1967d728d0b425dbc8856e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2e6c65e442f84c964a4ad4dc2853ca321d051200`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilePath/Variant5f56ac500142ec0bcd1c219e186854ef357520d9ff1967d728d0b425dbc8856e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilePath/Variant5f56ac500142ec0bcd1c219e186854ef357520d9ff1967d728d0b425dbc8856e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.String.Modify` — import line 9; external provider; requires a separately pinned dependency.
- `Init.Data.String.Search` — import line 10; external provider; requires a separately pinned dependency.
- `Init.Data.Iterators.Consumers.Collect` — import line 12; external provider; requires a separately pinned dependency.
- `Init.System.Platform` — import line 13; external provider; requires a separately pinned dependency.
- `Init.Data.String.Length` — import line 14; external provider; requires a separately pinned dependency.
- `Init.Data.Iterators.Combinators.Take` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Data.Iterators.Consumers.Access` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FilePath](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilePath/Variant5f56ac500142ec0bcd1c219e186854ef357520d9ff1967d728d0b425dbc8856e.lean/declarations/filepath--7b862fba748f18ce06775f08.md) | 29 | `declaration-track:7b862fba748f18ce06775f089aa128d2ab259a8a717eb9d05984c1f9c2657d2d` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilePath/Variant5f56ac500142ec0bcd1c219e186854ef357520d9ff1967d728d0b425dbc8856e.lean/declarations/instance--05142764e0f38a817e356984.md) | 34 | `declaration-track:05142764e0f38a817e3569848afac56b4849b3589ddd1de4a5916046e2a7e7d3` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilePath/Variant5f56ac500142ec0bcd1c219e186854ef357520d9ff1967d728d0b425dbc8856e.lean/declarations/instance--8eb99f500681eb7a2abf4a54.md) | 37 | `declaration-track:8eb99f500681eb7a2abf4a544b36c566f470f2d8c7b7228207d9350b7da6dca2` |
| 4 | `def` | [pathSeparator](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilePath/Variant5f56ac500142ec0bcd1c219e186854ef357520d9ff1967d728d0b425dbc8856e.lean/declarations/pathseparator--64850049db8897798bd652b7.md) | 48 | `declaration-track:64850049db8897798bd652b72d71358d2eb4eb2524f5506bf72387f3f95caa40` |
| 5 | `def` | [pathSeparators](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilePath/Variant5f56ac500142ec0bcd1c219e186854ef357520d9ff1967d728d0b425dbc8856e.lean/declarations/pathseparators--fd385455a953493fbed23570.md) | 57 | `declaration-track:fd385455a953493fbed235701d1bba71ca0767d1fdf43e750e52c169ec5fbbfb` |
| 6 | `def` | [extSeparator](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilePath/Variant5f56ac500142ec0bcd1c219e186854ef357520d9ff1967d728d0b425dbc8856e.lean/declarations/extseparator--8e27a56584be43bc41d03e6c.md) | 63 | `declaration-track:8e27a56584be43bc41d03e6ce5831db7c7f91c89e353b81c569e33c6e994809a` |
| 7 | `def` | [exeExtension](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilePath/Variant5f56ac500142ec0bcd1c219e186854ef357520d9ff1967d728d0b425dbc8856e.lean/declarations/exeextension--ca23e79881ca2c0e9334207a.md) | 69 | `declaration-track:ca23e79881ca2c0e9334207ac210f248a90e598684de392f83f62a0b42780055` |
| 8 | `def` | [normalize](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilePath/Variant5f56ac500142ec0bcd1c219e186854ef357520d9ff1967d728d0b425dbc8856e.lean/declarations/normalize--5ea283266bffed8d258772a5.md) | 84 | `declaration-track:5ea283266bffed8d258772a5b858f65f278758658f8063d8c8dc59a5b79f4877` |
| 9 | `def` | [isAbsolute](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilePath/Variant5f56ac500142ec0bcd1c219e186854ef357520d9ff1967d728d0b425dbc8856e.lean/declarations/isabsolute--aa2f2d93afd53c86e5d93871.md) | 109 | `declaration-track:aa2f2d93afd53c86e5d9387138d5ebab2c6bf3d72a90df124999809529bcf28a` |
| 10 | `def` | [isRelative](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilePath/Variant5f56ac500142ec0bcd1c219e186854ef357520d9ff1967d728d0b425dbc8856e.lean/declarations/isrelative--2d7ad5b5e2e216a3d3a0d840.md) | 116 | `declaration-track:2d7ad5b5e2e216a3d3a0d840b3267f3ee8dcabc1f72eeda30445ac1e84079308` |
| 11 | `def` | [join](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilePath/Variant5f56ac500142ec0bcd1c219e186854ef357520d9ff1967d728d0b425dbc8856e.lean/declarations/join--005d6863b29154e5aaff5317.md) | 126 | `declaration-track:005d6863b29154e5aaff5317c413589a7b46644aef7af90d58965bb7ea42eb91` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilePath/Variant5f56ac500142ec0bcd1c219e186854ef357520d9ff1967d728d0b425dbc8856e.lean/declarations/instance--97f6625aff0c8415076467e6.md) | 132 | `declaration-track:97f6625aff0c8415076467e6b5efa470f4985671d962cfc1a79511c24c102e47` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilePath/Variant5f56ac500142ec0bcd1c219e186854ef357520d9ff1967d728d0b425dbc8856e.lean/declarations/instance--fa9ccb3b316e4d357e3e8760.md) | 135 | `declaration-track:fa9ccb3b316e4d357e3e8760648611d6f679193fbfb0618220b0a98a0b36a2ba` |
| 14 | `def` | [posOfLastSep](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilePath/Variant5f56ac500142ec0bcd1c219e186854ef357520d9ff1967d728d0b425dbc8856e.lean/declarations/posoflastsep--78c4e51adef17fa11af91823.md) | 138 | `declaration-track:78c4e51adef17fa11af918233066231fe79bc5ae6579b2ee19187e4229e44e35` |
| 15 | `def` | [afterRootDirectory](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilePath/Variant5f56ac500142ec0bcd1c219e186854ef357520d9ff1967d728d0b425dbc8856e.lean/declarations/afterrootdirectory--d9a555a96abc4c8a6f3a8d08.md) | 141 | `declaration-track:d9a555a96abc4c8a6f3a8d080cc8daaf70ad3ff33444ba80f97818951693e7ed` |
| 16 | `def` | [parent](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilePath/Variant5f56ac500142ec0bcd1c219e186854ef357520d9ff1967d728d0b425dbc8856e.lean/declarations/parent--b062f90870b048692baff2cf.md) | 153 | `declaration-track:b062f90870b048692baff2cfba99c01ddd3007fe332c93a7898989cfd976209a` |
| 17 | `def` | [fileName](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilePath/Variant5f56ac500142ec0bcd1c219e186854ef357520d9ff1967d728d0b425dbc8856e.lean/declarations/filename--4d29bcdf7d33000b3e2edc3d.md) | 176 | `declaration-track:4d29bcdf7d33000b3e2edc3db90a718c0c460b4a4b7aad43a467ce20e4b00d73` |
| 18 | `def` | [fileStem](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilePath/Variant5f56ac500142ec0bcd1c219e186854ef357520d9ff1967d728d0b425dbc8856e.lean/declarations/filestem--84eb84f096c0607034f3248d.md) | 194 | `declaration-track:84eb84f096c0607034f3248d5c408f1422b7a47c5e61ff7c4ef401a8cbb0d490` |
| 19 | `def` | [extension](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilePath/Variant5f56ac500142ec0bcd1c219e186854ef357520d9ff1967d728d0b425dbc8856e.lean/declarations/extension--53e4647f6f119149f21f0496.md) | 213 | `declaration-track:53e4647f6f119149f21f0496fd7209b3251c3e8d533ff1f4b014080928cb98ee` |
| 20 | `def` | [withFileName](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilePath/Variant5f56ac500142ec0bcd1c219e186854ef357520d9ff1967d728d0b425dbc8856e.lean/declarations/withfilename--e6f4f20f21106c7620ba4b45.md) | 226 | `declaration-track:e6f4f20f21106c7620ba4b45700339329aefc74d4bcb3c32e07c28893e0a7f24` |
| 21 | `def` | [addExtension](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilePath/Variant5f56ac500142ec0bcd1c219e186854ef357520d9ff1967d728d0b425dbc8856e.lean/declarations/addextension--ec4ab1bf7313024882eef751.md) | 239 | `declaration-track:ec4ab1bf7313024882eef75184d4c6dd08bc2db7e836b5ba5f2c53879cef5fcb` |
| 22 | `def` | [withExtension](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilePath/Variant5f56ac500142ec0bcd1c219e186854ef357520d9ff1967d728d0b425dbc8856e.lean/declarations/withextension--efd12e642e29245e4f8deeee.md) | 257 | `declaration-track:efd12e642e29245e4f8deeee4d46b34f937cd91e6f58e91909f178a102976a02` |
| 23 | `def` | [components](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilePath/Variant5f56ac500142ec0bcd1c219e186854ef357520d9ff1967d728d0b425dbc8856e.lean/declarations/components--4f0d89d19dc35ef7724120c9.md) | 265 | `declaration-track:4f0d89d19dc35ef7724120c9b45a1b38f109fab8908da4bfba6e58a25e8ec554` |
| 24 | `def` | [mkFilePath](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilePath/Variant5f56ac500142ec0bcd1c219e186854ef357520d9ff1967d728d0b425dbc8856e.lean/declarations/mkfilepath--e62ab067131779a56aad912a.md) | 274 | `declaration-track:e62ab067131779a56aad912a402b7d496d67ab3d3cc7eddf042fbbf13e042994` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilePath/Variant5f56ac500142ec0bcd1c219e186854ef357520d9ff1967d728d0b425dbc8856e.lean/declarations/instance--87bfecddc7079f412f3fefa2.md) | 277 | `declaration-track:87bfecddc7079f412f3fefa22305b806a9c18fe3959ba20293be7188de0d0379` |
| 26 | `abbrev` | [SearchPath](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilePath/Variant5f56ac500142ec0bcd1c219e186854ef357520d9ff1967d728d0b425dbc8856e.lean/declarations/searchpath--7c10c04a5792997d1a170db3.md) | 280 | `declaration-track:7c10c04a5792997d1a170db32b48d5eab8de7d847c3337c1042eea358c29f8e2` |
| 27 | `def` | [separator](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilePath/Variant5f56ac500142ec0bcd1c219e186854ef357520d9ff1967d728d0b425dbc8856e.lean/declarations/separator--89ff273e9b8ca5bb83d54730.md) | 289 | `declaration-track:89ff273e9b8ca5bb83d547301936caceb0e39014187944e09b01f9ad9f3651a4` |
| 28 | `def` | [parse](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilePath/Variant5f56ac500142ec0bcd1c219e186854ef357520d9ff1967d728d0b425dbc8856e.lean/declarations/parse--eb6378792c22a9fe356901c9.md) | 296 | `declaration-track:eb6378792c22a9fe356901c9742816ea8f4a3ec366d65ef7eea0ed020d84ac35` |
| 29 | `def` | [toString](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilePath/Variant5f56ac500142ec0bcd1c219e186854ef357520d9ff1967d728d0b425dbc8856e.lean/declarations/tostring--c9f08b92b9ea9571f7e85c28.md) | 303 | `declaration-track:c9f08b92b9ea9571f7e85c2865c015cbca9612c0104aea153d122a19ef4d1a55` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
