# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Communication.Variant6845b36c95b9fd2aec38ef0f2a1a231479e5cd9656fe96b50e733574e2b5bc08

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0ea41116f04e8d3fcdc066f8142bec8ace3d64cc",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Communication/Variant6845b36c95b9fd2aec38ef0f2a1a231479e5cd9656fe96b50e733574e2b5bc08.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Communication/Variant6845b36c95b9fd2aec38ef0f2a1a231479e5cd9656fe96b50e733574e2b5bc08.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Communication/Variant6845b36c95b9fd2aec38ef0f2a1a231479e5cd9656fe96b50e733574e2b5bc08.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0ea41116f04e8d3fcdc066f8142bec8ace3d64cc`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Communication/Variant6845b36c95b9fd2aec38ef0f2a1a231479e5cd9656fe96b50e733574e2b5bc08.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Communication/Variant6845b36c95b9fd2aec38ef0f2a1a231479e5cd9656fe96b50e733574e2b5bc08.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.String.TakeDrop` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Data.String.Search` — import line 17; external provider; requires a separately pinned dependency.
- `Init.Data.Iterators.Consumers.Collect` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [parseHeaderField](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Communication/Variant6845b36c95b9fd2aec38ef0f2a1a231479e5cd9656fe96b50e733574e2b5bc08.lean/declarations/parseheaderfield--58e3a0f9ac7a333db5b29eb7.md) | 35 | `declaration-track:58e3a0f9ac7a333db5b29eb7b46c7b2df65017366ae1b86828d21ac209c5875a` |
| 2 | `def` | [isLean3Request](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Communication/Variant6845b36c95b9fd2aec38ef0f2a1a231479e5cd9656fe96b50e733574e2b5bc08.lean/declarations/islean3request--68c6841c02f7fd2c3bdd6529.md) | 48 | `declaration-track:68c6841c02f7fd2c3bdd6529066f1794bc8b7e400b30d7157c2ca2c5099c5e2b` |
| 3 | `def` | [readHeaderFields](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Communication/Variant6845b36c95b9fd2aec38ef0f2a1a231479e5cd9656fe96b50e733574e2b5bc08.lean/declarations/readheaderfields--566016c5bcecd758709b877a.md) | 57 | `declaration-track:566016c5bcecd758709b877affc3383b38b04768be4b10e9c478ad328e52c57b` |
| 4 | `def` | [readLspHeader](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Communication/Variant6845b36c95b9fd2aec38ef0f2a1a231479e5cd9656fe96b50e733574e2b5bc08.lean/declarations/readlspheader--5a62f559bc3e7ae617c2a4c5.md) | 75 | `declaration-track:5a62f559bc3e7ae617c2a4c538d6db52246ebbc86c2a49c689190571f0075ac7` |
| 5 | `def` | [readLspMessage](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Communication/Variant6845b36c95b9fd2aec38ef0f2a1a231479e5cd9656fe96b50e733574e2b5bc08.lean/declarations/readlspmessage--4b93f8aaec61b26ed32121de.md) | 83 | `declaration-track:4b93f8aaec61b26ed32121deb4f66792605305d56e102012a37c86c3a0913706` |
| 6 | `def` | [readLspMessageAsString](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Communication/Variant6845b36c95b9fd2aec38ef0f2a1a231479e5cd9656fe96b50e733574e2b5bc08.lean/declarations/readlspmessageasstring--9d8a60535d4a0fdb7807205c.md) | 90 | `declaration-track:9d8a60535d4a0fdb7807205c4a51f55cdc9e937e9d090c6f822b3267d6123998` |
| 7 | `def` | [readLspRequestAs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Communication/Variant6845b36c95b9fd2aec38ef0f2a1a231479e5cd9656fe96b50e733574e2b5bc08.lean/declarations/readlsprequestas--d7027b125cda6396ba41cfcf.md) | 97 | `declaration-track:d7027b125cda6396ba41cfcff9fcc54d548485ea1e314c32bc583b03f9a4be87` |
| 8 | `def` | [readLspNotificationAs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Communication/Variant6845b36c95b9fd2aec38ef0f2a1a231479e5cd9656fe96b50e733574e2b5bc08.lean/declarations/readlspnotificationas--950b60260d89ca8c58ee3a0f.md) | 104 | `declaration-track:950b60260d89ca8c58ee3a0f04faebc9f40bc1c20e25fa8dacb81867a82b92c3` |
| 9 | `def` | [readLspResponseAs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Communication/Variant6845b36c95b9fd2aec38ef0f2a1a231479e5cd9656fe96b50e733574e2b5bc08.lean/declarations/readlspresponseas--74c6a572feb323f38fcf7b6c.md) | 111 | `declaration-track:74c6a572feb323f38fcf7b6c67aece30527c5e68118067447b4bf40d2ea0552e` |
| 10 | `def` | [writeSerializedLspMessage](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Communication/Variant6845b36c95b9fd2aec38ef0f2a1a231479e5cd9656fe96b50e733574e2b5bc08.lean/declarations/writeserializedlspmessage--05f43afa9da61eb96ca27122.md) | 122 | `declaration-track:05f43afa9da61eb96ca271229781da8cb1c653007881d598681ef3a4fb779a6c` |
| 11 | `def` | [writeLspMessage](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Communication/Variant6845b36c95b9fd2aec38ef0f2a1a231479e5cd9656fe96b50e733574e2b5bc08.lean/declarations/writelspmessage--1dd3c0a8199a93f4e0ae2999.md) | 129 | `declaration-track:1dd3c0a8199a93f4e0ae2999fc7036fc6b15c817cbf6bcd529385ac8583a35a1` |
| 12 | `def` | [writeLspRequest](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Communication/Variant6845b36c95b9fd2aec38ef0f2a1a231479e5cd9656fe96b50e733574e2b5bc08.lean/declarations/writelsprequest--45300780b29c2e539c00d51d.md) | 132 | `declaration-track:45300780b29c2e539c00d51de591c08a3999d97b893eaf6601cec93215fbdd9b` |
| 13 | `def` | [writeLspNotification](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Communication/Variant6845b36c95b9fd2aec38ef0f2a1a231479e5cd9656fe96b50e733574e2b5bc08.lean/declarations/writelspnotification--ee956d52a91e197ee4842c9d.md) | 135 | `declaration-track:ee956d52a91e197ee4842c9dc2a84c1f663eef56d8137a0f6b356fb7da706bca` |
| 14 | `def` | [writeLspResponse](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Communication/Variant6845b36c95b9fd2aec38ef0f2a1a231479e5cd9656fe96b50e733574e2b5bc08.lean/declarations/writelspresponse--49a57e3bd565be6b99e2cd74.md) | 138 | `declaration-track:49a57e3bd565be6b99e2cd7440e33455d4ae0137dfc1e7f6522dcdc59fcf2f66` |
| 15 | `def` | [writeLspResponseError](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Communication/Variant6845b36c95b9fd2aec38ef0f2a1a231479e5cd9656fe96b50e733574e2b5bc08.lean/declarations/writelspresponseerror--4994377a81bcb9be64c03e9d.md) | 141 | `declaration-track:4994377a81bcb9be64c03e9dcc2621254b4d28a38109b35f05e232d9b56705db` |
| 16 | `def` | [writeLspResponseErrorWithData](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Communication/Variant6845b36c95b9fd2aec38ef0f2a1a231479e5cd9656fe96b50e733574e2b5bc08.lean/declarations/writelspresponseerrorwithdata--1c6c1901387a13ce50567e2d.md) | 144 | `declaration-track:1c6c1901387a13ce50567e2d61b9eb0731d625abcc8ef62c3dadd6712f9ea12b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
