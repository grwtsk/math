# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Monoidal.Variant26d5dcc7a99d7f14e2969c486009efd57b1d7156fae722c342535ec22795a90b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3115b9e44c8bd813b608d83ac29c61bfcc4989b2",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant26d5dcc7a99d7f14e2969c486009efd57b1d7156fae722c342535ec22795a90b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant26d5dcc7a99d7f14e2969c486009efd57b1d7156fae722c342535ec22795a90b.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant26d5dcc7a99d7f14e2969c486009efd57b1d7156fae722c342535ec22795a90b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3115b9e44c8bd813b608d83ac29c61bfcc4989b2`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant26d5dcc7a99d7f14e2969c486009efd57b1d7156fae722c342535ec22795a90b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant26d5dcc7a99d7f14e2969c486009efd57b1d7156fae722c342535ec22795a90b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Closed.Monoidal` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Shapes.BinaryProducts` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.FunctorCategory` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Braided.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.End` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Preadditive` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsMonoidalLeftDistrib](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant26d5dcc7a99d7f14e2969c486009efd57b1d7156fae722c342535ec22795a90b.lean/declarations/ismonoidalleftdistrib--07a8d123a4e58269d65d9605.md) | 76 | `declaration-track:07a8d123a4e58269d65d960534d768849e2549538b8ac74b2503926994a2127b` |
| 2 | `class` | [IsMonoidalRightDistrib](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant26d5dcc7a99d7f14e2969c486009efd57b1d7156fae722c342535ec22795a90b.lean/declarations/ismonoidalrightdistrib--278bbbc4cb548094e6657703.md) | 83 | `declaration-track:278bbbc4cb548094e6657703afdd78ea58708d5c1a4844e058614771652394f4` |
| 3 | `class` | [IsMonoidalDistrib](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant26d5dcc7a99d7f14e2969c486009efd57b1d7156fae722c342535ec22795a90b.lean/declarations/ismonoidaldistrib--a66d4b1bf9ea6801e7555397.md) | 90 | `declaration-track:a66d4b1bf9ea6801e7555397adb7a473d001cee80a6820d41ebf0f2379552794` |
| 4 | `def` | [leftDistrib](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant26d5dcc7a99d7f14e2969c486009efd57b1d7156fae722c342535ec22795a90b.lean/declarations/leftdistrib--76e1648cc3f2b0f34d0f5221.md) | 101 | `declaration-track:76e1648cc3f2b0f34d0f5221bc9341a5face2037a03064618f13165da0643cb5` |
| 5 | `lemma` | [IsMonoidalLeftDistrib.of_isIso_coprodComparisonTensorLeft](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant26d5dcc7a99d7f14e2969c486009efd57b1d7156fae722c342535ec22795a90b.lean/declarations/ismonoidalleftdistrib-of-isiso-coprodcomparisontensorleft--1a90b0fffe21b512a1b042f4.md) | 116 | `result-track:1a90b0fffe21b512a1b042f473d3a44327f8851bb4867793e9220e2993eb3c52` |
| 6 | `lemma` | [leftDistrib_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant26d5dcc7a99d7f14e2969c486009efd57b1d7156fae722c342535ec22795a90b.lean/declarations/leftdistrib-hom--f663a95fddb411568f2663b9.md) | 123 | `result-track:f663a95fddb411568f2663b96bb9911316fd3baf013e5f98a0a271ffdfe45153` |
| 7 | `lemma` | [coprod_inl_leftDistrib_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant26d5dcc7a99d7f14e2969c486009efd57b1d7156fae722c342535ec22795a90b.lean/declarations/coprod-inl-leftdistrib-hom--3e16e43716e4794a1173c00f.md) | 127 | `result-track:3e16e43716e4794a1173c00f4077af026754044dc85d0a41ba866e3df31ea99f` |
| 8 | `lemma` | [coprod_inr_leftDistrib_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant26d5dcc7a99d7f14e2969c486009efd57b1d7156fae722c342535ec22795a90b.lean/declarations/coprod-inr-leftdistrib-hom--73fab5a7f16810d9db6a8975.md) | 132 | `result-track:73fab5a7f16810d9db6a89752beb8ba85f09a99c93744754d233a6beceed5673` |
| 9 | `lemma` | [whiskerLeft_coprod_inl_leftDistrib_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant26d5dcc7a99d7f14e2969c486009efd57b1d7156fae722c342535ec22795a90b.lean/declarations/whiskerleft-coprod-inl-leftdistrib-inv--42a5eaa251d442fb5a60baba.md) | 140 | `result-track:42a5eaa251d442fb5a60baba336c808fa3986216d0cfef18503248ea0ef4c829` |
| 10 | `lemma` | [whiskerLeft_coprod_inr_leftDistrib_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant26d5dcc7a99d7f14e2969c486009efd57b1d7156fae722c342535ec22795a90b.lean/declarations/whiskerleft-coprod-inr-leftdistrib-inv--a5aa4dd348c37c2f9a00db71.md) | 149 | `result-track:a5aa4dd348c37c2f9a00db7194332d183f4dda46917e521a6061effbb1372f42` |
| 11 | `def` | [rightDistrib](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant26d5dcc7a99d7f14e2969c486009efd57b1d7156fae722c342535ec22795a90b.lean/declarations/rightdistrib--5d221534042c86fc2ebd1966.md) | 159 | `declaration-track:5d221534042c86fc2ebd196691aa8a39d38916750d202b6a6e5bb8a0955b2237` |
| 12 | `lemma` | [IsMonoidalRightDistrib.of_isIso_coprodComparisonTensorRight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant26d5dcc7a99d7f14e2969c486009efd57b1d7156fae722c342535ec22795a90b.lean/declarations/ismonoidalrightdistrib-of-isiso-coprodcomparisontensorright--d5350a2617c0560a9df7f122.md) | 173 | `result-track:d5350a2617c0560a9df7f122dbc69ec3ab48b425ba2a515929198a75e04be36f` |
| 13 | `lemma` | [rightDistrib_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant26d5dcc7a99d7f14e2969c486009efd57b1d7156fae722c342535ec22795a90b.lean/declarations/rightdistrib-hom--1d3a2f822b594ec06ecbb7ac.md) | 181 | `result-track:1d3a2f822b594ec06ecbb7acf19c4df7a557531068d30792e03709f725920c1a` |
| 14 | `lemma` | [coprod_inl_rightDistrib_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant26d5dcc7a99d7f14e2969c486009efd57b1d7156fae722c342535ec22795a90b.lean/declarations/coprod-inl-rightdistrib-hom--9780c80d276f9b93f07cf3c0.md) | 185 | `result-track:9780c80d276f9b93f07cf3c0f6863e95b42162b2b8c2acdfa8ae356fc089548d` |
| 15 | `lemma` | [coprod_inr_rightDistrib_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant26d5dcc7a99d7f14e2969c486009efd57b1d7156fae722c342535ec22795a90b.lean/declarations/coprod-inr-rightdistrib-hom--9f8b035a1a98f56cb7633bde.md) | 190 | `result-track:9f8b035a1a98f56cb7633bdeeb3771fdad665175d49af8476464624cc2ac3545` |
| 16 | `lemma` | [whiskerRight_coprod_inl_rightDistrib_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant26d5dcc7a99d7f14e2969c486009efd57b1d7156fae722c342535ec22795a90b.lean/declarations/whiskerright-coprod-inl-rightdistrib-inv--75a734e24308305b6937ff44.md) | 198 | `result-track:75a734e24308305b6937ff44c82cf297760bc6d67e7cbbe24d8e86ea64875f40` |
| 17 | `lemma` | [whiskerRight_coprod_inr_rightDistrib_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant26d5dcc7a99d7f14e2969c486009efd57b1d7156fae722c342535ec22795a90b.lean/declarations/whiskerright-coprod-inr-rightdistrib-inv--4b7ab0c3461c96e8cf72ec37.md) | 207 | `result-track:4b7ab0c3461c96e8cf72ec372f44a3013f4fe1a587b514a5606cd0bb752b76e8` |
| 18 | `lemma` | [coprodComparison_tensorLeft_braiding_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant26d5dcc7a99d7f14e2969c486009efd57b1d7156fae722c342535ec22795a90b.lean/declarations/coprodcomparison-tensorleft-braiding-hom--949c774a1a7305340d4c39de.md) | 215 | `result-track:949c774a1a7305340d4c39def01eb72f21e3bfb98df2e616a5b728ad30a8dd3c` |
| 19 | `lemma` | [coprodComparison_tensorRight_braiding_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant26d5dcc7a99d7f14e2969c486009efd57b1d7156fae722c342535ec22795a90b.lean/declarations/coprodcomparison-tensorright-braiding-hom--4a8785d61da03d85b1bfb554.md) | 223 | `result-track:4a8785d61da03d85b1bfb5540afbf94d80f149b439bce20041be1ee8d9c5ab85` |
| 20 | `lemma` | [SymmetricCategory.isMonoidalDistrib_of_isMonoidalLeftDistrib](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant26d5dcc7a99d7f14e2969c486009efd57b1d7156fae722c342535ec22795a90b.lean/declarations/symmetriccategory-ismonoidaldistrib-of-ismonoidalleftdistrib--c082af586c770c5ec2f11f7a.md) | 229 | `result-track:c082af586c770c5ec2f11f7a7c8c03c962b729fc5697ccdd1d9f68ebb5c11746` |
| 21 | `lemma` | [SymmetricCategory.rightDistrib_of_leftDistrib](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant26d5dcc7a99d7f14e2969c486009efd57b1d7156fae722c342535ec22795a90b.lean/declarations/symmetriccategory-rightdistrib-of-leftdistrib--b62b216e0b94921639a7da16.md) | 237 | `result-track:b62b216e0b94921639a7da160fd77c3a0788deee802b59dc3da7538412d8f0d4` |
| 22 | `instance` | [MonoidalClosed.isMonoidalLeftDistrib](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant26d5dcc7a99d7f14e2969c486009efd57b1d7156fae722c342535ec22795a90b.lean/declarations/monoidalclosed-ismonoidalleftdistrib--53b9707ac5832cec9bc4a62b.md) | 243 | `declaration-track:53b9707ac5832cec9bc4a62b19654082e80197e660f147c63a4e856a1789a9fb` |
| 23 | `instance` | [isMonoidalDistrib.of_symmetric_monoidal_closed](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant26d5dcc7a99d7f14e2969c486009efd57b1d7156fae722c342535ec22795a90b.lean/declarations/ismonoidaldistrib-of-symmetric-monoidal-closed--531afececf3f488762320033.md) | 248 | `declaration-track:531afececf3f4887623200337fcd4fe6fbfdb181fa51d6ed653ee16dbf18a729` |
| 24 | `lemma` | [MonoidalClosed.leftDistrib_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant26d5dcc7a99d7f14e2969c486009efd57b1d7156fae722c342535ec22795a90b.lean/declarations/monoidalclosed-leftdistrib-inv--7f9d680126ff412bcfa865ac.md) | 253 | `result-track:7f9d680126ff412bcfa865ac13835e94d856f779c28f66ef302f104f1d7b09a9` |
| 25 | `instance` | [isMonoidalLeftDistrib.of_endofunctors](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant26d5dcc7a99d7f14e2969c486009efd57b1d7156fae722c342535ec22795a90b.lean/declarations/ismonoidalleftdistrib-of-endofunctors--fdc2782990da3bcb267d42f3.md) | 264 | `declaration-track:fdc2782990da3bcb267d42f3dd2dfb121ddd7f2d0552af3e6b84cb522aa91159` |
| 26 | `instance` | [IsMonoidalDistrib.of_MonoidalPreadditive_with_binary_coproducts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant26d5dcc7a99d7f14e2969c486009efd57b1d7156fae722c342535ec22795a90b.lean/declarations/ismonoidaldistrib-of-monoidalpreadditive-with-binary-coproducts--32de8e74c6261cf577b08fe9.md) | 276 | `declaration-track:32de8e74c6261cf577b08fe949e4e111866a0f8fed4dc2f1136ebd6137a6bcce` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
