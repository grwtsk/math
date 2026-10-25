# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SurfaceRefactorProtocolMain.Variant91649b32143cc341d74e61faf01f3fb714dc1a1f0337c742928b40a59b5e57ad

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "31b3a9c47aed8b40851ff68b38a41a2aa52430cc",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceRefactorProtocolMain/Variant91649b32143cc341d74e61faf01f3fb714dc1a1f0337c742928b40a59b5e57ad.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceRefactorProtocolMain/Variant91649b32143cc341d74e61faf01f3fb714dc1a1f0337c742928b40a59b5e57ad.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceRefactorProtocolMain/Variant91649b32143cc341d74e61faf01f3fb714dc1a1f0337c742928b40a59b5e57ad.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `31b3a9c47aed8b40851ff68b38a41a2aa52430cc`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceRefactorProtocolMain/Variant91649b32143cc341d74e61faf01f3fb714dc1a1f0337c742928b40a59b5e57ad.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceRefactorProtocolMain/Variant91649b32143cc341d74e61faf01f3fb714dc1a1f0337c742928b40a59b5e57ad.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean` — import line 1; external provider; requires a separately pinned dependency.
- `Lean.Util.CollectAxioms` — import line 2; external provider; requires a separately pinned dependency.
- `Lean.Util.FoldConsts` — import line 3; external provider; requires a separately pinned dependency.
- `Surface` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [requestSchema](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceRefactorProtocolMain/Variant91649b32143cc341d74e61faf01f3fb714dc1a1f0337c742928b40a59b5e57ad.lean/declarations/requestschema--25068a621b1e1ff8e0866968.md) | 20 | `declaration-track:25068a621b1e1ff8e0866968531a7bc49e036b281aefa1788781eac7ed4c8c0a` |
| 2 | `def` | [responseSchema](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceRefactorProtocolMain/Variant91649b32143cc341d74e61faf01f3fb714dc1a1f0337c742928b40a59b5e57ad.lean/declarations/responseschema--26de8c7fa5f78de12a73411b.md) | 22 | `declaration-track:26de8c7fa5f78de12a73411b0b09a3b83641d3beef91481c46da9adb964a054c` |
| 3 | `def` | [protocolVersion](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceRefactorProtocolMain/Variant91649b32143cc341d74e61faf01f3fb714dc1a1f0337c742928b40a59b5e57ad.lean/declarations/protocolversion--13a868c3a85e81c9c316ab8e.md) | 24 | `declaration-track:13a868c3a85e81c9c316ab8ead800e8a15f05d5e21f4ff053ce651cf635e2de3` |
| 4 | `structure` | [Request](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceRefactorProtocolMain/Variant91649b32143cc341d74e61faf01f3fb714dc1a1f0337c742928b40a59b5e57ad.lean/declarations/request--dd658e6b8333cfd2187c7352.md) | 26 | `declaration-track:dd658e6b8333cfd2187c7352b29a008cb511350317b377dfd609c45b80fad82f` |
| 5 | `structure` | [ProtocolError](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceRefactorProtocolMain/Variant91649b32143cc341d74e61faf01f3fb714dc1a1f0337c742928b40a59b5e57ad.lean/declarations/protocolerror--98de0be87d092640af9307d3.md) | 35 | `declaration-track:98de0be87d092640af9307d376de2b48d3bf87c6cac2922b97117ac992dbf062` |
| 6 | `abbrev` | [ProtocolM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceRefactorProtocolMain/Variant91649b32143cc341d74e61faf01f3fb714dc1a1f0337c742928b40a59b5e57ad.lean/declarations/protocolm--c8810b8b5561d08ed56d1952.md) | 40 | `declaration-track:c8810b8b5561d08ed56d1952164f354df31a96c79ef32a2b37742ec8a13dea63` |
| 7 | `def` | [requestFieldOrEmpty](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceRefactorProtocolMain/Variant91649b32143cc341d74e61faf01f3fb714dc1a1f0337c742928b40a59b5e57ad.lean/declarations/requestfieldorempty--41e918a077a79b2b21bf1087.md) | 42 | `declaration-track:41e918a077a79b2b21bf108740543625eb9a13dbc77fd18987a4f760be8bbb5b` |
| 8 | `def` | [nameFromDottedString](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceRefactorProtocolMain/Variant91649b32143cc341d74e61faf01f3fb714dc1a1f0337c742928b40a59b5e57ad.lean/declarations/namefromdottedstring--e479a39397aeb8a44e417a36.md) | 47 | `declaration-track:e479a39397aeb8a44e417a36ab91844885899e4de93beed638ce5a010196d832` |
| 9 | `def` | [declarationModule](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceRefactorProtocolMain/Variant91649b32143cc341d74e61faf01f3fb714dc1a1f0337c742928b40a59b5e57ad.lean/declarations/declarationmodule--72aab6604c9609ad96ffd172.md) | 50 | `declaration-track:72aab6604c9609ad96ffd1727ec73f8430ce84796cb48f5f46124b3730d90244` |
| 10 | `def` | [environmentFingerprint](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceRefactorProtocolMain/Variant91649b32143cc341d74e61faf01f3fb714dc1a1f0337c742928b40a59b5e57ad.lean/declarations/environmentfingerprint--90d93cd5dca1c7501f42f382.md) | 55 | `declaration-track:90d93cd5dca1c7501f42f3825efd84475e2066ae2cf5717091c749695808c218` |
| 11 | `def` | [constantKind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceRefactorProtocolMain/Variant91649b32143cc341d74e61faf01f3fb714dc1a1f0337c742928b40a59b5e57ad.lean/declarations/constantkind--16c6651285fffb52fa5d374c.md) | 59 | `declaration-track:16c6651285fffb52fa5d374c6ef34ddbeef7b90893e8e84b865b3ef95e50efb3` |
| 12 | `def` | [classificationTags](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceRefactorProtocolMain/Variant91649b32143cc341d74e61faf01f3fb714dc1a1f0337c742928b40a59b5e57ad.lean/declarations/classificationtags--3e2ef10f5122ac440e80e71a.md) | 69 | `declaration-track:3e2ef10f5122ac440e80e71a77c90b69e792bf02b35aaf1c95916879dc0b0f36` |
| 13 | `def` | [positionJson](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceRefactorProtocolMain/Variant91649b32143cc341d74e61faf01f3fb714dc1a1f0337c742928b40a59b5e57ad.lean/declarations/positionjson--88916915c6597a8b1e381622.md) | 76 | `declaration-track:88916915c6597a8b1e3816224d6e4c7a35d50841873f732121d734ad620f1865` |
| 14 | `def` | [rangesJson](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceRefactorProtocolMain/Variant91649b32143cc341d74e61faf01f3fb714dc1a1f0337c742928b40a59b5e57ad.lean/declarations/rangesjson--9ff4a729a028f123753ad952.md) | 79 | `declaration-track:9ff4a729a028f123753ad952bbc0261374a2d7ccfe7a93a064c61e893587f07c` |
| 15 | `def` | [errorJson](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceRefactorProtocolMain/Variant91649b32143cc341d74e61faf01f3fb714dc1a1f0337c742928b40a59b5e57ad.lean/declarations/errorjson--3ca3fb833c67b705c6ac70ec.md) | 88 | `declaration-track:3ca3fb833c67b705c6ac70ec1ebc95f560786ce57793fc231f5e8538c273b2f9` |
| 16 | `def` | [responseBase](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceRefactorProtocolMain/Variant91649b32143cc341d74e61faf01f3fb714dc1a1f0337c742928b40a59b5e57ad.lean/declarations/responsebase--03a77a0d5aa1195e3e7df992.md) | 95 | `declaration-track:03a77a0d5aa1195e3e7df992f032f7ba6b71bd906bc32e844c1df6f0ee1b0077` |
| 17 | `def` | [success](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceRefactorProtocolMain/Variant91649b32143cc341d74e61faf01f3fb714dc1a1f0337c742928b40a59b5e57ad.lean/declarations/success--781ff191940f3dd46757b91d.md) | 110 | `declaration-track:781ff191940f3dd46757b91dc397951b985accc44f7898bc7be9941d4816146f` |
| 18 | `def` | [failure](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceRefactorProtocolMain/Variant91649b32143cc341d74e61faf01f3fb714dc1a1f0337c742928b40a59b5e57ad.lean/declarations/failure--909d7de4f099c29d6f4ea703.md) | 116 | `declaration-track:909d7de4f099c29d6f4ea703bd22ad0dbf6dc5dadc98070495706272c3d27d83` |
| 19 | `def` | [payload](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceRefactorProtocolMain/Variant91649b32143cc341d74e61faf01f3fb714dc1a1f0337c742928b40a59b5e57ad.lean/declarations/payload--98a49dcb545cac2a3cf1f509.md) | 123 | `declaration-track:98a49dcb545cac2a3cf1f50962493f4704724793027899df66ff983c4b37f2be` |
| 20 | `def` | [requirePayloadString](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceRefactorProtocolMain/Variant91649b32143cc341d74e61faf01f3fb714dc1a1f0337c742928b40a59b5e57ad.lean/declarations/requirepayloadstring--38a4c13d996e0b8e788ac7da.md) | 126 | `declaration-track:38a4c13d996e0b8e788ac7da8f041ff19b9018448e37a8df8f92e326cb7cdaf8` |
| 21 | `def` | [requireDeclaration](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceRefactorProtocolMain/Variant91649b32143cc341d74e61faf01f3fb714dc1a1f0337c742928b40a59b5e57ad.lean/declarations/requiredeclaration--c9ed2f571537916e369d0c70.md) | 136 | `declaration-track:c9ed2f571537916e369d0c7011e2e673d96e293171444642a39749e08c660e3d` |
| 22 | `def` | [inspectCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceRefactorProtocolMain/Variant91649b32143cc341d74e61faf01f3fb714dc1a1f0337c742928b40a59b5e57ad.lean/declarations/inspectcore--a85d1a280e37d248e51f0816.md) | 148 | `declaration-track:a85d1a280e37d248e51f081623ce198526d10b0c3a574887cc43ae6531fec7a0` |
| 23 | `def` | [declarationDescription](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceRefactorProtocolMain/Variant91649b32143cc341d74e61faf01f3fb714dc1a1f0337c742928b40a59b5e57ad.lean/declarations/declarationdescription--1ea1396277978ca07bd8942d.md) | 161 | `declaration-track:1ea1396277978ca07bd8942d483ba68654fe86691b9c1f12f05f43e624cc1144` |
| 24 | `def` | [canonicalDeclarations](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceRefactorProtocolMain/Variant91649b32143cc341d74e61faf01f3fb714dc1a1f0337c742928b40a59b5e57ad.lean/declarations/canonicaldeclarations--493cb93ed63d225902c52a31.md) | 181 | `declaration-track:493cb93ed63d225902c52a31f16814608b0fee4be6dc269befd9e88d364a82bd` |
| 25 | `def` | [projectDescription](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceRefactorProtocolMain/Variant91649b32143cc341d74e61faf01f3fb714dc1a1f0337c742928b40a59b5e57ad.lean/declarations/projectdescription--d14e28d897f9852af96c9740.md) | 188 | `declaration-track:d14e28d897f9852af96c974073b3091d36d922982c57ebd9fb44692e735c45ea` |
| 26 | `def` | [projectIndex](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceRefactorProtocolMain/Variant91649b32143cc341d74e61faf01f3fb714dc1a1f0337c742928b40a59b5e57ad.lean/declarations/projectindex--b34f25c554915d0ee0d4063e.md) | 199 | `declaration-track:b34f25c554915d0ee0d4063e380456bde2a426b77e15e295069d6a129588330d` |
| 27 | `def` | [publicApiSnapshot](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceRefactorProtocolMain/Variant91649b32143cc341d74e61faf01f3fb714dc1a1f0337c742928b40a59b5e57ad.lean/declarations/publicapisnapshot--3f56bb94b1f48cfa700be7b3.md) | 214 | `declaration-track:3f56bb94b1f48cfa700be7b3e9af8df06fc8673cf4ba5462cab493470d6c7d2a` |
| 28 | `def` | [patchEnvelopeValidation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceRefactorProtocolMain/Variant91649b32143cc341d74e61faf01f3fb714dc1a1f0337c742928b40a59b5e57ad.lean/declarations/patchenvelopevalidation--0c06e7b31375a54011ed7367.md) | 228 | `declaration-track:0c06e7b31375a54011ed7367112be510b3c5cac184f88f815d3d3b1b02515d3b` |
| 29 | `def` | [dispatch](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceRefactorProtocolMain/Variant91649b32143cc341d74e61faf01f3fb714dc1a1f0337c742928b40a59b5e57ad.lean/declarations/dispatch--7cb3148b3e5633d677f41737.md) | 253 | `declaration-track:7cb3148b3e5633d677f41737ba29bc4b678d3dbb539d113802788b64eb8344ec` |
| 30 | `def` | [processLine](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceRefactorProtocolMain/Variant91649b32143cc341d74e61faf01f3fb714dc1a1f0337c742928b40a59b5e57ad.lean/declarations/processline--2dd6c15d65f31eae3eef6783.md) | 357 | `declaration-track:2dd6c15d65f31eae3eef67834334df4bad09ac76e86117f9ef57fc0e1aa57f52` |
| 31 | `def` | [serve](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceRefactorProtocolMain/Variant91649b32143cc341d74e61faf01f3fb714dc1a1f0337c742928b40a59b5e57ad.lean/declarations/serve--889a6b48f13f9eaf531fd6b5.md) | 388 | `declaration-track:889a6b48f13f9eaf531fd6b5e7bc633516ca0a38f08a5038fb8e51ec87651529` |
| 32 | `def` | [main](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceRefactorProtocolMain/Variant91649b32143cc341d74e61faf01f3fb714dc1a1f0337c742928b40a59b5e57ad.lean/declarations/main--7c08a0fb9265168d892f2651.md) | 397 | `declaration-track:7c08a0fb9265168d892f2651a9712e380b37e6aed1f33684eaa3f7a853f6f6e3` |
| 33 | `def` | [main](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceRefactorProtocolMain/Variant91649b32143cc341d74e61faf01f3fb714dc1a1f0337c742928b40a59b5e57ad.lean/declarations/main--67edaf8e72552e2297ba6dcc.md) | 412 | `declaration-track:67edaf8e72552e2297ba6dccee31f654a1e45a4dba5dfb87094edc391845a599` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
