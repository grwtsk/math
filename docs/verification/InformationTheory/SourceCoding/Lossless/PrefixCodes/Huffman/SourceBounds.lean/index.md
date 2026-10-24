# Verification target: GRWTSK.InformationTheory.Huffman.SourceBounds

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7f9d211c537919baa83f6ecefd0aa4431b354e78",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/InformationTheory/Huffman/SourceBounds.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/SourceBounds.lean/index.md) · [Full source](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/SourceBounds.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7f9d211c537919baa83f6ecefd0aa4431b354e78`.

Source path: `GRWTSK/InformationTheory/Huffman/SourceBounds.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/InformationTheory/Huffman/SourceBounds.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.InformationTheory.Huffman.TreeBounds`](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/TreeBounds.lean/index.md) — import line 1; pinned internal source present.
- [`GRWTSK.InformationTheory.Huffman.BitLength`](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/BitLength.lean/index.md) — import line 2; pinned internal source present.
- [`GRWTSK.InformationTheory.Huffman.CheckedBuild`](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/CheckedBuild.lean/index.md) — import line 3; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [codeLength_le](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/SourceBounds.lean/declarations/codelength-le--87e0ce72460355b9a5efb6ce.md) | 19 | `result-track:87e0ce72460355b9a5efb6ce3f9363c0d0121ed2cf77fd4a69ef3a6aa7e70dca` |
| 2 | `theorem` | [weightCodePairs_lengths](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/SourceBounds.lean/declarations/weightcodepairs-lengths--bff29ec254962efbb1e9423c.md) | 28 | `result-track:bff29ec254962efbb1e9423cb26ffad0d4656d83cd47d356d1f5336677a58ecf` |
| 3 | `theorem` | [inventory_histogram](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/SourceBounds.lean/declarations/inventory-histogram--bc3575955a809f9ae17d2feb.md) | 41 | `result-track:bc3575955a809f9ae17d2febeb11947663831adc562854cddf2e1b98a43bbadd` |
| 4 | `theorem` | [built_source_bit_bound](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/SourceBounds.lean/declarations/built-source-bit-bound--3f3fc5fcd45ba5028df0fe22.md) | 49 | `result-track:3f3fc5fcd45ba5028df0fe22bd57ae6ca5e29c02abc0dfa05dd58583370afba1` |
| 5 | `theorem` | [inventory_bit_length](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/SourceBounds.lean/declarations/inventory-bit-length--930e81b5b937b63d7d57897b.md) | 60 | `result-track:930e81b5b937b63d7d57897bc3758a1af5314a7b334316acc330a34329f0e885` |
| 6 | `theorem` | [encodedBits_bound](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/SourceBounds.lean/declarations/encodedbits-bound--ff8e5ba7ab36987ecfc5bba3.md) | 66 | `result-track:ff8e5ba7ab36987ecfc5bba3cc0f3e86958484db03c559e51d6a249e665ea6f9` |
| 7 | `theorem` | [encodedBytes_bound](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/SourceBounds.lean/declarations/encodedbytes-bound--2629969c2bc01733ac426b24.md) | 74 | `result-track:2629969c2bc01733ac426b24b4d1d7657d77a6ee30b273df09cf1bf1d0bd036d` |
| 8 | `theorem` | [inventory_position_guard](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/SourceBounds.lean/declarations/inventory-position-guard--d3c77412e0ce60e2813d83d9.md) | 81 | `result-track:d3c77412e0ce60e2813d83d9c7c77f49cab0fed0a8d2d0688d2b4b82c14ce6a4` |
| 9 | `theorem` | [inventory_heap](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/SourceBounds.lean/declarations/inventory-heap--dd534f9af79993fed8fa5d11.md) | 88 | `result-track:dd534f9af79993fed8fa5d11511f52b6cd0ddda0cb2fec1f819b7c1ed546a7c2` |
| 10 | `def` | [counterAfter](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/SourceBounds.lean/declarations/counterafter--82c302c99ad8ca5ab0064dfc.md) | 100 | `declaration-track:82c302c99ad8ca5ab0064dfc7387754c0c3c5f5266ace8878503d18152a7d9da` |
| 11 | `theorem` | [counterAfter_eq](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/SourceBounds.lean/declarations/counterafter-eq--e30f47f58fe745505e1139ce.md) | 103 | `result-track:e30f47f58fe745505e1139ced06da5b1e84db774b4e6bdc866ab3c76774f9a63` |
| 12 | `theorem` | [final_counter_check](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/SourceBounds.lean/declarations/final-counter-check--fac5c68b7b3ef861735dfa39.md) | 115 | `result-track:fac5c68b7b3ef861735dfa393f37cfb7b68cb58febb3a25958009615835f3c4a` |
| 13 | `theorem` | [emitted_bit_access](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/SourceBounds.lean/declarations/emitted-bit-access--6d836262a8c2c3b4d819a68a.md) | 121 | `result-track:6d836262a8c2c3b4d819a68aa1ec1866a956436225ccc539c1a4436dc07b96ed` |
| 14 | `theorem` | [observed_prefix_increment](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/SourceBounds.lean/declarations/observed-prefix-increment--78d83e5866d319aec1778b08.md) | 134 | `result-track:78d83e5866d319aec1778b084c089fc1869a6fbc5202025aeccb6c0698e092d1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
