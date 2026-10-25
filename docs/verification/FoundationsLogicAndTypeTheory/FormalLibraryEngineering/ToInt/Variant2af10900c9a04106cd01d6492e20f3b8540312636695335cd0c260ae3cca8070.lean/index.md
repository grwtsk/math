# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ToInt.Variant2af10900c9a04106cd01d6492e20f3b8540312636695335cd0c260ae3cca8070

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9ce03302160114787f29b91166cafdda15170d90",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant2af10900c9a04106cd01d6492e20f3b8540312636695335cd0c260ae3cca8070.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant2af10900c9a04106cd01d6492e20f3b8540312636695335cd0c260ae3cca8070.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant2af10900c9a04106cd01d6492e20f3b8540312636695335cd0c260ae3cca8070.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9ce03302160114787f29b91166cafdda15170d90`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant2af10900c9a04106cd01d6492e20f3b8540312636695335cd0c260ae3cca8070.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant2af10900c9a04106cd01d6492e20f3b8540312636695335cd0c260ae3cca8070.lean.json)

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
| 1 | `theorem` | [exists_translation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant2af10900c9a04106cd01d6492e20f3b8540312636695335cd0c260ae3cca8070.lean/declarations/exists-translation--140886826dd59c9ad1491706.md) | 42 | `result-track:140886826dd59c9ad14917068ca251884ba96b9a27cdc71b3d5cee372d9bab52` |
| 2 | `def` | [toInt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant2af10900c9a04106cd01d6492e20f3b8540312636695335cd0c260ae3cca8070.lean/declarations/toint--0bb286572f862abde7c4ffa2.md) | 67 | `declaration-track:0bb286572f862abde7c4ffa2ee4b880321e58952996bf6a4adf4fe666c033a7b` |
| 3 | `theorem` | [toInt_le_toInt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant2af10900c9a04106cd01d6492e20f3b8540312636695335cd0c260ae3cca8070.lean/declarations/toint-le-toint--d9e6d850845adb4347d21b38.md) | 72 | `result-track:d9e6d850845adb4347d21b3857f1d9796c5b327324d5e07ae6e247b56f13f26e` |
| 4 | `theorem` | [toInt_lt_toInt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant2af10900c9a04106cd01d6492e20f3b8540312636695335cd0c260ae3cca8070.lean/declarations/toint-lt-toint--a34202abed54440d9325598d.md) | 75 | `result-track:a34202abed54440d9325598d84540f83398e991905443a91f019af051caa9fb7` |
| 5 | `theorem` | [toInt_eq_toInt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant2af10900c9a04106cd01d6492e20f3b8540312636695335cd0c260ae3cca8070.lean/declarations/toint-eq-toint--2abb7d20829ae24d5c1615cc.md) | 78 | `result-track:2abb7d20829ae24d5c1615cc50d95ad341b3995c32e8ef9d236aaa0eb9dd9120` |
| 6 | `theorem` | [toInt_ne_toInt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant2af10900c9a04106cd01d6492e20f3b8540312636695335cd0c260ae3cca8070.lean/declarations/toint-ne-toint--b07e1088eecf37bb61e4d6fa.md) | 81 | `result-track:b07e1088eecf37bb61e4d6fa062538cf7dde2d60abac8bba819181d1909491e7` |
| 7 | `theorem` | [toInt_nle_toInt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant2af10900c9a04106cd01d6492e20f3b8540312636695335cd0c260ae3cca8070.lean/declarations/toint-nle-toint--45ee30b818bfa3f3e2d46652.md) | 84 | `result-track:45ee30b818bfa3f3e2d46652170b63a1b3f50784cceb4aa455ab65196096788d` |
| 8 | `theorem` | [toInt_nlt_toInt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant2af10900c9a04106cd01d6492e20f3b8540312636695335cd0c260ae3cca8070.lean/declarations/toint-nlt-toint--9b629e8f12e5502e7cb573c3.md) | 87 | `result-track:9b629e8f12e5502e7cb573c3e55d93dc8f13e98204096959f438fd93ba584ee7` |
| 9 | `theorem` | [toInt_sup_toInt_eq_toInt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant2af10900c9a04106cd01d6492e20f3b8540312636695335cd0c260ae3cca8070.lean/declarations/toint-sup-toint-eq-toint--0438556bfc39fd9e3158afc0.md) | 90 | `result-track:0438556bfc39fd9e3158afc0a000bd27e25e2a9af028d3788ccbe7fa9d79392a` |
| 10 | `theorem` | [toInt_inf_toInt_eq_toInt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant2af10900c9a04106cd01d6492e20f3b8540312636695335cd0c260ae3cca8070.lean/declarations/toint-inf-toint-eq-toint--14889f10d8aa01249b319a35.md) | 94 | `result-track:14889f10d8aa01249b319a35e6944acd41947af940e9997df14e737ecc2990f9` |
| 11 | `def` | [mkFinFun](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant2af10900c9a04106cd01d6492e20f3b8540312636695335cd0c260ae3cca8070.lean/declarations/mkfinfun--f2d55ba8e225d1c04e066315.md) | 102 | `declaration-track:f2d55ba8e225d1c04e066315774b5d87b97212b74eb5d0d70516b25ce8c14e24` |
| 12 | `def` | [translateToInt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant2af10900c9a04106cd01d6492e20f3b8540312636695335cd0c260ae3cca8070.lean/declarations/translatetoint--d6ff88ed715aba42cb81d33a.md) | 114 | `declaration-track:d6ff88ed715aba42cb81d33a82e4f9ddc2e39e2637e96ce51d044cceba9f8fd6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
