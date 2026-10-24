# Verification target: GRWTSK.InformationTheory.Huffman.CheckedCodes

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "73b8589a671c50c13c0aee8723f57ce3cb93ef66",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/InformationTheory/Huffman/CheckedCodes.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/CheckedCodes.lean/index.md) · [Full source](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/CheckedCodes.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `73b8589a671c50c13c0aee8723f57ce3cb93ef66`.

Source path: `GRWTSK/InformationTheory/Huffman/CheckedCodes.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/InformationTheory/Huffman/CheckedCodes.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.InformationTheory.Huffman.SourceBounds`](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/SourceBounds.lean/index.md) — import line 1; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [checkedDotWithConversion](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/CheckedCodes.lean/declarations/checkeddotwithconversion--30e555aec2a51bad82d13f22.md) | 24 | `declaration-track:30e555aec2a51bad82d13f22ab02c76eee53a842319501e6dbb60edc6586f827` |
| 2 | `theorem` | [checkedDotWithConversion_eq_dotFrom](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/CheckedCodes.lean/declarations/checkeddotwithconversion-eq-dotfrom--2ec5adc1172df0e1b5a6fb20.md) | 37 | `result-track:2ec5adc1172df0e1b5a6fb205e4a55c7f2644f9ddfbd49009a10dcdc5ac7854a` |
| 3 | `def` | [checkedBitLengthWithConversion](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/CheckedCodes.lean/declarations/checkedbitlengthwithconversion--e8d7b40efaabb584d7f77581.md) | 62 | `declaration-track:e8d7b40efaabb584d7f775813f7e620b09dc93869e39313a3a64fb3794824bf7` |
| 4 | `theorem` | [fromWeights_code_conversions](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/CheckedCodes.lean/declarations/fromweights-code-conversions--be6d294d39c31e0d5134ad94.md) | 66 | `result-track:be6d294d39c31e0d5134ad943bd0a6165184297c315bc81c42ec2c8b2c42505b` |
| 5 | `theorem` | [fromWeights_checkedBitLength_eq](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/CheckedCodes.lean/declarations/fromweights-checkedbitlength-eq--aff2b7a3523908b832c6c12e.md) | 73 | `result-track:aff2b7a3523908b832c6c12ea3e7fcc15b07eb2f683f8fd2f4b4934443ebc302` |
| 6 | `theorem` | [fromWeights_checkedBitLength_spec](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/CheckedCodes.lean/declarations/fromweights-checkedbitlength-spec--1365694a2bbdec82261c3489.md) | 83 | `result-track:1365694a2bbdec82261c34892be8e2ddbaea36c562a54f78804b187f04805cf3` |
| 7 | `theorem` | [checkedBitLengthWithConversion_encodedBits](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/CheckedCodes.lean/declarations/checkedbitlengthwithconversion-encodedbits--4c426bde52cbf9d30912d91d.md) | 90 | `result-track:4c426bde52cbf9d30912d91d1c48d45c3fa4a2177aec379a07fb53eed8c27f63` |
| 8 | `theorem` | [inventory_bit_length_with_conversion](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/CheckedCodes.lean/declarations/inventory-bit-length-with-conversion--faafaa24a455873d0c0a83fc.md) | 100 | `result-track:faafaa24a455873d0c0a83fc972b24d3fd6119b9712f1fcc827c1116cc226d4d` |
| 9 | `theorem` | [oversized_zero_weight_refused](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/CheckedCodes.lean/declarations/oversized-zero-weight-refused--b25e5c6f05433a58836931ff.md) | 109 | `result-track:b25e5c6f05433a58836931ff20e44db6c209f4546417e8bd658c19d760bd57e6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
