# Verification target: GRWTSK.Algebra.LinearAlgebra.Grassmannian.Variant9a100d75c33e4266fe37871e2eb2a59acea5caeaf82906288b8bddadb7f46bf6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6a9b4a132caced70f64eb036d49b7ad647a3d085",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Grassmannian/Variant9a100d75c33e4266fe37871e2eb2a59acea5caeaf82906288b8bddadb7f46bf6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Grassmannian/Variant9a100d75c33e4266fe37871e2eb2a59acea5caeaf82906288b8bddadb7f46bf6.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Grassmannian/Variant9a100d75c33e4266fe37871e2eb2a59acea5caeaf82906288b8bddadb7f46bf6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6a9b4a132caced70f64eb036d49b7ad647a3d085`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Grassmannian/Variant9a100d75c33e4266fe37871e2eb2a59acea5caeaf82906288b8bddadb7f46bf6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Grassmannian/Variant9a100d75c33e4266fe37871e2eb2a59acea5caeaf82906288b8bddadb7f46bf6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.Grassmannian.PluckerRecognition` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [involutionCompressionGram](../../../../../mathematics/Algebra/LinearAlgebra/Grassmannian/Variant9a100d75c33e4266fe37871e2eb2a59acea5caeaf82906288b8bddadb7f46bf6.lean/declarations/involutioncompressiongram--5558d42e0caa9bf3100734d8.md) | 27 | `declaration-track:5558d42e0caa9bf3100734d804d60be9c8176a48a3b7b6c24265fcd40daa9037` |
| 2 | `theorem` | [involutionCompressionGram_transpose](../../../../../mathematics/Algebra/LinearAlgebra/Grassmannian/Variant9a100d75c33e4266fe37871e2eb2a59acea5caeaf82906288b8bddadb7f46bf6.lean/declarations/involutioncompressiongram-transpose--63a53f7b2a7ae11884ff8b13.md) | 34 | `result-track:63a53f7b2a7ae11884ff8b13975c510df7b28e43084ff59d102151581bfd643d` |
| 3 | `theorem` | [involutionCompressionGram_mul_left](../../../../../mathematics/Algebra/LinearAlgebra/Grassmannian/Variant9a100d75c33e4266fe37871e2eb2a59acea5caeaf82906288b8bddadb7f46bf6.lean/declarations/involutioncompressiongram-mul-left--172d50a7f36d11640d5a223a.md) | 47 | `result-track:172d50a7f36d11640d5a223a0b9cbec6cedd49d5c063c379c0096e9d0e0d5f23` |
| 4 | `theorem` | [det_involutionCompressionGram_mul_left](../../../../../mathematics/Algebra/LinearAlgebra/Grassmannian/Variant9a100d75c33e4266fe37871e2eb2a59acea5caeaf82906288b8bddadb7f46bf6.lean/declarations/det-involutioncompressiongram-mul-left--406f2c8a0716196d6887f215.md) | 60 | `result-track:406f2c8a0716196d6887f215873be7163eb1e88cd6004a5a0e2583c9e04c5307` |
| 5 | `theorem` | [involutionCompressionGram_nonnegative_iff_mul_left](../../../../../mathematics/Algebra/LinearAlgebra/Grassmannian/Variant9a100d75c33e4266fe37871e2eb2a59acea5caeaf82906288b8bddadb7f46bf6.lean/declarations/involutioncompressiongram-nonnegative-iff-mul-left--316653dfd31919ae9d283816.md) | 74 | `result-track:316653dfd31919ae9d283816409919f5376af134e0c3b3235c8c67e4b0c7ce99` |
| 6 | `def` | [normalizedInvolutionCompression](../../../../../mathematics/Algebra/LinearAlgebra/Grassmannian/Variant9a100d75c33e4266fe37871e2eb2a59acea5caeaf82906288b8bddadb7f46bf6.lean/declarations/normalizedinvolutioncompression--f360324e351b6a7dae275a0e.md) | 87 | `declaration-track:f360324e351b6a7dae275a0e1f5974ff2bb39cc02660a3bc5820bc084f5dbaaf` |
| 7 | `theorem` | [det_frameGram_mul_left](../../../../../mathematics/Algebra/LinearAlgebra/Grassmannian/Variant9a100d75c33e4266fe37871e2eb2a59acea5caeaf82906288b8bddadb7f46bf6.lean/declarations/det-framegram-mul-left--6b2a9a5d41dc4e69744b0950.md) | 96 | `result-track:6b2a9a5d41dc4e69744b0950be28c453635f2d5f215dffdac9e21f474f595794` |
| 8 | `theorem` | [normalizedInvolutionCompression_mul_left](../../../../../mathematics/Algebra/LinearAlgebra/Grassmannian/Variant9a100d75c33e4266fe37871e2eb2a59acea5caeaf82906288b8bddadb7f46bf6.lean/declarations/normalizedinvolutioncompression-mul-left--8fc033cc73f747ae7abe8bed.md) | 110 | `result-track:8fc033cc73f747ae7abe8bedb5309903887fe5dcaf7d47aa3ae04b0629af7159` |
| 9 | `theorem` | [normalizedInvolutionCompression_eq_det_of_gram_one](../../../../../mathematics/Algebra/LinearAlgebra/Grassmannian/Variant9a100d75c33e4266fe37871e2eb2a59acea5caeaf82906288b8bddadb7f46bf6.lean/declarations/normalizedinvolutioncompression-eq-det-of-gram-one--fcded3b5ce0addcf6f2c89e6.md) | 125 | `result-track:fcded3b5ce0addcf6f2c89e6f09da79c676828554a72fd018797e91dc351a415` |
| 10 | `theorem` | [involutionCompressionGram_nonnegative_iff_of_rowSpace_eq](../../../../../mathematics/Algebra/LinearAlgebra/Grassmannian/Variant9a100d75c33e4266fe37871e2eb2a59acea5caeaf82906288b8bddadb7f46bf6.lean/declarations/involutioncompressiongram-nonnegative-iff-of-rowspace-eq--bba7d5ef02776e7b117714fb.md) | 138 | `result-track:bba7d5ef02776e7b117714fbf1e88f919092018ae2d348b1dcccadf8971e2989` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
