# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SurfaceBridgeMain.Variantd9a29c9ee6e78b3be78074c5d5c0b2a3f5e415763c21c7e2cf99fd4e86b1c8e5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "467f8ff28b8eab171839b498d355382099af203a",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceBridgeMain/Variantd9a29c9ee6e78b3be78074c5d5c0b2a3f5e415763c21c7e2cf99fd4e86b1c8e5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceBridgeMain/Variantd9a29c9ee6e78b3be78074c5d5c0b2a3f5e415763c21c7e2cf99fd4e86b1c8e5.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceBridgeMain/Variantd9a29c9ee6e78b3be78074c5d5c0b2a3f5e415763c21c7e2cf99fd4e86b1c8e5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `467f8ff28b8eab171839b498d355382099af203a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceBridgeMain/Variantd9a29c9ee6e78b3be78074c5d5c0b2a3f5e415763c21c7e2cf99fd4e86b1c8e5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceBridgeMain/Variantd9a29c9ee6e78b3be78074c5d5c0b2a3f5e415763c21c7e2cf99fd4e86b1c8e5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean` — import line 1; external provider; requires a separately pinned dependency.
- `Lean.Util.CollectAxioms` — import line 2; external provider; requires a separately pinned dependency.
- `Surface` — import line 3; external provider; requires a separately pinned dependency.
- `Surface.Audit` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [requestSchema](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceBridgeMain/Variantd9a29c9ee6e78b3be78074c5d5c0b2a3f5e415763c21c7e2cf99fd4e86b1c8e5.lean/declarations/requestschema--44b40c968472f19150a759be.md) | 12 | `declaration-track:44b40c968472f19150a759be12565dd0e18f1fc0222c349336efb27bcebc7056` |
| 2 | `def` | [responseSchema](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceBridgeMain/Variantd9a29c9ee6e78b3be78074c5d5c0b2a3f5e415763c21c7e2cf99fd4e86b1c8e5.lean/declarations/responseschema--970e43bd732bdc8c6b89264f.md) | 14 | `declaration-track:970e43bd732bdc8c6b89264ff8353c2ddac3e927a67acb0eb4372a254c4d9101` |
| 3 | `structure` | [BridgeRequest](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceBridgeMain/Variantd9a29c9ee6e78b3be78074c5d5c0b2a3f5e415763c21c7e2cf99fd4e86b1c8e5.lean/declarations/bridgerequest--fcac67c8a8a8469598387e07.md) | 16 | `declaration-track:fcac67c8a8a8469598387e07137feced468068c3f22fc254e7e113f56a973a53` |
| 4 | `structure` | [BridgeError](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceBridgeMain/Variantd9a29c9ee6e78b3be78074c5d5c0b2a3f5e415763c21c7e2cf99fd4e86b1c8e5.lean/declarations/bridgeerror--8889aa3605acaac5e41d7b09.md) | 24 | `declaration-track:8889aa3605acaac5e41d7b099061b6d443649a8b1bfa6ca371b69d62e9253e79` |
| 5 | `abbrev` | [BridgeM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceBridgeMain/Variantd9a29c9ee6e78b3be78074c5d5c0b2a3f5e415763c21c7e2cf99fd4e86b1c8e5.lean/declarations/bridgem--ee01d77f2b750c26d9f2a012.md) | 29 | `declaration-track:ee01d77f2b750c26d9f2a01215a7094ba1a9e152008fc115442501dd19dd501a` |
| 6 | `def` | [errorJson](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceBridgeMain/Variantd9a29c9ee6e78b3be78074c5d5c0b2a3f5e415763c21c7e2cf99fd4e86b1c8e5.lean/declarations/errorjson--ea22c9f1150c1f65baa04218.md) | 31 | `declaration-track:ea22c9f1150c1f65baa04218e8a68a859435315ecf05f9f9fc7f380c64621835` |
| 7 | `def` | [successResponse](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceBridgeMain/Variantd9a29c9ee6e78b3be78074c5d5c0b2a3f5e415763c21c7e2cf99fd4e86b1c8e5.lean/declarations/successresponse--58a45eebacef165e36d1490a.md) | 45 | `declaration-track:58a45eebacef165e36d1490a1603fd73a4230a57a43e58cf1e326f8b82f84016` |
| 8 | `def` | [failureResponse](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceBridgeMain/Variantd9a29c9ee6e78b3be78074c5d5c0b2a3f5e415763c21c7e2cf99fd4e86b1c8e5.lean/declarations/failureresponse--b342bfc2e6688b83fc1e55be.md) | 54 | `declaration-track:b342bfc2e6688b83fc1e55bef6681941db9dc7e1de97fdc4556d1df03eefaab4` |
| 9 | `def` | [requestFieldOrEmpty](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceBridgeMain/Variantd9a29c9ee6e78b3be78074c5d5c0b2a3f5e415763c21c7e2cf99fd4e86b1c8e5.lean/declarations/requestfieldorempty--36f17642990e673d3fe7cd14.md) | 66 | `declaration-track:36f17642990e673d3fe7cd14d27d754f856fdec2adae03b812329e6707f0e7f1` |
| 10 | `def` | [nameFromDottedString](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceBridgeMain/Variantd9a29c9ee6e78b3be78074c5d5c0b2a3f5e415763c21c7e2cf99fd4e86b1c8e5.lean/declarations/namefromdottedstring--020ce357ee4d54c328f02ab7.md) | 71 | `declaration-track:020ce357ee4d54c328f02ab74ec84ef530e6d9523698250aa0a908243bd391e3` |
| 11 | `def` | [declarationModule](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceBridgeMain/Variantd9a29c9ee6e78b3be78074c5d5c0b2a3f5e415763c21c7e2cf99fd4e86b1c8e5.lean/declarations/declarationmodule--d797d6f1e99cadb2f38f97ec.md) | 74 | `declaration-track:d797d6f1e99cadb2f38f97eca77c2da74dc0bdda8002b99bd77edc080951d17d` |
| 12 | `def` | [environmentFingerprint](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceBridgeMain/Variantd9a29c9ee6e78b3be78074c5d5c0b2a3f5e415763c21c7e2cf99fd4e86b1c8e5.lean/declarations/environmentfingerprint--491b0dfa2f86e4d7e4709fd5.md) | 79 | `declaration-track:491b0dfa2f86e4d7e4709fd548780455bd2e0aefece335da6d87cd1507b4bd13` |
| 13 | `def` | [inspectionReceiptHash](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceBridgeMain/Variantd9a29c9ee6e78b3be78074c5d5c0b2a3f5e415763c21c7e2cf99fd4e86b1c8e5.lean/declarations/inspectionreceipthash--db7896398f4645b5a2609b0c.md) | 83 | `declaration-track:db7896398f4645b5a2609b0cb6d5cab4ebe19fc83f4f3f4de1c25903f4ad166c` |
| 14 | `def` | [constantKind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceBridgeMain/Variantd9a29c9ee6e78b3be78074c5d5c0b2a3f5e415763c21c7e2cf99fd4e86b1c8e5.lean/declarations/constantkind--035d885f439894e1d5e5d976.md) | 96 | `declaration-track:035d885f439894e1d5e5d976f6ed0cb9dde2453ac707be77082c4ff3bace36c9` |
| 15 | `def` | [positionJson](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceBridgeMain/Variantd9a29c9ee6e78b3be78074c5d5c0b2a3f5e415763c21c7e2cf99fd4e86b1c8e5.lean/declarations/positionjson--58201034a334f4313d29aba3.md) | 106 | `declaration-track:58201034a334f4313d29aba31e5b70da3462de00ae36875fc461c84dadc8a08e` |
| 16 | `def` | [declarationRangesJson](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceBridgeMain/Variantd9a29c9ee6e78b3be78074c5d5c0b2a3f5e415763c21c7e2cf99fd4e86b1c8e5.lean/declarations/declarationrangesjson--6ab23c0dfe228b00cd172523.md) | 112 | `declaration-track:6ab23c0dfe228b00cd1725235d4256419d085e07dcce450ae0f012efa12a993f` |
| 17 | `def` | [binderInfoName](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceBridgeMain/Variantd9a29c9ee6e78b3be78074c5d5c0b2a3f5e415763c21c7e2cf99fd4e86b1c8e5.lean/declarations/binderinfoname--e7b4297b3f6ec35e7b79edd0.md) | 122 | `declaration-track:e7b4297b3f6ec35e7b79edd013dd7666741eebfeec9a0365250902a1470b0fa9` |
| 18 | `def` | [exprJson](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceBridgeMain/Variantd9a29c9ee6e78b3be78074c5d5c0b2a3f5e415763c21c7e2cf99fd4e86b1c8e5.lean/declarations/exprjson--56acbd46da89cca778960bcb.md) | 128 | `declaration-track:56acbd46da89cca778960bcb69a46f36021bfea73132583e8ba783bc45fa6986` |
| 19 | `def` | [requireDeclaration](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceBridgeMain/Variantd9a29c9ee6e78b3be78074c5d5c0b2a3f5e415763c21c7e2cf99fd4e86b1c8e5.lean/declarations/requiredeclaration--bfe50e915af4d8154cb18b38.md) | 195 | `declaration-track:bfe50e915af4d8154cb18b38b496c0fda4bb1c8ce17dccbdec539de5e660f80f` |
| 20 | `def` | [inspectCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceBridgeMain/Variantd9a29c9ee6e78b3be78074c5d5c0b2a3f5e415763c21c7e2cf99fd4e86b1c8e5.lean/declarations/inspectcore--eb68b60ef9f07bbc9ae74034.md) | 216 | `declaration-track:eb68b60ef9f07bbc9ae74034e7a1a8bfbedac2505f9dc5a30d1fe61514876b4a` |
| 21 | `def` | [inspectDeclaration](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceBridgeMain/Variantd9a29c9ee6e78b3be78074c5d5c0b2a3f5e415763c21c7e2cf99fd4e86b1c8e5.lean/declarations/inspectdeclaration--ed573ffdde27faac73c4e3ed.md) | 230 | `declaration-track:ed573ffdde27faac73c4e3ed17384b08f7e6c0462b26f5aa1584a177d29a0447` |
| 22 | `def` | [getProjectedAst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceBridgeMain/Variantd9a29c9ee6e78b3be78074c5d5c0b2a3f5e415763c21c7e2cf99fd4e86b1c8e5.lean/declarations/getprojectedast--bba4b8d6b9c723db7b5e9f8f.md) | 248 | `declaration-track:bba4b8d6b9c723db7b5e9f8f7c930a5ac4ab171f5307d35ca572d5d94209af86` |
| 23 | `def` | [getGoalState](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceBridgeMain/Variantd9a29c9ee6e78b3be78074c5d5c0b2a3f5e415763c21c7e2cf99fd4e86b1c8e5.lean/declarations/getgoalstate--889ce893422e223e853a934e.md) | 263 | `declaration-track:889ce893422e223e853a934ed5c2c9fb3a731fc29aced0249a4a93c9df845591` |
| 24 | `def` | [getProjectState](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceBridgeMain/Variantd9a29c9ee6e78b3be78074c5d5c0b2a3f5e415763c21c7e2cf99fd4e86b1c8e5.lean/declarations/getprojectstate--3ef2089f95b1b7a6f97341e0.md) | 282 | `declaration-track:3ef2089f95b1b7a6f97341e0ec178756b4a1b48da3bad01aa3639806448c7f4e` |
| 25 | `def` | [getDiagnostics](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceBridgeMain/Variantd9a29c9ee6e78b3be78074c5d5c0b2a3f5e415763c21c7e2cf99fd4e86b1c8e5.lean/declarations/getdiagnostics--01e2abdccb32de02110b0ba7.md) | 293 | `declaration-track:01e2abdccb32de02110b0ba7d6a6ba2b9df1b1e5d68c17953e26ca995d930ec5` |
| 26 | `def` | [dispatch](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceBridgeMain/Variantd9a29c9ee6e78b3be78074c5d5c0b2a3f5e415763c21c7e2cf99fd4e86b1c8e5.lean/declarations/dispatch--14d5ee904e7ad89a27448539.md) | 303 | `declaration-track:14d5ee904e7ad89a2744853929156ab647918fdcb12823d3a55aecc8d71ecd24` |
| 27 | `def` | [processLine](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceBridgeMain/Variantd9a29c9ee6e78b3be78074c5d5c0b2a3f5e415763c21c7e2cf99fd4e86b1c8e5.lean/declarations/processline--c416315c87a9449b093d4286.md) | 333 | `declaration-track:c416315c87a9449b093d42863617395aad9b28e7bd1a6047dff979e7b2dd270f` |
| 28 | `def` | [serve](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceBridgeMain/Variantd9a29c9ee6e78b3be78074c5d5c0b2a3f5e415763c21c7e2cf99fd4e86b1c8e5.lean/declarations/serve--f9bd9a4d53c3bc38c06e8045.md) | 370 | `declaration-track:f9bd9a4d53c3bc38c06e8045810967f490549a784f6ceb6ca02a79c7c6c698e7` |
| 29 | `def` | [main](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceBridgeMain/Variantd9a29c9ee6e78b3be78074c5d5c0b2a3f5e415763c21c7e2cf99fd4e86b1c8e5.lean/declarations/main--57c13135d60ca95366a0493e.md) | 380 | `declaration-track:57c13135d60ca95366a0493ea169a9fa22d56dffddc5c148d575f9aa6c620734` |
| 30 | `def` | [main](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceBridgeMain/Variantd9a29c9ee6e78b3be78074c5d5c0b2a3f5e415763c21c7e2cf99fd4e86b1c8e5.lean/declarations/main--43c35763cbb8b9f5615c5769.md) | 387 | `declaration-track:43c35763cbb8b9f5615c576923adddddc9d5c3059f8257283e3b2c55a160e190` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
