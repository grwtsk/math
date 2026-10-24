# Verification target: GRWTSK.InformationTheory.Huffman.RoundTrip

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "07e1a9a291bd5002fc8e2dceed980242ba0752ec",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/InformationTheory/Huffman/RoundTrip.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/RoundTrip.lean/index.md) · [Full source](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/RoundTrip.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `07e1a9a291bd5002fc8e2dceed980242ba0752ec`.

Source path: `GRWTSK/InformationTheory/Huffman/RoundTrip.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/InformationTheory/Huffman/RoundTrip.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.InformationTheory.Huffman.Builder`](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Builder.lean/index.md) — import line 1; pinned internal source present.
- [`GRWTSK.InformationTheory.Huffman.Machine`](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Machine.lean/index.md) — import line 2; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Packet](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/RoundTrip.lean/declarations/packet--ca14cf3a0273094e81340900.md) | 18 | `declaration-track:ca14cf3a0273094e81340900ab0ef272671cef8db14ed886cc3b0191ded628ba` |
| 2 | `def` | [encodedBits](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/RoundTrip.lean/declarations/encodedbits--e54a256494812707f4df2baa.md) | 24 | `declaration-track:e54a256494812707f4df2baa1678fb015a141bc6f7a38e272f63544a7de869ef` |
| 3 | `theorem` | [encodedBits_spec](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/RoundTrip.lean/declarations/encodedbits-spec--0d0f6cb020fdf064c8a705f5.md) | 29 | `result-track:0d0f6cb020fdf064c8a705f55ba1c31549cc9ba33d5d3c64764c00ee60c41d77` |
| 4 | `def` | [encode](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/RoundTrip.lean/declarations/encode--05876bb33641ccfa90c724f3.md) | 35 | `declaration-track:05876bb33641ccfa90c724f33e3f7e6eddb973127d0b8edce4ac297e62317f26` |
| 5 | `def` | [zeroPadding](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/RoundTrip.lean/declarations/zeropadding--2672a7c86af2696dca51d029.md) | 41 | `declaration-track:2672a7c86af2696dca51d029d3b3fa910265100612e40f6af6a8431f11673077` |
| 6 | `theorem` | [zeroPadding_pack](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/RoundTrip.lean/declarations/zeropadding-pack--9c920535490a1b9f7248e882.md) | 44 | `result-track:9c920535490a1b9f7248e88243f4cd4937283f21df00172ca6c0106f8b914ff6` |
| 7 | `def` | [validResult](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/RoundTrip.lean/declarations/validresult--c0d5efe33476e09b7d04412c.md) | 49 | `declaration-track:c0d5efe33476e09b7d04412cca5646ece040c950ab8b1b9ae4c93a36c9629cd5` |
| 8 | `def` | [decode](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/RoundTrip.lean/declarations/decode--daba819031805c7326e68f24.md) | 55 | `declaration-track:daba819031805c7326e68f245ad6af097ace8c15d51dccb8972ed05e06fc1318` |
| 9 | `theorem` | [validResult_encode](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/RoundTrip.lean/declarations/validresult-encode--46d4177830e61cc06ea26bf2.md) | 65 | `result-track:46d4177830e61cc06ea26bf292f1c50ea65bf33beb55816ba9a5c5f3168d2142` |
| 10 | `theorem` | [decode_of_run](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/RoundTrip.lean/declarations/decode-of-run--7e375d6e947ff9eca12c2d0c.md) | 69 | `result-track:7e375d6e947ff9eca12c2d0c046ed38b980c8ba3b43cebdd818dc8a6f3b6b9bb` |
| 11 | `theorem` | [decode_encode](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/RoundTrip.lean/declarations/decode-encode--822157ecaccc79aad33c5eb0.md) | 84 | `result-track:822157ecaccc79aad33c5eb0571039ef10bb0d7abbfae607292f840ba306276c` |
| 12 | `theorem` | [encode_injective](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/RoundTrip.lean/declarations/encode-injective--f234632f07a9bbc0c232494f.md) | 106 | `result-track:f234632f07a9bbc0c232494fb2f2b2039619cefa43a206dc895c3f936e98b8ba` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
