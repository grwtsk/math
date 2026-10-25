# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SurfaceBridgeMain.Variant2e7b445cd4f69ab7398282c3bf2e45230c20fd01a6fa74d2834304804147f510

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9dc2bda39121f0d390c23def9b62c9b3a1af91a3",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceBridgeMain/Variant2e7b445cd4f69ab7398282c3bf2e45230c20fd01a6fa74d2834304804147f510.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceBridgeMain/Variant2e7b445cd4f69ab7398282c3bf2e45230c20fd01a6fa74d2834304804147f510.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceBridgeMain/Variant2e7b445cd4f69ab7398282c3bf2e45230c20fd01a6fa74d2834304804147f510.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9dc2bda39121f0d390c23def9b62c9b3a1af91a3`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceBridgeMain/Variant2e7b445cd4f69ab7398282c3bf2e45230c20fd01a6fa74d2834304804147f510.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceBridgeMain/Variant2e7b445cd4f69ab7398282c3bf2e45230c20fd01a6fa74d2834304804147f510.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean` — import line 6; external provider; requires a separately pinned dependency.
- `Lean.Util.CollectAxioms` — import line 7; external provider; requires a separately pinned dependency.
- `Surface` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [requestSchema](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceBridgeMain/Variant2e7b445cd4f69ab7398282c3bf2e45230c20fd01a6fa74d2834304804147f510.lean/declarations/requestschema--22d54cbac6ed757d5ef44595.md) | 19 | `declaration-track:22d54cbac6ed757d5ef44595364e43ca6f1b6151aa1613cea72ba98de9fe0c40` |
| 2 | `def` | [responseSchema](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceBridgeMain/Variant2e7b445cd4f69ab7398282c3bf2e45230c20fd01a6fa74d2834304804147f510.lean/declarations/responseschema--52db92bb4d23239a538c147d.md) | 21 | `declaration-track:52db92bb4d23239a538c147d79a8fb375a9cf68dde24488b7f503c19206c3258` |
| 3 | `structure` | [BridgeRequest](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceBridgeMain/Variant2e7b445cd4f69ab7398282c3bf2e45230c20fd01a6fa74d2834304804147f510.lean/declarations/bridgerequest--60893d0c8d47a52fe923d975.md) | 23 | `declaration-track:60893d0c8d47a52fe923d975cc0f0dbd4fabf90a774e223efe4d963a878d2b16` |
| 4 | `structure` | [BridgeError](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceBridgeMain/Variant2e7b445cd4f69ab7398282c3bf2e45230c20fd01a6fa74d2834304804147f510.lean/declarations/bridgeerror--61430914540a8ddf375004eb.md) | 31 | `declaration-track:61430914540a8ddf375004ebe5e5eb18979a24e27b8d16b3a2352d744bf9e5ed` |
| 5 | `abbrev` | [BridgeM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceBridgeMain/Variant2e7b445cd4f69ab7398282c3bf2e45230c20fd01a6fa74d2834304804147f510.lean/declarations/bridgem--946e1f14f8ca0506daa86e5e.md) | 36 | `declaration-track:946e1f14f8ca0506daa86e5ec7d3cfddf13ac67fb3125e870babd678a939e4c5` |
| 6 | `def` | [errorJson](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceBridgeMain/Variant2e7b445cd4f69ab7398282c3bf2e45230c20fd01a6fa74d2834304804147f510.lean/declarations/errorjson--48c60d02856d47749af3853b.md) | 38 | `declaration-track:48c60d02856d47749af3853b75029caadb1bbe33b8432141ec8873fb68cfeb6d` |
| 7 | `def` | [successResponse](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceBridgeMain/Variant2e7b445cd4f69ab7398282c3bf2e45230c20fd01a6fa74d2834304804147f510.lean/declarations/successresponse--e12cf1365fd2b2dd9790739c.md) | 52 | `declaration-track:e12cf1365fd2b2dd9790739c0d04a4c34429e5c94e93199fe379c01227e4ea5b` |
| 8 | `def` | [failureResponse](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceBridgeMain/Variant2e7b445cd4f69ab7398282c3bf2e45230c20fd01a6fa74d2834304804147f510.lean/declarations/failureresponse--b7bfd447870ea8aedb742cae.md) | 61 | `declaration-track:b7bfd447870ea8aedb742cae42ab727efdd0268ff4c9d9d4b759a22b8129aa5a` |
| 9 | `def` | [requestFieldOrEmpty](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceBridgeMain/Variant2e7b445cd4f69ab7398282c3bf2e45230c20fd01a6fa74d2834304804147f510.lean/declarations/requestfieldorempty--f330e51faa8c31b38a87f8c8.md) | 73 | `declaration-track:f330e51faa8c31b38a87f8c893f5e742bf3aef45effeb46b25629807239de0ea` |
| 10 | `def` | [nameFromDottedString](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceBridgeMain/Variant2e7b445cd4f69ab7398282c3bf2e45230c20fd01a6fa74d2834304804147f510.lean/declarations/namefromdottedstring--a1e1cbc989173b9c07e35b02.md) | 78 | `declaration-track:a1e1cbc989173b9c07e35b0267aa87c39115ca479c7edc00c2895ae6efb8e1fa` |
| 11 | `def` | [declarationModule](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceBridgeMain/Variant2e7b445cd4f69ab7398282c3bf2e45230c20fd01a6fa74d2834304804147f510.lean/declarations/declarationmodule--5392444f1adc1175adb37478.md) | 81 | `declaration-track:5392444f1adc1175adb374789e37b6f99097df19301693411d24314e62778798` |
| 12 | `def` | [environmentFingerprint](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceBridgeMain/Variant2e7b445cd4f69ab7398282c3bf2e45230c20fd01a6fa74d2834304804147f510.lean/declarations/environmentfingerprint--489fd9884a40bf42cbcba850.md) | 86 | `declaration-track:489fd9884a40bf42cbcba850b6c9a7bd25cdc0dc7b4cb6175167094e78a3e98f` |
| 13 | `def` | [inspectionReceiptHash](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceBridgeMain/Variant2e7b445cd4f69ab7398282c3bf2e45230c20fd01a6fa74d2834304804147f510.lean/declarations/inspectionreceipthash--57da9a18075ea47d94c1b022.md) | 90 | `declaration-track:57da9a18075ea47d94c1b022ce34dbdda83cd2532216bc2d3c18a4cc2764a3fa` |
| 14 | `def` | [constantKind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceBridgeMain/Variant2e7b445cd4f69ab7398282c3bf2e45230c20fd01a6fa74d2834304804147f510.lean/declarations/constantkind--bdbc4287584ce41a0a818448.md) | 103 | `declaration-track:bdbc4287584ce41a0a8184486b6dca9f57d92f08bd61b9e042a4fd7a7bb816bb` |
| 15 | `def` | [positionJson](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceBridgeMain/Variant2e7b445cd4f69ab7398282c3bf2e45230c20fd01a6fa74d2834304804147f510.lean/declarations/positionjson--730c2073afbaf8df75cab009.md) | 113 | `declaration-track:730c2073afbaf8df75cab009f97c9138e61885b97e0250df013a23333bb48ff2` |
| 16 | `def` | [declarationRangesJson](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceBridgeMain/Variant2e7b445cd4f69ab7398282c3bf2e45230c20fd01a6fa74d2834304804147f510.lean/declarations/declarationrangesjson--f065468d00a8cc53e0cb3328.md) | 119 | `declaration-track:f065468d00a8cc53e0cb3328c6211c10a4c439afeaa3a55bff95d7e2f8a0dca6` |
| 17 | `def` | [binderInfoName](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceBridgeMain/Variant2e7b445cd4f69ab7398282c3bf2e45230c20fd01a6fa74d2834304804147f510.lean/declarations/binderinfoname--45b468a4008d05a2abc93936.md) | 129 | `declaration-track:45b468a4008d05a2abc93936efe82cc2a169a81001140b1adc5077ba83a6e481` |
| 18 | `def` | [exprJson](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceBridgeMain/Variant2e7b445cd4f69ab7398282c3bf2e45230c20fd01a6fa74d2834304804147f510.lean/declarations/exprjson--8ddcdca841ad68a0a7d2c913.md) | 135 | `declaration-track:8ddcdca841ad68a0a7d2c913c9b99079e75192d11a5e43549a3c60f653cdc302` |
| 19 | `def` | [requireDeclaration](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceBridgeMain/Variant2e7b445cd4f69ab7398282c3bf2e45230c20fd01a6fa74d2834304804147f510.lean/declarations/requiredeclaration--c4c68e08a6eba8b6c668b4f6.md) | 202 | `declaration-track:c4c68e08a6eba8b6c668b4f6bdf00a134c1d4183357fe5986fb6c37cf6e445c6` |
| 20 | `def` | [inspectCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceBridgeMain/Variant2e7b445cd4f69ab7398282c3bf2e45230c20fd01a6fa74d2834304804147f510.lean/declarations/inspectcore--86eac9ef14de8fed32a4a041.md) | 223 | `declaration-track:86eac9ef14de8fed32a4a041e979c86020779a1eb9417fbc9b934b784e1db31c` |
| 21 | `def` | [inspectDeclaration](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceBridgeMain/Variant2e7b445cd4f69ab7398282c3bf2e45230c20fd01a6fa74d2834304804147f510.lean/declarations/inspectdeclaration--248150fc02112a330dc651a4.md) | 237 | `declaration-track:248150fc02112a330dc651a416ca7cb7d17bb7a36cbe3d2d95ca796c485cb4c6` |
| 22 | `def` | [getProjectedAst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceBridgeMain/Variant2e7b445cd4f69ab7398282c3bf2e45230c20fd01a6fa74d2834304804147f510.lean/declarations/getprojectedast--63c1b518d854e6cbb6a84faa.md) | 255 | `declaration-track:63c1b518d854e6cbb6a84faa8d37289e85790032c5dda1bd7d8e62ac7ec7fbeb` |
| 23 | `def` | [getGoalState](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceBridgeMain/Variant2e7b445cd4f69ab7398282c3bf2e45230c20fd01a6fa74d2834304804147f510.lean/declarations/getgoalstate--efb2a875714f806d5f8c0418.md) | 270 | `declaration-track:efb2a875714f806d5f8c04182f80b34720e65ae7dec1eebff1a7722020e8b771` |
| 24 | `def` | [getProjectState](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceBridgeMain/Variant2e7b445cd4f69ab7398282c3bf2e45230c20fd01a6fa74d2834304804147f510.lean/declarations/getprojectstate--accb3cdc8a7f5a28014822b4.md) | 289 | `declaration-track:accb3cdc8a7f5a28014822b497b04e0e2558b5e7e7d8e2887db844327d4cf0e2` |
| 25 | `def` | [getDiagnostics](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceBridgeMain/Variant2e7b445cd4f69ab7398282c3bf2e45230c20fd01a6fa74d2834304804147f510.lean/declarations/getdiagnostics--4b1941c4eeac169744585217.md) | 300 | `declaration-track:4b1941c4eeac1697445852172aafd435944c46a04d4b385708977a391c9da793` |
| 26 | `def` | [dispatch](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceBridgeMain/Variant2e7b445cd4f69ab7398282c3bf2e45230c20fd01a6fa74d2834304804147f510.lean/declarations/dispatch--009a0bf71efcaa9195adeac8.md) | 310 | `declaration-track:009a0bf71efcaa9195adeac859f97498098a8bf0bde30a43a3d7c0cef5df690f` |
| 27 | `def` | [processLine](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceBridgeMain/Variant2e7b445cd4f69ab7398282c3bf2e45230c20fd01a6fa74d2834304804147f510.lean/declarations/processline--d1142f4b7332417e735f30ee.md) | 340 | `declaration-track:d1142f4b7332417e735f30ee8d422cf1991fa22cdc5c07cb8f1487b6315231ad` |
| 28 | `def` | [serve](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceBridgeMain/Variant2e7b445cd4f69ab7398282c3bf2e45230c20fd01a6fa74d2834304804147f510.lean/declarations/serve--9c142801b7ea30ef95161598.md) | 377 | `declaration-track:9c142801b7ea30ef95161598ecf5c958c3d10ec481a541375e2e6ac3cc652bfb` |
| 29 | `def` | [main](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceBridgeMain/Variant2e7b445cd4f69ab7398282c3bf2e45230c20fd01a6fa74d2834304804147f510.lean/declarations/main--77696bfa1c39416433746317.md) | 387 | `declaration-track:77696bfa1c394164337463171d56dd6c45151b40c22dbde2fb86f9d5e024c553` |
| 30 | `def` | [main](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceBridgeMain/Variant2e7b445cd4f69ab7398282c3bf2e45230c20fd01a6fa74d2834304804147f510.lean/declarations/main--1b65e16757cf49c25faf05a0.md) | 394 | `declaration-track:1b65e16757cf49c25faf05a009fbf9be9ebbb61256ec21d83e421222a8b6e486` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
