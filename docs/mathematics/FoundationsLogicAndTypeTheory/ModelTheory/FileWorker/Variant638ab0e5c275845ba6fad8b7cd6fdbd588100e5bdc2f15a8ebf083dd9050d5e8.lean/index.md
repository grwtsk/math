# GRWTSK.FoundationsLogicAndTypeTheory.ModelTheory.FileWorker.Variant638ab0e5c275845ba6fad8b7cd6fdbd588100e5bdc2f15a8ebf083dd9050d5e8

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**54 observed declarations and anonymous commands**, 0 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/FileWorker/Variant638ab0e5c275845ba6fad8b7cd6fdbd588100e5bdc2f15a8ebf083dd9050d5e8.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d3ccbe3ecb534e94337108b08e68657d0584bbed`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/FileWorker/Variant638ab0e5c275845ba6fad8b7cd6fdbd588100e5bdc2f15a8ebf083dd9050d5e8.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [RefreshInfo](declarations/refreshinfo--a3e09fbc21e64f98e53b249e.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [PartialHandlerInfo](declarations/partialhandlerinfo--34c663328c7d117e0d35b8ad.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `structure` | [OutputMessage](declarations/outputmessage--3516c78d7c1d5c96009b2439.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [OutputMessage.ofLspResponse](declarations/outputmessage-oflspresponse--c67feec84c7b137839f8276f.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [OutputMessage.ofMsg](declarations/outputmessage-ofmsg--974929008d3d776691377472.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `structure` | [WorkerContext](declarations/workercontext--593a1683e3a4e30ae3e35d84.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [WorkerContext.modifyGetPartialHandler](declarations/workercontext-modifygetpartialhandler--a2da1b59b366edeab6f47059.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [WorkerContext.modifyPartialHandler](declarations/workercontext-modifypartialhandler--7458a0913754958c65b3bf5a.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [WorkerContext.updateRequestsInFlight](declarations/workercontext-updaterequestsinflight--123060e3e0d64cf9a5bfe334.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [WorkerContext.initPendingServerRequest](declarations/workercontext-initpendingserverrequest--82464bc4ac0e53577949b0df.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [WorkerContext.resolveServerRequestResponse](declarations/workercontext-resolveserverrequestresponse--d35815e5592a894817bc4a0c.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [mkIleanInfoNotification](declarations/mkileaninfonotification--eb207c73172aa64eea227e22.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [mkIleanHeaderSetupInfoNotification](declarations/mkileanheadersetupinfonotification--c922a214c7fd22651a97c7d8.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [mkIleanInfoUpdateNotification](declarations/mkileaninfoupdatenotification--fb7dd5af8df4e84270cba249.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [mkIleanInfoFinalNotification](declarations/mkileaninfofinalnotification--6de699229715a6185c8ded86.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [mkImportClosureNotification](declarations/mkimportclosurenotification--3c64a58a65b5d86e804fc965.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `structure` | [ReportSnapshotsState](declarations/reportsnapshotsstate--92d44b1da14f0e0147dbea69.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `structure` | [MemorizedInteractiveDiagnostics](declarations/memorizedinteractivediagnostics--2e42e22c352c63876dcb66ab.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [publishDiagnostics](declarations/publishdiagnostics--db28a22379e993f6a705ae7b.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [reportSnapshots](declarations/reportsnapshots--0bde95f9862d6cafa816a92c.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `structure` | [PendingRequest](declarations/pendingrequest--40437d4b38e2edd80202a300.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `abbrev` | [PendingRequestMap](declarations/pendingrequestmap--4382f5f7536c5c20ae92ab5e.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `structure` | [AvailableImportsCache](declarations/availableimportscache--4765d887104bfbc271e68e99.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `structure` | [WorkerState](declarations/workerstate--5405fe36e33df0854ab67fd6.md) | 363 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `abbrev` | [WorkerM](declarations/workerm--242c436290bd176e7cd51fe9.md) | 373 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `builtin_initialize` | [(anonymous)](declarations/builtin-initialize--323898439821c0c9d2487fb2.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [setupImports](declarations/setupimports--af5759e708032a56f4c2de58.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [initializeWorker](declarations/initializeworker--80562a6eef08bb7f3d2b9ef1.md) | 457 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [sendServerRequest](declarations/sendserverrequest--43050685741d6d8802399d72.md) | 549 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [sendUntypedServerRequest](declarations/senduntypedserverrequest--45a67ff4f6b7e9c2e7d0df7a.md) | 562 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [updatePendingRequests](declarations/updatependingrequests--aa41b1e485a0c8d091a7a287.md) | 572 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [updateDocument](declarations/updatedocument--4c4f96da082349d30e74e64b.md) | 576 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [handleDidChange](declarations/handledidchange--cd646d8f3a8d83c453313cf0.md) | 591 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [handleCancelRequest](declarations/handlecancelrequest--a1d2e82ba2af9f2cef7f7c0f.md) | 617 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [handleStaleDependency](declarations/handlestaledependency--0ab6faa7caf5374d9ff78542.md) | 628 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [handleRpcRelease](declarations/handlerpcrelease--c00597900f2faf46ccae7863.md) | 644 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [handleRpcKeepAlive](declarations/handlerpckeepalive--921f18e485a91fdef1528cd7.md) | 659 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [handleRpcConnect](declarations/handlerpcconnect--bcc29d74ff075042b334eb30.md) | 670 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [parseParams](declarations/parseparams--35bd2481aa95955468130b36.md) | 680 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [handleNotification](declarations/handlenotification--7b17c2835fa94feec2f96240.md) | 685 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [queueRequest](declarations/queuerequest--378b44d2e1991ea9aa001edd.md) | 696 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [handleImportCompletionRequest](declarations/handleimportcompletionrequest--c56db4b843c0c91d1bba40fe.md) | 700 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [handleStatefulPreRequestSpecialCases](declarations/handlestatefulprerequestspecialcases--79a2d548f386708e23697716.md) | 725 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [handleGetInteractiveDiagnosticsRequest](declarations/handlegetinteractivediagnosticsrequest--140d09105f50c1d7475eb7dd.md) | 751 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [handlePreRequestSpecialCases?](declarations/handleprerequestspecialcases--1a249e7398e081bf1254b163.md) | 775 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [handlePostRequestSpecialCases](declarations/handlepostrequestspecialcases--04e340d82e31421cb5c3a0f1.md) | 812 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [emitRequestResponse](declarations/emitrequestresponse--d19713bcfcd31fbbbd28b2f8.md) | 855 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [handleRequest](declarations/handlerequest--cc6b64f29d9fc10af3ce31c5.md) | 891 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [handleResponse](declarations/handleresponse--066040cff8eb761abeeec9eb.md) | 924 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [handleResponseError](declarations/handleresponseerror--e7ea211a10fd0b250aee9145.md) | 928 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [mainLoop](declarations/mainloop--ed11143bbdc82e828032ba32.md) | 936 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [runRefreshTasks](declarations/runrefreshtasks--5678379c592e603390e39edd.md) | 976 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [initAndRunWorker](declarations/initandrunworker--ee6abc64cbe640b144b5532b.md) | 1047 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [workerMain](declarations/workermain--f772013fc3a766e1fc91674a.md) | 1086 | `BLOCKED_NATIVE_ADMISSION` |
