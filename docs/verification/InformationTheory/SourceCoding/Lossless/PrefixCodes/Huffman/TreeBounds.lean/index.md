# Verification target: GRWTSK.InformationTheory.Huffman.TreeBounds

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c2e023896082b45905a077eb6f2d34e058117ef2",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/InformationTheory/Huffman/TreeBounds.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/TreeBounds.lean/index.md) · [Full source](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/TreeBounds.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c2e023896082b45905a077eb6f2d34e058117ef2`.

Source path: `GRWTSK/InformationTheory/Huffman/TreeBounds.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/InformationTheory/Huffman/TreeBounds.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.InformationTheory.Huffman.Builder`](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Builder.lean/index.md) — import line 1; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Tree.symbols_length_pos](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/TreeBounds.lean/declarations/tree-symbols-length-pos--2cd1956228d6f7a77fd3e550.md) | 13 | `result-track:2cd1956228d6f7a77fd3e550b0e3d94c392f4f9ddc71fdcb80499e895d8ad78a` |
| 2 | `theorem` | [Tree.path_length_lt](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/TreeBounds.lean/declarations/tree-path-length-lt--f14e2f988395247db39b12f3.md) | 18 | `result-track:f14e2f988395247db39b12f35a30da590e1117314a39f6e4910fc54c24b13c16` |
| 3 | `def` | [queueLeafCount](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/TreeBounds.lean/declarations/queueleafcount--d9c0cda0316c7ffd53a96811.md) | 48 | `declaration-track:d9c0cda0316c7ffd53a968118429880e3e86a2b75c4e91d4e2bc6ec5b5fccb06` |
| 4 | `theorem` | [queueLeafCount_insert](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/TreeBounds.lean/declarations/queueleafcount-insert--ee75f1befa17938dea20908a.md) | 51 | `result-track:ee75f1befa17938dea20908a5ad0e934a0971c3106f8860784141588caac2916` |
| 5 | `theorem` | [queueLeafCount_order](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/TreeBounds.lean/declarations/queueleafcount-order--f4c2409ef2879a4dad5abfd4.md) | 64 | `result-track:f4c2409ef2879a4dad5abfd4a512279cb4f3a64aa9a6fcbfdcc6f28bb670560f` |
| 6 | `theorem` | [buildFuel_leafCount](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/TreeBounds.lean/declarations/buildfuel-leafcount--6b7b094bc3e60e176ee3284c.md) | 72 | `result-track:6b7b094bc3e60e176ee3284ca844b76b6d46fb6610219033eae636e76b1d7917` |
| 7 | `theorem` | [seedEntries_leafCount_le](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/TreeBounds.lean/declarations/seedentries-leafcount-le--aa8f7ebce869e702702859d0.md) | 95 | `result-track:aa8f7ebce869e702702859d02a475a74ec464274f2b59ecf6580d3ada047d380` |
| 8 | `theorem` | [fromWeights_leafCount_le](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/TreeBounds.lean/declarations/fromweights-leafcount-le--c07773a48881fc554c84c715.md) | 110 | `result-track:c07773a48881fc554c84c7158eb73522febb9ab9a21bf72a0e318fd8d63ccf4e` |
| 9 | `theorem` | [fromWeights_word_length_le](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/TreeBounds.lean/declarations/fromweights-word-length-le--514c35166def58daa1cb83c4.md) | 120 | `result-track:514c35166def58daa1cb83c41581fb698893a90e97a70289ecfc7f34ea479fc7` |
| 10 | `def` | [Tree.nodeCount](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/TreeBounds.lean/declarations/tree-nodecount--d577286846301dc20a0817a8.md) | 134 | `declaration-track:d577286846301dc20a0817a8952fae56119a65813472957a9b36a56b2bd03f9b` |
| 11 | `theorem` | [Tree.nodeCount_eq](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/TreeBounds.lean/declarations/tree-nodecount-eq--63306741c05d12b47b603faf.md) | 138 | `result-track:63306741c05d12b47b603fafdf1d80d9a389ed213e23e0ae6fbcf4493838e0f0` |
| 12 | `theorem` | [fromWeights_nodeCount_le](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/TreeBounds.lean/declarations/fromweights-nodecount-le--1658b146d9be477cf5fbb882.md) | 146 | `result-track:1658b146d9be477cf5fbb882d2ed462b36cf45a76bf7e2440108a5dff32ce4af` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
