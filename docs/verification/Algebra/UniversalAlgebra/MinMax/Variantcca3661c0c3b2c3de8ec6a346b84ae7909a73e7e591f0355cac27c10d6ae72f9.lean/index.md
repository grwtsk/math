# Verification target: GRWTSK.Algebra.UniversalAlgebra.MinMax.Variantcca3661c0c3b2c3de8ec6a346b84ae7909a73e7e591f0355cac27c10d6ae72f9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "41a2f0cd1baaec53b8a9f1d643e8e09aa69cadc9",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/MinMax/Variantcca3661c0c3b2c3de8ec6a346b84ae7909a73e7e591f0355cac27c10d6ae72f9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/MinMax/Variantcca3661c0c3b2c3de8ec6a346b84ae7909a73e7e591f0355cac27c10d6ae72f9.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/MinMax/Variantcca3661c0c3b2c3de8ec6a346b84ae7909a73e7e591f0355cac27c10d6ae72f9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `41a2f0cd1baaec53b8a9f1d643e8e09aa69cadc9`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/MinMax/Variantcca3661c0c3b2c3de8ec6a346b84ae7909a73e7e591f0355cac27c10d6ae72f9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/MinMax/Variantcca3661c0c3b2c3de8ec6a346b84ae7909a73e7e591f0355cac27c10d6ae72f9.lean.json)

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
| 1 | `lemma` | [fn_min_mul_fn_max](../../../../../mathematics/Algebra/UniversalAlgebra/MinMax/Variantcca3661c0c3b2c3de8ec6a346b84ae7909a73e7e591f0355cac27c10d6ae72f9.lean/declarations/fn-min-mul-fn-max--8d46f1e7e46213ee2810c1d1.md) | 25 | `result-track:8d46f1e7e46213ee2810c1d173b431b0223b5d43aeef892fa2b4b494b8365d69` |
| 2 | `lemma` | [fn_max_mul_fn_min](../../../../../mathematics/Algebra/UniversalAlgebra/MinMax/Variantcca3661c0c3b2c3de8ec6a346b84ae7909a73e7e591f0355cac27c10d6ae72f9.lean/declarations/fn-max-mul-fn-min--763d81298bc30ec05f6d2b97.md) | 29 | `result-track:763d81298bc30ec05f6d2b97a87ead11e08b03ada71bb2c1543041e635fa0300` |
| 3 | `lemma` | [min_mul_max](../../../../../mathematics/Algebra/UniversalAlgebra/MinMax/Variantcca3661c0c3b2c3de8ec6a346b84ae7909a73e7e591f0355cac27c10d6ae72f9.lean/declarations/min-mul-max--15409f95209436241cfa96e0.md) | 35 | `result-track:15409f95209436241cfa96e0a43a235c3d0579c75a5664aa75fa1d4866fb9da8` |
| 4 | `lemma` | [max_mul_min](../../../../../mathematics/Algebra/UniversalAlgebra/MinMax/Variantcca3661c0c3b2c3de8ec6a346b84ae7909a73e7e591f0355cac27c10d6ae72f9.lean/declarations/max-mul-min--a640780921bc0a3bc3292c1a.md) | 38 | `result-track:a640780921bc0a3bc3292c1a387abd64214a43913c27482b898bb24d056da5fd` |
| 5 | `theorem` | [min_mul_mul_left](../../../../../mathematics/Algebra/UniversalAlgebra/MinMax/Variantcca3661c0c3b2c3de8ec6a346b84ae7909a73e7e591f0355cac27c10d6ae72f9.lean/declarations/min-mul-mul-left--bd67254293066e04270998b9.md) | 55 | `result-track:bd67254293066e04270998b9a62044ac82afd2a334773e74f0f1f89b4782f2af` |
| 6 | `theorem` | [max_mul_mul_left](../../../../../mathematics/Algebra/UniversalAlgebra/MinMax/Variantcca3661c0c3b2c3de8ec6a346b84ae7909a73e7e591f0355cac27c10d6ae72f9.lean/declarations/max-mul-mul-left--2b8355de7404456630610cf5.md) | 59 | `result-track:2b8355de7404456630610cf5295bbf955140d42a8d0b720c9d86f801ee128f41` |
| 7 | `theorem` | [min_mul_mul_right](../../../../../mathematics/Algebra/UniversalAlgebra/MinMax/Variantcca3661c0c3b2c3de8ec6a346b84ae7909a73e7e591f0355cac27c10d6ae72f9.lean/declarations/min-mul-mul-right--aacb522272592a8d7f35dfa3.md) | 69 | `result-track:aacb522272592a8d7f35dfa374aaec1179faeb445d908cfccc8bea9e0e51a7ab` |
| 8 | `theorem` | [max_mul_mul_right](../../../../../mathematics/Algebra/UniversalAlgebra/MinMax/Variantcca3661c0c3b2c3de8ec6a346b84ae7909a73e7e591f0355cac27c10d6ae72f9.lean/declarations/max-mul-mul-right--4c0e79ace4516fd8297f9c2a.md) | 73 | `result-track:4c0e79ace4516fd8297f9c2a2d74eb0b42b49fc38b92cdc4fee0cf4d42a7e077` |
| 9 | `theorem` | [lt_or_lt_of_mul_lt_mul](../../../../../mathematics/Algebra/UniversalAlgebra/MinMax/Variantcca3661c0c3b2c3de8ec6a346b84ae7909a73e7e591f0355cac27c10d6ae72f9.lean/declarations/lt-or-lt-of-mul-lt-mul--d50a1c2ef1c8206fc45c0a55.md) | 79 | `result-track:d50a1c2ef1c8206fc45c0a5532341bd7a39a8249ff3babbe983ceb5993148db5` |
| 10 | `theorem` | [le_or_lt_of_mul_le_mul](../../../../../mathematics/Algebra/UniversalAlgebra/MinMax/Variantcca3661c0c3b2c3de8ec6a346b84ae7909a73e7e591f0355cac27c10d6ae72f9.lean/declarations/le-or-lt-of-mul-le-mul--b42e98d415692389aa64f152.md) | 85 | `result-track:b42e98d415692389aa64f152826bd6fa3e2c6983ac18fb52ffc52ace17007887` |
| 11 | `theorem` | [lt_or_le_of_mul_le_mul](../../../../../mathematics/Algebra/UniversalAlgebra/MinMax/Variantcca3661c0c3b2c3de8ec6a346b84ae7909a73e7e591f0355cac27c10d6ae72f9.lean/declarations/lt-or-le-of-mul-le-mul--87e29790aa556032d0d5f747.md) | 91 | `result-track:87e29790aa556032d0d5f747ad4b16646be104688ba33d56909846de96af27c5` |
| 12 | `theorem` | [le_or_le_of_mul_le_mul](../../../../../mathematics/Algebra/UniversalAlgebra/MinMax/Variantcca3661c0c3b2c3de8ec6a346b84ae7909a73e7e591f0355cac27c10d6ae72f9.lean/declarations/le-or-le-of-mul-le-mul--5c854d274ae4845d648f258b.md) | 97 | `result-track:5c854d274ae4845d648f258b3ead61371a39093ae18194c252d2fc8735c60cbc` |
| 13 | `theorem` | [mul_lt_mul_iff_of_le_of_le](../../../../../mathematics/Algebra/UniversalAlgebra/MinMax/Variantcca3661c0c3b2c3de8ec6a346b84ae7909a73e7e591f0355cac27c10d6ae72f9.lean/declarations/mul-lt-mul-iff-of-le-of-le--9c2f3ae6df4d89cb4d997643.md) | 103 | `result-track:9c2f3ae6df4d89cb4d9976436bfa8869b4a4fc57b9541f3c737a7c8eb61da34c` |
| 14 | `theorem` | [min_le_mul_of_one_le_right](../../../../../mathematics/Algebra/UniversalAlgebra/MinMax/Variantcca3661c0c3b2c3de8ec6a346b84ae7909a73e7e591f0355cac27c10d6ae72f9.lean/declarations/min-le-mul-of-one-le-right--268c79138b4f6ec1f170ec49.md) | 117 | `result-track:268c79138b4f6ec1f170ec4908d0a47d25c5fe4dfec0d445dc437f10a1fcd998` |
| 15 | `theorem` | [min_le_mul_of_one_le_left](../../../../../mathematics/Algebra/UniversalAlgebra/MinMax/Variantcca3661c0c3b2c3de8ec6a346b84ae7909a73e7e591f0355cac27c10d6ae72f9.lean/declarations/min-le-mul-of-one-le-left--3afc97985b4f4de7aa5adc6f.md) | 122 | `result-track:3afc97985b4f4de7aa5adc6fded8a69676e1fd60cc5c3fbeea91a248f1d98166` |
| 16 | `theorem` | [max_le_mul_of_one_le](../../../../../mathematics/Algebra/UniversalAlgebra/MinMax/Variantcca3661c0c3b2c3de8ec6a346b84ae7909a73e7e591f0355cac27c10d6ae72f9.lean/declarations/max-le-mul-of-one-le--e2bcb0bb063dd0b309d5e2bb.md) | 127 | `result-track:e2bcb0bb063dd0b309d5e2bb551a4b5032861b5e089035d93a131875b58294ea` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
