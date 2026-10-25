# GRWTSK.FoundationsLogicAndTypeTheory.ModelTheory.FileWorker.Variantc938b3b122afda96dd4f2a73a39425e60d71845780b6f6d2d3a8a554b2ea3623

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**54 observed declarations and anonymous commands**, 0 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/FileWorker/Variantc938b3b122afda96dd4f2a73a39425e60d71845780b6f6d2d3a8a554b2ea3623.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cf8058ac800a67394e26aa4752539ddd979877c1`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/FileWorker/Variantc938b3b122afda96dd4f2a73a39425e60d71845780b6f6d2d3a8a554b2ea3623.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [RefreshInfo](declarations/refreshinfo--9e43295814a80830279d2a4c.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [PartialHandlerInfo](declarations/partialhandlerinfo--bc86847622a3c7a1a54d0049.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `structure` | [OutputMessage](declarations/outputmessage--2f1578d0c00162c641952c1e.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [OutputMessage.ofLspResponse](declarations/outputmessage-oflspresponse--0b3f5a1f280f7d1ca2f0e7f9.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [OutputMessage.ofMsg](declarations/outputmessage-ofmsg--accef8178feb539a609eacb4.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `structure` | [WorkerContext](declarations/workercontext--44f01c42e07cf6babc79ce75.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [WorkerContext.modifyGetPartialHandler](declarations/workercontext-modifygetpartialhandler--563b7e11df3146fe27052b00.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [WorkerContext.modifyPartialHandler](declarations/workercontext-modifypartialhandler--905dc48f3f0ba658037e85db.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [WorkerContext.updateRequestsInFlight](declarations/workercontext-updaterequestsinflight--938d5aae365845c12bf29ef3.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [WorkerContext.initPendingServerRequest](declarations/workercontext-initpendingserverrequest--0cabf23382a2f0603beeb852.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [WorkerContext.resolveServerRequestResponse](declarations/workercontext-resolveserverrequestresponse--69a95538e2a18ad5289eb182.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [mkIleanInfoNotification](declarations/mkileaninfonotification--83dfbb581c765fd1826c3e79.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [mkIleanHeaderSetupInfoNotification](declarations/mkileanheadersetupinfonotification--e41d0b587af4126dba35d804.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [mkIleanInfoUpdateNotification](declarations/mkileaninfoupdatenotification--7c9ab959f08db50b5d0a836f.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [mkIleanInfoFinalNotification](declarations/mkileaninfofinalnotification--e64a79aa44e496e78016548b.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [mkImportClosureNotification](declarations/mkimportclosurenotification--b6489e82ead535380159ff40.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `structure` | [ReportSnapshotsState](declarations/reportsnapshotsstate--c28e582219f5e1a020f57ae0.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `structure` | [MemorizedInteractiveDiagnostics](declarations/memorizedinteractivediagnostics--8cd8b6c881897d7d871c6aa5.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [publishDiagnostics](declarations/publishdiagnostics--b676024177185a76ff75628a.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [reportSnapshots](declarations/reportsnapshots--1eae8de6d5c35881789ecc07.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `structure` | [PendingRequest](declarations/pendingrequest--ef364a7b374f9183678f8fc6.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `abbrev` | [PendingRequestMap](declarations/pendingrequestmap--e70b1f71026824c23490f314.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `structure` | [AvailableImportsCache](declarations/availableimportscache--0c4da8f2615c61f055ff3c7e.md) | 351 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `structure` | [WorkerState](declarations/workerstate--9bae9df3be64bb8d353cddbc.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `abbrev` | [WorkerM](declarations/workerm--1efa65006c71c9c759087680.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `builtin_initialize` | [(anonymous)](declarations/builtin-initialize--50aa0faa98f3253271a9b317.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [setupImports](declarations/setupimports--9e3b64091d70956195cd3c72.md) | 375 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [initializeWorker](declarations/initializeworker--50604e91d794a23f94c11ae3.md) | 449 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [sendServerRequest](declarations/sendserverrequest--b4c4f01ef4ef4cc885c738a4.md) | 541 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [sendUntypedServerRequest](declarations/senduntypedserverrequest--56ff587de2e702fb432f5846.md) | 554 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [updatePendingRequests](declarations/updatependingrequests--e70bbd5da4f90922845a0f9e.md) | 564 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [updateDocument](declarations/updatedocument--7814a7049a644aae6b3ca5fd.md) | 568 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [handleDidChange](declarations/handledidchange--185377eb694bedac5ed1b3d9.md) | 583 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [handleCancelRequest](declarations/handlecancelrequest--215ce7670b79b7c33ccf3a29.md) | 609 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [handleStaleDependency](declarations/handlestaledependency--5953a1d3f77508f4dabb8d3d.md) | 620 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [handleRpcRelease](declarations/handlerpcrelease--267719264fe1360681ed5989.md) | 636 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [handleRpcKeepAlive](declarations/handlerpckeepalive--0bfb00bb8b844110f186cc55.md) | 651 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [handleRpcConnect](declarations/handlerpcconnect--4bcc19a788a63d31e7013862.md) | 662 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [parseParams](declarations/parseparams--174da631a7cc783eef47db7d.md) | 672 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [handleNotification](declarations/handlenotification--9d995dd095d0f991576f7064.md) | 677 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [queueRequest](declarations/queuerequest--fe1e44a1dc46cd13639d76b3.md) | 688 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [handleImportCompletionRequest](declarations/handleimportcompletionrequest--c4dc3f24f123bb98785e3f11.md) | 692 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [handleStatefulPreRequestSpecialCases](declarations/handlestatefulprerequestspecialcases--1bf01e4c7c5168ff6b41f4f2.md) | 717 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [handleGetInteractiveDiagnosticsRequest](declarations/handlegetinteractivediagnosticsrequest--790da3dcf19986915148c412.md) | 743 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [handlePreRequestSpecialCases?](declarations/handleprerequestspecialcases--47dbf765990699b53bf23956.md) | 767 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [handlePostRequestSpecialCases](declarations/handlepostrequestspecialcases--474faa7b51949806975f04f9.md) | 804 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [emitRequestResponse](declarations/emitrequestresponse--ca2ee0375baeec002e763177.md) | 847 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [handleRequest](declarations/handlerequest--18f6c725c9a15c391b2f0007.md) | 883 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [handleResponse](declarations/handleresponse--3e3786b05dc1f19db533b52e.md) | 916 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [handleResponseError](declarations/handleresponseerror--2d2850cb38f4f573b1ca4f69.md) | 920 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [mainLoop](declarations/mainloop--1700a822e45b8d2837ad5ad2.md) | 928 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [runRefreshTasks](declarations/runrefreshtasks--4b29a74952a8691f6d6a80f3.md) | 968 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [initAndRunWorker](declarations/initandrunworker--4d6df51d5a9877e1bc2c85cc.md) | 1039 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [workerMain](declarations/workermain--0c8bf46345a96630a66a6fd4.md) | 1078 | `BLOCKED_NATIVE_ADMISSION` |
