# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SurfaceReceiptMain.Variant3462017385848a26454fb964a1d222d011de952c09208c84771ab76bcbed2a50

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "92b9677b18896f613a5c64cd5aa10b6bfa069eff",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceReceiptMain/Variant3462017385848a26454fb964a1d222d011de952c09208c84771ab76bcbed2a50.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceReceiptMain/Variant3462017385848a26454fb964a1d222d011de952c09208c84771ab76bcbed2a50.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceReceiptMain/Variant3462017385848a26454fb964a1d222d011de952c09208c84771ab76bcbed2a50.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `92b9677b18896f613a5c64cd5aa10b6bfa069eff`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceReceiptMain/Variant3462017385848a26454fb964a1d222d011de952c09208c84771ab76bcbed2a50.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceReceiptMain/Variant3462017385848a26454fb964a1d222d011de952c09208c84771ab76bcbed2a50.lean.json)

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
| 1 | `def` | [jsonEscapeChar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceReceiptMain/Variant3462017385848a26454fb964a1d222d011de952c09208c84771ab76bcbed2a50.lean/declarations/jsonescapechar--81e03ba392313adb09aa1834.md) | 19 | `declaration-track:81e03ba392313adb09aa1834d065777f8b539123239cae7973ff3c728ccc0fe1` |
| 2 | `def` | [jsonString](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceReceiptMain/Variant3462017385848a26454fb964a1d222d011de952c09208c84771ab76bcbed2a50.lean/declarations/jsonstring--0ef6faaa8c0681c9bb0968ab.md) | 27 | `declaration-track:0ef6faaa8c0681c9bb0968ab5e7ad299fcdfbde3fe37538c4a655915b154d9a0` |
| 3 | `def` | [jsonNames](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceReceiptMain/Variant3462017385848a26454fb964a1d222d011de952c09208c84771ab76bcbed2a50.lean/declarations/jsonnames--210dbc4349ae3c6834270c9d.md) | 30 | `declaration-track:210dbc4349ae3c6834270c9d3c3eab4a165a34504dec23e9935f6040668bb663` |
| 4 | `def` | [positionJson](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceReceiptMain/Variant3462017385848a26454fb964a1d222d011de952c09208c84771ab76bcbed2a50.lean/declarations/positionjson--bcb2718a7162bdb5f1e72225.md) | 33 | `declaration-track:bcb2718a7162bdb5f1e72225c66aba7827f9ff9f0e9a423ba5f820c48e17508f` |
| 5 | `def` | [declarationRangesJson](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceReceiptMain/Variant3462017385848a26454fb964a1d222d011de952c09208c84771ab76bcbed2a50.lean/declarations/declarationrangesjson--61a097e7fc6dbd0c49376d58.md) | 37 | `declaration-track:61a097e7fc6dbd0c49376d58afff36d319ba8000c07a82c7b55943319a57b96f` |
| 6 | `def` | [nameFromDottedString](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceReceiptMain/Variant3462017385848a26454fb964a1d222d011de952c09208c84771ab76bcbed2a50.lean/declarations/namefromdottedstring--bc2f71596ed0a9e194037f66.md) | 45 | `declaration-track:bc2f71596ed0a9e194037f660736d3523e0c15221022c8e86076244ee6dac0c3` |
| 7 | `def` | [declarationModule](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceReceiptMain/Variant3462017385848a26454fb964a1d222d011de952c09208c84771ab76bcbed2a50.lean/declarations/declarationmodule--ce807df8651e7c1fb29ed8c2.md) | 48 | `declaration-track:ce807df8651e7c1fb29ed8c234478e592505933963706da72c516d4ac0f3b258` |
| 8 | `def` | [environmentFingerprint](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceReceiptMain/Variant3462017385848a26454fb964a1d222d011de952c09208c84771ab76bcbed2a50.lean/declarations/environmentfingerprint--bd72f324e1c376f6f04b9b5c.md) | 53 | `declaration-track:bd72f324e1c376f6f04b9b5c3a2a89019a564996081ac1bcab9af24d391e4a8a` |
| 9 | `def` | [receiptJson](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceReceiptMain/Variant3462017385848a26454fb964a1d222d011de952c09208c84771ab76bcbed2a50.lean/declarations/receiptjson--7cf7c0699148f46139ae5e54.md) | 57 | `declaration-track:7cf7c0699148f46139ae5e54639242e9b5264fe37ba729f24ccbac03c5bae6ff` |
| 10 | `def` | [emitReceipt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceReceiptMain/Variant3462017385848a26454fb964a1d222d011de952c09208c84771ab76bcbed2a50.lean/declarations/emitreceipt--39c88f4ac16bb688c6d41adb.md) | 81 | `declaration-track:39c88f4ac16bb688c6d41adbdefdfe64de9e1e5c42db4fb51deb1f47efe7e324` |
| 11 | `def` | [main](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceReceiptMain/Variant3462017385848a26454fb964a1d222d011de952c09208c84771ab76bcbed2a50.lean/declarations/main--7f810e26b84425ea1c90f114.md) | 105 | `declaration-track:7f810e26b84425ea1c90f1140b7ecdb32abafb046f73a75efdb7ca3f7cfea787` |
| 12 | `def` | [main](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceReceiptMain/Variant3462017385848a26454fb964a1d222d011de952c09208c84771ab76bcbed2a50.lean/declarations/main--4f0a6251ab6acff8974ed50d.md) | 114 | `declaration-track:4f0a6251ab6acff8974ed50d8ebded58fdca1c0464e75a3f130c54f453f08940` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
