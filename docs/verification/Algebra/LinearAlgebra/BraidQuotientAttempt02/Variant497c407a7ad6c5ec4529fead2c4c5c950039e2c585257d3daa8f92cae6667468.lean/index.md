# Verification target: GRWTSK.Algebra.LinearAlgebra.BraidQuotientAttempt02.Variant497c407a7ad6c5ec4529fead2c4c5c950039e2c585257d3daa8f92cae6667468

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "70e046bfb1d5d080cfa4ab655068ade1abd0b223",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/BraidQuotientAttempt02/Variant497c407a7ad6c5ec4529fead2c4c5c950039e2c585257d3daa8f92cae6667468.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt02/Variant497c407a7ad6c5ec4529fead2c4c5c950039e2c585257d3daa8f92cae6667468.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt02/Variant497c407a7ad6c5ec4529fead2c4c5c950039e2c585257d3daa8f92cae6667468.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `70e046bfb1d5d080cfa4ab655068ade1abd0b223`.

Source path: `GRWTSK/Algebra/LinearAlgebra/BraidQuotientAttempt02/Variant497c407a7ad6c5ec4529fead2c4c5c950039e2c585257d3daa8f92cae6667468.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/BraidQuotientAttempt02/Variant497c407a7ad6c5ec4529fead2c4c5c950039e2c585257d3daa8f92cae6667468.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.PresentedGroup` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.SpecialLinearGroup` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [braidRelator](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt02/Variant497c407a7ad6c5ec4529fead2c4c5c950039e2c585257d3daa8f92cae6667468.lean/declarations/braidrelator--d56e2a50ff0f7a05fc504e3d.md) | 14 | `declaration-track:d56e2a50ff0f7a05fc504e3d5ad21dfe55c0e042b509a94ddd72f6a2d91dda55` |
| 2 | `def` | [braidRelations](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt02/Variant497c407a7ad6c5ec4529fead2c4c5c950039e2c585257d3daa8f92cae6667468.lean/declarations/braidrelations--cb1b08083fdd60b63ba392c9.md) | 18 | `declaration-track:cb1b08083fdd60b63ba392c9b8e3c4e1a52a7c1e8c2fb08844cb02ae33e7d323` |
| 3 | `def` | [B3](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt02/Variant497c407a7ad6c5ec4529fead2c4c5c950039e2c585257d3daa8f92cae6667468.lean/declarations/b3--25b4a027f1b3b4fa156c779c.md) | 20 | `declaration-track:25b4a027f1b3b4fa156c779c90619587ec7599f7bb28de300045d5a36ec2a40b` |
| 4 | `def` | [sigma1](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt02/Variant497c407a7ad6c5ec4529fead2c4c5c950039e2c585257d3daa8f92cae6667468.lean/declarations/sigma1--dbeffef4c2fa8ddda4df3faf.md) | 23 | `declaration-track:dbeffef4c2fa8ddda4df3fafabbabef2c6184fe7f10e9b1d0ec6f56c5882fc84` |
| 5 | `def` | [sigma2](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt02/Variant497c407a7ad6c5ec4529fead2c4c5c950039e2c585257d3daa8f92cae6667468.lean/declarations/sigma2--9ef62438d9c9317c867f17b2.md) | 25 | `declaration-track:9ef62438d9c9317c867f17b215afd110579414d94c2dafdb3aa9eece52509085` |
| 6 | `theorem` | [braid_relation](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt02/Variant497c407a7ad6c5ec4529fead2c4c5c950039e2c585257d3daa8f92cae6667468.lean/declarations/braid-relation--cafd7a86cfe8e8d4553b4707.md) | 27 | `result-track:cafd7a86cfe8e8d4553b47073f16668c97a900b65af8dac6b18f854569df0cd5` |
| 7 | `def` | [upperGenerator](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt02/Variant497c407a7ad6c5ec4529fead2c4c5c950039e2c585257d3daa8f92cae6667468.lean/declarations/uppergenerator--2d4f4ef2e6b2c23918992304.md) | 35 | `declaration-track:2d4f4ef2e6b2c239189923046a223a5f50d3d4674c467a9b29fef43b06918ad8` |
| 8 | `def` | [lowerGenerator](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt02/Variant497c407a7ad6c5ec4529fead2c4c5c950039e2c585257d3daa8f92cae6667468.lean/declarations/lowergenerator--6e3bb76fbdaae84cbaafd34d.md) | 38 | `declaration-track:6e3bb76fbdaae84cbaafd34d779ee156b86ce9a46ae28524f504d2acc23f1ca8` |
| 9 | `theorem` | [matrix_braid_relation](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt02/Variant497c407a7ad6c5ec4529fead2c4c5c950039e2c585257d3daa8f92cae6667468.lean/declarations/matrix-braid-relation--dfd76b6632476316f617f7ec.md) | 41 | `result-track:dfd76b6632476316f617f7ecf562d9f5104b5607ea1293959eaa48dce40618f4` |
| 10 | `def` | [generatorMatrix](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt02/Variant497c407a7ad6c5ec4529fead2c4c5c950039e2c585257d3daa8f92cae6667468.lean/declarations/generatormatrix--a5c712aa9a54c20ced158120.md) | 51 | `declaration-track:a5c712aa9a54c20ced1581203acd4d5c75f9c7215145ed61914401a979df23f2` |
| 11 | `theorem` | [matrix_relator_identity](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt02/Variant497c407a7ad6c5ec4529fead2c4c5c950039e2c585257d3daa8f92cae6667468.lean/declarations/matrix-relator-identity--b0bae144a54e89eaed924746.md) | 53 | `result-track:b0bae144a54e89eaed924746eb335dbf2ef11a63384c1323bdd5a9fefbeb8354` |
| 12 | `def` | [matrixRepresentation](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt02/Variant497c407a7ad6c5ec4529fead2c4c5c950039e2c585257d3daa8f92cae6667468.lean/declarations/matrixrepresentation--7da663da6e4a0d7dbebd6bcc.md) | 63 | `declaration-track:7da663da6e4a0d7dbebd6bcc322a819b8b6dd0f9d9f47b304102001279c79c36` |
| 13 | `theorem` | [matrixRepresentation_sigma1](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt02/Variant497c407a7ad6c5ec4529fead2c4c5c950039e2c585257d3daa8f92cae6667468.lean/declarations/matrixrepresentation-sigma1--2c041f64cb58625c54bb7758.md) | 66 | `result-track:2c041f64cb58625c54bb775868435a0ad36153ceee42ef5537e802d8b6e808b0` |
| 14 | `theorem` | [matrixRepresentation_sigma2](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt02/Variant497c407a7ad6c5ec4529fead2c4c5c950039e2c585257d3daa8f92cae6667468.lean/declarations/matrixrepresentation-sigma2--9f70175b7a6c2b0d06573ba7.md) | 69 | `result-track:9f70175b7a6c2b0d06573ba7aa882503de24e579a8621c85f9b6ce26b39252e3` |
| 15 | `def` | [generatorExponent](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt02/Variant497c407a7ad6c5ec4529fead2c4c5c950039e2c585257d3daa8f92cae6667468.lean/declarations/generatorexponent--f0c03f168a6ba710bced3bca.md) | 73 | `declaration-track:f0c03f168a6ba710bced3bca51759942910cc8bddb9c7bde457d9a147d5c58eb` |
| 16 | `theorem` | [exponent_relator_identity](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt02/Variant497c407a7ad6c5ec4529fead2c4c5c950039e2c585257d3daa8f92cae6667468.lean/declarations/exponent-relator-identity--db91a52cdb71a7374b5b19c9.md) | 75 | `result-track:db91a52cdb71a7374b5b19c9da19877813494f74ae45428887bdac8a37a49a0e` |
| 17 | `def` | [exponentHom](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt02/Variant497c407a7ad6c5ec4529fead2c4c5c950039e2c585257d3daa8f92cae6667468.lean/declarations/exponenthom--5ddd73f86c5e9b3235d75cde.md) | 83 | `declaration-track:5ddd73f86c5e9b3235d75cde13c3156aa37bed0b5cd7c1b84933f2dff1f65bf6` |
| 18 | `theorem` | [exponentHom_sigma1](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt02/Variant497c407a7ad6c5ec4529fead2c4c5c950039e2c585257d3daa8f92cae6667468.lean/declarations/exponenthom-sigma1--11f6d9db92b8efa4ab47adb5.md) | 86 | `result-track:11f6d9db92b8efa4ab47adb5d5371278e26aff4edaa85166b3446933c28b757e` |
| 19 | `theorem` | [exponentHom_sigma2](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt02/Variant497c407a7ad6c5ec4529fead2c4c5c950039e2c585257d3daa8f92cae6667468.lean/declarations/exponenthom-sigma2--ab20b0ed056c87ae0b53e0ec.md) | 89 | `result-track:ab20b0ed056c87ae0b53e0ec4e14572fcb0af571d36d6532961308a344d889a3` |
| 20 | `def` | [lostBraid](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt02/Variant497c407a7ad6c5ec4529fead2c4c5c950039e2c585257d3daa8f92cae6667468.lean/declarations/lostbraid--4e9cb94725118fe9407a1ac0.md) | 93 | `declaration-track:4e9cb94725118fe9407a1ac0dc2249d01fcf84fd0df3a9be134824172494db91` |
| 21 | `theorem` | [generator_product_matrix](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt02/Variant497c407a7ad6c5ec4529fead2c4c5c950039e2c585257d3daa8f92cae6667468.lean/declarations/generator-product-matrix--cf618d1aa7401cb2d9123c1a.md) | 95 | `result-track:cf618d1aa7401cb2d9123c1a521bc60d6a16d39073c6277b9333fef3cc3e4011` |
| 22 | `theorem` | [generator_product_sixth](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt02/Variant497c407a7ad6c5ec4529fead2c4c5c950039e2c585257d3daa8f92cae6667468.lean/declarations/generator-product-sixth--af434c2b48a0ac433f85a48d.md) | 103 | `result-track:af434c2b48a0ac433f85a48ddd54fd3ffa59e3a1f15b945d3bf9a77f2ce5da9c` |
| 23 | `theorem` | [lostBraid_matrix_identity](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt02/Variant497c407a7ad6c5ec4529fead2c4c5c950039e2c585257d3daa8f92cae6667468.lean/declarations/lostbraid-matrix-identity--7570a6ff92e0a9ad9078d7ed.md) | 111 | `result-track:7570a6ff92e0a9ad9078d7edf0bd03d266184bd0ebe932d16b22b068f164f516` |
| 24 | `theorem` | [lostBraid_exponent](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt02/Variant497c407a7ad6c5ec4529fead2c4c5c950039e2c585257d3daa8f92cae6667468.lean/declarations/lostbraid-exponent--310a8cba9b77a5b0e2984ddf.md) | 115 | `result-track:310a8cba9b77a5b0e2984ddf93412cd8ec2145dbe06a849f9379e41f7d74e540` |
| 25 | `theorem` | [lostBraid_ne_one](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt02/Variant497c407a7ad6c5ec4529fead2c4c5c950039e2c585257d3daa8f92cae6667468.lean/declarations/lostbraid-ne-one--1323136ccae79d19a765fb82.md) | 118 | `result-track:1323136ccae79d19a765fb82e89b33d9474e31c4872649b3bf3de4f679fc48de` |
| 26 | `theorem` | [matrixRepresentation_not_injective](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt02/Variant497c407a7ad6c5ec4529fead2c4c5c950039e2c585257d3daa8f92cae6667468.lean/declarations/matrixrepresentation-not-injective--14ec7ed01b1dabdebddbf9a0.md) | 124 | `result-track:14ec7ed01b1dabdebddbf9a085e1bebc8859e990776dee87b701f372d2a68514` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
