# Verification target: GRWTSK.InformationTheory.Huffman.Examples

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "639bffedba1f6935a199a3b9f7890b61dc37c6e5",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/InformationTheory/Huffman/Examples.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Examples.lean/index.md) · [Full source](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Examples.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `639bffedba1f6935a199a3b9f7890b61dc37c6e5`.

Source path: `GRWTSK/InformationTheory/Huffman/Examples.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/InformationTheory/Huffman/Examples.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.InformationTheory.Huffman.RoundTrip`](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/RoundTrip.lean/index.md) — import line 1; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pythonAssignment](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Examples.lean/declarations/pythonassignment--9ec49e0a04c2cbdce7647edd.md) | 12 | `declaration-track:9ec49e0a04c2cbdce7647edd502ff8363659927147cbf37b37ca04556c2907d5` |
| 2 | `theorem` | [assignment_bytes](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Examples.lean/declarations/assignment-bytes--735ab9c1bb6b1fec7265e8c4.md) | 14 | `result-track:735ab9c1bb6b1fec7265e8c4a79aab87fc87899b01b34ce38dd5a8697b499044` |
| 3 | `theorem` | [assignment_bitCount](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Examples.lean/declarations/assignment-bitcount--bbb3758e6fdc1a63a51a1e9b.md) | 16 | `result-track:bbb3758e6fdc1a63a51a1e9be220d02647a7e1a57a122159eb765bc01d9fd6fb` |
| 4 | `theorem` | [assignment_roundTrip](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Examples.lean/declarations/assignment-roundtrip--988e0e33d59d4a6bfd051ea3.md) | 18 | `result-track:988e0e33d59d4a6bfd051ea3e3d5aaef5e385a47d2d37b46ea6edabd33e03784` |
| 5 | `theorem` | [deterministic_ties](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Examples.lean/declarations/deterministic-ties--4092b9123d412a073a232987.md) | 21 | `result-track:4092b9123d412a073a232987ec8c53690bc474123b2f3021d387c57abc98c436` |
| 6 | `theorem` | [singleton_zero_bits](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Examples.lean/declarations/singleton-zero-bits--687c30f8af7696554c201ff0.md) | 24 | `result-track:687c30f8af7696554c201ff01f51d8e205dd7f3aee3c1687293bc6ec0ccc5575` |
| 7 | `theorem` | [singleton_bitCount](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Examples.lean/declarations/singleton-bitcount--41f8dd5021d6c2c68764622e.md) | 26 | `result-track:41f8dd5021d6c2c68764622ec525999352351c36b402c82b0652f0db744f7422` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
