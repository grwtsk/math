# Verification target: GRWTSK.InformationTheory.Huffman.BitLength

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "de91e735efb1ddfa39035e578bde4ee2d842c93f",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/InformationTheory/Huffman/BitLength.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/BitLength.lean/index.md) · [Full source](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/BitLength.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `de91e735efb1ddfa39035e578bde4ee2d842c93f`.

Source path: `GRWTSK/InformationTheory/Huffman/BitLength.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/InformationTheory/Huffman/BitLength.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.InformationTheory.Huffman.RoundTrip`](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/RoundTrip.lean/index.md) — import line 1; pinned internal source present.
- [`GRWTSK.InformationTheory.Huffman.FrequencyRefinement`](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/FrequencyRefinement.lean/index.md) — import line 2; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [codeLength](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/BitLength.lean/declarations/codelength--70f783a035089057984c40f9.md) | 15 | `declaration-track:70f783a035089057984c40f99a494ea69905e553026b26d7c679ce105e8c24bd` |
| 2 | `def` | [weightedLength](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/BitLength.lean/declarations/weightedlength--a8723daba2eff621ed4a876c.md) | 18 | `declaration-track:a8723daba2eff621ed4a876ce60fa77388467e8a4480294309645feb250ed387` |
| 3 | `theorem` | [codeLength_of_word](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/BitLength.lean/declarations/codelength-of-word--da3ee1ce1e95bbdfb85e9862.md) | 21 | `result-track:da3ee1ce1e95bbdfb85e9862f234ac98ff893b8b97cf45b23dcd783a9801ded9` |
| 4 | `theorem` | [encodeWith_length](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/BitLength.lean/declarations/encodewith-length--3a751e75769e4c781f4ee68f.md) | 25 | `result-track:3a751e75769e4c781f4ee68fc17f9dcd9fe8b8461cbc7e5f0593e18b206c2dd8` |
| 5 | `theorem` | [sum_map_add](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/BitLength.lean/declarations/sum-map-add--551d33c171cefb4c4a20399e.md) | 42 | `result-track:551d33c171cefb4c4a20399eacef0dc1237b236ae028ec18ab6213f03ca2e58b` |
| 6 | `theorem` | [sum_single](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/BitLength.lean/declarations/sum-single--a28cafcde7b7a124bc742c14.md) | 49 | `result-track:a28cafcde7b7a124bc742c143a95b4d90ffe61149c7e7c2962a02a6f1fdc171f` |
| 7 | `theorem` | [alphabet_nodup](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/BitLength.lean/declarations/alphabet-nodup--522841fcffb60d0cd80aa1c6.md) | 68 | `result-track:522841fcffb60d0cd80aa1c6a056fd7795afaecd3d6b815c55e959ef5d88ebb4` |
| 8 | `theorem` | [frequency_sum](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/BitLength.lean/declarations/frequency-sum--ea27678ffd115338f9743b99.md) | 86 | `result-track:ea27678ffd115338f9743b99e3617e189709b9fc83655b8fc7b37123e73fac09` |
| 9 | `theorem` | [frequency_total](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/BitLength.lean/declarations/frequency-total--53f50e10dac4116f28e6c50b.md) | 105 | `result-track:53f50e10dac4116f28e6c50b558211ef6623a0421b33b8afdc55c23c8df324b1` |
| 10 | `theorem` | [weightedLength_frequencies](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/BitLength.lean/declarations/weightedlength-frequencies--667e32a79c0033f108966ea0.md) | 110 | `result-track:667e32a79c0033f108966ea091a5c95af96376b7719aceac8e06c01859864816` |
| 11 | `theorem` | [weightedLength_encodeWith](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/BitLength.lean/declarations/weightedlength-encodewith--57e415e8d843cb7e52f07343.md) | 116 | `result-track:57e415e8d843cb7e52f0734327cabb73b1bd0ab8d11b1d8857f830ccfe264095` |
| 12 | `theorem` | [weightedLength_encodedBits](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/BitLength.lean/declarations/weightedlength-encodedbits--75cdd99161704841843cd944.md) | 123 | `result-track:75cdd99161704841843cd9449bb975973bdb2b9dce2abcb98e72738052fa4c3e` |
| 13 | `def` | [weightCodePairs](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/BitLength.lean/declarations/weightcodepairs--bea433742214b9a0efab75b0.md) | 129 | `declaration-track:bea433742214b9a0efab75b0bfc85836bd90e30b8699a90c2b7e21048424bef2` |
| 14 | `theorem` | [products_weightCodePairs](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/BitLength.lean/declarations/products-weightcodepairs--bb19a9cf74c4df8fbc513bd6.md) | 132 | `result-track:bb19a9cf74c4df8fbc513bd6ef649c836e46748006dd9634dd71383aba08e50a` |
| 15 | `theorem` | [weightCodePairs_fst](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/BitLength.lean/declarations/weightcodepairs-fst--152b8d1a88d1a106c49d6461.md) | 138 | `result-track:152b8d1a88d1a106c49d646170dbf5c8e9293cd95865932e5f9397b70775ecf1` |
| 16 | `theorem` | [weightCodePairs_total](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/BitLength.lean/declarations/weightcodepairs-total--12247e04965274cdbdf7147c.md) | 143 | `result-track:12247e04965274cdbdf7147c3baf65846a0544c608d1aa57b0ae22f233bda82d` |
| 17 | `def` | [checkedBitLength](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/BitLength.lean/declarations/checkedbitlength--c1e0aec72ea4e5576dc0a5d5.md) | 148 | `declaration-track:c1e0aec72ea4e5576dc0a5d5308db5b154321fceb0dca9473a457accb1ab3ad3` |
| 18 | `theorem` | [checkedBitLength_spec](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/BitLength.lean/declarations/checkedbitlength-spec--c2fea41b8a2cb702226f422c.md) | 155 | `result-track:c2fea41b8a2cb702226f422c20fcdc6c65f8cf2cc0abbb852cb4fda79a64b7a4` |
| 19 | `theorem` | [checkedBitLength_encodedBits](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/BitLength.lean/declarations/checkedbitlength-encodedbits--79a96dfd8885e924ea1c69c0.md) | 165 | `result-track:79a96dfd8885e924ea1c69c0b11ad781793350ec5c0d5a3abc46c7d066b3af73` |
| 20 | `theorem` | [checkedBitLength_some_iff](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/BitLength.lean/declarations/checkedbitlength-some-iff--14f6f331cfc25709975d454c.md) | 172 | `result-track:14f6f331cfc25709975d454c7891ebd538c89972868b8261d184e01dd4bcc8d5` |
| 21 | `theorem` | [checkedBitLength_none_iff](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/BitLength.lean/declarations/checkedbitlength-none-iff--a2da96935319c811b8d0f0ed.md) | 180 | `result-track:a2da96935319c811b8d0f0eda1d5cb0a8575aea3f18dcfe7983da0babd614f1d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
