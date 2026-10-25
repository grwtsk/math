# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BuiltinTactic.Variant3f10287e43de9d2f2a240545b4cd2c1d947c6c242f31d61aa9a3b11b26e7b06a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9ac72035c41bb6175b7b6f262220e570d44586cd",
  "lexical_observation_count": 50,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant3f10287e43de9d2f2a240545b4cd2c1d947c6c242f31d61aa9a3b11b26e7b06a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant3f10287e43de9d2f2a240545b4cd2c1d947c6c242f31d61aa9a3b11b26e7b06a.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant3f10287e43de9d2f2a240545b4cd2c1d947c6c242f31d61aa9a3b11b26e7b06a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9ac72035c41bb6175b7b6f262220e570d44586cd`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant3f10287e43de9d2f2a240545b4cd2c1d947c6c242f31d61aa9a3b11b26e7b06a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant3f10287e43de9d2f2a240545b4cd2c1d947c6c242f31d61aa9a3b11b26e7b06a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.Replace` — import line 15; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.RenameInaccessibles` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [evalWithAnnotateState](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant3f10287e43de9d2f2a240545b4cd2c1d947c6c242f31d61aa9a3b11b26e7b06a.lean/declarations/evalwithannotatestate--fefef62673f0ee91a945a7ab.md) | 23 | `declaration-track:fefef62673f0ee91a945a7ab9433d7c5f2df63694ed8aac2b78b119fa0b4bea2` |
| 2 | `def` | [evalDone](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant3f10287e43de9d2f2a240545b4cd2c1d947c6c242f31d61aa9a3b11b26e7b06a.lean/declarations/evaldone--1ea07674550b3d3f7fa369bd.md) | 28 | `declaration-track:1ea07674550b3d3f7fa369bd0ad44cfe8b7eab0113025a98d10a8b618284af7a` |
| 3 | `def` | [evalSepTactics](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant3f10287e43de9d2f2a240545b4cd2c1d947c6c242f31d61aa9a3b11b26e7b06a.lean/declarations/evalseptactics--127dd726a56a689bf97ab0af.md) | 36 | `declaration-track:127dd726a56a689bf97ab0afa10c0278c55de676349c06255f6565e3e36124c4` |
| 4 | `def` | [evalSeq1](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant3f10287e43de9d2f2a240545b4cd2c1d947c6c242f31d61aa9a3b11b26e7b06a.lean/declarations/evalseq1--9c1584434b6d5eeb0070fadc.md) | 152 | `declaration-track:9c1584434b6d5eeb0070fadc848206ba8dfdda703ffb087fbc0161499fde6370` |
| 5 | `def` | [evalParen](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant3f10287e43de9d2f2a240545b4cd2c1d947c6c242f31d61aa9a3b11b26e7b06a.lean/declarations/evalparen--6c5f0383898fa59b4b6b6159.md) | 155 | `declaration-track:6c5f0383898fa59b4b6b615961addb4e87980b69f9e0a0db8e08d8f2a91f8d99` |
| 6 | `def` | [evalTacticSeq1Indented](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant3f10287e43de9d2f2a240545b4cd2c1d947c6c242f31d61aa9a3b11b26e7b06a.lean/declarations/evaltacticseq1indented--2026124cb79d17240affcbeb.md) | 159 | `declaration-track:2026124cb79d17240affcbeb865b7d326d8c3ca20f6a661ac5a425ecc1469c8c` |
| 7 | `def` | [evalTacticSeqBracketed](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant3f10287e43de9d2f2a240545b4cd2c1d947c6c242f31d61aa9a3b11b26e7b06a.lean/declarations/evaltacticseqbracketed--b70f2f9de4aa9f4930034412.md) | 163 | `declaration-track:b70f2f9de4aa9f4930034412660d261930f8435308863d91ecb60f9d88d37161` |
| 8 | `def` | [evalTacticCDot](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant3f10287e43de9d2f2a240545b4cd2c1d947c6c242f31d61aa9a3b11b26e7b06a.lean/declarations/evaltacticcdot--723be5295add0e6c6c5333a6.md) | 171 | `declaration-track:723be5295add0e6c6c5333a616682921f38b43bf02dec695fb5931dc2024c056` |
| 9 | `def` | [evalFocus](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant3f10287e43de9d2f2a240545b4cd2c1d947c6c242f31d61aa9a3b11b26e7b06a.lean/declarations/evalfocus--05933825f8e5ebbc7ebe459d.md) | 182 | `declaration-track:05933825f8e5ebbc7ebe459dcb803027e747dc3b5908861aa64740339a0580a7` |
| 10 | `def` | [getOptRotation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant3f10287e43de9d2f2a240545b4cd2c1d947c6c242f31d61aa9a3b11b26e7b06a.lean/declarations/getoptrotation--1b69a0fc059d5a7a86af7c5c.md) | 189 | `declaration-track:1b69a0fc059d5a7a86af7c5c800a5be505bfebce7ae935909517bac4fd2f97c5` |
| 11 | `def` | [evalRotateLeft](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant3f10287e43de9d2f2a240545b4cd2c1d947c6c242f31d61aa9a3b11b26e7b06a.lean/declarations/evalrotateleft--8336bd1e1822a9ab3c6d0173.md) | 192 | `declaration-track:8336bd1e1822a9ab3c6d0173b80fe30a5cbe2868f5b3c280a097e1f36ca13750` |
| 12 | `def` | [evalRotateRight](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant3f10287e43de9d2f2a240545b4cd2c1d947c6c242f31d61aa9a3b11b26e7b06a.lean/declarations/evalrotateright--7b3356b6057254d0b8ce06da.md) | 196 | `declaration-track:7b3356b6057254d0b8ce06da72de09820c6331924067c281b02f335b09b25e77` |
| 13 | `def` | [evalOpen](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant3f10287e43de9d2f2a240545b4cd2c1d947c6c242f31d61aa9a3b11b26e7b06a.lean/declarations/evalopen--15d404823133e0289edc1ab1.md) | 200 | `declaration-track:15d404823133e0289edc1ab198efba7c737c35ff89fa9752822eaa9b9c41aefd` |
| 14 | `def` | [elabSetOption](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant3f10287e43de9d2f2a240545b4cd2c1d947c6c242f31d61aa9a3b11b26e7b06a.lean/declarations/elabsetoption--78e966c0d9e870fa1be51d3f.md) | 210 | `declaration-track:78e966c0d9e870fa1be51d3fee9eab5257d4f8865dac1c1b116efe88b01b2344` |
| 15 | `def` | [evalAllGoals](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant3f10287e43de9d2f2a240545b4cd2c1d947c6c242f31d61aa9a3b11b26e7b06a.lean/declarations/evalallgoals--e0163e645b108c4fa57d1983.md) | 220 | `declaration-track:e0163e645b108c4fa57d19830646cdc2364c32ad07a32404cd6ab4dd28fbeae0` |
| 16 | `def` | [evalAnyGoals](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant3f10287e43de9d2f2a240545b4cd2c1d947c6c242f31d61aa9a3b11b26e7b06a.lean/declarations/evalanygoals--c41c3dd8fffc3ec50db50096.md) | 247 | `declaration-track:c41c3dd8fffc3ec50db50096b8ee0bc7c34e8a59e373b07d2ad26af1984dee86` |
| 17 | `def` | [evalTacticSeq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant3f10287e43de9d2f2a240545b4cd2c1d947c6c242f31d61aa9a3b11b26e7b06a.lean/declarations/evaltacticseq--21f8d61c378b4fdab01dd765.md) | 265 | `declaration-track:21f8d61c378b4fdab01dd765137a9aef332f1ca11a49d582efda9884a3510051` |
| 18 | `def` | [evalChoiceAux](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant3f10287e43de9d2f2a240545b4cd2c1d947c6c242f31d61aa9a3b11b26e7b06a.lean/declarations/evalchoiceaux--23e712bd2615d026dcc58064.md) | 268 | `declaration-track:23e712bd2615d026dcc580643b95679c5a6cf70e00ba7e7ee2ff6bc0ef0e149d` |
| 19 | `def` | [evalChoice](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant3f10287e43de9d2f2a240545b4cd2c1d947c6c242f31d61aa9a3b11b26e7b06a.lean/declarations/evalchoice--14d3c3f4bff8ea4770443258.md) | 277 | `declaration-track:14d3c3f4bff8ea477044325855c60d5b319d556d1583e484aeae9f7c409db3c1` |
| 20 | `def` | [evalSkip](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant3f10287e43de9d2f2a240545b4cd2c1d947c6c242f31d61aa9a3b11b26e7b06a.lean/declarations/evalskip--a74971b6e9bce04f08e3ee94.md) | 280 | `declaration-track:a74971b6e9bce04f08e3ee9413bf9f913cda957c702a251577884b118fe75329` |
| 21 | `def` | [evalUnknown](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant3f10287e43de9d2f2a240545b4cd2c1d947c6c242f31d61aa9a3b11b26e7b06a.lean/declarations/evalunknown--ab4342f183c3001f9a70f117.md) | 282 | `declaration-track:ab4342f183c3001f9a70f117a3d7d74145d8eb5929c3dfeb768bea399d3018b8` |
| 22 | `def` | [evalFailIfSuccess](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant3f10287e43de9d2f2a240545b4cd2c1d947c6c242f31d61aa9a3b11b26e7b06a.lean/declarations/evalfailifsuccess--d551172567f98ad6e6c0529a.md) | 285 | `declaration-track:d551172567f98ad6e6c0529a4ea9351205894db0b513c9a3fa029a9cd6ce7894` |
| 23 | `def` | [evalTraceState](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant3f10287e43de9d2f2a240545b4cd2c1d947c6c242f31d61aa9a3b11b26e7b06a.lean/declarations/evaltracestate--36ed995f02af6f4983a06616.md) | 291 | `declaration-track:36ed995f02af6f4983a066163b0a2783dc30010ec58f5df328eb49b23967ecea` |
| 24 | `def` | [evalTraceMessage](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant3f10287e43de9d2f2a240545b4cd2c1d947c6c242f31d61aa9a3b11b26e7b06a.lean/declarations/evaltracemessage--fce5db9e99cff4b4eebbd1c0.md) | 295 | `declaration-track:fce5db9e99cff4b4eebbd1c0225ceeff57f760c64ed9cd2bf3ef1fe88213ea84` |
| 25 | `def` | [evalAssumption](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant3f10287e43de9d2f2a240545b4cd2c1d947c6c242f31d61aa9a3b11b26e7b06a.lean/declarations/evalassumption--20a41c90092b9694464d4b34.md) | 300 | `declaration-track:20a41c90092b9694464d4b34abf4223bd45424e0d7f4dad87aa3ceff7a9d5b7c` |
| 26 | `def` | [evalContradiction](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant3f10287e43de9d2f2a240545b4cd2c1d947c6c242f31d61aa9a3b11b26e7b06a.lean/declarations/evalcontradiction--d363b166024bfa6b16e162cc.md) | 306 | `declaration-track:d363b166024bfa6b16e162cca7b9264c80cec6b6f1946863f4a5c44926e544ba` |
| 27 | `def` | [evalRefl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant3f10287e43de9d2f2a240545b4cd2c1d947c6c242f31d61aa9a3b11b26e7b06a.lean/declarations/evalrefl--c06c53a69d9d4b0118d0c24c.md) | 309 | `declaration-track:c06c53a69d9d4b0118d0c24cb5c55b015043692a3dcde347c1247a40384e0e81` |
| 28 | `def` | [evalIntro](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant3f10287e43de9d2f2a240545b4cd2c1d947c6c242f31d61aa9a3b11b26e7b06a.lean/declarations/evalintro--c254feb83d61b078edad39de.md) | 313 | `declaration-track:c254feb83d61b078edad39de6d5a3357ec9ae0bed76e836525085b4fa5b4d422` |
| 29 | `def` | [evalIntroMatch](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant3f10287e43de9d2f2a240545b4cd2c1d947c6c242f31d61aa9a3b11b26e7b06a.lean/declarations/evalintromatch--2929778e34945acdd074c54e.md) | 382 | `declaration-track:2929778e34945acdd074c54ea53c483680044b3049436f5448aa361c09021caf` |
| 30 | `def` | [evalIntros](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant3f10287e43de9d2f2a240545b4cd2c1d947c6c242f31d61aa9a3b11b26e7b06a.lean/declarations/evalintros--aa7dfc21de3e7811c2b121de.md) | 387 | `declaration-track:aa7dfc21de3e7811c2b121de28d3e2c397fab658b815b2af658f8bb28ec02db1` |
| 31 | `def` | [evalRevert](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant3f10287e43de9d2f2a240545b4cd2c1d947c6c242f31d61aa9a3b11b26e7b06a.lean/declarations/evalrevert--f272b3b0d9ca7b6a8403f9f3.md) | 401 | `declaration-track:f272b3b0d9ca7b6a8403f9f32f785162e80e4135fc871dbf56e3e97643d1948e` |
| 32 | `def` | [evalClear](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant3f10287e43de9d2f2a240545b4cd2c1d947c6c242f31d61aa9a3b11b26e7b06a.lean/declarations/evalclear--709a69963fa75c92df7bcc3a.md) | 408 | `declaration-track:709a69963fa75c92df7bcc3aa59048e3cc95004b7e21f53d4dcf419fdb67ef29` |
| 33 | `def` | [evalClearValue](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant3f10287e43de9d2f2a240545b4cd2c1d947c6c242f31d61aa9a3b11b26e7b06a.lean/declarations/evalclearvalue--b667bd869a02c04e8bcfda34.md) | 419 | `declaration-track:b667bd869a02c04e8bcfda34b543286192b14837d5a81fb5b4862545f2ab6270` |
| 34 | `def` | [forEachVar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant3f10287e43de9d2f2a240545b4cd2c1d947c6c242f31d61aa9a3b11b26e7b06a.lean/declarations/foreachvar--3534beda3b17aca8f0dd7e69.md) | 484 | `declaration-track:3534beda3b17aca8f0dd7e6992234d44fe71914309a7313c0bee72cc5977785f` |
| 35 | `def` | [evalSubst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant3f10287e43de9d2f2a240545b4cd2c1d947c6c242f31d61aa9a3b11b26e7b06a.lean/declarations/evalsubst--0efd182ce3d3cf5941821b44.md) | 491 | `declaration-track:0efd182ce3d3cf5941821b444241e6f0aff20d773647ecbfcb0e001b43f1de72` |
| 36 | `def` | [evalSubstVars](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant3f10287e43de9d2f2a240545b4cd2c1d947c6c242f31d61aa9a3b11b26e7b06a.lean/declarations/evalsubstvars--36b9314a03bb1fd77aafcda8.md) | 509 | `declaration-track:36b9314a03bb1fd77aafcda8d2f552a9006e0084163c61590d26814bd634f46e` |
| 37 | `def` | [evalSubstEqs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant3f10287e43de9d2f2a240545b4cd2c1d947c6c242f31d61aa9a3b11b26e7b06a.lean/declarations/evalsubsteqs--7a00b06e59c1c276251f20b8.md) | 512 | `declaration-track:7a00b06e59c1c276251f20b80f7456e36704cdfdbaa31286bac4105127b9cd6e` |
| 38 | `def` | [findTag?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant3f10287e43de9d2f2a240545b4cd2c1d947c6c242f31d61aa9a3b11b26e7b06a.lean/declarations/findtag--6989d8ac81414bfdd3a5ea80.md) | 526 | `declaration-track:6989d8ac81414bfdd3a5ea80c3aeceaf2d01618e4e56746ccac0b9e7227954b1` |
| 39 | `def` | [getCaseGoals](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant3f10287e43de9d2f2a240545b4cd2c1d947c6c242f31d61aa9a3b11b26e7b06a.lean/declarations/getcasegoals--a5f92f307250c23bfcba57ca.md) | 534 | `declaration-track:a5f92f307250c23bfcba57ca6580ed4561852013f6678f48a7c5c3e71600329b` |
| 40 | `def` | [evalCase](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant3f10287e43de9d2f2a240545b4cd2c1d947c6c242f31d61aa9a3b11b26e7b06a.lean/declarations/evalcase--3fcb2e0032c44eb90ebecbc9.md) | 587 | `declaration-track:3fcb2e0032c44eb90ebecbc90067092d487ecc7c2a70fb78cb74b60f68c665b3` |
| 41 | `def` | [evalCase'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant3f10287e43de9d2f2a240545b4cd2c1d947c6c242f31d61aa9a3b11b26e7b06a.lean/declarations/evalcase--5e7b053b97ccb3b52179dd4d.md) | 601 | `declaration-track:5e7b053b97ccb3b52179dd4d9f590fbc1be1438d8a8611c4c77c800d6fec167e` |
| 42 | `def` | [evalRenameInaccessibles](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant3f10287e43de9d2f2a240545b4cd2c1d947c6c242f31d61aa9a3b11b26e7b06a.lean/declarations/evalrenameinaccessibles--d9ff8583a1cc43ba9b9fbd6b.md) | 618 | `declaration-track:d9ff8583a1cc43ba9b9fbd6bdb447c824ff3c81a165d99850fd672c1be578578` |
| 43 | `def` | [evalFirst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant3f10287e43de9d2f2a240545b4cd2c1d947c6c242f31d61aa9a3b11b26e7b06a.lean/declarations/evalfirst--29700c062c4a8789e943f5d2.md) | 622 | `declaration-track:29700c062c4a8789e943f5d23752963e8ff658c1d875510a1849257cc95a46f2` |
| 44 | `def` | [evalFail](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant3f10287e43de9d2f2a240545b4cd2c1d947c6c242f31d61aa9a3b11b26e7b06a.lean/declarations/evalfail--0e609ad48b43df50b628987b.md) | 633 | `declaration-track:0e609ad48b43df50b628987be51efe88e28a42c94f5599085e6a9c6e3192268f` |
| 45 | `def` | [evalDbgTrace](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant3f10287e43de9d2f2a240545b4cd2c1d947c6c242f31d61aa9a3b11b26e7b06a.lean/declarations/evaldbgtrace--d1f4008b3ecb51e1a4f10ec3.md) | 641 | `declaration-track:d1f4008b3ecb51e1a4f10ec35f0f0ce24923546cb92c02f8913d82eb9b7a1b60` |
| 46 | `def` | [evalSleep](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant3f10287e43de9d2f2a240545b4cd2c1d947c6c242f31d61aa9a3b11b26e7b06a.lean/declarations/evalsleep--e2c1dd70211da07f033f7f4f.md) | 646 | `declaration-track:e2c1dd70211da07f033f7f4f0601d2ddf85451fe412856d3253b7e69385bebef` |
| 47 | `def` | [evalLeft](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant3f10287e43de9d2f2a240545b4cd2c1d947c6c242f31d61aa9a3b11b26e7b06a.lean/declarations/evalleft--cd6a653884f1a16626cca828.md) | 651 | `declaration-track:cd6a653884f1a16626cca8284352c17622c1e4466113624071c494f9f31e0c34` |
| 48 | `def` | [evalRight](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant3f10287e43de9d2f2a240545b4cd2c1d947c6c242f31d61aa9a3b11b26e7b06a.lean/declarations/evalright--dfa48163abaa0e769744a8b2.md) | 654 | `declaration-track:dfa48163abaa0e769744a8b2a9e7bce7d29e3ad55f47091a796ae86cd8980bcd` |
| 49 | `def` | [evalReplace](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant3f10287e43de9d2f2a240545b4cd2c1d947c6c242f31d61aa9a3b11b26e7b06a.lean/declarations/evalreplace--50bfb750513f6b78c11c16de.md) | 657 | `declaration-track:50bfb750513f6b78c11c16de881328be60852b33e1afb7ca9c0f25a0ae4c53d7` |
| 50 | `def` | [evalRunTac](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant3f10287e43de9d2f2a240545b4cd2c1d947c6c242f31d61aa9a3b11b26e7b06a.lean/declarations/evalruntac--af762cf1b305d603a71f3dd2.md) | 671 | `declaration-track:af762cf1b305d603a71f3dd2f2b3493fa6fae9c89dfa274458c4b8d0cc500115` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
