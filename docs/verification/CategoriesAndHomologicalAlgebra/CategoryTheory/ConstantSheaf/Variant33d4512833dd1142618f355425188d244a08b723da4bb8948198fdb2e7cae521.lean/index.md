# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ConstantSheaf.Variant33d4512833dd1142618f355425188d244a08b723da4bb8948198fdb2e7cae521

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a55c6ea105e07d42750aa8f0af430eb40d76c7bf",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variant33d4512833dd1142618f355425188d244a08b723da4bb8948198fdb2e7cae521.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variant33d4512833dd1142618f355425188d244a08b723da4bb8948198fdb2e7cae521.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variant33d4512833dd1142618f355425188d244a08b723da4bb8948198fdb2e7cae521.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a55c6ea105e07d42750aa8f0af430eb40d76c7bf`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variant33d4512833dd1142618f355425188d244a08b723da4bb8948198fdb2e7cae521.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variant33d4512833dd1142618f355425188d244a08b723da4bb8948198fdb2e7cae521.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Sites.Sheafification` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.DenseSubsite.SheafEquiv` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [constantPresheafAdj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variant33d4512833dd1142618f355425188d244a08b723da4bb8948198fdb2e7cae521.lean/declarations/constantpresheafadj--43e672731de273871daaf638.md) | 49 | `declaration-track:43e672731de273871daaf638ce23dfe698b05330006753e6cd305da1b0301232` |
| 2 | `def` | [constantSheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variant33d4512833dd1142618f355425188d244a08b723da4bb8948198fdb2e7cae521.lean/declarations/constantsheaf--9cc9729f40cb2af2696b83fc.md) | 68 | `declaration-track:9cc9729f40cb2af2696b83fce008010087f71f26fff0fab0109380cde7d6a3f0` |
| 3 | `def` | [constantSheafAdj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variant33d4512833dd1142618f355425188d244a08b723da4bb8948198fdb2e7cae521.lean/declarations/constantsheafadj--f5999fc2baacbf5277f7e0cb.md) | 72 | `declaration-track:f5999fc2baacbf5277f7e0cbca6fb836c19fdb36e10433945c4a3bf64a6d610d` |
| 4 | `class` | [IsConstant](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variant33d4512833dd1142618f355425188d244a08b723da4bb8948198fdb2e7cae521.lean/declarations/isconstant--6db95d1c310d46275bd28e52.md) | 83 | `declaration-track:6db95d1c310d46275bd28e52aa8848072e2f795c197d28c0f9370aa89ea9290f` |
| 5 | `lemma` | [mem_essImage_of_isConstant](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variant33d4512833dd1142618f355425188d244a08b723da4bb8948198fdb2e7cae521.lean/declarations/mem-essimage-of-isconstant--561797f1e423cfae1b609d1c.md) | 86 | `result-track:561797f1e423cfae1b609d1cc172ea6b779cc9333fff1731765e0b672f770772` |
| 6 | `lemma` | [isConstant_congr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variant33d4512833dd1142618f355425188d244a08b723da4bb8948198fdb2e7cae521.lean/declarations/isconstant-congr--af6c6b856bf47a91d8ee349d.md) | 90 | `result-track:af6c6b856bf47a91d8ee349d3682c70a31a192f50dfdb1977a100572ecda55c5` |
| 7 | `lemma` | [isConstant_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variant33d4512833dd1142618f355425188d244a08b723da4bb8948198fdb2e7cae521.lean/declarations/isconstant-of-iso--998c7cd77a675d7ff866c05e.md) | 93 | `result-track:998c7cd77a675d7ff866c05e362fac7ae52e3a9b455a8d0c3fc8444c9b99a2b9` |
| 8 | `lemma` | [isConstant_iff_mem_essImage](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variant33d4512833dd1142618f355425188d244a08b723da4bb8948198fdb2e7cae521.lean/declarations/isconstant-iff-mem-essimage--a9f8a3821606c55b2dcaa623.md) | 96 | `result-track:a9f8a3821606c55b2dcaa6230b54816b01b29b5476e8540d6fd847e19261a6e8` |
| 9 | `lemma` | [isConstant_of_isIso_counit_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variant33d4512833dd1142618f355425188d244a08b723da4bb8948198fdb2e7cae521.lean/declarations/isconstant-of-isiso-counit-app--10185baabd5fb2b354c4888a.md) | 102 | `result-track:10185baabd5fb2b354c4888a6c5d4bb8dafb130bd4deef563fdc136fe6c1caaf` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variant33d4512833dd1142618f355425188d244a08b723da4bb8948198fdb2e7cae521.lean/declarations/instance--ba4940e423dccfd4d0289927.md) | 106 | `declaration-track:ba4940e423dccfd4d0289927bb357c284a72544acb870e50197e8f512292b80c` |
| 11 | `lemma` | [isConstant_iff_isIso_counit_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variant33d4512833dd1142618f355425188d244a08b723da4bb8948198fdb2e7cae521.lean/declarations/isconstant-iff-isiso-counit-app--1a65f5aca6cccff2f60d3598.md) | 116 | `result-track:1a65f5aca6cccff2f60d35982db24b93aa5a9a054c7c6f151b2117e80372b08f` |
| 12 | `lemma` | [isConstant_iff_isIso_counit_app'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variant33d4512833dd1142618f355425188d244a08b723da4bb8948198fdb2e7cae521.lean/declarations/isconstant-iff-isiso-counit-app--38d01ca8ce37d9477f14a9e0.md) | 125 | `result-track:38d01ca8ce37d9477f14a9e0d74c1fd6dcf297a5dbea16221128974f9e5d89ee` |
| 13 | `def` | [equivCommuteConstant](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variant33d4512833dd1142618f355425188d244a08b723da4bb8948198fdb2e7cae521.lean/declarations/equivcommuteconstant--e28d3db89708d47729fc2532.md) | 144 | `declaration-track:e28d3db89708d47729fc253217af2278a6242fe53092b88eeae5b15ed9eccf3b` |
| 14 | `def` | [equivCommuteConstant'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variant33d4512833dd1142618f355425188d244a08b723da4bb8948198fdb2e7cae521.lean/declarations/equivcommuteconstant--34a3f485b3d1f463035a8f40.md) | 154 | `declaration-track:34a3f485b3d1f463035a8f401bef675fbecd7670f440ba328844289761423ba5` |
| 15 | `lemma` | [Sheaf.isConstant_iff_of_equivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variant33d4512833dd1142618f355425188d244a08b723da4bb8948198fdb2e7cae521.lean/declarations/sheaf-isconstant-iff-of-equivalence--4b4acd833d89bb0647057e47.md) | 167 | `result-track:4b4acd833d89bb0647057e476a7185486fe5d15c1eef0fad2008f829344d9cb9` |
| 16 | `def` | [constantCommuteCompose](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variant33d4512833dd1142618f355425188d244a08b723da4bb8948198fdb2e7cae521.lean/declarations/constantcommutecompose--6a23f35e83c597a5a110e03a.md) | 186 | `declaration-track:6a23f35e83c597a5a110e03a40092c3b7656038f97d94135475308a1bd9a2fb3` |
| 17 | `lemma` | [constantCommuteCompose_hom_app_val](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variant33d4512833dd1142618f355425188d244a08b723da4bb8948198fdb2e7cae521.lean/declarations/constantcommutecompose-hom-app-val--db78991f51a0beef08f03724.md) | 192 | `result-track:db78991f51a0beef08f03724225082240269048b28835cf44dd64d6d17c2930e` |
| 18 | `lemma` | [constantSheafAdj_counit_w](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variant33d4512833dd1142618f355425188d244a08b723da4bb8948198fdb2e7cae521.lean/declarations/constantsheafadj-counit-w--5c6ec4122d1c91c2980bb27c.md) | 196 | `result-track:5c6ec4122d1c91c2980bb27c5192aed3a548ad64583fb4d5ab9fba5f3db45031` |
| 19 | `lemma` | [Sheaf.isConstant_of_forget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variant33d4512833dd1142618f355425188d244a08b723da4bb8948198fdb2e7cae521.lean/declarations/sheaf-isconstant-of-forget--483a2fb567fe6b736c682efa.md) | 213 | `result-track:483a2fb567fe6b736c682efaeb4fd758c11f2bd28e4f37c39e27ba703590eea2` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variant33d4512833dd1142618f355425188d244a08b723da4bb8948198fdb2e7cae521.lean/declarations/instance--221f281cd41d97a42235f550.md) | 223 | `declaration-track:221f281cd41d97a42235f5509f0c630cf017cf8f4386531ba40c945893bd3fdf` |
| 21 | `lemma` | [Sheaf.isConstant_iff_forget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variant33d4512833dd1142618f355425188d244a08b723da4bb8948198fdb2e7cae521.lean/declarations/sheaf-isconstant-iff-forget--212c2915d0085991e1f25bdb.md) | 230 | `result-track:212c2915d0085991e1f25bdb7037ed886da6363145166ae263883ce5eba951ff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
