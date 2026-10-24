# Verification target: GRWTSK.Algebra.LinearAlgebra.Similarity.Variantffb32ecfdf70f6a4bfe2dc5e215b6dfd57fe48ea8656e5260b826a0071cefd76

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3cff648f35160a58c31275a9acdacf03aecece7e",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Similarity/Variantffb32ecfdf70f6a4bfe2dc5e215b6dfd57fe48ea8656e5260b826a0071cefd76.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Similarity/Variantffb32ecfdf70f6a4bfe2dc5e215b6dfd57fe48ea8656e5260b826a0071cefd76.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Similarity/Variantffb32ecfdf70f6a4bfe2dc5e215b6dfd57fe48ea8656e5260b826a0071cefd76.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3cff648f35160a58c31275a9acdacf03aecece7e`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Similarity/Variantffb32ecfdf70f6a4bfe2dc5e215b6dfd57fe48ea8656e5260b826a0071cefd76.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Similarity/Variantffb32ecfdf70f6a4bfe2dc5e215b6dfd57fe48ea8656e5260b826a0071cefd76.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Legacy.BinaryLogicMatrix.Token` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [MatrixSimilarity](../../../../../mathematics/Algebra/LinearAlgebra/Similarity/Variantffb32ecfdf70f6a4bfe2dc5e215b6dfd57fe48ea8656e5260b826a0071cefd76.lean/declarations/matrixsimilarity--b0cb06ec73cfc22dd50c79de.md) | 13 | `declaration-track:b0cb06ec73cfc22dd50c79defc30011b1faba403e603f91566644549d31dcb27` |
| 2 | `def` | [similarityValue](../../../../../mathematics/Algebra/LinearAlgebra/Similarity/Variantffb32ecfdf70f6a4bfe2dc5e215b6dfd57fe48ea8656e5260b826a0071cefd76.lean/declarations/similarityvalue--2b2764d8cad12f42f12ae4e8.md) | 19 | `declaration-track:2b2764d8cad12f42f12ae4e8276f5a36909bf71a31870323de952f68fc15b4bd` |
| 3 | `def` | [similarityGE](../../../../../mathematics/Algebra/LinearAlgebra/Similarity/Variantffb32ecfdf70f6a4bfe2dc5e215b6dfd57fe48ea8656e5260b826a0071cefd76.lean/declarations/similarityge--d3a52412cb61df87ab51f34b.md) | 22 | `declaration-track:d3a52412cb61df87ab51f34bfc7b4e7417fa551c3007f8003c66940d2e6a9d99` |
| 4 | `inductive` | [SimilarityMode](../../../../../mathematics/Algebra/LinearAlgebra/Similarity/Variantffb32ecfdf70f6a4bfe2dc5e215b6dfd57fe48ea8656e5260b826a0071cefd76.lean/declarations/similaritymode--8fee99d5bc3afc406705911a.md) | 27 | `declaration-track:8fee99d5bc3afc406705911a38d9350a0a1fee95a879cc71f3ec57e20a2222bb` |
| 5 | `structure` | [SimilarityThreshold](../../../../../mathematics/Algebra/LinearAlgebra/Similarity/Variantffb32ecfdf70f6a4bfe2dc5e215b6dfd57fe48ea8656e5260b826a0071cefd76.lean/declarations/similaritythreshold--6151bdb07148bf226db8254b.md) | 35 | `declaration-track:6151bdb07148bf226db8254b4e26c34b2cb17b16880f9600aa865f6bed33d4c5` |
| 6 | `theorem` | [matrixSimilarity_denominator_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/Similarity/Variantffb32ecfdf70f6a4bfe2dc5e215b6dfd57fe48ea8656e5260b826a0071cefd76.lean/declarations/matrixsimilarity-denominator-ne-zero--8f459ad01045c093b69fc28f.md) | 40 | `result-track:8f459ad01045c093b69fc28f6bb2108220d273bb97efc28cd58e89b4c57ddc9d` |
| 7 | `theorem` | [matrixSimilarity_operational_boundary](../../../../../mathematics/Algebra/LinearAlgebra/Similarity/Variantffb32ecfdf70f6a4bfe2dc5e215b6dfd57fe48ea8656e5260b826a0071cefd76.lean/declarations/matrixsimilarity-operational-boundary--73dd656e6e356d3715b0f876.md) | 45 | `result-track:73dd656e6e356d3715b0f876d85fe69f7a466535073b47880fe78a77c4dc7047` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
