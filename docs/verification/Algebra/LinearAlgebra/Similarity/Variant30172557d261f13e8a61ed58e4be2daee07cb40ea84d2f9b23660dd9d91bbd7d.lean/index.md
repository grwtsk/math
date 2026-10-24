# Verification target: GRWTSK.Algebra.LinearAlgebra.Similarity.Variant30172557d261f13e8a61ed58e4be2daee07cb40ea84d2f9b23660dd9d91bbd7d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3a7491d99e9c0c4a82e4ad9a97b69cfb137c9fc5",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Similarity/Variant30172557d261f13e8a61ed58e4be2daee07cb40ea84d2f9b23660dd9d91bbd7d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Similarity/Variant30172557d261f13e8a61ed58e4be2daee07cb40ea84d2f9b23660dd9d91bbd7d.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Similarity/Variant30172557d261f13e8a61ed58e4be2daee07cb40ea84d2f9b23660dd9d91bbd7d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3a7491d99e9c0c4a82e4ad9a97b69cfb137c9fc5`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Similarity/Variant30172557d261f13e8a61ed58e4be2daee07cb40ea84d2f9b23660dd9d91bbd7d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Similarity/Variant30172557d261f13e8a61ed58e4be2daee07cb40ea84d2f9b23660dd9d91bbd7d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Legacy.BinaryLogicMatrix.Token` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [MatrixSimilarity](../../../../../mathematics/Algebra/LinearAlgebra/Similarity/Variant30172557d261f13e8a61ed58e4be2daee07cb40ea84d2f9b23660dd9d91bbd7d.lean/declarations/matrixsimilarity--2c62f8de5cf905fa4feb7020.md) | 5 | `declaration-track:2c62f8de5cf905fa4feb70207219437abc60661ff404fbb8eef154916045192d` |
| 2 | `def` | [similarityValue](../../../../../mathematics/Algebra/LinearAlgebra/Similarity/Variant30172557d261f13e8a61ed58e4be2daee07cb40ea84d2f9b23660dd9d91bbd7d.lean/declarations/similarityvalue--e2981d59f4e25b290d687b9a.md) | 11 | `declaration-track:e2981d59f4e25b290d687b9a2963f9789133ed7882b44b82450e436490dce502` |
| 3 | `def` | [similarityGE](../../../../../mathematics/Algebra/LinearAlgebra/Similarity/Variant30172557d261f13e8a61ed58e4be2daee07cb40ea84d2f9b23660dd9d91bbd7d.lean/declarations/similarityge--8d5c398a9ffc223637742a32.md) | 14 | `declaration-track:8d5c398a9ffc223637742a32524494b34777647417c6e19b0d50e9a51f366ac2` |
| 4 | `inductive` | [SimilarityMode](../../../../../mathematics/Algebra/LinearAlgebra/Similarity/Variant30172557d261f13e8a61ed58e4be2daee07cb40ea84d2f9b23660dd9d91bbd7d.lean/declarations/similaritymode--ec7573ebb1cfcfde39910e47.md) | 19 | `declaration-track:ec7573ebb1cfcfde39910e47d14fb2e906e13db2a19b555aaaab98ffa1064fce` |
| 5 | `structure` | [SimilarityThreshold](../../../../../mathematics/Algebra/LinearAlgebra/Similarity/Variant30172557d261f13e8a61ed58e4be2daee07cb40ea84d2f9b23660dd9d91bbd7d.lean/declarations/similaritythreshold--0ffa8482fcb6b36e4a23770a.md) | 27 | `declaration-track:0ffa8482fcb6b36e4a23770a6ece9219ff0769efb8790158fe9a98c1c8741a6f` |
| 6 | `theorem` | [matrixSimilarity_denominator_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/Similarity/Variant30172557d261f13e8a61ed58e4be2daee07cb40ea84d2f9b23660dd9d91bbd7d.lean/declarations/matrixsimilarity-denominator-ne-zero--5febfaa8a0beb72fbacb6907.md) | 32 | `result-track:5febfaa8a0beb72fbacb69074446ed4e25e9ff5fd41f80fd77423eac193f50ae` |
| 7 | `theorem` | [matrixSimilarity_operational_boundary](../../../../../mathematics/Algebra/LinearAlgebra/Similarity/Variant30172557d261f13e8a61ed58e4be2daee07cb40ea84d2f9b23660dd9d91bbd7d.lean/declarations/matrixsimilarity-operational-boundary--e2578889903a61a0c8cecac9.md) | 37 | `result-track:e2578889903a61a0c8cecac9175e009404e7b9868b72792b1705da1ecf7165d2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
