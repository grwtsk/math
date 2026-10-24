# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Factorization.Variant569542c1d0b57a4030242f0b16d9b4f94c211fd4d2887c522deac27d4b0d104a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6200283e213a2171b1c8f09d0531e9810ad63c7a",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Factorization/Variant569542c1d0b57a4030242f0b16d9b4f94c211fd4d2887c522deac27d4b0d104a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Factorization/Variant569542c1d0b57a4030242f0b16d9b4f94c211fd4d2887c522deac27d4b0d104a.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Factorization/Variant569542c1d0b57a4030242f0b16d9b4f94c211fd4d2887c522deac27d4b0d104a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6200283e213a2171b1c8f09d0531e9810ad63c7a`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Factorization/Variant569542c1d0b57a4030242f0b16d9b4f94c211fd4d2887c522deac27d4b0d104a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Factorization/Variant569542c1d0b57a4030242f0b16d9b4f94c211fd4d2887c522deac27d4b0d104a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.MorphismProperty.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [MapFactorizationData](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Factorization/Variant569542c1d0b57a4030242f0b16d9b4f94c211fd4d2887c522deac27d4b0d104a.lean/declarations/mapfactorizationdata--d1d716d370b4c3058f64cb62.md) | 51 | `declaration-track:d1d716d370b4c3058f64cb6263e66d4d19aecd97f3e3adb4066ff3b6f7439b48` |
| 2 | `abbrev` | [FactorizationData](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Factorization/Variant569542c1d0b57a4030242f0b16d9b4f94c211fd4d2887c522deac27d4b0d104a.lean/declarations/factorizationdata--b4aed642c3fce2454c7fb83c.md) | 65 | `declaration-track:b4aed642c3fce2454c7fb83cc4bdcb09968731a8e4b082a70e865c26954d145c` |
| 3 | `class` | [HasFactorization](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Factorization/Variant569542c1d0b57a4030242f0b16d9b4f94c211fd4d2887c522deac27d4b0d104a.lean/declarations/hasfactorization--f3779231278b9adb59ee3fb1.md) | 70 | `declaration-track:f3779231278b9adb59ee3fb1eb15c16edaccb58c645f130bc180d07fad283458` |
| 4 | `def` | [factorizationData](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Factorization/Variant569542c1d0b57a4030242f0b16d9b4f94c211fd4d2887c522deac27d4b0d104a.lean/declarations/factorizationdata--8d010df58014ad3fc1c5181e.md) | 74 | `declaration-track:8d010df58014ad3fc1c5181e829feb50439e971a2ca6f3d1dfb790daf1a895f3` |
| 5 | `def` | [comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Factorization/Variant569542c1d0b57a4030242f0b16d9b4f94c211fd4d2887c522deac27d4b0d104a.lean/declarations/comp--12af91aedfd13c1223c7b39e.md) | 78 | `declaration-track:12af91aedfd13c1223c7b39e1be9858d6e6d77f849a4d0982b6022fc5ffde8de` |
| 6 | `lemma` | [comp_eq_top_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Factorization/Variant569542c1d0b57a4030242f0b16d9b4f94c211fd4d2887c522deac27d4b0d104a.lean/declarations/comp-eq-top-iff--edd90c1d2219df2e64f14bd1.md) | 80 | `result-track:edd90c1d2219df2e64f14bd13961df3ed510b407e3b1dea2698f30d123f410da` |
| 7 | `structure` | [FunctorialFactorizationData](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Factorization/Variant569542c1d0b57a4030242f0b16d9b4f94c211fd4d2887c522deac27d4b0d104a.lean/declarations/functorialfactorizationdata--25496806f23c8a37d9a54a2e.md) | 93 | `declaration-track:25496806f23c8a37d9a54a2e30ab9bf728fb600e915e3958f12f266224471080` |
| 8 | `lemma` | [fac_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Factorization/Variant569542c1d0b57a4030242f0b16d9b4f94c211fd4d2887c522deac27d4b0d104a.lean/declarations/fac-app--360efc45952d51ff8983f21e.md) | 112 | `result-track:360efc45952d51ff8983f21e32299f8fe065bf982f6137541b0e1b5d99bb52b9` |
| 9 | `def` | [ofLE](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Factorization/Variant569542c1d0b57a4030242f0b16d9b4f94c211fd4d2887c522deac27d4b0d104a.lean/declarations/ofle--f96954a742a6c6a97296acea.md) | 117 | `declaration-track:f96954a742a6c6a97296aceadbd56638c0c3e6bbc1164d77ef497ed3173fbe8d` |
| 10 | `def` | [factorizationData](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Factorization/Variant569542c1d0b57a4030242f0b16d9b4f94c211fd4d2887c522deac27d4b0d104a.lean/declarations/factorizationdata--a941eb9bb3046180462acf32.md) | 126 | `declaration-track:a941eb9bb3046180462acf320c83c249657fccf90856388b1858834d85bfb06d` |
| 11 | `def` | [mapZ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Factorization/Variant569542c1d0b57a4030242f0b16d9b4f94c211fd4d2887c522deac27d4b0d104a.lean/declarations/mapz--6e731d33b3a46b3d8e8a3396.md) | 141 | `declaration-track:6e731d33b3a46b3d8e8a339636c1c95274bde6ebda008e09b2efa1dda96e2ba7` |
| 12 | `lemma` | [i_mapZ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Factorization/Variant569542c1d0b57a4030242f0b16d9b4f94c211fd4d2887c522deac27d4b0d104a.lean/declarations/i-mapz--28ada27d89d1fe14729ceecc.md) | 144 | `result-track:28ada27d89d1fe14729ceecce9ed8f5244bb312664357d2fe585990a2a949dc0` |
| 13 | `lemma` | [mapZ_p](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Factorization/Variant569542c1d0b57a4030242f0b16d9b4f94c211fd4d2887c522deac27d4b0d104a.lean/declarations/mapz-p--dc1668bd25fac3f19cfa2ab5.md) | 149 | `result-track:dc1668bd25fac3f19cfa2ab5f00699ebd0e60c6b45bd61d311dc3d4b0cb2a2a8` |
| 14 | `lemma` | [mapZ_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Factorization/Variant569542c1d0b57a4030242f0b16d9b4f94c211fd4d2887c522deac27d4b0d104a.lean/declarations/mapz-id--830628af6a33e0198e2341a6.md) | 155 | `result-track:830628af6a33e0198e2341a6f79978bc7758bbeaef5abbe808a7e6c58696122b` |
| 15 | `lemma` | [mapZ_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Factorization/Variant569542c1d0b57a4030242f0b16d9b4f94c211fd4d2887c522deac27d4b0d104a.lean/declarations/mapz-comp--6a2aa61e44209b8b57a760d5.md) | 159 | `result-track:6a2aa61e44209b8b57a760d57e23e5102bbbe8f1153d8985842225673eec5f3e` |
| 16 | `def` | [functorCategory.Z](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Factorization/Variant569542c1d0b57a4030242f0b16d9b4f94c211fd4d2887c522deac27d4b0d104a.lean/declarations/functorcategory-z--10eb02d13ddc1d76b92910b2.md) | 171 | `declaration-track:10eb02d13ddc1d76b92910b2cf9436bea9ac3cd3574db9f6c76beb95f7893577` |
| 17 | `def` | [functorCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Factorization/Variant569542c1d0b57a4030242f0b16d9b4f94c211fd4d2887c522deac27d4b0d104a.lean/declarations/functorcategory--93a6adaf6d0c5617118f663f.md) | 207 | `declaration-track:93a6adaf6d0c5617118f663f28aa545d984cea35caf50a0bf9aeba42391dc129` |
| 18 | `class` | [HasFunctorialFactorization](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Factorization/Variant569542c1d0b57a4030242f0b16d9b4f94c211fd4d2887c522deac27d4b0d104a.lean/declarations/hasfunctorialfactorization--71627981f738e234865a05b2.md) | 222 | `declaration-track:71627981f738e234865a05b22daadf6b86afeb89ec06454dc286d79f04d95c6c` |
| 19 | `def` | [functorialFactorizationData](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Factorization/Variant569542c1d0b57a4030242f0b16d9b4f94c211fd4d2887c522deac27d4b0d104a.lean/declarations/functorialfactorizationdata--28a239ef071e0c29b9befd39.md) | 227 | `declaration-track:28a239ef071e0c29b9befd39bf82904a0b11bec2b76c889cd120f1093ce63283` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Factorization/Variant569542c1d0b57a4030242f0b16d9b4f94c211fd4d2887c522deac27d4b0d104a.lean/declarations/instance--831e2591057c58b1a7ce7956.md) | 231 | `declaration-track:831e2591057c58b1a7ce7956aea3fb1d07c26013b0edba4b05654ce6737788ab` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Factorization/Variant569542c1d0b57a4030242f0b16d9b4f94c211fd4d2887c522deac27d4b0d104a.lean/declarations/instance--68b8d1b625d6258e644bb2be.md) | 234 | `declaration-track:68b8d1b625d6258e644bb2be59d83ebf51d590eb2ff002b63f23b54ffdf024f5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
