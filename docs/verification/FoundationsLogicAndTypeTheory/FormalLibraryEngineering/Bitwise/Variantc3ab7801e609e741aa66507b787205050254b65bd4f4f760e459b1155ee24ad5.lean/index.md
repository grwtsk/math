# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Bitwise.Variantc3ab7801e609e741aa66507b787205050254b65bd4f4f760e459b1155ee24ad5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "36270562159e36b5df11c458ddb0b2c69b675856",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitwise/Variantc3ab7801e609e741aa66507b787205050254b65bd4f4f760e459b1155ee24ad5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitwise/Variantc3ab7801e609e741aa66507b787205050254b65bd4f4f760e459b1155ee24ad5.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitwise/Variantc3ab7801e609e741aa66507b787205050254b65bd4f4f760e459b1155ee24ad5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `36270562159e36b5df11c458ddb0b2c69b675856`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitwise/Variantc3ab7801e609e741aa66507b787205050254b65bd4f4f760e459b1155ee24ad5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitwise/Variantc3ab7801e609e741aa66507b787205050254b65bd4f4f760e459b1155ee24ad5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Nat.Bitwise.Lemmas` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Div.Basic` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [and_val](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitwise/Variantc3ab7801e609e741aa66507b787205050254b65bd4f4f760e459b1155ee24ad5.lean/declarations/and-val--d6df02c36a57cb30315713de.md) | 25 | `result-track:d6df02c36a57cb30315713de4c3ff24e91a005124b5285b0b2f045b96d0a28a1` |
| 2 | `theorem` | [or_val_of_two_pow](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitwise/Variantc3ab7801e609e741aa66507b787205050254b65bd4f4f760e459b1155ee24ad5.lean/declarations/or-val-of-two-pow--31ecdd0d41d929c5d68e03b2.md) | 28 | `result-track:31ecdd0d41d929c5d68e03b2f2fc8373694b0efefd00900156ca1484a24b62d5` |
| 3 | `theorem` | [or_val_of_uInt8Size](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitwise/Variantc3ab7801e609e741aa66507b787205050254b65bd4f4f760e459b1155ee24ad5.lean/declarations/or-val-of-uint8size--f1957e037b68e29d5d248795.md) | 31 | `result-track:f1957e037b68e29d5d248795c36759adbd5e4c60d0c6e0a928cfcee007ee8124` |
| 4 | `theorem` | [or_val_of_uInt16Size](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitwise/Variantc3ab7801e609e741aa66507b787205050254b65bd4f4f760e459b1155ee24ad5.lean/declarations/or-val-of-uint16size--01891c53c8bdf66fa5180f6c.md) | 32 | `result-track:01891c53c8bdf66fa5180f6cdb8fb3ce713d440332e9bd07eeb3689bd3034c96` |
| 5 | `theorem` | [or_val_of_uInt32Size](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitwise/Variantc3ab7801e609e741aa66507b787205050254b65bd4f4f760e459b1155ee24ad5.lean/declarations/or-val-of-uint32size--35b0ce7fbd9031525cf5f25d.md) | 33 | `result-track:35b0ce7fbd9031525cf5f25d78cbca3cdb6e04e01760b973b4825fd43f1c0cac` |
| 6 | `theorem` | [or_val_of_uInt64Size](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitwise/Variantc3ab7801e609e741aa66507b787205050254b65bd4f4f760e459b1155ee24ad5.lean/declarations/or-val-of-uint64size--186e4d9182084a9d2ec2dddc.md) | 34 | `result-track:186e4d9182084a9d2ec2dddce1ccdf3f97a3f4fa4f5637fcd4c62076c5b6e862` |
| 7 | `theorem` | [or_val_of_uSizeSize](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitwise/Variantc3ab7801e609e741aa66507b787205050254b65bd4f4f760e459b1155ee24ad5.lean/declarations/or-val-of-usizesize--cb6d7ac0ad13832893b61e21.md) | 35 | `result-track:cb6d7ac0ad13832893b61e21c3e1882b0b6b89ebd3caeef6393e5428f76dc8b8` |
| 8 | `theorem` | [or_val](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitwise/Variantc3ab7801e609e741aa66507b787205050254b65bd4f4f760e459b1155ee24ad5.lean/declarations/or-val--04e97c30812449bfcf2a87d8.md) | 37 | `result-track:04e97c30812449bfcf2a87d853d2c96dfba4b35bf80bccdb9a430fe6f5108aa4` |
| 9 | `theorem` | [xor_val_of_two_pow](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitwise/Variantc3ab7801e609e741aa66507b787205050254b65bd4f4f760e459b1155ee24ad5.lean/declarations/xor-val-of-two-pow--aeee6931a88c0add253ef37f.md) | 39 | `result-track:aeee6931a88c0add253ef37f3de8314e6526da3f2d1709280c4e79a2d514c538` |
| 10 | `theorem` | [xor_val_of_uInt8Size](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitwise/Variantc3ab7801e609e741aa66507b787205050254b65bd4f4f760e459b1155ee24ad5.lean/declarations/xor-val-of-uint8size--4c31a2804ef2e93e920d6aca.md) | 42 | `result-track:4c31a2804ef2e93e920d6acaa24e141b958facb26f73490550f41e396d22cc1a` |
| 11 | `theorem` | [xor_val_of_uInt16Size](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitwise/Variantc3ab7801e609e741aa66507b787205050254b65bd4f4f760e459b1155ee24ad5.lean/declarations/xor-val-of-uint16size--69f655fafd8a0ad785be74a0.md) | 43 | `result-track:69f655fafd8a0ad785be74a0f5817b31905b88dcea732a3b3825acf9893a38e9` |
| 12 | `theorem` | [xor_val_of_uInt32Size](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitwise/Variantc3ab7801e609e741aa66507b787205050254b65bd4f4f760e459b1155ee24ad5.lean/declarations/xor-val-of-uint32size--84ed8abd6026ee878ae67380.md) | 44 | `result-track:84ed8abd6026ee878ae67380b39676a25f5e65d45902baf8d3d4dd27496ec807` |
| 13 | `theorem` | [xor_val_of_uInt64Size](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitwise/Variantc3ab7801e609e741aa66507b787205050254b65bd4f4f760e459b1155ee24ad5.lean/declarations/xor-val-of-uint64size--981383c77e0b36ccf9cf1ff5.md) | 45 | `result-track:981383c77e0b36ccf9cf1ff5a5819c970c07974ad4d8b9d21fbe115c7a4702df` |
| 14 | `theorem` | [xor_val_of_uSizeSize](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitwise/Variantc3ab7801e609e741aa66507b787205050254b65bd4f4f760e459b1155ee24ad5.lean/declarations/xor-val-of-usizesize--ecc785f578464129713b9c06.md) | 46 | `result-track:ecc785f578464129713b9c062ee6980e897dadb5029995ab238cd78040d65019` |
| 15 | `theorem` | [xor_val](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitwise/Variantc3ab7801e609e741aa66507b787205050254b65bd4f4f760e459b1155ee24ad5.lean/declarations/xor-val--effc7b45e3c7b0a257a4b17b.md) | 48 | `result-track:effc7b45e3c7b0a257a4b17b9f564de98a31cd47920a378acd1c1bc29410e48e` |
| 16 | `theorem` | [shiftLeft_val](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitwise/Variantc3ab7801e609e741aa66507b787205050254b65bd4f4f760e459b1155ee24ad5.lean/declarations/shiftleft-val--de8d016d9eecfb0159fb6a0b.md) | 50 | `result-track:de8d016d9eecfb0159fb6a0bdafb05ede6cac28ac2babc7a468fd26a2eb08eba` |
| 17 | `theorem` | [shiftRight_val](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitwise/Variantc3ab7801e609e741aa66507b787205050254b65bd4f4f760e459b1155ee24ad5.lean/declarations/shiftright-val--f0be1bd3b73f1aca2356d9a5.md) | 52 | `result-track:f0be1bd3b73f1aca2356d9a59134e772381d4077b76cce5892e87b0c9ace13e1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
