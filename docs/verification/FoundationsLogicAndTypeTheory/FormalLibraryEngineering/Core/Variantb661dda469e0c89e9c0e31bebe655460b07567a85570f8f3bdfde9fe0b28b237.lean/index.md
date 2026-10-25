# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Core.Variantb661dda469e0c89e9c0e31bebe655460b07567a85570f8f3bdfde9fe0b28b237

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4ce18134340d4c4b1861262a3b9da41389001012",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantb661dda469e0c89e9c0e31bebe655460b07567a85570f8f3bdfde9fe0b28b237.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantb661dda469e0c89e9c0e31bebe655460b07567a85570f8f3bdfde9fe0b28b237.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantb661dda469e0c89e9c0e31bebe655460b07567a85570f8f3bdfde9fe0b28b237.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4ce18134340d4c4b1861262a3b9da41389001012`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantb661dda469e0c89e9c0e31bebe655460b07567a85570f8f3bdfde9fe0b28b237.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantb661dda469e0c89e9c0e31bebe655460b07567a85570f8f3bdfde9fe0b28b237.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.Knowledge.Sheaf.Equalizer` — import line 6; external provider; requires a separately pinned dependency.
- `Think.Logic.CategoryEquivalence` — import line 7; external provider; requires a separately pinned dependency.
- `Think.Logic.LayerEquivalence` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [AtScale](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantb661dda469e0c89e9c0e31bebe655460b07567a85570f8f3bdfde9fe0b28b237.lean/declarations/atscale--5885468e53bbd77ca102ec78.md) | 17 | `declaration-track:5885468e53bbd77ca102ec78c671e9db84a7fb1a0c2ed167735c25fa68109a22` |
| 2 | `abbrev` | [StableAtScale](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantb661dda469e0c89e9c0e31bebe655460b07567a85570f8f3bdfde9fe0b28b237.lean/declarations/stableatscale--fd1e6d2e97e612176d100963.md) | 19 | `declaration-track:fd1e6d2e97e612176d10096358ea2d9348c2ec14d9147b7725e9a92cfae4c342` |
| 3 | `theorem` | [atScale_of_base](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantb661dda469e0c89e9c0e31bebe655460b07567a85570f8f3bdfde9fe0b28b237.lean/declarations/atscale-of-base--45f9c73f4c1d1da10e0cbc06.md) | 21 | `result-track:45f9c73f4c1d1da10e0cbc066fb94cec1a4333389ed21b9da9cc0a75d590e5e2` |
| 4 | `theorem` | [epistemic_scale_induction](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantb661dda469e0c89e9c0e31bebe655460b07567a85570f8f3bdfde9fe0b28b237.lean/declarations/epistemic-scale-induction--7d2022de8e4f8ea022837a1d.md) | 29 | `result-track:7d2022de8e4f8ea022837a1d2933a45bc68fafcfb0314580b90e47e0c9dd9d95` |
| 5 | `structure` | [ScaledInvariant](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantb661dda469e0c89e9c0e31bebe655460b07567a85570f8f3bdfde9fe0b28b237.lean/declarations/scaledinvariant--2aed29cb341643bb94f609c5.md) | 41 | `declaration-track:2aed29cb341643bb94f609c5db69ea4fb69fc13fb6099cee070294b88a9f3a0a` |
| 6 | `def` | [ScaledInvariant.receiptOnly](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantb661dda469e0c89e9c0e31bebe655460b07567a85570f8f3bdfde9fe0b28b237.lean/declarations/scaledinvariant-receiptonly--2e7c4bc0988cc5599d1edde7.md) | 50 | `declaration-track:2e7c4bc0988cc5599d1edde78ce1e56ab3f1c024c202ca5d4ae1c949911c6922` |
| 7 | `theorem` | [ScaledInvariant.holds_all_scales](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantb661dda469e0c89e9c0e31bebe655460b07567a85570f8f3bdfde9fe0b28b237.lean/declarations/scaledinvariant-holds-all-scales--682a12fbd8b8106927dee65a.md) | 53 | `result-track:682a12fbd8b8106927dee65a1d8f3f156959d2ef87215a03267e26f8ed477eb0` |
| 8 | `theorem` | [ScaledInvariant.receipts_only_if_accepted](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantb661dda469e0c89e9c0e31bebe655460b07567a85570f8f3bdfde9fe0b28b237.lean/declarations/scaledinvariant-receipts-only-if-accepted--a36d4052dd06cfac2043139e.md) | 59 | `result-track:a36d4052dd06cfac2043139e99e741303ae49e4d4ed0be11eb38388d07a74d21` |
| 9 | `structure` | [ScaleStepReceipt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantb661dda469e0c89e9c0e31bebe655460b07567a85570f8f3bdfde9fe0b28b237.lean/declarations/scalestepreceipt--408613823fbace00ce752a69.md) | 67 | `declaration-track:408613823fbace00ce752a692f808793f6f80f52d1c15a0842e0df1340d559e5` |
| 10 | `def` | [ScaleStepReceipt.accepted](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantb661dda469e0c89e9c0e31bebe655460b07567a85570f8f3bdfde9fe0b28b237.lean/declarations/scalestepreceipt-accepted--807cf952081abc9bc94c62d1.md) | 78 | `declaration-track:807cf952081abc9bc94c62d1f684726ff14d4c56f72707e46d480cc763d561db` |
| 11 | `theorem` | [ScaleStepReceipt.proof_content_unchanged](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantb661dda469e0c89e9c0e31bebe655460b07567a85570f8f3bdfde9fe0b28b237.lean/declarations/scalestepreceipt-proof-content-unchanged--edc71ff23912813b69291a63.md) | 81 | `result-track:edc71ff23912813b69291a63e8cfd930cd4428187275892c12c99c9d297001a9` |
| 12 | `theorem` | [ScaleStepReceipt.only_data_if_accepted](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantb661dda469e0c89e9c0e31bebe655460b07567a85570f8f3bdfde9fe0b28b237.lean/declarations/scalestepreceipt-only-data-if-accepted--5ef45499d8b2291767231602.md) | 87 | `result-track:5ef45499d8b2291767231602d11341b2937bc91c88ede7e1b6754bb411ede59c` |
| 13 | `theorem` | [stable_authority_all_scales](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantb661dda469e0c89e9c0e31bebe655460b07567a85570f8f3bdfde9fe0b28b237.lean/declarations/stable-authority-all-scales--0796e7f6d75b8015e3f72bcb.md) | 95 | `result-track:0796e7f6d75b8015e3f72bcbb65fdd5d99075447c84a3bc74626b5e4f34e871b` |
| 14 | `structure` | [ScaleFrame](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantb661dda469e0c89e9c0e31bebe655460b07567a85570f8f3bdfde9fe0b28b237.lean/declarations/scaleframe--baf19377373542ce338a9c23.md) | 102 | `declaration-track:baf19377373542ce338a9c230e381c4960979b0ffbc8659225d8c340f01f1f40` |
| 15 | `structure` | [ScaleChain](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantb661dda469e0c89e9c0e31bebe655460b07567a85570f8f3bdfde9fe0b28b237.lean/declarations/scalechain--83afd1175e37aa37f4fbfac0.md) | 111 | `declaration-track:83afd1175e37aa37f4fbfac06c451eebedae390c56e09c119bca5bd098383036` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
