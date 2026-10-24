# Verification target: GRWTSK.Algebra.LinearAlgebra.Discriminant.Variantc386a42beda07940a4f2a06fe2d71a0b65db871e4c464903faee970ef8192a23

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2ddf543a30ce5fa6a7d4604544416355c0f87e75",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Discriminant/Variantc386a42beda07940a4f2a06fe2d71a0b65db871e4c464903faee970ef8192a23.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Discriminant/Variantc386a42beda07940a4f2a06fe2d71a0b65db871e4c464903faee970ef8192a23.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Discriminant/Variantc386a42beda07940a4f2a06fe2d71a0b65db871e4c464903faee970ef8192a23.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2ddf543a30ce5fa6a7d4604544416355c0f87e75`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Discriminant/Variantc386a42beda07940a4f2a06fe2d71a0b65db871e4c464903faee970ef8192a23.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Discriminant/Variantc386a42beda07940a4f2a06fe2d71a0b65db871e4c464903faee970ef8192a23.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [discr](../../../../../mathematics/Algebra/LinearAlgebra/Discriminant/Variantc386a42beda07940a4f2a06fe2d71a0b65db871e4c464903faee970ef8192a23.lean/declarations/discr--c6549788a099bc2dbe37882b.md) | 76 | `declaration-track:c6549788a099bc2dbe37882bda0e1927176cff7dd82aef5d0033cae0e11bca3d` |
| 2 | `theorem` | [discr_def](../../../../../mathematics/Algebra/LinearAlgebra/Discriminant/Variantc386a42beda07940a4f2a06fe2d71a0b65db871e4c464903faee970ef8192a23.lean/declarations/discr-def--f6d7478ec674f57d6fff017f.md) | 79 | `result-track:f6d7478ec674f57d6fff017fe6c53d4a7b2bbdee1353103ddd7a4dd9a64a16bd` |
| 3 | `theorem` | [discr_eq_discr_of_algEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Discriminant/Variantc386a42beda07940a4f2a06fe2d71a0b65db871e4c464903faee970ef8192a23.lean/declarations/discr-eq-discr-of-algequiv--0feb4c075cd9fe2b2fa59a7e.md) | 83 | `result-track:0feb4c075cd9fe2b2fa59a7e06c7e2b42c2bff14097744e39b3b11599c42a042` |
| 4 | `theorem` | [discr_reindex](../../../../../mathematics/Algebra/LinearAlgebra/Discriminant/Variantc386a42beda07940a4f2a06fe2d71a0b65db871e4c464903faee970ef8192a23.lean/declarations/discr-reindex--aea35409028104a9c8bb6bde.md) | 93 | `result-track:aea35409028104a9c8bb6bde9872df28cf4f3d5edde6db6557b5b7f1d66bdc83` |
| 5 | `theorem` | [discr_zero_of_not_linearIndependent](../../../../../mathematics/Algebra/LinearAlgebra/Discriminant/Variantc386a42beda07940a4f2a06fe2d71a0b65db871e4c464903faee970ef8192a23.lean/declarations/discr-zero-of-not-linearindependent--027e8a3af1999f8c0c53eb37.md) | 97 | `result-track:027e8a3af1999f8c0c53eb37a503454ab2fbb12d2b4b2198b32b786fed1d84fc` |
| 6 | `theorem` | [discr_of_matrix_vecMul](../../../../../mathematics/Algebra/LinearAlgebra/Discriminant/Variantc386a42beda07940a4f2a06fe2d71a0b65db871e4c464903faee970ef8192a23.lean/declarations/discr-of-matrix-vecmul--5e138de4946c08b74e03d0d6.md) | 115 | `result-track:5e138de4946c08b74e03d0d6c3b4210252a4f4c3f37139aacfd517cddcd69f87` |
| 7 | `theorem` | [discr_of_matrix_mulVec](../../../../../mathematics/Algebra/LinearAlgebra/Discriminant/Variantc386a42beda07940a4f2a06fe2d71a0b65db871e4c464903faee970ef8192a23.lean/declarations/discr-of-matrix-mulvec--898c5bc205ed670b78323f42.md) | 122 | `result-track:898c5bc205ed670b78323f42c74ccaf955d4e926b14b0c0ad3fb096d5e0cc043` |
| 8 | `theorem` | [discr_not_zero_of_basis](../../../../../mathematics/Algebra/LinearAlgebra/Discriminant/Variantc386a42beda07940a4f2a06fe2d71a0b65db871e4c464903faee970ef8192a23.lean/declarations/discr-not-zero-of-basis--1bb074cafd1cb879cb0f1bde.md) | 136 | `result-track:1bb074cafd1cb879cb0f1bde6de798231832a2e9caf8a8fb0755ccde95745b00` |
| 9 | `theorem` | [discr_isUnit_of_basis](../../../../../mathematics/Algebra/LinearAlgebra/Discriminant/Variantc386a42beda07940a4f2a06fe2d71a0b65db871e4c464903faee970ef8192a23.lean/declarations/discr-isunit-of-basis--7e87ee00a5ff7bfe05eaa111.md) | 143 | `result-track:7e87ee00a5ff7bfe05eaa111ec3ba873e83c6263a4bd9f9de5265fddc7c0efe7` |
| 10 | `theorem` | [discr_eq_det_embeddingsMatrixReindex_pow_two](../../../../../mathematics/Algebra/LinearAlgebra/Discriminant/Variantc386a42beda07940a4f2a06fe2d71a0b65db871e4c464903faee970ef8192a23.lean/declarations/discr-eq-det-embeddingsmatrixreindex-pow-two--db45b38f6121bc9d0f26ab78.md) | 152 | `result-track:db45b38f6121bc9d0f26ab786536443d5eacdafae546b3471dcaa5f43a4e9227` |
| 11 | `theorem` | [discr_powerBasis_eq_prod](../../../../../mathematics/Algebra/LinearAlgebra/Discriminant/Variantc386a42beda07940a4f2a06fe2d71a0b65db871e4c464903faee970ef8192a23.lean/declarations/discr-powerbasis-eq-prod--1a70412e3ada5e70b3231f1b.md) | 159 | `result-track:1a70412e3ada5e70b3231f1ba420d009b1e19c1aa2a3f8a0822a90d75815fd2d` |
| 12 | `theorem` | [discr_powerBasis_eq_prod'](../../../../../mathematics/Algebra/LinearAlgebra/Discriminant/Variantc386a42beda07940a4f2a06fe2d71a0b65db871e4c464903faee970ef8192a23.lean/declarations/discr-powerbasis-eq-prod--895bf85630b3909e34ccc712.md) | 168 | `result-track:895bf85630b3909e34ccc712e86324be839c9a8eaf8462115cf037ccf9fa5f76` |
| 13 | `theorem` | [discr_powerBasis_eq_prod''](../../../../../mathematics/Algebra/LinearAlgebra/Discriminant/Variantc386a42beda07940a4f2a06fe2d71a0b65db871e4c464903faee970ef8192a23.lean/declarations/discr-powerbasis-eq-prod--ba4ad4b1c8c0240de413376b.md) | 178 | `result-track:ba4ad4b1c8c0240de413376b3b0fdf6182396c85e88d58757b6bb7886f971f63` |
| 14 | `theorem` | [discr_powerBasis_eq_norm](../../../../../mathematics/Algebra/LinearAlgebra/Discriminant/Variantc386a42beda07940a4f2a06fe2d71a0b65db871e4c464903faee970ef8192a23.lean/declarations/discr-powerbasis-eq-norm--51e1c1e141461d8703c09fe7.md) | 206 | `result-track:51e1c1e141461d8703c09fe78cd49349c3f87686277ecb80b2dcf496a670d087` |
| 15 | `theorem` | [discr_isIntegral](../../../../../mathematics/Algebra/LinearAlgebra/Discriminant/Variantc386a42beda07940a4f2a06fe2d71a0b65db871e4c464903faee970ef8192a23.lean/declarations/discr-isintegral--d8ae7f0155e188fbc4b90d9a.md) | 253 | `result-track:d8ae7f0155e188fbc4b90d9ad9754a37e2b712bde01f6671b1c96fed4e5321ab` |
| 16 | `theorem` | [discr_mul_isIntegral_mem_adjoin](../../../../../mathematics/Algebra/LinearAlgebra/Discriminant/Variantc386a42beda07940a4f2a06fe2d71a0b65db871e4c464903faee970ef8192a23.lean/declarations/discr-mul-isintegral-mem-adjoin--dd7b98423fde90a97fae05d9.md) | 261 | `result-track:dd7b98423fde90a97fae05d94ae234381380d56fb0f125cc297300ccb9f4c451` |
| 17 | `theorem` | [discr_eq_discr](../../../../../mathematics/Algebra/LinearAlgebra/Discriminant/Variantc386a42beda07940a4f2a06fe2d71a0b65db871e4c464903faee970ef8192a23.lean/declarations/discr-eq-discr--f07ccd1084eae84f94e23aa0.md) | 304 | `result-track:f07ccd1084eae84f94e23aa05c5088200b396f640fc8c88eb31ddad51dc40272` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
