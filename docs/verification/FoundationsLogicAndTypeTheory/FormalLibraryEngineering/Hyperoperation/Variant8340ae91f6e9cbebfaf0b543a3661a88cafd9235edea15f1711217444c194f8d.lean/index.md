# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Hyperoperation.Variant8340ae91f6e9cbebfaf0b543a3661a88cafd9235edea15f1711217444c194f8d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "080cd7fa2135da955e3c03e2b30104c43c1b04bd",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hyperoperation/Variant8340ae91f6e9cbebfaf0b543a3661a88cafd9235edea15f1711217444c194f8d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hyperoperation/Variant8340ae91f6e9cbebfaf0b543a3661a88cafd9235edea15f1711217444c194f8d.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hyperoperation/Variant8340ae91f6e9cbebfaf0b543a3661a88cafd9235edea15f1711217444c194f8d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `080cd7fa2135da955e3c03e2b30104c43c1b04bd`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hyperoperation/Variant8340ae91f6e9cbebfaf0b543a3661a88cafd9235edea15f1711217444c194f8d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hyperoperation/Variant8340ae91f6e9cbebfaf0b543a3661a88cafd9235edea15f1711217444c194f8d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Ring` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Parity` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [hyperoperation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hyperoperation/Variant8340ae91f6e9cbebfaf0b543a3661a88cafd9235edea15f1711217444c194f8d.lean/declarations/hyperoperation--ea6e473c74139e46b4487f49.md) | 44 | `declaration-track:ea6e473c74139e46b4487f49f443e2bba2bc90ae63603ecee9e8ba926c419cad` |
| 2 | `theorem` | [hyperoperation_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hyperoperation/Variant8340ae91f6e9cbebfaf0b543a3661a88cafd9235edea15f1711217444c194f8d.lean/declarations/hyperoperation-zero--79b130c1c512cbf7006ec005.md) | 55 | `result-track:79b130c1c512cbf7006ec005dca7e5df767213f0813dd2f7907f6df80473741c` |
| 3 | `theorem` | [hyperoperation_ge_three_eq_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hyperoperation/Variant8340ae91f6e9cbebfaf0b543a3661a88cafd9235edea15f1711217444c194f8d.lean/declarations/hyperoperation-ge-three-eq-one--ef294774898425965dcd9f19.md) | 59 | `result-track:ef294774898425965dcd9f19217bb4db5fd4d2ac68b2aa736dbeef5e5a1ed861` |
| 4 | `theorem` | [hyperoperation_recursion](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hyperoperation/Variant8340ae91f6e9cbebfaf0b543a3661a88cafd9235edea15f1711217444c194f8d.lean/declarations/hyperoperation-recursion--6531bf79c371fcca0320a017.md) | 63 | `result-track:6531bf79c371fcca0320a017b37ccc21c3115550b0a5cdbdaa695c5bfbf09404` |
| 5 | `theorem` | [hyperoperation_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hyperoperation/Variant8340ae91f6e9cbebfaf0b543a3661a88cafd9235edea15f1711217444c194f8d.lean/declarations/hyperoperation-one--28253698f20a868002463b76.md) | 70 | `result-track:28253698f20a868002463b76f21b152d066e3d62a3faa8159e14342131b5e848` |
| 6 | `theorem` | [hyperoperation_two](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hyperoperation/Variant8340ae91f6e9cbebfaf0b543a3661a88cafd9235edea15f1711217444c194f8d.lean/declarations/hyperoperation-two--746bc06463de1dd3f55e9560.md) | 79 | `result-track:746bc06463de1dd3f55e9560f0e61e2a744374361cff4e2fbf0dbaf6a13e334a` |
| 7 | `theorem` | [hyperoperation_three](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hyperoperation/Variant8340ae91f6e9cbebfaf0b543a3661a88cafd9235edea15f1711217444c194f8d.lean/declarations/hyperoperation-three--3c035cbb3f75809c35389f5f.md) | 92 | `result-track:3c035cbb3f75809c35389f5f5288a56cbf5e0d9ed15ffd5b28088663422cc4e1` |
| 8 | `theorem` | [hyperoperation_ge_two_eq_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hyperoperation/Variant8340ae91f6e9cbebfaf0b543a3661a88cafd9235edea15f1711217444c194f8d.lean/declarations/hyperoperation-ge-two-eq-self--9f0e6bcd5fbb5e0bd3e48de3.md) | 101 | `result-track:9f0e6bcd5fbb5e0bd3e48de3de05aa3bda4cfd2b48e3fe430aca13adb3422b98` |
| 9 | `theorem` | [hyperoperation_two_two_eq_four](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hyperoperation/Variant8340ae91f6e9cbebfaf0b543a3661a88cafd9235edea15f1711217444c194f8d.lean/declarations/hyperoperation-two-two-eq-four--9ddb78d23043aff6a16eec19.md) | 108 | `result-track:9ddb78d23043aff6a16eec193c44d9ef67a72d942aa093b6ac596c218487536a` |
| 10 | `theorem` | [hyperoperation_ge_three_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hyperoperation/Variant8340ae91f6e9cbebfaf0b543a3661a88cafd9235edea15f1711217444c194f8d.lean/declarations/hyperoperation-ge-three-one--a5afa55b49e9724755ad6bc0.md) | 114 | `result-track:a5afa55b49e9724755ad6bc02a8b90c06946861e384a2c7a2cdc0f1ebb69ad07` |
| 11 | `theorem` | [hyperoperation_ge_four_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hyperoperation/Variant8340ae91f6e9cbebfaf0b543a3661a88cafd9235edea15f1711217444c194f8d.lean/declarations/hyperoperation-ge-four-zero--a00b61f88691272d94da0f02.md) | 126 | `result-track:a00b61f88691272d94da0f022bd020a3f1a00473bb9743e0a5720ed3da90da5f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
