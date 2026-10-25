# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Parse.Variant1f943b5cc776eece6d528937b976509c8bd57d10bc69a39b1c119bfb6d664286

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1eedbabc47e0db3df6405063913380ed0fed46ac",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variant1f943b5cc776eece6d528937b976509c8bd57d10bc69a39b1c119bfb6d664286.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variant1f943b5cc776eece6d528937b976509c8bd57d10bc69a39b1c119bfb6d664286.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variant1f943b5cc776eece6d528937b976509c8bd57d10bc69a39b1c119bfb6d664286.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1eedbabc47e0db3df6405063913380ed0fed46ac`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variant1f943b5cc776eece6d528937b976509c8bd57d10bc69a39b1c119bfb6d664286.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variant1f943b5cc776eece6d528937b976509c8bd57d10bc69a39b1c119bfb6d664286.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std.Data.HashMap` — import line 6; external provider; requires a separately pinned dependency.
- `Lean.Declaration` — import line 7; external provider; requires a separately pinned dependency.
- `Std.Internal.Parsec.String` — import line 8; external provider; requires a separately pinned dependency.
- `Lean.Data.Json.Parser` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ExportedEnv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variant1f943b5cc776eece6d528937b976509c8bd57d10bc69a39b1c119bfb6d664286.lean/declarations/exportedenv--10777e90c7b726d0ca827048.md) | 13 | `declaration-track:10777e90c7b726d0ca8270486cbbe322bc8724fdc5a73690c553fe7c8642b0ca` |
| 2 | `structure` | [State](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variant1f943b5cc776eece6d528937b976509c8bd57d10bc69a39b1c119bfb6d664286.lean/declarations/state--1aa603b936fb502ac699c349.md) | 23 | `declaration-track:1aa603b936fb502ac699c34952885f301fd6cb2c158bc1af573179b0c5bdc2e7` |
| 3 | `abbrev` | [M](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variant1f943b5cc776eece6d528937b976509c8bd57d10bc69a39b1c119bfb6d664286.lean/declarations/m--005cb7ebfa9e548dbc534d25.md) | 32 | `declaration-track:005cb7ebfa9e548dbc534d254cb7d3084d187a652a3bcc1983d5f5bcc03ec1b4` |
| 4 | `def` | [M.run](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variant1f943b5cc776eece6d528937b976509c8bd57d10bc69a39b1c119bfb6d664286.lean/declarations/m-run--dca01ef88bce47bc790623e8.md) | 34 | `declaration-track:dca01ef88bce47bc790623e8e740ff1774711a96b7c5979cb4a40446097e6c23` |
| 5 | `def` | [fail](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variant1f943b5cc776eece6d528937b976509c8bd57d10bc69a39b1c119bfb6d664286.lean/declarations/fail--80ab28a26f066e7d40d0bee8.md) | 38 | `declaration-track:80ab28a26f066e7d40d0bee819eedbe81ad81f09a3bfc80da47190cf38d75034` |
| 6 | `def` | [getName](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variant1f943b5cc776eece6d528937b976509c8bd57d10bc69a39b1c119bfb6d664286.lean/declarations/getname--e34aeaa5b76a64e4a6ff6131.md) | 42 | `declaration-track:e34aeaa5b76a64e4a6ff6131363acb17336bee835bb84362aceb795ba6ce3073` |
| 7 | `def` | [addName](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variant1f943b5cc776eece6d528937b976509c8bd57d10bc69a39b1c119bfb6d664286.lean/declarations/addname--e9e882a6c0cc95bfed69f094.md) | 47 | `declaration-track:e9e882a6c0cc95bfed69f09404fd23cd8e284ca8dc08226f88f531096ab0635c` |
| 8 | `def` | [getLevel](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variant1f943b5cc776eece6d528937b976509c8bd57d10bc69a39b1c119bfb6d664286.lean/declarations/getlevel--cf342c81398173b48e036441.md) | 51 | `declaration-track:cf342c81398173b48e03644109ffcffdb6814a67638d9a9c289cd45c18986566` |
| 9 | `def` | [addLevel](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variant1f943b5cc776eece6d528937b976509c8bd57d10bc69a39b1c119bfb6d664286.lean/declarations/addlevel--cc7ce721c97cbfdb15d22d12.md) | 56 | `declaration-track:cc7ce721c97cbfdb15d22d120a310f4a51f429ab3443f51c9a7d38cf12121b12` |
| 10 | `def` | [getExpr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variant1f943b5cc776eece6d528937b976509c8bd57d10bc69a39b1c119bfb6d664286.lean/declarations/getexpr--ad5e1014fb414bf51ab81803.md) | 60 | `declaration-track:ad5e1014fb414bf51ab818036ab754cdbb6c3a363e5e08cfd3aee809adf3d9ec` |
| 11 | `def` | [addExpr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variant1f943b5cc776eece6d528937b976509c8bd57d10bc69a39b1c119bfb6d664286.lean/declarations/addexpr--6d82ec06a397a02ab44981c0.md) | 65 | `declaration-track:6d82ec06a397a02ab44981c0996fce257d71c96d03b067a3c13f233ca07bdc22` |
| 12 | `def` | [getRecursorRule](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variant1f943b5cc776eece6d528937b976509c8bd57d10bc69a39b1c119bfb6d664286.lean/declarations/getrecursorrule--98eeb178c008c327acda2809.md) | 69 | `declaration-track:98eeb178c008c327acda280990fb0ed5fe7f2c1610a965265c812e4db694b7f4` |
| 13 | `def` | [addRecursorRule](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variant1f943b5cc776eece6d528937b976509c8bd57d10bc69a39b1c119bfb6d664286.lean/declarations/addrecursorrule--34ce92bc755e412c09f65927.md) | 74 | `declaration-track:34ce92bc755e412c09f6592714c50b72e865adcb2a59a788a35c0a03ccb6630e` |
| 14 | `def` | [addConst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variant1f943b5cc776eece6d528937b976509c8bd57d10bc69a39b1c119bfb6d664286.lean/declarations/addconst--daa608e16bfe6ea7af856da0.md) | 78 | `declaration-track:daa608e16bfe6ea7af856da09ef3218c7823182784e7e3cb2e822f18b56d2d81` |
| 15 | `def` | [parseJsonObj](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variant1f943b5cc776eece6d528937b976509c8bd57d10bc69a39b1c119bfb6d664286.lean/declarations/parsejsonobj--bafa47d0d0b4a6d659cd8790.md) | 88 | `declaration-track:bafa47d0d0b4a6d659cd87904a26d48c489f55281918a601f51551176803a56e` |
| 16 | `def` | [parseNameStr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variant1f943b5cc776eece6d528937b976509c8bd57d10bc69a39b1c119bfb6d664286.lean/declarations/parsenamestr--a8204858b3aa1b04c6e491e3.md) | 92 | `declaration-track:a8204858b3aa1b04c6e491e3926eca95bce747db9267d145baddc134b77f323a` |
| 17 | `def` | [parseNameNum](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variant1f943b5cc776eece6d528937b976509c8bd57d10bc69a39b1c119bfb6d664286.lean/declarations/parsenamenum--f520449873d577cce4db50e5.md) | 98 | `declaration-track:f520449873d577cce4db50e5f2811b790ec72727d200a63a1c420d9a81d24dd4` |
| 18 | `def` | [parseLevelSucc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variant1f943b5cc776eece6d528937b976509c8bd57d10bc69a39b1c119bfb6d664286.lean/declarations/parselevelsucc--c83ca0ca8e752a44facb5f2a.md) | 104 | `declaration-track:c83ca0ca8e752a44facb5f2a397f58147bc7bcf03eefa14d7c835028ed4563d0` |
| 19 | `def` | [parseLevelMax](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variant1f943b5cc776eece6d528937b976509c8bd57d10bc69a39b1c119bfb6d664286.lean/declarations/parselevelmax--283a474f22bed94f9101bd92.md) | 108 | `declaration-track:283a474f22bed94f9101bd927f84c2f15f5aef963a71eaa7a292f85f9a513f7c` |
| 20 | `def` | [parseLevelImax](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variant1f943b5cc776eece6d528937b976509c8bd57d10bc69a39b1c119bfb6d664286.lean/declarations/parselevelimax--e4c60a0edc8b6f6acf124508.md) | 113 | `declaration-track:e4c60a0edc8b6f6acf12450875cef54e31b39311e0d0f665272c0f96c5822214` |
| 21 | `def` | [parseLevelParam](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variant1f943b5cc776eece6d528937b976509c8bd57d10bc69a39b1c119bfb6d664286.lean/declarations/parselevelparam--7b66c39519b39a1266050172.md) | 118 | `declaration-track:7b66c39519b39a12660501729e29fd5123bf07e738e11555366444f0beadf98f` |
| 22 | `def` | [parseExprBVar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variant1f943b5cc776eece6d528937b976509c8bd57d10bc69a39b1c119bfb6d664286.lean/declarations/parseexprbvar--d51c75d991a6839cf907b5cf.md) | 122 | `declaration-track:d51c75d991a6839cf907b5cf19f2426264f3a92047a438db16bb632d2fc09b02` |
| 23 | `def` | [parseExprSort](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variant1f943b5cc776eece6d528937b976509c8bd57d10bc69a39b1c119bfb6d664286.lean/declarations/parseexprsort--3ab24cd016d1898dc1ee0cd0.md) | 126 | `declaration-track:3ab24cd016d1898dc1ee0cd0f80f80617f885bd4e472bb9686a984cad38f75e4` |
| 24 | `def` | [parseExprConst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variant1f943b5cc776eece6d528937b976509c8bd57d10bc69a39b1c119bfb6d664286.lean/declarations/parseexprconst--515ec5e1d2fd8ae8b967cbc9.md) | 130 | `declaration-track:515ec5e1d2fd8ae8b967cbc96480556a6516e2cb777eec8304e1cc263a75f136` |
| 25 | `def` | [parseExprApp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variant1f943b5cc776eece6d528937b976509c8bd57d10bc69a39b1c119bfb6d664286.lean/declarations/parseexprapp--cb2706da9afc3b450510f6ca.md) | 142 | `declaration-track:cb2706da9afc3b450510f6ca2fa20c01eba6bd91379b4dd37cce566cb7eff0fd` |
| 26 | `def` | [parseBinderInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variant1f943b5cc776eece6d528937b976509c8bd57d10bc69a39b1c119bfb6d664286.lean/declarations/parsebinderinfo--dba7c7f11e32ad177bf8ae90.md) | 151 | `declaration-track:dba7c7f11e32ad177bf8ae909d3301fc87c70d135dd86b120c8a129eeb2389a1` |
| 27 | `def` | [parseExprLam](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variant1f943b5cc776eece6d528937b976509c8bd57d10bc69a39b1c119bfb6d664286.lean/declarations/parseexprlam--13b07089dbe65b54962b8e2e.md) | 159 | `declaration-track:13b07089dbe65b54962b8e2e29f6ed5298514fa55c64df33ca163b202bd1d45c` |
| 28 | `def` | [parseExprForallE](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variant1f943b5cc776eece6d528937b976509c8bd57d10bc69a39b1c119bfb6d664286.lean/declarations/parseexprforalle--50ff43f4419870b3e5e23934.md) | 173 | `declaration-track:50ff43f4419870b3e5e23934e397d90e4a28e33c02516c5c74c1cafedfdd92ff` |
| 29 | `def` | [parseExprLetE](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variant1f943b5cc776eece6d528937b976509c8bd57d10bc69a39b1c119bfb6d664286.lean/declarations/parseexprlete--d3ecef4b94b3e95fcd6df67a.md) | 187 | `declaration-track:d3ecef4b94b3e95fcd6df67a4e81d354dbea8ab0321cf4a38951a62c89afd7d4` |
| 30 | `def` | [parseExprProj](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variant1f943b5cc776eece6d528937b976509c8bd57d10bc69a39b1c119bfb6d664286.lean/declarations/parseexprproj--a81606f7889ac8124c1674c7.md) | 202 | `declaration-track:a81606f7889ac8124c1674c70308cc73105fad7c3f90841084169a92f145ea65` |
| 31 | `def` | [parseExprNatLit](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variant1f943b5cc776eece6d528937b976509c8bd57d10bc69a39b1c119bfb6d664286.lean/declarations/parseexprnatlit--82929b502458d9d301eeb400.md) | 213 | `declaration-track:82929b502458d9d301eeb40086fcc73455d2725511ed3961852a14afa9587698` |
| 32 | `def` | [parseExprStrLit](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variant1f943b5cc776eece6d528937b976509c8bd57d10bc69a39b1c119bfb6d664286.lean/declarations/parseexprstrlit--796c567bd0ca0abe2fb86baa.md) | 219 | `declaration-track:796c567bd0ca0abe2fb86baa4f574ddad20a17d546421028be29b43836417c99` |
| 33 | `def` | [parseExprMdata](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variant1f943b5cc776eece6d528937b976509c8bd57d10bc69a39b1c119bfb6d664286.lean/declarations/parseexprmdata--04c203cc53ba8d63e33bdd92.md) | 223 | `declaration-track:04c203cc53ba8d63e33bdd92d2df5218773336f0b7f53997fda2b4895360d648` |
| 34 | `def` | [getNameList](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variant1f943b5cc776eece6d528937b976509c8bd57d10bc69a39b1c119bfb6d664286.lean/declarations/getnamelist--fdc776d118ac1defac21be06.md) | 232 | `declaration-track:fdc776d118ac1defac21be064afdbecf14e8e42d7608caf70d8795d8698099f1` |
| 35 | `def` | [parseAxiomInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variant1f943b5cc776eece6d528937b976509c8bd57d10bc69a39b1c119bfb6d664286.lean/declarations/parseaxiominfo--488add6f497d09d068649d88.md) | 237 | `declaration-track:488add6f497d09d068649d884bdac67fa1eee22ce6ff8d344463a2b76a3882ad` |
| 36 | `def` | [parseDefnInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variant1f943b5cc776eece6d528937b976509c8bd57d10bc69a39b1c119bfb6d664286.lean/declarations/parsedefninfo--c3cd0db6a55b3ef11481c63c.md) | 249 | `declaration-track:c3cd0db6a55b3ef11481c63c32c1aa342cebaab7daa0369fbff2f88ca5ff1f51` |
| 37 | `def` | [parseThmInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variant1f943b5cc776eece6d528937b976509c8bd57d10bc69a39b1c119bfb6d664286.lean/declarations/parsethminfo--e9d3a670dea76ea8244ae1b4.md) | 280 | `declaration-track:e9d3a670dea76ea8244ae1b4a2080c9ff328dbe8fbf867f7a3656e667d723fd9` |
| 38 | `def` | [parseOpaqueInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variant1f943b5cc776eece6d528937b976509c8bd57d10bc69a39b1c119bfb6d664286.lean/declarations/parseopaqueinfo--9ffd11db2c96ce790b39df30.md) | 295 | `declaration-track:9ffd11db2c96ce790b39df3076b3ef08fa3cbbb6c289fbaceff39d4fed86dd1f` |
| 39 | `def` | [parseQuotInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variant1f943b5cc776eece6d528937b976509c8bd57d10bc69a39b1c119bfb6d664286.lean/declarations/parsequotinfo--4becf7266bd874b247eca49a.md) | 312 | `declaration-track:4becf7266bd874b247eca49acd00a410d15f2f0cd41feec43fefbe34fced5267` |
| 40 | `def` | [parseInductInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variant1f943b5cc776eece6d528937b976509c8bd57d10bc69a39b1c119bfb6d664286.lean/declarations/parseinductinfo--542498282a72d2be53d5ee0d.md) | 331 | `declaration-track:542498282a72d2be53d5ee0db4eed6691e1f5ffa79cc833611a9132cbc9510a9` |
| 41 | `def` | [parseCtorInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variant1f943b5cc776eece6d528937b976509c8bd57d10bc69a39b1c119bfb6d664286.lean/declarations/parsectorinfo--111c4d8d59784969907e0440.md) | 365 | `declaration-track:111c4d8d59784969907e04403a0c9e8892002b824988a5239c0be898d43fccf6` |
| 42 | `def` | [parseRecInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variant1f943b5cc776eece6d528937b976509c8bd57d10bc69a39b1c119bfb6d664286.lean/declarations/parserecinfo--66411f3d7091097376e95056.md) | 392 | `declaration-track:66411f3d7091097376e95056f4ee998c1fb3435e2e3746b4f47e741185291d70` |
| 43 | `def` | [parseInductive](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variant1f943b5cc776eece6d528937b976509c8bd57d10bc69a39b1c119bfb6d664286.lean/declarations/parseinductive--67d873113f9f239326df4d79.md) | 434 | `declaration-track:67d873113f9f239326df4d79fd01872f7b5e67f97d50f50d63b2b6ffe5372e0f` |
| 44 | `def` | [parseItem](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variant1f943b5cc776eece6d528937b976509c8bd57d10bc69a39b1c119bfb6d664286.lean/declarations/parseitem--36282914d33733b1c6cc5f37.md) | 442 | `declaration-track:36282914d33733b1c6cc5f3766784ddf116a5da1e7f6aec9dad46d77f5b41f4b` |
| 45 | `def` | [parseItems](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variant1f943b5cc776eece6d528937b976509c8bd57d10bc69a39b1c119bfb6d664286.lean/declarations/parseitems--12d78a39db774d7b91c9f66a.md) | 478 | `declaration-track:12d78a39db774d7b91c9f66a021641c7f28d06a1393cc79874c3d638150bf63b` |
| 46 | `def` | [parseMdata](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variant1f943b5cc776eece6d528937b976509c8bd57d10bc69a39b1c119bfb6d664286.lean/declarations/parsemdata--a79181638e620f133e0f7ac1.md) | 487 | `declaration-track:a79181638e620f133e0f7ac12bab21def5a095193a345cce363c1c00a415eb6b` |
| 47 | `def` | [parseFile](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variant1f943b5cc776eece6d528937b976509c8bd57d10bc69a39b1c119bfb6d664286.lean/declarations/parsefile--c17d2a17f79a2b0c7e75ea1c.md) | 490 | `declaration-track:c17d2a17f79a2b0c7e75ea1c8fdaab63885c9c65f7e6eeebf2eb9901180eb833` |
| 48 | `def` | [parseStream](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variant1f943b5cc776eece6d528937b976509c8bd57d10bc69a39b1c119bfb6d664286.lean/declarations/parsestream--6313bb18fd4578a09a01671c.md) | 496 | `declaration-track:6313bb18fd4578a09a01671c8138799469e0d6fd4b7ecb22e02a332434612efe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
