# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ExactFunctor.Variantd5becb8bccd5f9044ddb5bd2cc8243185a8a65308bf1fa013d71f91e552c9442

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "48b40cc12697b47e6b3d5612b565b21b445aca08",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variantd5becb8bccd5f9044ddb5bd2cc8243185a8a65308bf1fa013d71f91e552c9442.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variantd5becb8bccd5f9044ddb5bd2cc8243185a8a65308bf1fa013d71f91e552c9442.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variantd5becb8bccd5f9044ddb5bd2cc8243185a8a65308bf1fa013d71f91e552c9442.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `48b40cc12697b47e6b3d5612b565b21b445aca08`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variantd5becb8bccd5f9044ddb5bd2cc8243185a8a65308bf1fa013d71f91e552c9442.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variantd5becb8bccd5f9044ddb5bd2cc8243185a8a65308bf1fa013d71f91e552c9442.lean.json)

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
| 1 | `def` | [mapDerivedCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variantd5becb8bccd5f9044ddb5bd2cc8243185a8a65308bf1fa013d71f91e552c9442.lean/declarations/mapderivedcategory--99f447a446646496315577e9.md) | 44 | `declaration-track:99f447a446646496315577e953f91464c521c94fa1f30d6d7f4e5c67f205b13e` |
| 2 | `def` | [mapDerivedCategoryFactors](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variantd5becb8bccd5f9044ddb5bd2cc8243185a8a65308bf1fa013d71f91e552c9442.lean/declarations/mapderivedcategoryfactors--026a5a50cd18ceca4dbc0061.md) | 49 | `declaration-track:026a5a50cd18ceca4dbc0061187131e38050602a323e9cdbc54d95482cfca312` |
| 3 | `lemma` | [mapDerivedCategoryFactors_hom_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variantd5becb8bccd5f9044ddb5bd2cc8243185a8a65308bf1fa013d71f91e552c9442.lean/declarations/mapderivedcategoryfactors-hom-naturality--a6e486e750c3f53ae40cd120.md) | 55 | `result-track:a6e486e750c3f53ae40cd120aeac3a1e916f9651ba717710f41f95c5d230d20a` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variantd5becb8bccd5f9044ddb5bd2cc8243185a8a65308bf1fa013d71f91e552c9442.lean/declarations/instance--2e6f2e62dd497f0bbcd0bde1.md) | 61 | `declaration-track:2e6f2e62dd497f0bbcd0bde1ed4ff12a494943be3f2e6148b80c80fb51ceedd8` |
| 5 | `def` | [mapDerivedCategoryFactorsh](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variantd5becb8bccd5f9044ddb5bd2cc8243185a8a65308bf1fa013d71f91e552c9442.lean/declarations/mapderivedcategoryfactorsh--4e95a8e3a9d5378c1763cd2d.md) | 69 | `declaration-track:4e95a8e3a9d5378c1763cd2d12b680db31de4d52352420a6477777066557ad88` |
| 6 | `lemma` | [mapDerivedCategoryFactorsh_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variantd5becb8bccd5f9044ddb5bd2cc8243185a8a65308bf1fa013d71f91e552c9442.lean/declarations/mapderivedcategoryfactorsh-hom-app--8fb9050a3a7942e1ee8b9fe9.md) | 74 | `result-track:8fb9050a3a7942e1ee8b9fe97057cc63208d4adc030719817f5d4aa488a6447f` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variantd5becb8bccd5f9044ddb5bd2cc8243185a8a65308bf1fa013d71f91e552c9442.lean/declarations/instance--874e993184ea996eeec66294.md) | 82 | `declaration-track:874e993184ea996eeec662949e9edc3abeaf949dede691df4a7b03a90ca279d6` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variantd5becb8bccd5f9044ddb5bd2cc8243185a8a65308bf1fa013d71f91e552c9442.lean/declarations/instance--a7f21156a81d627a777d866d.md) | 88 | `declaration-track:a7f21156a81d627a777d866dca7683f6c866f4271f0a2c9bb18ca9895f74fd54` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variantd5becb8bccd5f9044ddb5bd2cc8243185a8a65308bf1fa013d71f91e552c9442.lean/declarations/instance--e289c38cf3001b7134ec077c.md) | 94 | `declaration-track:e289c38cf3001b7134ec077c3a92982b002eafc75afad27a4f965eae88a2166e` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variantd5becb8bccd5f9044ddb5bd2cc8243185a8a65308bf1fa013d71f91e552c9442.lean/declarations/instance--232623c6e963bb68a572c1ee.md) | 100 | `declaration-track:232623c6e963bb68a572c1eec2744ea7d6205e6893a7273a6b02baf3150dd82a` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variantd5becb8bccd5f9044ddb5bd2cc8243185a8a65308bf1fa013d71f91e552c9442.lean/declarations/instance--dc9049b687aa7f44d60b62eb.md) | 110 | `declaration-track:dc9049b687aa7f44d60b62ebfb3381f6e29a8833cb490355c93a20ba74c4f955` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variantd5becb8bccd5f9044ddb5bd2cc8243185a8a65308bf1fa013d71f91e552c9442.lean/declarations/instance--2a07a3b9f72efbf8498f3439.md) | 117 | `declaration-track:2a07a3b9f72efbf8498f3439a4e942017568da9b86d8826ef778f5f561a50f84` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variantd5becb8bccd5f9044ddb5bd2cc8243185a8a65308bf1fa013d71f91e552c9442.lean/declarations/instance--8fb64bef8c6fdc0cce6ca718.md) | 120 | `declaration-track:8fb64bef8c6fdc0cce6ca7180b3bf08fb81b536ed6741c6e48cff4b729a9e431` |
| 14 | `def` | [mapDerivedCategorySingleFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variantd5becb8bccd5f9044ddb5bd2cc8243185a8a65308bf1fa013d71f91e552c9442.lean/declarations/mapderivedcategorysinglefunctor--30b35f3365417f468ee78556.md) | 126 | `declaration-track:30b35f3365417f468ee785566448aa643cfb783744f22ae5ef3fb0184e720b65` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variantd5becb8bccd5f9044ddb5bd2cc8243185a8a65308bf1fa013d71f91e552c9442.lean/declarations/instance--39b759b7be461df8a1077d6a.md) | 134 | `declaration-track:39b759b7be461df8a1077d6a233f76380d600629e717724ea7501169f2f99f2e` |
| 16 | `lemma` | [mapDerivedCategoryFactors_inv_app_mapDerivedCategorySingleFunctor_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variantd5becb8bccd5f9044ddb5bd2cc8243185a8a65308bf1fa013d71f91e552c9442.lean/declarations/mapderivedcategoryfactors-inv-app-mapderivedcategorysinglefunctor-hom-ap--0aa60c8612d3c91a88080ce1.md) | 141 | `result-track:0aa60c8612d3c91a88080ce124d94d4cc916988fe56bdaa80e3f5c3791057ab0` |
| 17 | `lemma` | [mapDerivedCategorySingleFunctor_inv_app_mapDerivedCategoryFactors_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variantd5becb8bccd5f9044ddb5bd2cc8243185a8a65308bf1fa013d71f91e552c9442.lean/declarations/mapderivedcategorysinglefunctor-inv-app-mapderivedcategoryfactors-hom-ap--653107856033d9dfb3a705a2.md) | 149 | `result-track:653107856033d9dfb3a705a2a5b41a23b86f247f1c3def149530775c8b95bd76` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variantd5becb8bccd5f9044ddb5bd2cc8243185a8a65308bf1fa013d71f91e552c9442.lean/declarations/instance--a885b5ea6001e3fbb4fb164f.md) | 156 | `declaration-track:a885b5ea6001e3fbb4fb164fabc498832437b1bb1abdbed8c20a1dd86e2363a8` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variantd5becb8bccd5f9044ddb5bd2cc8243185a8a65308bf1fa013d71f91e552c9442.lean/declarations/instance--58b0eccbad03fe574fa7cbcb.md) | 162 | `declaration-track:58b0eccbad03fe574fa7cbcb8bd3cea26c6ff072cd6f52c88235c0b556457a47` |
| 20 | `def` | [mapDerivedCategoryIdIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variantd5becb8bccd5f9044ddb5bd2cc8243185a8a65308bf1fa013d71f91e552c9442.lean/declarations/mapderivedcategoryidiso--a1f5699809e98186dd7797c0.md) | 172 | `declaration-track:a1f5699809e98186dd7797c044bd09e248dadc8001de874b06af8f3d7a5ba13d` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variantd5becb8bccd5f9044ddb5bd2cc8243185a8a65308bf1fa013d71f91e552c9442.lean/declarations/instance--04bbb0cea94c13bde7115679.md) | 177 | `declaration-track:04bbb0cea94c13bde7115679b20577705f55b4caafa3fe8ad4c02232d29031d1` |
| 22 | `lemma` | [mapDerivedCategoryIdIso_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variantd5becb8bccd5f9044ddb5bd2cc8243185a8a65308bf1fa013d71f91e552c9442.lean/declarations/mapderivedcategoryidiso-hom-app--d710c8c7f70643c99a744f81.md) | 181 | `result-track:d710c8c7f70643c99a744f81d3ab58da153fc008aa0483dc8427af22ad674d4c` |
| 23 | `lemma` | [mapDerivedCategoryIdIso_hom_app_singleFunctor_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variantd5becb8bccd5f9044ddb5bd2cc8243185a8a65308bf1fa013d71f91e552c9442.lean/declarations/mapderivedcategoryidiso-hom-app-singlefunctor-obj--2b4520950d6d72e4a1276f99.md) | 187 | `result-track:2b4520950d6d72e4a1276f991689c88e07d1094972b9fd2f223bd71d1f9f6dcf` |
| 24 | `lemma` | [mapDerivedCategoryIdIso_inv_app_singleFunctor_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variantd5becb8bccd5f9044ddb5bd2cc8243185a8a65308bf1fa013d71f91e552c9442.lean/declarations/mapderivedcategoryidiso-inv-app-singlefunctor-obj--590fca8e4f97be9db24cd968.md) | 196 | `result-track:590fca8e4f97be9db24cd968fc2f18f6b6217e19a1f63724870fdc0f72c8ecdf` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variantd5becb8bccd5f9044ddb5bd2cc8243185a8a65308bf1fa013d71f91e552c9442.lean/declarations/instance--7b0d0980db52a94c4a79032d.md) | 203 | `declaration-track:7b0d0980db52a94c4a79032df5d7697097de881e462032110255eb551098f222` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variantd5becb8bccd5f9044ddb5bd2cc8243185a8a65308bf1fa013d71f91e552c9442.lean/declarations/instance--c1d338ba8a9b47cd9db5532b.md) | 212 | `declaration-track:c1d338ba8a9b47cd9db5532bb680e71d98c5af564671b315339ce1cbd1142aea` |
| 27 | `def` | [mapDerivedCategoryCompIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variantd5becb8bccd5f9044ddb5bd2cc8243185a8a65308bf1fa013d71f91e552c9442.lean/declarations/mapderivedcategorycompiso--0dd55a4ac314b6e79819e2f3.md) | 224 | `declaration-track:0dd55a4ac314b6e79819e2f3f217535474ef732642986fcf8b0373da7751a1f3` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variantd5becb8bccd5f9044ddb5bd2cc8243185a8a65308bf1fa013d71f91e552c9442.lean/declarations/instance--278416297e0f1a47bc473d2c.md) | 233 | `declaration-track:278416297e0f1a47bc473d2c7bbcf49a86c27b5048d3c582c0fcd447822fe26a` |
| 29 | `lemma` | [mapDerivedCategoryCompIso_hom_app_Q_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variantd5becb8bccd5f9044ddb5bd2cc8243185a8a65308bf1fa013d71f91e552c9442.lean/declarations/mapderivedcategorycompiso-hom-app-q-obj--f6d0d6d966357bda0c7a2936.md) | 238 | `result-track:f6d0d6d966357bda0c7a293638aaae3dd26c84d159abc77bcea07da308c71bca` |
| 30 | `lemma` | [mapDerivedCategoryCompIso_hom_app_comp_mapDerivedCategorySingleFunctor_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variantd5becb8bccd5f9044ddb5bd2cc8243185a8a65308bf1fa013d71f91e552c9442.lean/declarations/mapderivedcategorycompiso-hom-app-comp-mapderivedcategorysinglefunctor-h--b074a1b81c502589507b0477.md) | 249 | `result-track:b074a1b81c502589507b0477725ee05ad166fa062f8c0e710292ccb911fc4033` |
| 31 | `lemma` | [mapDerivedCategorySingleFunctor_inv_app_comp_mapDerivedCategoryCompIso_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variantd5becb8bccd5f9044ddb5bd2cc8243185a8a65308bf1fa013d71f91e552c9442.lean/declarations/mapderivedcategorysinglefunctor-inv-app-comp-mapderivedcategorycompiso-i--b807785efe83afd287a04e96.md) | 265 | `result-track:b807785efe83afd287a04e961807b23389682ae9653cb2bc384009b08b64d69c` |
| 32 | `def` | [mapDerivedCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variantd5becb8bccd5f9044ddb5bd2cc8243185a8a65308bf1fa013d71f91e552c9442.lean/declarations/mapderivedcategory--800aab29b00f39d06fa4eda8.md) | 285 | `declaration-track:800aab29b00f39d06fa4eda8fb9b7782c92db80942d16794ecafdae3ff976d40` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variantd5becb8bccd5f9044ddb5bd2cc8243185a8a65308bf1fa013d71f91e552c9442.lean/declarations/instance--c518984e557106f9ee6ba3a1.md) | 290 | `declaration-track:c518984e557106f9ee6ba3a187c9cc61796ae340c924d7929d2e209c19a63c40` |
| 34 | `lemma` | [mapDerivedCategory_app_Q_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variantd5becb8bccd5f9044ddb5bd2cc8243185a8a65308bf1fa013d71f91e552c9442.lean/declarations/mapderivedcategory-app-q-obj--42f901768da8c57308179280.md) | 294 | `result-track:42f901768da8c573081792802747041bbe093f7ba685354bd14474932dc402eb` |
| 35 | `lemma` | [mapDerivedCategory_app_singleFunctor_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variantd5becb8bccd5f9044ddb5bd2cc8243185a8a65308bf1fa013d71f91e552c9442.lean/declarations/mapderivedcategory-app-singlefunctor-obj--4eb55bc3ff4d54b4e530d1d4.md) | 302 | `result-track:4eb55bc3ff4d54b4e530d1d466b8fe1dd76563e3e50f98e7b6021017cf5c00f7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
