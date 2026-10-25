# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Normalization.Variantb6f35bcfdfd9a21f8dedebcdc8c239b72c1207820baf6e5e665513356c1ee1c6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4b5290fac851c09a84f5617b83375971e4c937d0",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalization/Variantb6f35bcfdfd9a21f8dedebcdc8c239b72c1207820baf6e5e665513356c1ee1c6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalization/Variantb6f35bcfdfd9a21f8dedebcdc8c239b72c1207820baf6e5e665513356c1ee1c6.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalization/Variantb6f35bcfdfd9a21f8dedebcdc8c239b72c1207820baf6e5e665513356c1ee1c6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4b5290fac851c09a84f5617b83375971e4c937d0`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalization/Variantb6f35bcfdfd9a21f8dedebcdc8c239b72c1207820baf6e5e665513356c1ee1c6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalization/Variantb6f35bcfdfd9a21f8dedebcdc8c239b72c1207820baf6e5e665513356c1ee1c6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.SemanticTokenization.Span` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [UnicodeNormalization](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalization/Variantb6f35bcfdfd9a21f8dedebcdc8c239b72c1207820baf6e5e665513356c1ee1c6.lean/declarations/unicodenormalization--3d106a28c47bc35192d69faf.md) | 20 | `declaration-track:3d106a28c47bc35192d69faf1c84cb47bb2ef97fdd58c676dc6d90e3c5085310` |
| 2 | `inductive` | [CasePolicy](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalization/Variantb6f35bcfdfd9a21f8dedebcdc8c239b72c1207820baf6e5e665513356c1ee1c6.lean/declarations/casepolicy--a8be2a2d3d4f9b2474ddaa45.md) | 28 | `declaration-track:a8be2a2d3d4f9b2474ddaa453aac4542ab9ba8fd1a59a048f2309bb671f807c4` |
| 3 | `inductive` | [LineEndingPolicy](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalization/Variantb6f35bcfdfd9a21f8dedebcdc8c239b72c1207820baf6e5e665513356c1ee1c6.lean/declarations/lineendingpolicy--32da5802ded34eb091fdee41.md) | 35 | `declaration-track:32da5802ded34eb091fdee416f9c57d72dd7e76d0a5052057032f8d9a2ff2d45` |
| 4 | `inductive` | [WhitespacePolicy](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalization/Variantb6f35bcfdfd9a21f8dedebcdc8c239b72c1207820baf6e5e665513356c1ee1c6.lean/declarations/whitespacepolicy--36e117bad77e4c7175a07cdf.md) | 40 | `declaration-track:36e117bad77e4c7175a07cdfad8b0acab5532573460284ff26a406a79581b155` |
| 5 | `inductive` | [ControlCharacterPolicy](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalization/Variantb6f35bcfdfd9a21f8dedebcdc8c239b72c1207820baf6e5e665513356c1ee1c6.lean/declarations/controlcharacterpolicy--94ea56f476d252c1e3f67312.md) | 47 | `declaration-track:94ea56f476d252c1e3f67312b6a04c229a9d48f5f58963f2a64951763ea8acc5` |
| 6 | `structure` | [NormalizationSpec](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalization/Variantb6f35bcfdfd9a21f8dedebcdc8c239b72c1207820baf6e5e665513356c1ee1c6.lean/declarations/normalizationspec--2658c402856cc67fdae196d3.md) | 54 | `declaration-track:2658c402856cc67fdae196d3c144c5080aa01e8f0fda065341a8cd9877a5a3a7` |
| 7 | `def` | [hashNormalizedText](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalization/Variantb6f35bcfdfd9a21f8dedebcdc8c239b72c1207820baf6e5e665513356c1ee1c6.lean/declarations/hashnormalizedtext--7dc3cef7ac5b0cfa6b3dfec2.md) | 65 | `declaration-track:7dc3cef7ac5b0cfa6b3dfec28baba3e65e148c25a5e24e10ac7d8fc2aa39e27f` |
| 8 | `structure` | [OffsetTransport](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalization/Variantb6f35bcfdfd9a21f8dedebcdc8c239b72c1207820baf6e5e665513356c1ee1c6.lean/declarations/offsettransport--36549caebfbc729386797ee4.md) | 74 | `declaration-track:36549caebfbc729386797ee4083111f4a6e9142293ea551f770d411823fa623e` |
| 9 | `structure` | [NormalizationCertificate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalization/Variantb6f35bcfdfd9a21f8dedebcdc8c239b72c1207820baf6e5e665513356c1ee1c6.lean/declarations/normalizationcertificate--3978286887b3354e3d0bda72.md) | 88 | `declaration-track:3978286887b3354e3d0bda722767d1af3f8417b2904a19dc6aa4821090ba26cc` |
| 10 | `structure` | [OffsetSpanCertificate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalization/Variantb6f35bcfdfd9a21f8dedebcdc8c239b72c1207820baf6e5e665513356c1ee1c6.lean/declarations/offsetspancertificate--7f11dd7db54aa0d2ceae1b84.md) | 99 | `declaration-track:7f11dd7db54aa0d2ceae1b845dc3b4e07ce29f8f9fdc55f1dc29328816ebec45` |
| 11 | `theorem` | [offset_span_valid](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalization/Variantb6f35bcfdfd9a21f8dedebcdc8c239b72c1207820baf6e5e665513356c1ee1c6.lean/declarations/offset-span-valid--de41949f5675bf0e9a30fe7a.md) | 119 | `result-track:de41949f5675bf0e9a30fe7a65b159213921bea292ae2cc309356bf28174d38b` |
| 12 | `def` | [transportRawSpan](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalization/Variantb6f35bcfdfd9a21f8dedebcdc8c239b72c1207820baf6e5e665513356c1ee1c6.lean/declarations/transportrawspan--5854ed22cdccf32aa07971fb.md) | 131 | `declaration-track:5854ed22cdccf32aa07971fba4e60bc23a419fdfc017d8d2cee1747d45d6abd5` |
| 13 | `theorem` | [transportRawSpan_sound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalization/Variantb6f35bcfdfd9a21f8dedebcdc8c239b72c1207820baf6e5e665513356c1ee1c6.lean/declarations/transportrawspan-sound--49f5d8de49abfe16c9720967.md) | 164 | `result-track:49f5d8de49abfe16c9720967ba78be34acca6cb1a8b05e40a602464f6cdf5225` |
| 14 | `theorem` | [normalization_snapshot_bound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalization/Variantb6f35bcfdfd9a21f8dedebcdc8c239b72c1207820baf6e5e665513356c1ee1c6.lean/declarations/normalization-snapshot-bound--8e0f23a7e493f6e46534ac68.md) | 180 | `result-track:8e0f23a7e493f6e46534ac68e0416891622f67256728af46408ea60354085ae0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
