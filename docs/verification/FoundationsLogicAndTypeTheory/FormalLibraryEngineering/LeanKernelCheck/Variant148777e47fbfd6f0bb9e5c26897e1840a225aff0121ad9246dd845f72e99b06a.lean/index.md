# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LeanKernelCheck.Variant148777e47fbfd6f0bb9e5c26897e1840a225aff0121ad9246dd845f72e99b06a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d53fff464c209194daa784711dfe011e007eac8b",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanKernelCheck/Variant148777e47fbfd6f0bb9e5c26897e1840a225aff0121ad9246dd845f72e99b06a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanKernelCheck/Variant148777e47fbfd6f0bb9e5c26897e1840a225aff0121ad9246dd845f72e99b06a.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanKernelCheck/Variant148777e47fbfd6f0bb9e5c26897e1840a225aff0121ad9246dd845f72e99b06a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d53fff464c209194daa784711dfe011e007eac8b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanKernelCheck/Variant148777e47fbfd6f0bb9e5c26897e1840a225aff0121ad9246dd845f72e99b06a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanKernelCheck/Variant148777e47fbfd6f0bb9e5c26897e1840a225aff0121ad9246dd845f72e99b06a.lean.json)

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
| 1 | `structure` | [CliConfig](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanKernelCheck/Variant148777e47fbfd6f0bb9e5c26897e1840a225aff0121ad9246dd845f72e99b06a.lean/declarations/cliconfig--c6fa5690e4557d01136e75ff.md) | 33 | `declaration-track:c6fa5690e4557d01136e75ff4c8fc52584eefdab4392cc899cba581459c3d62f` |
| 2 | `def` | [parseModuleName](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanKernelCheck/Variant148777e47fbfd6f0bb9e5c26897e1840a225aff0121ad9246dd845f72e99b06a.lean/declarations/parsemodulename--9f99b052a7fce17eb9f4eb4e.md) | 42 | `declaration-track:9f99b052a7fce17eb9f4eb4eb20afc83e4ea8b939e66e98b58b45ac4781e2d5d` |
| 3 | `def` | [parseArgs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanKernelCheck/Variant148777e47fbfd6f0bb9e5c26897e1840a225aff0121ad9246dd845f72e99b06a.lean/declarations/parseargs--21ad0828ad3d1a43bc58252a.md) | 46 | `declaration-track:21ad0828ad3d1a43bc58252a9cf63cecec8cdbabf31ee8d49d858c93c47f7fb2` |
| 4 | `def` | [messageText](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanKernelCheck/Variant148777e47fbfd6f0bb9e5c26897e1840a225aff0121ad9246dd845f72e99b06a.lean/declarations/messagetext--1ddc50c2c1a2eac954b51bde.md) | 71 | `declaration-track:1ddc50c2c1a2eac954b51bdef8c2a5dc045c278d6a89b7218e2de3c0c431eadc` |
| 5 | `def` | [elaborateCommands](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanKernelCheck/Variant148777e47fbfd6f0bb9e5c26897e1840a225aff0121ad9246dd845f72e99b06a.lean/declarations/elaboratecommands--088ae9539a5f5eb61f4e4cb0.md) | 77 | `declaration-track:088ae9539a5f5eb61f4e4cb073cdc62d376acdbeb7ba1e66b5b802ab28b2acaf` |
| 6 | `def` | [constantKind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanKernelCheck/Variant148777e47fbfd6f0bb9e5c26897e1840a225aff0121ad9246dd845f72e99b06a.lean/declarations/constantkind--df8883b0f5e7e06381823934.md) | 105 | `declaration-track:df8883b0f5e7e063818239347217899d611f3066e81cf306234314769f0ca2af` |
| 7 | `def` | [nameSetArray](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanKernelCheck/Variant148777e47fbfd6f0bb9e5c26897e1840a225aff0121ad9246dd845f72e99b06a.lean/declarations/namesetarray--77befc6fbd0272db74e58a4d.md) | 115 | `declaration-track:77befc6fbd0272db74e58a4de509cb39157e3977f8344a682256ed531d5fccd4` |
| 8 | `def` | [dependencyClosure](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanKernelCheck/Variant148777e47fbfd6f0bb9e5c26897e1840a225aff0121ad9246dd845f72e99b06a.lean/declarations/dependencyclosure--2897ba7dd01967131a4490f3.md) | 121 | `declaration-track:2897ba7dd01967131a4490f325fbf80863ea38acd7b1254d90cc28ce999d814e` |
| 9 | `structure` | [DeclarationAudit](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanKernelCheck/Variant148777e47fbfd6f0bb9e5c26897e1840a225aff0121ad9246dd845f72e99b06a.lean/declarations/declarationaudit--5397ed30fea64ba0488b9e52.md) | 141 | `declaration-track:5397ed30fea64ba0488b9e52301e4f566e8d2a7faadcc55167e2079d8177bc51` |
| 10 | `axioms` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanKernelCheck/Variant148777e47fbfd6f0bb9e5c26897e1840a225aff0121ad9246dd845f72e99b06a.lean/declarations/axioms--b1f1e0bff32f86ef7a2e1834.md) | 150 | `declaration-track:b1f1e0bff32f86ef7a2e18347065f6e1248ad0703c8591a585598f23062b26fb` |
| 11 | `def` | [writeDeclarationAudit](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanKernelCheck/Variant148777e47fbfd6f0bb9e5c26897e1840a225aff0121ad9246dd845f72e99b06a.lean/declarations/writedeclarationaudit--53deb2f461e3da27e2805e0f.md) | 153 | `declaration-track:53deb2f461e3da27e2805e0f0abb9e3d9bfa06ad67c7becd19b1691be76824df` |
| 12 | `axioms` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanKernelCheck/Variant148777e47fbfd6f0bb9e5c26897e1840a225aff0121ad9246dd845f72e99b06a.lean/declarations/axioms--e921b488192040c5396f94b0.md) | 191 | `declaration-track:e921b488192040c5396f94b0d4006af0f6481ca90129ce0931a640ea933fb20c` |
| 13 | `def` | [checkFile](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanKernelCheck/Variant148777e47fbfd6f0bb9e5c26897e1840a225aff0121ad9246dd845f72e99b06a.lean/declarations/checkfile--391e5ff71b2f44a8ea07da68.md) | 196 | `declaration-track:391e5ff71b2f44a8ea07da68561c79ec9d126604d53815a2ecaa65a1640a8263` |
| 14 | `structure` | [BatchEntry](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanKernelCheck/Variant148777e47fbfd6f0bb9e5c26897e1840a225aff0121ad9246dd845f72e99b06a.lean/declarations/batchentry--07d19308f24b20397e33d013.md) | 229 | `declaration-track:07d19308f24b20397e33d0133dcb16229d71a971e539c3cc353cc7db0eba0392` |
| 15 | `def` | [parseBatchEntry](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanKernelCheck/Variant148777e47fbfd6f0bb9e5c26897e1840a225aff0121ad9246dd845f72e99b06a.lean/declarations/parsebatchentry--aabd2266cd7b07d1970e3ce4.md) | 234 | `declaration-track:aabd2266cd7b07d1970e3ce438df5f034c10c9076717a2ac64fdaa5fe5de3a55` |
| 16 | `def` | [checkManifest](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanKernelCheck/Variant148777e47fbfd6f0bb9e5c26897e1840a225aff0121ad9246dd845f72e99b06a.lean/declarations/checkmanifest--a9c7c6b2a6b8bd1f163b0666.md) | 248 | `declaration-track:a9c7c6b2a6b8bd1f163b0666de9af4d40e9cdba7d7cc21525581942341f2676c` |
| 17 | `def` | [run](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanKernelCheck/Variant148777e47fbfd6f0bb9e5c26897e1840a225aff0121ad9246dd845f72e99b06a.lean/declarations/run--88781253ecc002c56e9bba86.md) | 263 | `declaration-track:88781253ecc002c56e9bba8648a779b0cc2292d73d159adec9b90e755c90c4a2` |
| 18 | `def` | [mainAction](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanKernelCheck/Variant148777e47fbfd6f0bb9e5c26897e1840a225aff0121ad9246dd845f72e99b06a.lean/declarations/mainaction--735d416ad2d3235a3f09a4e6.md) | 291 | `declaration-track:735d416ad2d3235a3f09a4e68b6082a89931970c5f38b478c47535ce38b975d9` |
| 19 | `def` | [main](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanKernelCheck/Variant148777e47fbfd6f0bb9e5c26897e1840a225aff0121ad9246dd845f72e99b06a.lean/declarations/main--afe4aa247dfd1f48412d9354.md) | 295 | `declaration-track:afe4aa247dfd1f48412d9354cce0939a4bf515b5f4c9ef5dad113c28a72001f2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
