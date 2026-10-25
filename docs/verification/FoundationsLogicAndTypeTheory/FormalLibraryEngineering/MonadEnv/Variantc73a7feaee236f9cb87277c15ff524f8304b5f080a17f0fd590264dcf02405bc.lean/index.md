# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MonadEnv.Variantc73a7feaee236f9cb87277c15ff524f8304b5f080a17f0fd590264dcf02405bc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a24c1835519b766a8a849025de1de67d4a260e4c",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadEnv/Variantc73a7feaee236f9cb87277c15ff524f8304b5f080a17f0fd590264dcf02405bc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadEnv/Variantc73a7feaee236f9cb87277c15ff524f8304b5f080a17f0fd590264dcf02405bc.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadEnv/Variantc73a7feaee236f9cb87277c15ff524f8304b5f080a17f0fd590264dcf02405bc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a24c1835519b766a8a849025de1de67d4a260e4c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadEnv/Variantc73a7feaee236f9cb87277c15ff524f8304b5f080a17f0fd590264dcf02405bc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadEnv/Variantc73a7feaee236f9cb87277c15ff524f8304b5f080a17f0fd590264dcf02405bc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Control.Do` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [setEnv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadEnv/Variantc73a7feaee236f9cb87277c15ff524f8304b5f080a17f0fd590264dcf02405bc.lean/declarations/setenv--9e2715308ac88612c3a48be0.md) | 27 | `declaration-track:9e2715308ac88612c3a48be09c30e2fe8ad2187bda89c537fbe526b92fd67dd6` |
| 2 | `def` | [withEnv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadEnv/Variantc73a7feaee236f9cb87277c15ff524f8304b5f080a17f0fd590264dcf02405bc.lean/declarations/withenv--e104c3a219f31c59a2b815fd.md) | 30 | `declaration-track:e104c3a219f31c59a2b815fdb71f339112c095245c39065b4417dcd091734506` |
| 3 | `def` | [isInductiveCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadEnv/Variantc73a7feaee236f9cb87277c15ff524f8304b5f080a17f0fd590264dcf02405bc.lean/declarations/isinductivecore--0bfbdcc57a3fefd1d5623be7.md) | 38 | `declaration-track:0bfbdcc57a3fefd1d5623be707e251a8f90ec6b22b88ec624e5298e06374498d` |
| 4 | `def` | [isInductive](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadEnv/Variantc73a7feaee236f9cb87277c15ff524f8304b5f080a17f0fd590264dcf02405bc.lean/declarations/isinductive--f2ba3a9046343159803fc4dd.md) | 41 | `declaration-track:f2ba3a9046343159803fc4ddbcb117c61fb337f53adcc8c48d880cd827f2a07d` |
| 5 | `def` | [isRecCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadEnv/Variantc73a7feaee236f9cb87277c15ff524f8304b5f080a17f0fd590264dcf02405bc.lean/declarations/isreccore--69b2549a5088576e606106ca.md) | 44 | `declaration-track:69b2549a5088576e606106cab29c7e0152d5a87d719f9e0eba21bd08fa017803` |
| 6 | `def` | [isRec](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadEnv/Variantc73a7feaee236f9cb87277c15ff524f8304b5f080a17f0fd590264dcf02405bc.lean/declarations/isrec--9f5c7dc1da1815d1ae431ddb.md) | 47 | `declaration-track:9f5c7dc1da1815d1ae431ddbb947da58a023e489b0b1080f12b384536c59e94c` |
| 7 | `def` | [withoutModifyingEnv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadEnv/Variantc73a7feaee236f9cb87277c15ff524f8304b5f080a17f0fd590264dcf02405bc.lean/declarations/withoutmodifyingenv--07465914b0e45c2272075582.md) | 50 | `declaration-track:07465914b0e45c227207558231f46f7b920b2cc9af6028856eda5be19a67ef10` |
| 8 | `def` | [withoutModifyingEnv'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadEnv/Variantc73a7feaee236f9cb87277c15ff524f8304b5f080a17f0fd590264dcf02405bc.lean/declarations/withoutmodifyingenv--138a7f976a3b824c2e7a63a0.md) | 56 | `declaration-track:138a7f976a3b824c2e7a63a07ad13d85d190242d4682f137c5043834f5e9707e` |
| 9 | `def` | [matchConst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadEnv/Variantc73a7feaee236f9cb87277c15ff524f8304b5f080a17f0fd590264dcf02405bc.lean/declarations/matchconst--1f174d6945bf21d50a6ad475.md) | 64 | `declaration-track:1f174d6945bf21d50a6ad4753adcf80bedfa2462a3f55f768a3492b74e75b246` |
| 10 | `def` | [matchConstInduct](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadEnv/Variantc73a7feaee236f9cb87277c15ff524f8304b5f080a17f0fd590264dcf02405bc.lean/declarations/matchconstinduct--ed76ed870b03e4cc02142245.md) | 72 | `declaration-track:ed76ed870b03e4cc021422459d2021b5dc82bd386acbbac4df1d74cb8979d708` |
| 11 | `def` | [matchConstCtor](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadEnv/Variantc73a7feaee236f9cb87277c15ff524f8304b5f080a17f0fd590264dcf02405bc.lean/declarations/matchconstctor--33a7c77a6fc3c213a16d9cc3.md) | 78 | `declaration-track:33a7c77a6fc3c213a16d9cc3b44c626c7e6586488346fe005cdaf825f9d533fd` |
| 12 | `def` | [matchConstRec](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadEnv/Variantc73a7feaee236f9cb87277c15ff524f8304b5f080a17f0fd590264dcf02405bc.lean/declarations/matchconstrec--a2b718588187bc524ec886c2.md) | 84 | `declaration-track:a2b718588187bc524ec886c2fbad9e1728d9cd5311bdb70ae7350450e92ff19b` |
| 13 | `def` | [hasConst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadEnv/Variantc73a7feaee236f9cb87277c15ff524f8304b5f080a17f0fd590264dcf02405bc.lean/declarations/hasconst--d318ea8967f380bf1d2d4e58.md) | 90 | `declaration-track:d318ea8967f380bf1d2d4e58b343fa08ec2cf51bd9545f0d443ee4df0e7076cf` |
| 14 | `def` | [getConstInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadEnv/Variantc73a7feaee236f9cb87277c15ff524f8304b5f080a17f0fd590264dcf02405bc.lean/declarations/getconstinfo--5a4e3ed831a0934fed8abbb2.md) | 93 | `declaration-track:5a4e3ed831a0934fed8abbb2bd23ab3130be40e87e85cc8c35f097d00022d6d2` |
| 15 | `def` | [getConstVal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadEnv/Variantc73a7feaee236f9cb87277c15ff524f8304b5f080a17f0fd590264dcf02405bc.lean/declarations/getconstval--0d6122632dd032942fa515bd.md) | 98 | `declaration-track:0d6122632dd032942fa515bd19d9560836dc77d73bfdba6eccc0373cbab1aac6` |
| 16 | `def` | [getAsyncConstInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadEnv/Variantc73a7feaee236f9cb87277c15ff524f8304b5f080a17f0fd590264dcf02405bc.lean/declarations/getasyncconstinfo--690cf9b0f50e962a259bfd4b.md) | 103 | `declaration-track:690cf9b0f50e962a259bfd4b0e10cd9a55a6e59ea34b71fee2dcfcab2dcafc57` |
| 17 | `def` | [isInductiveCore?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadEnv/Variantc73a7feaee236f9cb87277c15ff524f8304b5f080a17f0fd590264dcf02405bc.lean/declarations/isinductivecore--b6a928a6a2f69ffc3b6f4828.md) | 108 | `declaration-track:b6a928a6a2f69ffc3b6f48282f24926eec5238bfb92a76ab5e00dfc9f4c353f2` |
| 18 | `def` | [isInductive?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadEnv/Variantc73a7feaee236f9cb87277c15ff524f8304b5f080a17f0fd590264dcf02405bc.lean/declarations/isinductive--e95ec3f9a8b13f6ae74f4427.md) | 116 | `declaration-track:e95ec3f9a8b13f6ae74f442736a8c085894072521b81775b4a16235168d3989d` |
| 19 | `def` | [isDefn?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadEnv/Variantc73a7feaee236f9cb87277c15ff524f8304b5f080a17f0fd590264dcf02405bc.lean/declarations/isdefn--10619687048272d2401989cd.md) | 119 | `declaration-track:10619687048272d2401989cdeff324a3bc921aa802afefad0daff66690c7cf33` |
| 20 | `def` | [isCtor?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadEnv/Variantc73a7feaee236f9cb87277c15ff524f8304b5f080a17f0fd590264dcf02405bc.lean/declarations/isctor--499ada4e4fbcbfc74a1bf723.md) | 126 | `declaration-track:499ada4e4fbcbfc74a1bf723d6d372daf6e37e0d6dcc99d769e893db725ba0b1` |
| 21 | `def` | [isRec?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadEnv/Variantc73a7feaee236f9cb87277c15ff524f8304b5f080a17f0fd590264dcf02405bc.lean/declarations/isrec--416e5938684cd94eec96278c.md) | 133 | `declaration-track:416e5938684cd94eec96278cf27edfc346c6ccd031e76ce750bdbba366bb0695` |
| 22 | `def` | [mkConstWithLevelParams](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadEnv/Variantc73a7feaee236f9cb87277c15ff524f8304b5f080a17f0fd590264dcf02405bc.lean/declarations/mkconstwithlevelparams--a56b2821e060563d196e2e9c.md) | 140 | `declaration-track:a56b2821e060563d196e2e9cd973e247fd94a27d93277ac40d8c3699a02371dd` |
| 23 | `def` | [getConstInfoDefn](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadEnv/Variantc73a7feaee236f9cb87277c15ff524f8304b5f080a17f0fd590264dcf02405bc.lean/declarations/getconstinfodefn--666c3ca5ae7c3621ebe8b0f0.md) | 144 | `declaration-track:666c3ca5ae7c3621ebe8b0f0ff3085c14766d5efbabd31b672c7a3547cdbc006` |
| 24 | `def` | [getConstInfoInduct](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadEnv/Variantc73a7feaee236f9cb87277c15ff524f8304b5f080a17f0fd590264dcf02405bc.lean/declarations/getconstinfoinduct--4803d755863bad6c4a971c84.md) | 147 | `declaration-track:4803d755863bad6c4a971c84ab6e61f965ad13c93dde24247102afdcadd7faad` |
| 25 | `def` | [getConstInfoCtor](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadEnv/Variantc73a7feaee236f9cb87277c15ff524f8304b5f080a17f0fd590264dcf02405bc.lean/declarations/getconstinfoctor--4b000b913e828c9ce6e1ccf1.md) | 150 | `declaration-track:4b000b913e828c9ce6e1ccf1062c5c4257b98152b03a2cfa0957a878b637ff75` |
| 26 | `def` | [getConstInfoRec](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadEnv/Variantc73a7feaee236f9cb87277c15ff524f8304b5f080a17f0fd590264dcf02405bc.lean/declarations/getconstinforec--56b11b9bc2f13386d1215a92.md) | 153 | `declaration-track:56b11b9bc2f13386d1215a9219d8c7c6cbf4c9cf72b2e19c01701084029021bf` |
| 27 | `def` | [matchConstStructure](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadEnv/Variantc73a7feaee236f9cb87277c15ff524f8304b5f080a17f0fd590264dcf02405bc.lean/declarations/matchconststructure--2c9a63fed6b50ed0874b86f6.md) | 161 | `declaration-track:2c9a63fed6b50ed0874b86f627785b6cc03f20a89174a5e2a20c420932ae409e` |
| 28 | `def` | [matchConstNonRecStructure](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadEnv/Variantc73a7feaee236f9cb87277c15ff524f8304b5f080a17f0fd590264dcf02405bc.lean/declarations/matchconstnonrecstructure--78b60cf9dd2fe540a8d08fd6.md) | 175 | `declaration-track:78b60cf9dd2fe540a8d08fd6684382fa157d5cbfbb79bc03d3f4f4623d4b715c` |
| 29 | `opaque` | [hasCompileError](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadEnv/Variantc73a7feaee236f9cb87277c15ff524f8304b5f080a17f0fd590264dcf02405bc.lean/declarations/hascompileerror--1eaca1ae546a44d8ec37b9f8.md) | 187 | `declaration-track:1eaca1ae546a44d8ec37b9f8535f72e6764a9b6f38fa42b5585a90795a16d883` |
| 30 | `def` | [evalConst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadEnv/Variantc73a7feaee236f9cb87277c15ff524f8304b5f080a17f0fd590264dcf02405bc.lean/declarations/evalconst--5f4fe1344d1133e686d42827.md) | 189 | `declaration-track:5f4fe1344d1133e686d42827a6f065fd137986e0353f76b9e633dfcc67a5ff9d` |
| 31 | `def` | [evalConstCheck](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadEnv/Variantc73a7feaee236f9cb87277c15ff524f8304b5f080a17f0fd590264dcf02405bc.lean/declarations/evalconstcheck--2bd7cae552add5251eb660f0.md) | 195 | `declaration-track:2bd7cae552add5251eb660f09e4a0e9b884b32d68e9d7c6298ec2b75a8b7d70c` |
| 32 | `def` | [findModuleOf?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadEnv/Variantc73a7feaee236f9cb87277c15ff524f8304b5f080a17f0fd590264dcf02405bc.lean/declarations/findmoduleof--fc110cae9ffda3f2070e6c68.md) | 200 | `declaration-track:fc110cae9ffda3f2070e6c6895a1d2dd6cbbaa6c35cd2469009454e4138a9c2b` |
| 33 | `def` | [isEnumType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadEnv/Variantc73a7feaee236f9cb87277c15ff524f8304b5f080a17f0fd590264dcf02405bc.lean/declarations/isenumtype--160655f5fd88a890482c154e.md) | 206 | `declaration-track:160655f5fd88a890482c154eef49fb89b1652c6532089910514ca8c39bc2ac96` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
