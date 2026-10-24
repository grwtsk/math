# Verification target: GRWTSK.InformationTheory.Huffman.CheckedBuild

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "62eebb5de7b871e4cf4574b54dabd6112b2b9a05",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/InformationTheory/Huffman/CheckedBuild.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/CheckedBuild.lean/index.md) · [Full source](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/CheckedBuild.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `62eebb5de7b871e4cf4574b54dabd6112b2b9a05`.

Source path: `GRWTSK/InformationTheory/Huffman/CheckedBuild.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/InformationTheory/Huffman/CheckedBuild.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.InformationTheory.Huffman.HeapRefinement`](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/HeapRefinement.lean/index.md) — import line 1; pinned internal source present.
- [`GRWTSK.InformationTheory.Huffman.Bounds`](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Bounds.lean/index.md) — import line 2; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [CheckedHeapBuild](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/CheckedBuild.lean/declarations/checkedheapbuild--94896e1ffa692c1d43b6c525.md) | 16 | `declaration-track:94896e1ffa692c1d43b6c5252429f6039623c876a95cb5497b953ad4b0305469` |
| 2 | `theorem` | [all_merges_checked](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/CheckedBuild.lean/declarations/all-merges-checked--f7d64b1744ee2cf669220f9b.md) | 30 | `result-track:f7d64b1744ee2cf669220f9b6ceb137f87ad321606e820221f3ca54f2cad0707` |
| 3 | `theorem` | [fromWeights_refinement](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/CheckedBuild.lean/declarations/fromweights-refinement--4ce104de476555955ee5c0e8.md) | 47 | `result-track:4ce104de476555955ee5c0e802cb862ce9105c31a027c4f114f9f208f6a21e99` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
