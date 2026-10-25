# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Five.Variant25be1f1c3f613efbfac2e655f412a12f02d972d5e0b6414cc582f9ab297b4dff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eef631b431b045c7c5151af7992e7101edfb5d2c",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Five/Variant25be1f1c3f613efbfac2e655f412a12f02d972d5e0b6414cc582f9ab297b4dff.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Five/Variant25be1f1c3f613efbfac2e655f412a12f02d972d5e0b6414cc582f9ab297b4dff.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Five/Variant25be1f1c3f613efbfac2e655f412a12f02d972d5e0b6414cc582f9ab297b4dff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eef631b431b045c7c5151af7992e7101edfb5d2c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Five/Variant25be1f1c3f613efbfac2e655f412a12f02d972d5e0b6414cc582f9ab297b4dff.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Five/Variant25be1f1c3f613efbfac2e655f412a12f02d972d5e0b6414cc582f9ab297b4dff.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.Logic.Layer.Core` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ThinkFiveLayerEquivalence](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Five/Variant25be1f1c3f613efbfac2e655f412a12f02d972d5e0b6414cc582f9ab297b4dff.lean/declarations/thinkfivelayerequivalence--dd0fd94b4b8a7708e3e48305.md) | 15 | `declaration-track:dd0fd94b4b8a7708e3e4830559bcabcfe81389d7757afec3d4e8ffd87e2b9904` |
| 2 | `def` | [ThinkFiveLayerEquivalence.logicToWisdom](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Five/Variant25be1f1c3f613efbfac2e655f412a12f02d972d5e0b6414cc582f9ab297b4dff.lean/declarations/thinkfivelayerequivalence-logictowisdom--d6320c66c0d39021fc72b835.md) | 60 | `declaration-track:d6320c66c0d39021fc72b835694af21526238bfab53c3ea4434d3ef4e5c0e436` |
| 3 | `def` | [ThinkFiveLayerEquivalence.wisdomToLogic](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Five/Variant25be1f1c3f613efbfac2e655f412a12f02d972d5e0b6414cc582f9ab297b4dff.lean/declarations/thinkfivelayerequivalence-wisdomtologic--a4005f04a6c0fc41c941372b.md) | 69 | `declaration-track:a4005f04a6c0fc41c941372b5cacc2dd87587bf4faa2e98fc6d8036d5ff0325f` |
| 4 | `theorem` | [ThinkFiveLayerEquivalence.logic_wisdom_round_trip](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Five/Variant25be1f1c3f613efbfac2e655f412a12f02d972d5e0b6414cc582f9ab297b4dff.lean/declarations/thinkfivelayerequivalence-logic-wisdom-round-trip--2230726ccc4d908006e9807a.md) | 78 | `result-track:2230726ccc4d908006e9807a3a41e8b4eeb0be08ce8e62808ed098c11140b322` |
| 5 | `theorem` | [ThinkFiveLayerEquivalence.wisdom_logic_round_trip](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Five/Variant25be1f1c3f613efbfac2e655f412a12f02d972d5e0b6414cc582f9ab297b4dff.lean/declarations/thinkfivelayerequivalence-wisdom-logic-round-trip--39dfca25b4efc180e3efd48b.md) | 90 | `result-track:39dfca25b4efc180e3efd48b4461856ba499e9496937180073222392464204b6` |
| 6 | `theorem` | [ThinkFiveLayerEquivalence.logicToWisdom_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Five/Variant25be1f1c3f613efbfac2e655f412a12f02d972d5e0b6414cc582f9ab297b4dff.lean/declarations/thinkfivelayerequivalence-logictowisdom-injective--b4cb0e022d3c579057905c71.md) | 102 | `result-track:b4cb0e022d3c579057905c719a733959250bab927aca1f46ad2511562bf8f2eb` |
| 7 | `theorem` | [ThinkFiveLayerEquivalence.logicToWisdom_surjective](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Five/Variant25be1f1c3f613efbfac2e655f412a12f02d972d5e0b6414cc582f9ab297b4dff.lean/declarations/thinkfivelayerequivalence-logictowisdom-surjective--af33846176dce87fe502318c.md) | 113 | `result-track:af33846176dce87fe502318c0f685352dff67d7a1c6dfae9d1d37d0552429e60` |
| 8 | `theorem` | [ThinkFiveLayerEquivalence.logicToWisdom_bijective](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Five/Variant25be1f1c3f613efbfac2e655f412a12f02d972d5e0b6414cc582f9ab297b4dff.lean/declarations/thinkfivelayerequivalence-logictowisdom-bijective--fa59a7b896dcc8e1860b7c12.md) | 120 | `result-track:fa59a7b896dcc8e1860b7c120c79e91fe5997986aefc2b7e46f757e9823891ba` |
| 9 | `structure` | [ThinkFiveLayerCertificate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Five/Variant25be1f1c3f613efbfac2e655f412a12f02d972d5e0b6414cc582f9ab297b4dff.lean/declarations/thinkfivelayercertificate--88e6629d676f3171685df734.md) | 127 | `declaration-track:88e6629d676f3171685df73438507002d53ecfcdfd95e46939818368b1a97d9b` |
| 10 | `theorem` | [ThinkFiveLayerCertificate.sound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Five/Variant25be1f1c3f613efbfac2e655f412a12f02d972d5e0b6414cc582f9ab297b4dff.lean/declarations/thinkfivelayercertificate-sound--00a1b5d332a5711e4cee7d29.md) | 135 | `result-track:00a1b5d332a5711e4cee7d29332f56610fe511351c9f6bc1325dd214ed97b285` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
