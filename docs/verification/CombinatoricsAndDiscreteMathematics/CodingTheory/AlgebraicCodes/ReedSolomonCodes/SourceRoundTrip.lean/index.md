# Verification target: GRWTSK.InformationTheory.ReedSolomon.SourceRoundTrip

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6a7b49560260b75c0a742a531f91f149420dcc5f",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/InformationTheory/ReedSolomon/SourceRoundTrip.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/CodingTheory/AlgebraicCodes/ReedSolomonCodes/SourceRoundTrip.lean/index.md) · [Full source](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/CodingTheory/AlgebraicCodes/ReedSolomonCodes/SourceRoundTrip.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6a7b49560260b75c0a742a531f91f149420dcc5f`.

Source path: `GRWTSK/InformationTheory/ReedSolomon/SourceRoundTrip.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/InformationTheory/ReedSolomon/SourceRoundTrip.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.InformationTheory.Huffman.RoundTrip`](../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/RoundTrip.lean/index.md) — import line 1; pinned internal source present.
- [`GRWTSK.InformationTheory.ReedSolomon.Wire`](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/CodingTheory/AlgebraicCodes/ReedSolomonCodes/Wire.lean/index.md) — import line 2; pinned internal source present.
- [`GRWTSK.InformationTheory.ReedSolomon.Runtime`](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/CodingTheory/AlgebraicCodes/ReedSolomonCodes/Runtime.lean/index.md) — import line 3; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [fourOfWords](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/CodingTheory/AlgebraicCodes/ReedSolomonCodes/SourceRoundTrip.lean/declarations/fourofwords--ec365119797339afa7727d9d.md) | 19 | `declaration-track:ec365119797339afa7727d9d704d3799edf6690f599bdec19f9609422a685658` |
| 2 | `def` | [wordsOfFour](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/CodingTheory/AlgebraicCodes/ReedSolomonCodes/SourceRoundTrip.lean/declarations/wordsoffour--1fbec8f2a4ded0ade33216bb.md) | 23 | `declaration-track:1fbec8f2a4ded0ade33216bb8a831d8dd44503b13a845768bdfea13b1425cce7` |
| 3 | `theorem` | [wordsOfFour_fourOfWords](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/CodingTheory/AlgebraicCodes/ReedSolomonCodes/SourceRoundTrip.lean/declarations/wordsoffour-fourofwords--4783b858247cddb383be8d94.md) | 25 | `result-track:4783b858247cddb383be8d941cdc413430fe765cff6f8356369e5acfbfcda5cb` |
| 4 | `def` | [encodeStripes](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/CodingTheory/AlgebraicCodes/ReedSolomonCodes/SourceRoundTrip.lean/declarations/encodestripes--ce54f8aaee94f4f3ed2d6183.md) | 46 | `declaration-track:ce54f8aaee94f4f3ed2d61833bb3b597d2f7f38956896ba829b74e5ed62ee104` |
| 5 | `theorem` | [encodeRuntime_select_fullEncode](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/CodingTheory/AlgebraicCodes/ReedSolomonCodes/SourceRoundTrip.lean/declarations/encoderuntime-select-fullencode--6f7ee0527793927da0a05648.md) | 51 | `result-track:6f7ee0527793927da0a0564802fcd458fd48f8ffdba59d81d6aa6a1f37df27bd` |
| 6 | `def` | [decodeStripes](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/CodingTheory/AlgebraicCodes/ReedSolomonCodes/SourceRoundTrip.lean/declarations/decodestripes--1682a8e6bb52ae8a1db85538.md) | 55 | `declaration-track:1682a8e6bb52ae8a1db8553835602a1689b086e63ace939d6e640662d6afc3ea` |
| 7 | `theorem` | [decodeStripes_encodeStripes](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/CodingTheory/AlgebraicCodes/ReedSolomonCodes/SourceRoundTrip.lean/declarations/decodestripes-encodestripes--d06f9dca5da6a00ff26e006a.md) | 63 | `result-track:d06f9dca5da6a00ff26e006a79ec081a0d3008da83dadaa3ade5aae235c3f64b` |
| 8 | `structure` | [SourcePacket](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/CodingTheory/AlgebraicCodes/ReedSolomonCodes/SourceRoundTrip.lean/declarations/sourcepacket--fff3196711b02c322d088f32.md) | 77 | `declaration-track:fff3196711b02c322d088f32b03ce6be8c84b10436c10e37d0124acb382867a0` |
| 9 | `def` | [encodeSource](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/CodingTheory/AlgebraicCodes/ReedSolomonCodes/SourceRoundTrip.lean/declarations/encodesource--b5de0722fa689d0bcf1bb925.md) | 83 | `declaration-track:b5de0722fa689d0bcf1bb9252c9f2ad8fd9963c825a8b6f079422d4ed1fc0900` |
| 10 | `def` | [decodeSource](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/CodingTheory/AlgebraicCodes/ReedSolomonCodes/SourceRoundTrip.lean/declarations/decodesource--88ff03e477de46442a87172e.md) | 89 | `declaration-track:88ff03e477de46442a87172eac8826d4c5e0b76f40e84c3eaf0ca845358453c4` |
| 11 | `theorem` | [source_roundtrip](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/CodingTheory/AlgebraicCodes/ReedSolomonCodes/SourceRoundTrip.lean/declarations/source-roundtrip--69da564340dc892b71ca502a.md) | 98 | `result-track:69da564340dc892b71ca502a0bd76f5a7c7affee74f093bf559b667b7437cb57` |
| 12 | `theorem` | [encodeSource_injective](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/CodingTheory/AlgebraicCodes/ReedSolomonCodes/SourceRoundTrip.lean/declarations/encodesource-injective--7569eab642b8ba453e8bee8f.md) | 119 | `result-track:7569eab642b8ba453e8bee8f0faa2a20cb4789f1ee9ff05c4c1466eea96fd266` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
