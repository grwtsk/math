# Verification target: GRWTSK.InformationTheory.Huffman.Machine

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "290c678d0a5989df33e732919d486163d2274104",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/InformationTheory/Huffman/Machine.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Machine.lean/index.md) · [Full source](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Machine.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `290c678d0a5989df33e732919d486163d2274104`.

Source path: `GRWTSK/InformationTheory/Huffman/Machine.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/InformationTheory/Huffman/Machine.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.InformationTheory.Huffman.Stream`](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Stream.lean/index.md) — import line 1; pinned internal source present.
- [`GRWTSK.InformationTheory.Huffman.Wire`](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Wire.lean/index.md) — import line 2; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [State](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Machine.lean/declarations/state--b2629baced3eec6603b8064e.md) | 16 | `declaration-track:b2629baced3eec6603b8064e27dbcaa559ad2c1138fb0d8265b4602b3c280692` |
| 2 | `def` | [arrive](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Machine.lean/declarations/arrive--0ab4c7c33c40837e39bc70f9.md) | 19 | `declaration-track:0ab4c7c33c40837e39bc70f9b411ae1aff19f838a1e1e4fb6d31df2d8665cfd6` |
| 3 | `def` | [step](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Machine.lean/declarations/step--93c309c2092d55ebea939fbd.md) | 25 | `declaration-track:93c309c2092d55ebea939fbd2c579499788024115b8f7e3e71d12699cb93e40f` |
| 4 | `def` | [run](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Machine.lean/declarations/run--d08a4b5e537b1f8f847e77ba.md) | 31 | `declaration-track:d08a4b5e537b1f8f847e77ba5ad49481d2a8d0d9f49f175e55e2f114edd60a2b` |
| 5 | `theorem` | [run_append](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Machine.lean/declarations/run-append--b309b19f77d9f58109fbd689.md) | 36 | `result-track:b309b19f77d9f58109fbd689b56b08f8bbc3840b788c56cc2b1f626ab00a8649` |
| 6 | `theorem` | [run_arrive_path](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Machine.lean/declarations/run-arrive-path--a4d5434ccd783dd9ff5863d4.md) | 49 | `result-track:a4d5434ccd783dd9ff5863d4e84014079fea0e88a6bfa411320ce53e83beb54d` |
| 7 | `theorem` | [run_word](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Machine.lean/declarations/run-word--2969d3a4b63014232e18a752.md) | 78 | `result-track:2969d3a4b63014232e18a752d573cc336debed6f906cbbc661ed92188d833835` |
| 8 | `theorem` | [run_encodeWith](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Machine.lean/declarations/run-encodewith--7e23b407b4ca540b3da41ab6.md) | 95 | `result-track:7e23b407b4ca540b3da41ab667b0b2cc2d96b360998e932457d7aa45b640854e` |
| 9 | `theorem` | [run_encodeCovered](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Machine.lean/declarations/run-encodecovered--700040104625929440f35520.md) | 118 | `result-track:700040104625929440f355205050b92b847e6beb8ea9c2dbd36ada69a8e5ca38` |
| 10 | `theorem` | [valid_encoding_decoders_agree](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Machine.lean/declarations/valid-encoding-decoders-agree--03bbd2efeddf0276035287a2.md) | 126 | `result-track:03bbd2efeddf0276035287a2973ada4f8ec21652010015ac0fe96c7abde79a81` |
| 11 | `theorem` | [run_packed_encoding](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Machine.lean/declarations/run-packed-encoding--79a20dd83635b535ec4f14e6.md) | 134 | `result-track:79a20dd83635b535ec4f14e624c452a50432922d39d5d3bdaf85e0fb3998000b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
