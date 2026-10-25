# GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Broadcast.Variant25bac5d37c97256132ac227bce6f9e4607e2a0773beddf6149f3a69947c99dd4

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**54 observed declarations and anonymous commands**, 0 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Broadcast/Variant25bac5d37c97256132ac227bce6f9e4607e2a0773beddf6149f3a69947c99dd4.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b7d1cf2b971c5845cd7e618c0c75633e8aa69782`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Broadcast/Variant25bac5d37c97256132ac227bce6f9e4607e2a0773beddf6149f3a69947c99dd4.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [Broadcast.Error](declarations/broadcast-error--4a08a1bf1b6de12b414c1c5d.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [instToStringBroadcastError](declarations/insttostringbroadcasterror--7076f7e88186e38c97b0f50d.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [instMonadLiftBroadcastIO](declarations/instmonadliftbroadcastio--4d368d5797e25f82695eb2c0.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `structure` | [Broadcast.Consumer](declarations/broadcast-consumer--37f1a99e8fb799f5ff240195.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [Broadcast.Consumer.resolve](declarations/broadcast-consumer-resolve--1fabb85c9a82352352b14f41.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `structure` | [Slot](declarations/slot--2b94aaf29928eea2a621d064.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `structure` | [Bounded.State](declarations/bounded-state--eb67938d289f4664784d9674.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `structure` | [Bounded](declarations/bounded--7c06407d7d824f6d94206419.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `structure` | [Bounded.Receiver](declarations/bounded-receiver--f39ddcec6a4f99bf4f0eebcd.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [new](declarations/new--e8efffbac9b73d48a286e250.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [subscribe](declarations/subscribe--75aff6c2a48c681265b3ea52.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [isEmpty](declarations/isempty--40686d97c27d588b5c49a199.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [isFull](declarations/isfull--7c2a843d98306f39b0dc885d.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [enqueue](declarations/enqueue--b5d89ab3615c084813aafabf.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [dequeue](declarations/dequeue--48800f066a49bac8937d98dd.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [getSlot](declarations/getslot--645f7c7755d0e03ab4f107f7.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [trySend'](declarations/trysend--39b7578ad2ead8a0f1ddc684.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [trySend](declarations/trysend--534fcc7a1868b7b6fac6a6bb.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [send](declarations/send--d517a4f2e2a498699cb5a6d0.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [close](declarations/close--32224dc45e17ac5110bbacdf.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [isClosed](declarations/isclosed--4df26160db49ee8217a43590.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [getSlotValue](declarations/getslotvalue--83afc3db0051cc328227964a.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [getValueByPosition](declarations/getvaluebyposition--7979718f04ff16bf3d5a96e3.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [unsubscribe](declarations/unsubscribe--1a2713d48d24e228b663d744.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [tryRecv'](declarations/tryrecv--26fba2dac56c85947f5b00c3.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [tryRecv](declarations/tryrecv--3a77ce1c8013f7bc774726a1.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [recv](declarations/recv--37c9946e1bf3d7cffccebe5e.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [forAsync](declarations/forasync--624b7550e2a3a24352d3fe65.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [recvReady'](declarations/recvready--de93c8f1842ca007ef9e5a9f.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [recvSelector](declarations/recvselector--b7de07dee6f18f6b5565dd91.md) | 415 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `structure` | [Broadcast](declarations/broadcast--e381f3287c7181908c55aeb9.md) | 474 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `structure` | [Broadcast.Receiver](declarations/broadcast-receiver--03abcae88da42d69a0c84663.md) | 484 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [new](declarations/new--f326f93016b3b3906029ae61.md) | 494 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [trySend](declarations/trysend--7258f83e2e748ac6f98d05cb.md) | 502 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [subscribe](declarations/subscribe--513735cd57dbe447b1e8ca7d.md) | 509 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [close](declarations/close--feb815f4a93a70fa73fc1b65.md) | 516 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [send](declarations/send--30c28374373815045b959c7d.md) | 524 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [tryRecv](declarations/tryrecv--e7b55ef4e6d5b56a463e0c65.md) | 537 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [recv](declarations/recv--bc7137080197c58cba393c17.md) | 545 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [recvSelector](declarations/recvselector--ab20a0a691c3977bd5713d92.md) | 554 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [unsubscribe](declarations/unsubscribe--0057cc595011f3d05595034e.md) | 561 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [forAsync](declarations/forasync--7a8d4de77ea24ea8695081f7.md) | 569 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `instance` | [(anonymous)](declarations/instance--df58da2cce9b12f4febdf116.md) | 573 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `instance` | [(anonymous)](declarations/instance--8b036d8ee824b726696fe533.md) | 577 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `instance` | [(anonymous)](declarations/instance--808bb013fa75cb997cdd3352.md) | 580 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [Sync](declarations/sync--66aa6d505a996625b6e8aa4c.md) | 593 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [Sync.Receiver](declarations/sync-receiver--740c49f21e0adcdcf113dc40.md) | 603 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [new](declarations/new--eb03393f4935d1c74312ebfe.md) | 608 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [trySend](declarations/trysend--4aa1c309b2f5cce1e37606ac.md) | 612 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [send](declarations/send--b30e2c2bb019a2b209230192.md) | 619 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [tryRecv](declarations/tryrecv--58d3b274bf44f3cf1fe38a83.md) | 625 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [recv](declarations/recv--464ac4d638b551457a00a075.md) | 630 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [forIn](declarations/forin--9a87380df205cf98b1565dd6.md) | 633 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `instance` | [(anonymous)](declarations/instance--9b866f054e6d2d5ffdf0d24a.md) | 644 | `BLOCKED_NATIVE_ADMISSION` |
