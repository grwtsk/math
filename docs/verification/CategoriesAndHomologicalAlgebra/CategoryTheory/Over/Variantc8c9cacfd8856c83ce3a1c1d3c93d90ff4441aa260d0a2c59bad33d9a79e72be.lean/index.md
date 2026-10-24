# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Over.Variantc8c9cacfd8856c83ce3a1c1d3c93d90ff4441aa260d0a2c59bad33d9a79e72be

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7a24606f7346754f6ac05ffd9a33cdad1694cf03",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variantc8c9cacfd8856c83ce3a1c1d3c93d90ff4441aa260d0a2c59bad33d9a79e72be.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variantc8c9cacfd8856c83ce3a1c1d3c93d90ff4441aa260d0a2c59bad33d9a79e72be.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variantc8c9cacfd8856c83ce3a1c1d3c93d90ff4441aa260d0a2c59bad33d9a79e72be.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7a24606f7346754f6ac05ffd9a33cdad1694cf03`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variantc8c9cacfd8856c83ce3a1c1d3c93d90ff4441aa260d0a2c59bad33d9a79e72be.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variantc8c9cacfd8856c83ce3a1c1d3c93d90ff4441aa260d0a2c59bad33d9a79e72be.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monoidal.Cartesian.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Constructions.Over.Products` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [cartesianMonoidalCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variantc8c9cacfd8856c83ce3a1c1d3c93d90ff4441aa260d0a2c59bad33d9a79e72be.lean/declarations/cartesianmonoidalcategory--2d4756a05d8644ec29a5289b.md) | 25 | `declaration-track:2d4756a05d8644ec29a5289b8373372c5188d1cd59cb83ff7db7e5f187adfbe4` |
| 2 | `abbrev` | [braidedCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variantc8c9cacfd8856c83ce3a1c1d3c93d90ff4441aa260d0a2c59bad33d9a79e72be.lean/declarations/braidedcategory--d856cb308f5d20fddf9b24f2.md) | 37 | `declaration-track:d856cb308f5d20fddf9b24f2bbe0326a142746f59c1162af156b6c09a084dd33` |
| 3 | `lemma` | [tensorObj_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variantc8c9cacfd8856c83ce3a1c1d3c93d90ff4441aa260d0a2c59bad33d9a79e72be.lean/declarations/tensorobj-ext--2d89431e380885f68ed6b950.md) | 47 | `result-track:2d89431e380885f68ed6b95085a72f90ea928bec054a99151cdabfbd25ee46cb` |
| 4 | `lemma` | [tensorObj_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variantc8c9cacfd8856c83ce3a1c1d3c93d90ff4441aa260d0a2c59bad33d9a79e72be.lean/declarations/tensorobj-left--4a309d66d7bf939d65d0491e.md) | 53 | `result-track:4a309d66d7bf939d65d0491e4d9250d373429d432294f25d0ea85df43d2745a5` |
| 5 | `lemma` | [tensorObj_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variantc8c9cacfd8856c83ce3a1c1d3c93d90ff4441aa260d0a2c59bad33d9a79e72be.lean/declarations/tensorobj-hom--025549bde2f0671480cec722.md) | 56 | `result-track:025549bde2f0671480cec72205a7ae87f1d38aa522e605e43596cb2b93257af0` |
| 6 | `lemma` | [tensorUnit_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variantc8c9cacfd8856c83ce3a1c1d3c93d90ff4441aa260d0a2c59bad33d9a79e72be.lean/declarations/tensorunit-left--bf3f280979a2c2c2d02e7cb5.md) | 59 | `result-track:bf3f280979a2c2c2d02e7cb547780f5670e49134480c31ca246aa5042b5eb548` |
| 7 | `lemma` | [tensorUnit_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variantc8c9cacfd8856c83ce3a1c1d3c93d90ff4441aa260d0a2c59bad33d9a79e72be.lean/declarations/tensorunit-hom--9021552be7fe1194e16e7dc6.md) | 62 | `result-track:9021552be7fe1194e16e7dc67096d8098455b1ac6a1bd164f15c53a0e66d5201` |
| 8 | `lemma` | [lift_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variantc8c9cacfd8856c83ce3a1c1d3c93d90ff4441aa260d0a2c59bad33d9a79e72be.lean/declarations/lift-left--5f8f9ce727e040d99e4df746.md) | 65 | `result-track:5f8f9ce727e040d99e4df74683dcf4b9d41d3e81ffaf529b2d261ad9fb055d15` |
| 9 | `lemma` | [toUnit_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variantc8c9cacfd8856c83ce3a1c1d3c93d90ff4441aa260d0a2c59bad33d9a79e72be.lean/declarations/tounit-left--5cd8bc7c1888f7b2fb3ee75a.md) | 69 | `result-track:5cd8bc7c1888f7b2fb3ee75a64eae6ed34276580fb41d05dc86cb028dfe1b188` |
| 10 | `lemma` | [associator_hom_left_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variantc8c9cacfd8856c83ce3a1c1d3c93d90ff4441aa260d0a2c59bad33d9a79e72be.lean/declarations/associator-hom-left-fst--feb2db5de73ecb3eb0d94fa9.md) | 72 | `result-track:feb2db5de73ecb3eb0d94fa9343ad18277fe3e243feeb33e60be7e43f203576b` |
| 11 | `lemma` | [associator_hom_left_snd_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variantc8c9cacfd8856c83ce3a1c1d3c93d90ff4441aa260d0a2c59bad33d9a79e72be.lean/declarations/associator-hom-left-snd-fst--8f6ddb4e7de17d15b968f1bf.md) | 78 | `result-track:8f6ddb4e7de17d15b968f1bf9f02936117d357bf8f6691dc4f5c8fa900a4e19c` |
| 12 | `lemma` | [associator_hom_left_snd_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variantc8c9cacfd8856c83ce3a1c1d3c93d90ff4441aa260d0a2c59bad33d9a79e72be.lean/declarations/associator-hom-left-snd-snd--bcae12b5e0a0282963f70f9e.md) | 84 | `result-track:bcae12b5e0a0282963f70f9e009940c9760e103bc5ba19b53e0006e42b0a7e50` |
| 13 | `lemma` | [associator_inv_left_fst_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variantc8c9cacfd8856c83ce3a1c1d3c93d90ff4441aa260d0a2c59bad33d9a79e72be.lean/declarations/associator-inv-left-fst-fst--92692879e576515668197b6a.md) | 90 | `result-track:92692879e576515668197b6aecab8e6e7cb7973fa2f15df5189732852739ef74` |
| 14 | `lemma` | [associator_inv_left_fst_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variantc8c9cacfd8856c83ce3a1c1d3c93d90ff4441aa260d0a2c59bad33d9a79e72be.lean/declarations/associator-inv-left-fst-snd--3dec4ab594366bf9f01ae487.md) | 96 | `result-track:3dec4ab594366bf9f01ae4873c4883e65d02052b57b6ef80dc342c6254b7614d` |
| 15 | `lemma` | [associator_inv_left_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variantc8c9cacfd8856c83ce3a1c1d3c93d90ff4441aa260d0a2c59bad33d9a79e72be.lean/declarations/associator-inv-left-snd--132a9dfafebcc6658c24d9f2.md) | 102 | `result-track:132a9dfafebcc6658c24d9f2d394c680be405058aa59eda615c830592e140c51` |
| 16 | `lemma` | [leftUnitor_hom_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variantc8c9cacfd8856c83ce3a1c1d3c93d90ff4441aa260d0a2c59bad33d9a79e72be.lean/declarations/leftunitor-hom-left--6e3de7d1bae4234531cc73f9.md) | 108 | `result-track:6e3de7d1bae4234531cc73f939571812f70792f96fd7d9719c8e95ddc55f0933` |
| 17 | `lemma` | [leftUnitor_inv_left_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variantc8c9cacfd8856c83ce3a1c1d3c93d90ff4441aa260d0a2c59bad33d9a79e72be.lean/declarations/leftunitor-inv-left-fst--222a51f29478689c7fd54edf.md) | 112 | `result-track:222a51f29478689c7fd54edfa5318a6d89f0d1ad92c7766f10a9e79adef8f493` |
| 18 | `lemma` | [leftUnitor_inv_left_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variantc8c9cacfd8856c83ce3a1c1d3c93d90ff4441aa260d0a2c59bad33d9a79e72be.lean/declarations/leftunitor-inv-left-snd--a2c3a5d1e9a0646a1a8fd506.md) | 117 | `result-track:a2c3a5d1e9a0646a1a8fd506838780bfc588627978db16f1c296d696d0892343` |
| 19 | `lemma` | [rightUnitor_hom_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variantc8c9cacfd8856c83ce3a1c1d3c93d90ff4441aa260d0a2c59bad33d9a79e72be.lean/declarations/rightunitor-hom-left--fc30f810e461ef0cecab9b33.md) | 122 | `result-track:fc30f810e461ef0cecab9b33385088a52357ae622d39241634978ba4f18dc3f6` |
| 20 | `lemma` | [rightUnitor_inv_left_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variantc8c9cacfd8856c83ce3a1c1d3c93d90ff4441aa260d0a2c59bad33d9a79e72be.lean/declarations/rightunitor-inv-left-fst--476ede6dd487794323f5e176.md) | 126 | `result-track:476ede6dd487794323f5e17612df0237216bf09778689c9df15dd4017bdf80d9` |
| 21 | `lemma` | [rightUnitor_inv_left_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variantc8c9cacfd8856c83ce3a1c1d3c93d90ff4441aa260d0a2c59bad33d9a79e72be.lean/declarations/rightunitor-inv-left-snd--f5f15aa8cabaf9ac204e9f46.md) | 131 | `result-track:f5f15aa8cabaf9ac204e9f46f43704bb167209484096bf1e768ac8c9a32f08f9` |
| 22 | `lemma` | [whiskerLeft_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variantc8c9cacfd8856c83ce3a1c1d3c93d90ff4441aa260d0a2c59bad33d9a79e72be.lean/declarations/whiskerleft-left--13236c10e8fe307b2684195a.md) | 135 | `result-track:13236c10e8fe307b2684195af6125bed382a7a6e69d3bf1b7231e6013f1de72c` |
| 23 | `lemma` | [whiskerLeft_left_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variantc8c9cacfd8856c83ce3a1c1d3c93d90ff4441aa260d0a2c59bad33d9a79e72be.lean/declarations/whiskerleft-left-fst--808e9c8b8d8b825f11930e11.md) | 139 | `result-track:808e9c8b8d8b825f11930e11ebc1c294f155346a8bfcc9c0187038ae702b83a6` |
| 24 | `lemma` | [whiskerLeft_left_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variantc8c9cacfd8856c83ce3a1c1d3c93d90ff4441aa260d0a2c59bad33d9a79e72be.lean/declarations/whiskerleft-left-snd--ca7e3102d199911860e38309.md) | 144 | `result-track:ca7e3102d199911860e383091fb9419a194f358b698fd28447963deec3582dd5` |
| 25 | `lemma` | [whiskerRight_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variantc8c9cacfd8856c83ce3a1c1d3c93d90ff4441aa260d0a2c59bad33d9a79e72be.lean/declarations/whiskerright-left--b32205cf06e14dbd2c9fd4ff.md) | 148 | `result-track:b32205cf06e14dbd2c9fd4ffc1b8c77fb85e5fef011537ca5243689b25385ecc` |
| 26 | `lemma` | [whiskerRight_left_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variantc8c9cacfd8856c83ce3a1c1d3c93d90ff4441aa260d0a2c59bad33d9a79e72be.lean/declarations/whiskerright-left-fst--905d5eca61fd3dcfc82a6526.md) | 152 | `result-track:905d5eca61fd3dcfc82a652602ffc69595f90c6ec59eb7ffc66b0c053cf76558` |
| 27 | `lemma` | [whiskerRight_left_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variantc8c9cacfd8856c83ce3a1c1d3c93d90ff4441aa260d0a2c59bad33d9a79e72be.lean/declarations/whiskerright-left-snd--62012eb07bf2bd3ebbd5f451.md) | 157 | `result-track:62012eb07bf2bd3ebbd5f4519ea603be8fdba9cd9b764de21b59258a94f3c42f` |
| 28 | `lemma` | [tensorHom_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variantc8c9cacfd8856c83ce3a1c1d3c93d90ff4441aa260d0a2c59bad33d9a79e72be.lean/declarations/tensorhom-left--d241a27694e2799ef0246a48.md) | 161 | `result-track:d241a27694e2799ef0246a48b222e4702f8203e4f36e4b0018b6bd70a43f7dfc` |
| 29 | `lemma` | [tensorHom_left_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variantc8c9cacfd8856c83ce3a1c1d3c93d90ff4441aa260d0a2c59bad33d9a79e72be.lean/declarations/tensorhom-left-fst--174f18acf5d5c5e0d29cc5fd.md) | 165 | `result-track:174f18acf5d5c5e0d29cc5fd348af00e130dc5cbb8c459a49baa8e76b6894b04` |
| 30 | `lemma` | [tensorHom_left_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variantc8c9cacfd8856c83ce3a1c1d3c93d90ff4441aa260d0a2c59bad33d9a79e72be.lean/declarations/tensorhom-left-snd--783007b5f4c157180c340303.md) | 170 | `result-track:783007b5f4c157180c34030314bb52e8768c3e34a0b74ade3e2e1358ce05778f` |
| 31 | `lemma` | [braiding_hom_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variantc8c9cacfd8856c83ce3a1c1d3c93d90ff4441aa260d0a2c59bad33d9a79e72be.lean/declarations/braiding-hom-left--0dea935601e62a69ca7fbf61.md) | 175 | `result-track:0dea935601e62a69ca7fbf61345db10bc0916e4e5e67c8b94970a5f5da475a72` |
| 32 | `lemma` | [braiding_inv_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variantc8c9cacfd8856c83ce3a1c1d3c93d90ff4441aa260d0a2c59bad33d9a79e72be.lean/declarations/braiding-inv-left--cc125a4eeb76d350e46a53c9.md) | 179 | `result-track:cc125a4eeb76d350e46a53c9e391975e9c5761371d1e27e3f3a008c7a3a409c3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
