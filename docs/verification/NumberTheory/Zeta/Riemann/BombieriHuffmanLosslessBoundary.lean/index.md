# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.BombieriHuffmanLosslessBoundary

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d20b7c1af47bfeb31b1b2dbb11ac96957e6d1f3d",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/BombieriHuffmanLosslessBoundary.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/BombieriHuffmanLosslessBoundary.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/BombieriHuffmanLosslessBoundary.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d20b7c1af47bfeb31b1b2dbb11ac96957e6d1f3d`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/BombieriHuffmanLosslessBoundary.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/BombieriHuffmanLosslessBoundary.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.InformationTheory.Huffman.RoundTrip`](../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/RoundTrip.lean/index.md) — import line 8; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentBombieriMomentInformationLoss`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentBombieriMomentInformationLoss.lean/index.md) — import line 9; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [HasTotalLosslessDecoder](../../../../../mathematics/NumberTheory/Zeta/Riemann/BombieriHuffmanLosslessBoundary.lean/declarations/hastotallosslessdecoder--410f9f521ef49675859ae89d.md) | 42 | `declaration-track:410f9f521ef49675859ae89d4e27571342f850750be012e84fb697867e4a268c` |
| 2 | `theorem` | [injective_of_hasTotalLosslessDecoder](../../../../../mathematics/NumberTheory/Zeta/Riemann/BombieriHuffmanLosslessBoundary.lean/declarations/injective-of-hastotallosslessdecoder--62c2bbd2463659d8f25d9d4c.md) | 46 | `result-track:62c2bbd2463659d8f25d9d4cf6376eb1d43781b73053ee444eb09a74e51ceb0a` |
| 3 | `theorem` | [huffman_bytes_have_total_lossless_decoder](../../../../../mathematics/NumberTheory/Zeta/Riemann/BombieriHuffmanLosslessBoundary.lean/declarations/huffman-bytes-have-total-lossless-decoder--77b0456e4a93fa910e433499.md) | 62 | `result-track:77b0456e4a93fa910e433499f8af4ea383485a131f7923f445173ac08ffa0ff0` |
| 4 | `theorem` | [two_bombieri_moments_have_no_total_lossless_decoder](../../../../../mathematics/NumberTheory/Zeta/Riemann/BombieriHuffmanLosslessBoundary.lean/declarations/two-bombieri-moments-have-no-total-lossless-decoder--a320610038d56e5d75c35268.md) | 74 | `result-track:a320610038d56e5d75c35268e5be37c45b2cbbe95f1d50338b9150ca67e17b9c` |
| 5 | `theorem` | [no_total_lossless_decoder_from_moment_only_postprocessing](../../../../../mathematics/NumberTheory/Zeta/Riemann/BombieriHuffmanLosslessBoundary.lean/declarations/no-total-lossless-decoder-from-moment-only-postprocessing--94aadaca300b91b5d5707fb2.md) | 88 | `result-track:94aadaca300b91b5d5707fb2b279d266abcf3b3e4096a104884493e377f47eef` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
