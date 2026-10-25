# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.BinaryRec.Variant41bac35226b7f1e827adf9c13f9250d487a43f1485d2a73d2917d184c152a14d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e69b5c2b242f6927ca159556b7638166aba6d34b",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/BinaryRec/Variant41bac35226b7f1e827adf9c13f9250d487a43f1485d2a73d2917d184c152a14d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/BinaryRec/Variant41bac35226b7f1e827adf9c13f9250d487a43f1485d2a73d2917d184c152a14d.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/BinaryRec/Variant41bac35226b7f1e827adf9c13f9250d487a43f1485d2a73d2917d184c152a14d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e69b5c2b242f6927ca159556b7638166aba6d34b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/BinaryRec/Variant41bac35226b7f1e827adf9c13f9250d487a43f1485d2a73d2917d184c152a14d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/BinaryRec/Variant41bac35226b7f1e827adf9c13f9250d487a43f1485d2a73d2917d184c152a14d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Batteries.Tactic.Alias` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Init` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [bit](../../../../mathematics/FoundationsLogicAndTypeTheory/BinaryRec/Variant41bac35226b7f1e827adf9c13f9250d487a43f1485d2a73d2917d184c152a14d.lean/declarations/bit--058febf411b0876f1194dc98.md) | 27 | `declaration-track:058febf411b0876f1194dc981bdedbe7a61d8c332414341fde1640c4277e9cd3` |
| 2 | `theorem` | [shiftRight_one](../../../../mathematics/FoundationsLogicAndTypeTheory/BinaryRec/Variant41bac35226b7f1e827adf9c13f9250d487a43f1485d2a73d2917d184c152a14d.lean/declarations/shiftright-one--47cf13847634e5eec4d7f1fd.md) | 30 | `result-track:47cf13847634e5eec4d7f1fdaa46a718c670d84b18867a27fa7a76c31f36f838` |
| 3 | `theorem` | [bit_decide_mod_two_eq_one_shiftRight_one](../../../../mathematics/FoundationsLogicAndTypeTheory/BinaryRec/Variant41bac35226b7f1e827adf9c13f9250d487a43f1485d2a73d2917d184c152a14d.lean/declarations/bit-decide-mod-two-eq-one-shiftright-one--a52eb6a19df657962652e1a4.md) | 33 | `result-track:a52eb6a19df657962652e1a42ccc2d35acfc2f219f4aaf5e901a4863dfa03f19` |
| 4 | `theorem` | [bit_testBit_zero_shiftRight_one](../../../../mathematics/FoundationsLogicAndTypeTheory/BinaryRec/Variant41bac35226b7f1e827adf9c13f9250d487a43f1485d2a73d2917d184c152a14d.lean/declarations/bit-testbit-zero-shiftright-one--31811d15f84e1c512868baac.md) | 37 | `result-track:31811d15f84e1c512868baacdaa7b2827ce1fee5d80cdcbff63fceac05693a05` |
| 5 | `theorem` | [bit_eq_zero_iff](../../../../mathematics/FoundationsLogicAndTypeTheory/BinaryRec/Variant41bac35226b7f1e827adf9c13f9250d487a43f1485d2a73d2917d184c152a14d.lean/declarations/bit-eq-zero-iff--ad400aabf83b85bd8a99164b.md) | 41 | `result-track:ad400aabf83b85bd8a99164b294f0f55b7fbc161defaf4d8eb10975369bee588` |
| 6 | `def` | [bitCasesOn](../../../../mathematics/FoundationsLogicAndTypeTheory/BinaryRec/Variant41bac35226b7f1e827adf9c13f9250d487a43f1485d2a73d2917d184c152a14d.lean/declarations/bitcaseson--fc87d2cc4d7d4af69f8edc42.md) | 48 | `declaration-track:fc87d2cc4d7d4af69f8edc426bb03f163045d80e3d7e1c4fec20ff74b59f070a` |
| 7 | `def` | [binaryRec](../../../../mathematics/FoundationsLogicAndTypeTheory/BinaryRec/Variant41bac35226b7f1e827adf9c13f9250d487a43f1485d2a73d2917d184c152a14d.lean/declarations/binaryrec--6a2d156ac082d3a20fed3a03.md) | 59 | `declaration-track:6a2d156ac082d3a20fed3a03d2924ae482de445e7437891eac6e2c257d81f9a0` |
| 8 | `def` | [binaryRec'](../../../../mathematics/FoundationsLogicAndTypeTheory/BinaryRec/Variant41bac35226b7f1e827adf9c13f9250d487a43f1485d2a73d2917d184c152a14d.lean/declarations/binaryrec--b768334a02f7eaa30e59d9b7.md) | 70 | `declaration-track:b768334a02f7eaa30e59d9b76994dfb5caf776f234b0700ed5939d9379c0f5d7` |
| 9 | `def` | [binaryRecFromOne](../../../../mathematics/FoundationsLogicAndTypeTheory/BinaryRec/Variant41bac35226b7f1e827adf9c13f9250d487a43f1485d2a73d2917d184c152a14d.lean/declarations/binaryrecfromone--ea82a3eab04adccdee178e23.md) | 83 | `declaration-track:ea82a3eab04adccdee178e237eee971eb849f1f678d77aa9360e890e890eb893` |
| 10 | `theorem` | [bit_val](../../../../mathematics/FoundationsLogicAndTypeTheory/BinaryRec/Variant41bac35226b7f1e827adf9c13f9250d487a43f1485d2a73d2917d184c152a14d.lean/declarations/bit-val--5394bc6b95b2d714a767d14a.md) | 93 | `result-track:5394bc6b95b2d714a767d14af8bfd5f7a4299db39e243fcf3f9dace0c50c59d3` |
| 11 | `theorem` | [bit_div_two](../../../../mathematics/FoundationsLogicAndTypeTheory/BinaryRec/Variant41bac35226b7f1e827adf9c13f9250d487a43f1485d2a73d2917d184c152a14d.lean/declarations/bit-div-two--4cc583d709266cfe582da8b9.md) | 97 | `result-track:4cc583d709266cfe582da8b9c76c7227e634a21f22b7f23d582f3880b80cfaee` |
| 12 | `theorem` | [bit_mod_two](../../../../mathematics/FoundationsLogicAndTypeTheory/BinaryRec/Variant41bac35226b7f1e827adf9c13f9250d487a43f1485d2a73d2917d184c152a14d.lean/declarations/bit-mod-two--2c71e3b51dde4ecf510ae0b6.md) | 103 | `result-track:2c71e3b51dde4ecf510ae0b670d1cb855b1a55c4ef27eba7d20c00d030d8ed62` |
| 13 | `theorem` | [bit_shiftRight_one](../../../../mathematics/FoundationsLogicAndTypeTheory/BinaryRec/Variant41bac35226b7f1e827adf9c13f9250d487a43f1485d2a73d2917d184c152a14d.lean/declarations/bit-shiftright-one--fd8a80a325a7d3679541b682.md) | 107 | `result-track:fd8a80a325a7d3679541b682faf0da4806ce22b467c7460792fed2e08870ff6c` |
| 14 | `theorem` | [testBit_bit_zero](../../../../mathematics/FoundationsLogicAndTypeTheory/BinaryRec/Variant41bac35226b7f1e827adf9c13f9250d487a43f1485d2a73d2917d184c152a14d.lean/declarations/testbit-bit-zero--373c0e231e67e32130b9a9ad.md) | 110 | `result-track:373c0e231e67e32130b9a9ad0b407d12e08369fe7b62d86f2c2106f82da25116` |
| 15 | `theorem` | [bitCasesOn_bit](../../../../mathematics/FoundationsLogicAndTypeTheory/BinaryRec/Variant41bac35226b7f1e827adf9c13f9250d487a43f1485d2a73d2917d184c152a14d.lean/declarations/bitcaseson-bit--8ee240ccdd3d10e77101656f.md) | 116 | `result-track:8ee240ccdd3d10e77101656f0f84c4c2718289a39df3d20133e25b99d494b8c1` |
| 16 | `theorem` | [binaryRec_zero](../../../../mathematics/FoundationsLogicAndTypeTheory/BinaryRec/Variant41bac35226b7f1e827adf9c13f9250d487a43f1485d2a73d2917d184c152a14d.lean/declarations/binaryrec-zero--74366b9faab2ed1316dd41c0.md) | 124 | `result-track:74366b9faab2ed1316dd41c04d93c8e85ae39dc8696a731503352764469f27a8` |
| 17 | `theorem` | [binaryRec_one](../../../../mathematics/FoundationsLogicAndTypeTheory/BinaryRec/Variant41bac35226b7f1e827adf9c13f9250d487a43f1485d2a73d2917d184c152a14d.lean/declarations/binaryrec-one--f95a4acfca4899c5917306a3.md) | 130 | `result-track:f95a4acfca4899c5917306a3b69fc4d47dff0c4d0821fae145601c1f7f69d282` |
| 18 | `theorem` | [binaryRec_eq](../../../../mathematics/FoundationsLogicAndTypeTheory/BinaryRec/Variant41bac35226b7f1e827adf9c13f9250d487a43f1485d2a73d2917d184c152a14d.lean/declarations/binaryrec-eq--ca80b8e5e7ccb53f42d32d7f.md) | 136 | `result-track:ca80b8e5e7ccb53f42d32d7f5b677be8fa2da777428c12c9f167cd7fea255830` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
