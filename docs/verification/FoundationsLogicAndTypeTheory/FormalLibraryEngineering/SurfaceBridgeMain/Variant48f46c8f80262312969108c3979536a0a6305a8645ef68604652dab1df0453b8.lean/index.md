# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SurfaceBridgeMain.Variant48f46c8f80262312969108c3979536a0a6305a8645ef68604652dab1df0453b8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eccac469d4999b22149ae7ab846af35fc7c53b93",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceBridgeMain/Variant48f46c8f80262312969108c3979536a0a6305a8645ef68604652dab1df0453b8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceBridgeMain/Variant48f46c8f80262312969108c3979536a0a6305a8645ef68604652dab1df0453b8.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceBridgeMain/Variant48f46c8f80262312969108c3979536a0a6305a8645ef68604652dab1df0453b8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eccac469d4999b22149ae7ab846af35fc7c53b93`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceBridgeMain/Variant48f46c8f80262312969108c3979536a0a6305a8645ef68604652dab1df0453b8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceBridgeMain/Variant48f46c8f80262312969108c3979536a0a6305a8645ef68604652dab1df0453b8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean` — import line 1; external provider; requires a separately pinned dependency.
- `Lean.Util.CollectAxioms` — import line 2; external provider; requires a separately pinned dependency.
- `Surface` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [requestSchema](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceBridgeMain/Variant48f46c8f80262312969108c3979536a0a6305a8645ef68604652dab1df0453b8.lean/declarations/requestschema--eed644f5befc6703b1c28ba3.md) | 11 | `declaration-track:eed644f5befc6703b1c28ba306d61271c66f30c96f161b78b45c35d63a6ccecf` |
| 2 | `def` | [responseSchema](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceBridgeMain/Variant48f46c8f80262312969108c3979536a0a6305a8645ef68604652dab1df0453b8.lean/declarations/responseschema--9faa88474993eb3eb8c069bf.md) | 13 | `declaration-track:9faa88474993eb3eb8c069bf4f5213fdaaae0a9f3cac464d982e47214b2d8021` |
| 3 | `structure` | [BridgeRequest](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceBridgeMain/Variant48f46c8f80262312969108c3979536a0a6305a8645ef68604652dab1df0453b8.lean/declarations/bridgerequest--2bf17a11ed63118c9ce591e2.md) | 15 | `declaration-track:2bf17a11ed63118c9ce591e2cfe073ef125febba675144ba5466d1953ccecbc6` |
| 4 | `structure` | [BridgeError](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceBridgeMain/Variant48f46c8f80262312969108c3979536a0a6305a8645ef68604652dab1df0453b8.lean/declarations/bridgeerror--977a79ec10ca84d689160bde.md) | 23 | `declaration-track:977a79ec10ca84d689160bdeb411f5608717add9d12f3435ec72d6980685edb7` |
| 5 | `abbrev` | [BridgeM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceBridgeMain/Variant48f46c8f80262312969108c3979536a0a6305a8645ef68604652dab1df0453b8.lean/declarations/bridgem--b297e6fd996b7e355a832b6c.md) | 28 | `declaration-track:b297e6fd996b7e355a832b6c5437cdb4095abd2904361de77ff4da672f664d2d` |
| 6 | `def` | [errorJson](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceBridgeMain/Variant48f46c8f80262312969108c3979536a0a6305a8645ef68604652dab1df0453b8.lean/declarations/errorjson--3df3a2a0184cca23785023fa.md) | 30 | `declaration-track:3df3a2a0184cca23785023fa7457feee942111c3ec4ef839ddb289590d0e5c8e` |
| 7 | `def` | [successResponse](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceBridgeMain/Variant48f46c8f80262312969108c3979536a0a6305a8645ef68604652dab1df0453b8.lean/declarations/successresponse--63ce94bab4bb6e62c3e529a1.md) | 44 | `declaration-track:63ce94bab4bb6e62c3e529a19529ab37bcd7509ae3ee038d2729a1eaccc5f2ab` |
| 8 | `def` | [failureResponse](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceBridgeMain/Variant48f46c8f80262312969108c3979536a0a6305a8645ef68604652dab1df0453b8.lean/declarations/failureresponse--0c3194a7932f7851b2d6fd68.md) | 53 | `declaration-track:0c3194a7932f7851b2d6fd68ec13b91488a39355a7962f66bb39233488fb3e94` |
| 9 | `def` | [requestFieldOrEmpty](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceBridgeMain/Variant48f46c8f80262312969108c3979536a0a6305a8645ef68604652dab1df0453b8.lean/declarations/requestfieldorempty--4757fa5b3c642b29a7f73a50.md) | 65 | `declaration-track:4757fa5b3c642b29a7f73a50148472b2a582da2c50618cc1e29a746c327b4c17` |
| 10 | `def` | [nameFromDottedString](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceBridgeMain/Variant48f46c8f80262312969108c3979536a0a6305a8645ef68604652dab1df0453b8.lean/declarations/namefromdottedstring--06a8f958b1cdc14574239396.md) | 70 | `declaration-track:06a8f958b1cdc145742393966d7209e0ab96d844ef279f7973a0c6c507f02dc4` |
| 11 | `def` | [declarationModule](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceBridgeMain/Variant48f46c8f80262312969108c3979536a0a6305a8645ef68604652dab1df0453b8.lean/declarations/declarationmodule--ffb669ac7cca3b494020fb4c.md) | 73 | `declaration-track:ffb669ac7cca3b494020fb4ce4d804803fb9c26309afb3657a6e9b598f36ed1d` |
| 12 | `def` | [environmentFingerprint](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceBridgeMain/Variant48f46c8f80262312969108c3979536a0a6305a8645ef68604652dab1df0453b8.lean/declarations/environmentfingerprint--f165e9d6781f1a22a8f14438.md) | 78 | `declaration-track:f165e9d6781f1a22a8f14438b19716ba32bbf6773893497a7a06302430b54fe8` |
| 13 | `def` | [inspectionReceiptHash](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceBridgeMain/Variant48f46c8f80262312969108c3979536a0a6305a8645ef68604652dab1df0453b8.lean/declarations/inspectionreceipthash--6b540d295cc5be09b3d63dd3.md) | 82 | `declaration-track:6b540d295cc5be09b3d63dd3fb265e7306a7f7f88951cfb8063935af3560af36` |
| 14 | `def` | [constantKind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceBridgeMain/Variant48f46c8f80262312969108c3979536a0a6305a8645ef68604652dab1df0453b8.lean/declarations/constantkind--fc74b9351e8bbaf66009ddc6.md) | 95 | `declaration-track:fc74b9351e8bbaf66009ddc605e7e1399bfb5620fe2f8a745f08c2a195dd8b68` |
| 15 | `def` | [positionJson](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceBridgeMain/Variant48f46c8f80262312969108c3979536a0a6305a8645ef68604652dab1df0453b8.lean/declarations/positionjson--273d4315e80b0f3b5616c141.md) | 105 | `declaration-track:273d4315e80b0f3b5616c1419093b61f928b9621526306a0084cfdf104b83f1a` |
| 16 | `def` | [declarationRangesJson](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceBridgeMain/Variant48f46c8f80262312969108c3979536a0a6305a8645ef68604652dab1df0453b8.lean/declarations/declarationrangesjson--c861765cab69e8dcb71b1bde.md) | 111 | `declaration-track:c861765cab69e8dcb71b1bde1954505bdf2aaedf0d31de27355fc7d518c7a25e` |
| 17 | `def` | [binderInfoName](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceBridgeMain/Variant48f46c8f80262312969108c3979536a0a6305a8645ef68604652dab1df0453b8.lean/declarations/binderinfoname--f7bfa872e0ab10c6c99239d1.md) | 121 | `declaration-track:f7bfa872e0ab10c6c99239d1342263cb8d787f5b392d6fdf93b4b27d2c3f89f3` |
| 18 | `def` | [exprJson](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceBridgeMain/Variant48f46c8f80262312969108c3979536a0a6305a8645ef68604652dab1df0453b8.lean/declarations/exprjson--c33c109246382ab8ab31dffd.md) | 127 | `declaration-track:c33c109246382ab8ab31dffda95ed4de193bda02a4077b5df6f95be3c7cd0e00` |
| 19 | `def` | [requireDeclaration](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceBridgeMain/Variant48f46c8f80262312969108c3979536a0a6305a8645ef68604652dab1df0453b8.lean/declarations/requiredeclaration--387e79a4eec3e50d988df14c.md) | 194 | `declaration-track:387e79a4eec3e50d988df14c86cc9246c9c464475ac7a4594b7ae9dff20180aa` |
| 20 | `def` | [inspectCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceBridgeMain/Variant48f46c8f80262312969108c3979536a0a6305a8645ef68604652dab1df0453b8.lean/declarations/inspectcore--7ff97137440474048bb13a9a.md) | 215 | `declaration-track:7ff97137440474048bb13a9ad1621a567375ab3dc19aacf07ba145675d448483` |
| 21 | `def` | [inspectDeclaration](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceBridgeMain/Variant48f46c8f80262312969108c3979536a0a6305a8645ef68604652dab1df0453b8.lean/declarations/inspectdeclaration--e3bcd9f8a67a6bf042b316d7.md) | 229 | `declaration-track:e3bcd9f8a67a6bf042b316d76a1ea677172436ebd16530cd8057fb4696a9fbc1` |
| 22 | `def` | [getProjectedAst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceBridgeMain/Variant48f46c8f80262312969108c3979536a0a6305a8645ef68604652dab1df0453b8.lean/declarations/getprojectedast--e44f14c5fbe30c8dbc995535.md) | 247 | `declaration-track:e44f14c5fbe30c8dbc9955354152dec7ee5acdfa3e6e2d2a82c6729a2ff6b277` |
| 23 | `def` | [getGoalState](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceBridgeMain/Variant48f46c8f80262312969108c3979536a0a6305a8645ef68604652dab1df0453b8.lean/declarations/getgoalstate--a8a2ee3d92b2cced0b3c6a41.md) | 262 | `declaration-track:a8a2ee3d92b2cced0b3c6a41ecb1a2554b78f5a75b02017920eaf58bbb39e057` |
| 24 | `def` | [getProjectState](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceBridgeMain/Variant48f46c8f80262312969108c3979536a0a6305a8645ef68604652dab1df0453b8.lean/declarations/getprojectstate--f330c794899bf5ea8bd6dc06.md) | 281 | `declaration-track:f330c794899bf5ea8bd6dc065323d435f332b996e7478d64c522efb31881395c` |
| 25 | `def` | [getDiagnostics](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceBridgeMain/Variant48f46c8f80262312969108c3979536a0a6305a8645ef68604652dab1df0453b8.lean/declarations/getdiagnostics--b1e785ef0091c9263faf5c98.md) | 292 | `declaration-track:b1e785ef0091c9263faf5c985446f3c8fd39c1d596df6363bb0abea166ba12a4` |
| 26 | `def` | [dispatch](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceBridgeMain/Variant48f46c8f80262312969108c3979536a0a6305a8645ef68604652dab1df0453b8.lean/declarations/dispatch--190ffda45cd3ea70e6720254.md) | 302 | `declaration-track:190ffda45cd3ea70e672025402422cfa513cae801a03798b9b8c332930964270` |
| 27 | `def` | [processLine](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceBridgeMain/Variant48f46c8f80262312969108c3979536a0a6305a8645ef68604652dab1df0453b8.lean/declarations/processline--e5c6df021b465eebcbecb4c8.md) | 332 | `declaration-track:e5c6df021b465eebcbecb4c843985d1b5d91fa3f7b1aaeb83633bb3eead704cd` |
| 28 | `def` | [serve](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceBridgeMain/Variant48f46c8f80262312969108c3979536a0a6305a8645ef68604652dab1df0453b8.lean/declarations/serve--67b6b006a50bbf3d8b822120.md) | 369 | `declaration-track:67b6b006a50bbf3d8b822120f66193968502bfffc6f57377c5b0eb3f27897d5f` |
| 29 | `def` | [main](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceBridgeMain/Variant48f46c8f80262312969108c3979536a0a6305a8645ef68604652dab1df0453b8.lean/declarations/main--31416bbb787bf77ac4073e0a.md) | 379 | `declaration-track:31416bbb787bf77ac4073e0a24ebcd68f78d3259421fee9952ec6870414e8a44` |
| 30 | `def` | [main](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceBridgeMain/Variant48f46c8f80262312969108c3979536a0a6305a8645ef68604652dab1df0453b8.lean/declarations/main--29df626751107d7bb15f9274.md) | 386 | `declaration-track:29df626751107d7bb15f92744a86afb24b493baca89492c7b9911f2383cb12e3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
