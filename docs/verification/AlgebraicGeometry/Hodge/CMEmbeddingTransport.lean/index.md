# Verification target: GRWTSK.AlgebraicGeometry.Hodge.CMEmbeddingTransport

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4d1581c59aab2d8091d96fa67b2b3459e060641c",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/AlgebraicGeometry/Hodge/CMEmbeddingTransport.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/AlgebraicGeometry/Hodge/CMEmbeddingTransport.lean/index.md) · [Full source](../../../../mathematics/AlgebraicGeometry/Hodge/CMEmbeddingTransport.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4d1581c59aab2d8091d96fa67b2b3459e060641c`.

Source path: `GRWTSK/AlgebraicGeometry/Hodge/CMEmbeddingTransport.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/AlgebraicGeometry/Hodge/CMEmbeddingTransport.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.AlgebraicGeometry.Hodge.CMRegularBaseChange`](../../../../mathematics/AlgebraicGeometry/Hodge/CMRegularBaseChange.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.AlgebraicGeometry.Hodge.CMGaloisEigenlines`](../../../../mathematics/AlgebraicGeometry/Hodge/CMGaloisEigenlines.lean/index.md) — import line 6; pinned internal source present.
- [`GRWTSK.LinearAlgebra.TensorProduct.RationalScalarDescent`](../../../../mathematics/LinearAlgebra/TensorProduct/RationalScalarDescent.lean/index.md) — import line 7; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [transportedCharacter](../../../../mathematics/AlgebraicGeometry/Hodge/CMEmbeddingTransport.lean/declarations/transportedcharacter--cfd20424f4db86bf10da623e.md) | 34 | `declaration-track:cfd20424f4db86bf10da623eeeceb048410c8d7257ff5836fac3f7b857417e68` |
| 2 | `theorem` | [transportedCharacter_apply](../../../../mathematics/AlgebraicGeometry/Hodge/CMEmbeddingTransport.lean/declarations/transportedcharacter-apply--d8fec1ce169a7ed6b633b729.md) | 39 | `result-track:d8fec1ce169a7ed6b633b72993ec157c2d64152a3b4c31ad22fa83287632b7d0` |
| 3 | `theorem` | [scalarConjugate_regularAction](../../../../mathematics/AlgebraicGeometry/Hodge/CMEmbeddingTransport.lean/declarations/scalarconjugate-regularaction--9bf22186724ab80138ddf10b.md) | 45 | `result-track:9bf22186724ab80138ddf10b767c3aedb4348435f01017615c8b0b17e58dc660` |
| 4 | `theorem` | [scalarConjugate_symm_apply](../../../../mathematics/AlgebraicGeometry/Hodge/CMEmbeddingTransport.lean/declarations/scalarconjugate-symm-apply--cac7bdc73bc6f9be52082527.md) | 55 | `result-track:cac7bdc73bc6f9be52082527acde2508ba434966dfd7db96d66b26e500bf4401` |
| 5 | `theorem` | [scalarConjugate_ne_zero](../../../../mathematics/AlgebraicGeometry/Hodge/CMEmbeddingTransport.lean/declarations/scalarconjugate-ne-zero--d3027a69cddce9a1f53ef8b2.md) | 66 | `result-track:d3027a69cddce9a1f53ef8b289f45ccb088db8ab405fcc57a4247b55657fce5f` |
| 6 | `theorem` | [scalarConjugate_mem_embeddingEigenspace](../../../../mathematics/AlgebraicGeometry/Hodge/CMEmbeddingTransport.lean/declarations/scalarconjugate-mem-embeddingeigenspace--de7bd8ecb03cd36aeb5be0f3.md) | 78 | `result-track:de7bd8ecb03cd36aeb5be0f3e8aa77b73c75df273d40e594d102a0c3953001d6` |
| 7 | `structure` | [FourEmbeddingLineVectors](../../../../mathematics/AlgebraicGeometry/Hodge/CMEmbeddingTransport.lean/declarations/fourembeddinglinevectors--e943a26da9949d87820be943.md) | 93 | `declaration-track:e943a26da9949d87820be9438bc257a213c2d878419fc031f17a121dbd3b17fe` |
| 8 | `def` | [FourEmbeddingLineVectors.scalarTransport](../../../../mathematics/AlgebraicGeometry/Hodge/CMEmbeddingTransport.lean/declarations/fourembeddinglinevectors-scalartransport--f83393f3ddbf25f5f7cd6c93.md) | 99 | `declaration-track:f83393f3ddbf25f5f7cd6c93754593845346fe9db7495ab2afa953800222cb0f` |
| 9 | `theorem` | [FourEmbeddingLineVectors.scalarTransport_character](../../../../mathematics/AlgebraicGeometry/Hodge/CMEmbeddingTransport.lean/declarations/fourembeddinglinevectors-scalartransport-character--f72bc56389d63d1d2e6fa1da.md) | 111 | `result-track:f72bc56389d63d1d2e6fa1dacdbe80f3283bca36b8fff8fb63b7635c9c6a4df6` |
| 10 | `theorem` | [FourEmbeddingLineVectors.scalarTransport_vector](../../../../mathematics/AlgebraicGeometry/Hodge/CMEmbeddingTransport.lean/declarations/fourembeddinglinevectors-scalartransport-vector--88ca2df27816590dda56690f.md) | 121 | `result-track:88ca2df27816590dda56690f92eacd79e4af5b3391f4f29f44d2c7bd92879a75` |
| 11 | `theorem` | [transportedCharacter_eq_mul](../../../../mathematics/AlgebraicGeometry/Hodge/CMEmbeddingTransport.lean/declarations/transportedcharacter-eq-mul--908fe1cbe91b4ba691000329.md) | 136 | `result-track:908fe1cbe91b4ba691000329536c5b54b31d253fd2ed089d860b2ff4d6f92f02` |
| 12 | `theorem` | [exists_ne_zero_smul_scalarConjugate_eq](../../../../mathematics/AlgebraicGeometry/Hodge/CMEmbeddingTransport.lean/declarations/exists-ne-zero-smul-scalarconjugate-eq--f23a95edd4c9c84eb6cc6506.md) | 147 | `result-track:f23a95edd4c9c84eb6cc6506796b8daa93764837be6e5373e14f4766116c281d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
