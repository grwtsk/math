# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Broadcast.Variant25bac5d37c97256132ac227bce6f9e4607e2a0773beddf6149f3a69947c99dd4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b7d1cf2b971c5845cd7e618c0c75633e8aa69782",
  "lexical_observation_count": 54,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Broadcast/Variant25bac5d37c97256132ac227bce6f9e4607e2a0773beddf6149f3a69947c99dd4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Broadcast/Variant25bac5d37c97256132ac227bce6f9e4607e2a0773beddf6149f3a69947c99dd4.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Broadcast/Variant25bac5d37c97256132ac227bce6f9e4607e2a0773beddf6149f3a69947c99dd4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b7d1cf2b971c5845cd7e618c0c75633e8aa69782`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Broadcast/Variant25bac5d37c97256132ac227bce6f9e4607e2a0773beddf6149f3a69947c99dd4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Broadcast/Variant25bac5d37c97256132ac227bce6f9e4607e2a0773beddf6149f3a69947c99dd4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Broadcast.Error](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Broadcast/Variant25bac5d37c97256132ac227bce6f9e4607e2a0773beddf6149f3a69947c99dd4.lean/declarations/broadcast-error--4a08a1bf1b6de12b414c1c5d.md) | 42 | `declaration-track:4a08a1bf1b6de12b414c1c5dfb524ef3dbce7ad81e32967ee0eeb0e6906a1d1d` |
| 2 | `instance` | [instToStringBroadcastError](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Broadcast/Variant25bac5d37c97256132ac227bce6f9e4607e2a0773beddf6149f3a69947c99dd4.lean/declarations/insttostringbroadcasterror--7076f7e88186e38c97b0f50d.md) | 60 | `declaration-track:7076f7e88186e38c97b0f50d763733a0298000657bbe759d8ff9f54bc5d4afc2` |
| 3 | `instance` | [instMonadLiftBroadcastIO](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Broadcast/Variant25bac5d37c97256132ac227bce6f9e4607e2a0773beddf6149f3a69947c99dd4.lean/declarations/instmonadliftbroadcastio--4d368d5797e25f82695eb2c0.md) | 66 | `declaration-track:4d368d5797e25f82695eb2c0992d3a101894b8c852b110c9e11990d85990e7ca` |
| 4 | `structure` | [Broadcast.Consumer](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Broadcast/Variant25bac5d37c97256132ac227bce6f9e4607e2a0773beddf6149f3a69947c99dd4.lean/declarations/broadcast-consumer--37f1a99e8fb799f5ff240195.md) | 69 | `declaration-track:37f1a99e8fb799f5ff240195808022acc9e7b9bc6be97f2a581b8d08759a47a9` |
| 5 | `def` | [Broadcast.Consumer.resolve](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Broadcast/Variant25bac5d37c97256132ac227bce6f9e4607e2a0773beddf6149f3a69947c99dd4.lean/declarations/broadcast-consumer-resolve--1fabb85c9a82352352b14f41.md) | 73 | `declaration-track:1fabb85c9a82352352b14f418478ee2527254220ccaba7e020492c3746eff77c` |
| 6 | `structure` | [Slot](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Broadcast/Variant25bac5d37c97256132ac227bce6f9e4607e2a0773beddf6149f3a69947c99dd4.lean/declarations/slot--2b94aaf29928eea2a621d064.md) | 76 | `declaration-track:2b94aaf29928eea2a621d0641ed71dba1e10ae37db2aa7e0c5d25b059be57c51` |
| 7 | `structure` | [Bounded.State](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Broadcast/Variant25bac5d37c97256132ac227bce6f9e4607e2a0773beddf6149f3a69947c99dd4.lean/declarations/bounded-state--eb67938d289f4664784d9674.md) | 82 | `declaration-track:eb67938d289f4664784d96744bc6df8315accaffa2ddbc1e7d26c5b7705e9d08` |
| 8 | `structure` | [Bounded](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Broadcast/Variant25bac5d37c97256132ac227bce6f9e4607e2a0773beddf6149f3a69947c99dd4.lean/declarations/bounded--7c06407d7d824f6d94206419.md) | 141 | `declaration-track:7c06407d7d824f6d942064193e850e17b3f6b8d0d02a52f959f5a3f5e9071875` |
| 9 | `structure` | [Bounded.Receiver](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Broadcast/Variant25bac5d37c97256132ac227bce6f9e4607e2a0773beddf6149f3a69947c99dd4.lean/declarations/bounded-receiver--f39ddcec6a4f99bf4f0eebcd.md) | 147 | `declaration-track:f39ddcec6a4f99bf4f0eebcd6b03f0591c1254e37b7834eb3bfdb2c4b68ca7fa` |
| 10 | `def` | [new](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Broadcast/Variant25bac5d37c97256132ac227bce6f9e4607e2a0773beddf6149f3a69947c99dd4.lean/declarations/new--e8efffbac9b73d48a286e250.md) | 156 | `declaration-track:e8efffbac9b73d48a286e2500d63bc2abed927e5524cd762ec022cf254c8e44e` |
| 11 | `def` | [subscribe](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Broadcast/Variant25bac5d37c97256132ac227bce6f9e4607e2a0773beddf6149f3a69947c99dd4.lean/declarations/subscribe--75aff6c2a48c681265b3ea52.md) | 174 | `declaration-track:75aff6c2a48c681265b3ea520a3e4a0d2f971304d48cb5920455f934dc62dacd` |
| 12 | `def` | [isEmpty](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Broadcast/Variant25bac5d37c97256132ac227bce6f9e4607e2a0773beddf6149f3a69947c99dd4.lean/declarations/isempty--40686d97c27d588b5c49a199.md) | 184 | `declaration-track:40686d97c27d588b5c49a199279ba27a4e492e223ecc81df0904f7d5b2592b17` |
| 13 | `def` | [isFull](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Broadcast/Variant25bac5d37c97256132ac227bce6f9e4607e2a0773beddf6149f3a69947c99dd4.lean/declarations/isfull--7c2a843d98306f39b0dc885d.md) | 191 | `declaration-track:7c2a843d98306f39b0dc885d332f0554d8c2906eea67ab71e5915789436bf242` |
| 14 | `def` | [enqueue](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Broadcast/Variant25bac5d37c97256132ac227bce6f9e4607e2a0773beddf6149f3a69947c99dd4.lean/declarations/enqueue--b5d89ab3615c084813aafabf.md) | 199 | `declaration-track:b5d89ab3615c084813aafabfc0ac9fb7c2aae2f1f37097f0cf8c424dd9687b6a` |
| 15 | `def` | [dequeue](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Broadcast/Variant25bac5d37c97256132ac227bce6f9e4607e2a0773beddf6149f3a69947c99dd4.lean/declarations/dequeue--48800f066a49bac8937d98dd.md) | 213 | `declaration-track:48800f066a49bac8937d98dd5840061bd0af97eca27bdca6d04d352ec90496bc` |
| 16 | `def` | [getSlot](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Broadcast/Variant25bac5d37c97256132ac227bce6f9e4607e2a0773beddf6149f3a69947c99dd4.lean/declarations/getslot--645f7c7755d0e03ab4f107f7.md) | 223 | `declaration-track:645f7c7755d0e03ab4f107f724c92b258ebcb69816c348c8eba0b4043c7d5b3a` |
| 17 | `def` | [trySend'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Broadcast/Variant25bac5d37c97256132ac227bce6f9e4607e2a0773beddf6149f3a69947c99dd4.lean/declarations/trysend--39b7578ad2ead8a0f1ddc684.md) | 233 | `declaration-track:39b7578ad2ead8a0f1ddc684b7b9d1ce59bab9a75f26281341271cd70ace265b` |
| 18 | `def` | [trySend](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Broadcast/Variant25bac5d37c97256132ac227bce6f9e4607e2a0773beddf6149f3a69947c99dd4.lean/declarations/trysend--534fcc7a1868b7b6fac6a6bb.md) | 246 | `declaration-track:534fcc7a1868b7b6fac6a6bbc01e1128b57ba2587619cb4d9fc1276db3b48b93` |
| 19 | `def` | [send](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Broadcast/Variant25bac5d37c97256132ac227bce6f9e4607e2a0773beddf6149f3a69947c99dd4.lean/declarations/send--d517a4f2e2a498699cb5a6d0.md) | 255 | `declaration-track:d517a4f2e2a498699cb5a6d07d583e71047236e335b168863d997b50ad48aa86` |
| 20 | `def` | [close](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Broadcast/Variant25bac5d37c97256132ac227bce6f9e4607e2a0773beddf6149f3a69947c99dd4.lean/declarations/close--32224dc45e17ac5110bbacdf.md) | 273 | `declaration-track:32224dc45e17ac5110bbacdfdf4ed2f211bb82c51445982c07ab905f043b9e57` |
| 21 | `def` | [isClosed](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Broadcast/Variant25bac5d37c97256132ac227bce6f9e4607e2a0773beddf6149f3a69947c99dd4.lean/declarations/isclosed--4df26160db49ee8217a43590.md) | 286 | `declaration-track:4df26160db49ee8217a43590a55e8f3172b0eef1dfbf79d7ef78ef766fe3d889` |
| 22 | `def` | [getSlotValue](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Broadcast/Variant25bac5d37c97256132ac227bce6f9e4607e2a0773beddf6149f3a69947c99dd4.lean/declarations/getslotvalue--83afc3db0051cc328227964a.md) | 292 | `declaration-track:83afc3db0051cc328227964a2db81a8eec6e90db8692745a23e46dd73197fe16` |
| 23 | `def` | [getValueByPosition](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Broadcast/Variant25bac5d37c97256132ac227bce6f9e4607e2a0773beddf6149f3a69947c99dd4.lean/declarations/getvaluebyposition--7979718f04ff16bf3d5a96e3.md) | 302 | `declaration-track:7979718f04ff16bf3d5a96e3ff6f5b082509fc0d23f47efb1f45a92c0f35db45` |
| 24 | `def` | [unsubscribe](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Broadcast/Variant25bac5d37c97256132ac227bce6f9e4607e2a0773beddf6149f3a69947c99dd4.lean/declarations/unsubscribe--1a2713d48d24e228b663d744.md) | 328 | `declaration-track:1a2713d48d24e228b663d7446ad83b9349b40fda33b32a37cf29c8515608e512` |
| 25 | `def` | [tryRecv'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Broadcast/Variant25bac5d37c97256132ac227bce6f9e4607e2a0773beddf6149f3a69947c99dd4.lean/declarations/tryrecv--26fba2dac56c85947f5b00c3.md) | 352 | `declaration-track:26fba2dac56c85947f5b00c32fa58b191248e33040b21d453e1164c822f4b01b` |
| 26 | `def` | [tryRecv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Broadcast/Variant25bac5d37c97256132ac227bce6f9e4607e2a0773beddf6149f3a69947c99dd4.lean/declarations/tryrecv--3a77ce1c8013f7bc774726a1.md) | 366 | `declaration-track:3a77ce1c8013f7bc774726a1fbc6d7491890a1cca5fd54b8422d472b69692520` |
| 27 | `def` | [recv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Broadcast/Variant25bac5d37c97256132ac227bce6f9e4607e2a0773beddf6149f3a69947c99dd4.lean/declarations/recv--37c9946e1bf3d7cffccebe5e.md) | 369 | `declaration-track:37c9946e1bf3d7cffccebe5ec64b042ef8576886cda4afe09a5f7e13d3a7deea` |
| 28 | `def` | [forAsync](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Broadcast/Variant25bac5d37c97256132ac227bce6f9e4607e2a0773beddf6149f3a69947c99dd4.lean/declarations/forasync--624b7550e2a3a24352d3fe65.md) | 386 | `declaration-track:624b7550e2a3a24352d3fe6584d563ff62edd3501c3d39579b1fabb2a5c276e9` |
| 29 | `def` | [recvReady'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Broadcast/Variant25bac5d37c97256132ac227bce6f9e4607e2a0773beddf6149f3a69947c99dd4.lean/declarations/recvready--de93c8f1842ca007ef9e5a9f.md) | 395 | `declaration-track:de93c8f1842ca007ef9e5a9f7fcd8bc1a57334a6e20669b3dc68e518cf2630e2` |
| 30 | `def` | [recvSelector](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Broadcast/Variant25bac5d37c97256132ac227bce6f9e4607e2a0773beddf6149f3a69947c99dd4.lean/declarations/recvselector--b7de07dee6f18f6b5565dd91.md) | 415 | `declaration-track:b7de07dee6f18f6b5565dd9129a374eb020fd588e23a567d9cee66b562f8d347` |
| 31 | `structure` | [Broadcast](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Broadcast/Variant25bac5d37c97256132ac227bce6f9e4607e2a0773beddf6149f3a69947c99dd4.lean/declarations/broadcast--e381f3287c7181908c55aeb9.md) | 474 | `declaration-track:e381f3287c7181908c55aeb97d9035d412480ea7ac15d1dc09a40a528e54f39a` |
| 32 | `structure` | [Broadcast.Receiver](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Broadcast/Variant25bac5d37c97256132ac227bce6f9e4607e2a0773beddf6149f3a69947c99dd4.lean/declarations/broadcast-receiver--03abcae88da42d69a0c84663.md) | 484 | `declaration-track:03abcae88da42d69a0c8466309030b08ef4a442c7d3068df2eb5c687ac524732` |
| 33 | `def` | [new](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Broadcast/Variant25bac5d37c97256132ac227bce6f9e4607e2a0773beddf6149f3a69947c99dd4.lean/declarations/new--f326f93016b3b3906029ae61.md) | 494 | `declaration-track:f326f93016b3b3906029ae611e110cc8320e414fd7a97904b00b1cd83a3c3d83` |
| 34 | `def` | [trySend](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Broadcast/Variant25bac5d37c97256132ac227bce6f9e4607e2a0773beddf6149f3a69947c99dd4.lean/declarations/trysend--7258f83e2e748ac6f98d05cb.md) | 502 | `declaration-track:7258f83e2e748ac6f98d05cb7127837fea57225328a7c4c0eabbad6c368d43fc` |
| 35 | `def` | [subscribe](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Broadcast/Variant25bac5d37c97256132ac227bce6f9e4607e2a0773beddf6149f3a69947c99dd4.lean/declarations/subscribe--513735cd57dbe447b1e8ca7d.md) | 509 | `declaration-track:513735cd57dbe447b1e8ca7d3837757b4f15c64d8daff26f3e54fedbfb0a1707` |
| 36 | `def` | [close](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Broadcast/Variant25bac5d37c97256132ac227bce6f9e4607e2a0773beddf6149f3a69947c99dd4.lean/declarations/close--feb815f4a93a70fa73fc1b65.md) | 516 | `declaration-track:feb815f4a93a70fa73fc1b65ef5ffa7b2d027da1bbee3923ecfb8f1d36e90c38` |
| 37 | `def` | [send](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Broadcast/Variant25bac5d37c97256132ac227bce6f9e4607e2a0773beddf6149f3a69947c99dd4.lean/declarations/send--30c28374373815045b959c7d.md) | 524 | `declaration-track:30c28374373815045b959c7d09f79f1d766991aa68a201d364990a08df488b62` |
| 38 | `def` | [tryRecv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Broadcast/Variant25bac5d37c97256132ac227bce6f9e4607e2a0773beddf6149f3a69947c99dd4.lean/declarations/tryrecv--e7b55ef4e6d5b56a463e0c65.md) | 537 | `declaration-track:e7b55ef4e6d5b56a463e0c659f87cec6bd51684ee2ba05042a4e20a09cf9245b` |
| 39 | `def` | [recv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Broadcast/Variant25bac5d37c97256132ac227bce6f9e4607e2a0773beddf6149f3a69947c99dd4.lean/declarations/recv--bc7137080197c58cba393c17.md) | 545 | `declaration-track:bc7137080197c58cba393c17495dc1f53edc8ff5d1af983cad6e8c969faf219c` |
| 40 | `def` | [recvSelector](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Broadcast/Variant25bac5d37c97256132ac227bce6f9e4607e2a0773beddf6149f3a69947c99dd4.lean/declarations/recvselector--ab20a0a691c3977bd5713d92.md) | 554 | `declaration-track:ab20a0a691c3977bd5713d92e4a6dde994a37b5684edaa4bbcc08a67c2a48fa6` |
| 41 | `def` | [unsubscribe](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Broadcast/Variant25bac5d37c97256132ac227bce6f9e4607e2a0773beddf6149f3a69947c99dd4.lean/declarations/unsubscribe--0057cc595011f3d05595034e.md) | 561 | `declaration-track:0057cc595011f3d05595034e1bcbc76a0e255748bb0c4d878c4d9d117301907c` |
| 42 | `def` | [forAsync](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Broadcast/Variant25bac5d37c97256132ac227bce6f9e4607e2a0773beddf6149f3a69947c99dd4.lean/declarations/forasync--7a8d4de77ea24ea8695081f7.md) | 569 | `declaration-track:7a8d4de77ea24ea8695081f7e8a77e166e6884dffd3b529231fca577b547a867` |
| 43 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Broadcast/Variant25bac5d37c97256132ac227bce6f9e4607e2a0773beddf6149f3a69947c99dd4.lean/declarations/instance--df58da2cce9b12f4febdf116.md) | 573 | `declaration-track:df58da2cce9b12f4febdf11626c334c47b5b766992683e88cda9e68d24f962f6` |
| 44 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Broadcast/Variant25bac5d37c97256132ac227bce6f9e4607e2a0773beddf6149f3a69947c99dd4.lean/declarations/instance--8b036d8ee824b726696fe533.md) | 577 | `declaration-track:8b036d8ee824b726696fe5331c56ad2cda17af22b23e47e40f67ba3c7bfd40e2` |
| 45 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Broadcast/Variant25bac5d37c97256132ac227bce6f9e4607e2a0773beddf6149f3a69947c99dd4.lean/declarations/instance--808bb013fa75cb997cdd3352.md) | 580 | `declaration-track:808bb013fa75cb997cdd335252c2808346c91f93d1b476568d65fecd2a85af8f` |
| 46 | `def` | [Sync](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Broadcast/Variant25bac5d37c97256132ac227bce6f9e4607e2a0773beddf6149f3a69947c99dd4.lean/declarations/sync--66aa6d505a996625b6e8aa4c.md) | 593 | `declaration-track:66aa6d505a996625b6e8aa4cec8be011f031b42e39ab9a14eb81469c50170772` |
| 47 | `def` | [Sync.Receiver](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Broadcast/Variant25bac5d37c97256132ac227bce6f9e4607e2a0773beddf6149f3a69947c99dd4.lean/declarations/sync-receiver--740c49f21e0adcdcf113dc40.md) | 603 | `declaration-track:740c49f21e0adcdcf113dc4008ada897cb3ec9f4bab15ed5effff933c54670c9` |
| 48 | `def` | [new](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Broadcast/Variant25bac5d37c97256132ac227bce6f9e4607e2a0773beddf6149f3a69947c99dd4.lean/declarations/new--eb03393f4935d1c74312ebfe.md) | 608 | `declaration-track:eb03393f4935d1c74312ebfe852a9422a6a30a26abcb66bf1d815bb10185f738` |
| 49 | `def` | [trySend](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Broadcast/Variant25bac5d37c97256132ac227bce6f9e4607e2a0773beddf6149f3a69947c99dd4.lean/declarations/trysend--4aa1c309b2f5cce1e37606ac.md) | 612 | `declaration-track:4aa1c309b2f5cce1e37606ac3a544ac0415c6c9a7d59f4c0c2bc225760f732d2` |
| 50 | `def` | [send](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Broadcast/Variant25bac5d37c97256132ac227bce6f9e4607e2a0773beddf6149f3a69947c99dd4.lean/declarations/send--b30e2c2bb019a2b209230192.md) | 619 | `declaration-track:b30e2c2bb019a2b20923019297bf9b6e4ecdc3da118982d1cc062062b95f1e52` |
| 51 | `def` | [tryRecv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Broadcast/Variant25bac5d37c97256132ac227bce6f9e4607e2a0773beddf6149f3a69947c99dd4.lean/declarations/tryrecv--58d3b274bf44f3cf1fe38a83.md) | 625 | `declaration-track:58d3b274bf44f3cf1fe38a83f8f1fa5b23b92cc96451285fbd350f39e49a59ef` |
| 52 | `def` | [recv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Broadcast/Variant25bac5d37c97256132ac227bce6f9e4607e2a0773beddf6149f3a69947c99dd4.lean/declarations/recv--464ac4d638b551457a00a075.md) | 630 | `declaration-track:464ac4d638b551457a00a075cec6789b8f9439b0bce4848c2d54849a3d4ca971` |
| 53 | `def` | [forIn](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Broadcast/Variant25bac5d37c97256132ac227bce6f9e4607e2a0773beddf6149f3a69947c99dd4.lean/declarations/forin--9a87380df205cf98b1565dd6.md) | 633 | `declaration-track:9a87380df205cf98b1565dd62d7bf635b629dd5564de1af413f4ef3dbc386ab8` |
| 54 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Broadcast/Variant25bac5d37c97256132ac227bce6f9e4607e2a0773beddf6149f3a69947c99dd4.lean/declarations/instance--9b866f054e6d2d5ffdf0d24a.md) | 644 | `declaration-track:9b866f054e6d2d5ffdf0d24a735daa48afe63835a7397744774fe1de0f8bfcae` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
