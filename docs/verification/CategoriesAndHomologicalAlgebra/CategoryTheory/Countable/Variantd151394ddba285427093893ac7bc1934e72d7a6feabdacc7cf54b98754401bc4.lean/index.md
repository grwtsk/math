# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Countable.Variantd151394ddba285427093893ac7bc1934e72d7a6feabdacc7cf54b98754401bc4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6c1fe580209b86572de45883ee4e04fca3c4c7bd",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variantd151394ddba285427093893ac7bc1934e72d7a6feabdacc7cf54b98754401bc4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variantd151394ddba285427093893ac7bc1934e72d7a6feabdacc7cf54b98754401bc4.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variantd151394ddba285427093893ac7bc1934e72d7a6feabdacc7cf54b98754401bc4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6c1fe580209b86572de45883ee4e04fca3c4c7bd`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variantd151394ddba285427093893ac7bc1934e72d7a6feabdacc7cf54b98754401bc4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variantd151394ddba285427093893ac7bc1934e72d7a6feabdacc7cf54b98754401bc4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Final` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.FiniteProducts` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Countable` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Countable.Defs` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [HasCountableLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variantd151394ddba285427093893ac7bc1934e72d7a6feabdacc7cf54b98754401bc4.lean/declarations/hascountablelimits--2feadb7043db0d0d35e682bb.md) | 37 | `declaration-track:2feadb7043db0d0d35e682bb81e83ac79f6ec4ee8031b1eecbe19c150aa70d0d` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variantd151394ddba285427093893ac7bc1934e72d7a6feabdacc7cf54b98754401bc4.lean/declarations/instance--d242998dec2f4bc75975d556.md) | 42 | `declaration-track:d242998dec2f4bc75975d556cceeb34a814886314c087bba16a5e34adedcfc86` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variantd151394ddba285427093893ac7bc1934e72d7a6feabdacc7cf54b98754401bc4.lean/declarations/instance--917a32b37cf62b0082747401.md) | 46 | `declaration-track:917a32b37cf62b0082747401d900820fcb1d229a1ede0e667b370aed518967b2` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variantd151394ddba285427093893ac7bc1934e72d7a6feabdacc7cf54b98754401bc4.lean/declarations/instance--b872c81d8cfed9351bb5d40e.md) | 51 | `declaration-track:b872c81d8cfed9351bb5d40e7ed2b6b51fceff4f7be2cb245c2518d503e0dd67` |
| 5 | `class` | [HasCountableProducts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variantd151394ddba285427093893ac7bc1934e72d7a6feabdacc7cf54b98754401bc4.lean/declarations/hascountableproducts--931d14bd7cc36980f3e0bbe4.md) | 56 | `declaration-track:931d14bd7cc36980f3e0bbe4f8babe4811ed182f4348ec4cbb74ab1b702fb6ba` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variantd151394ddba285427093893ac7bc1934e72d7a6feabdacc7cf54b98754401bc4.lean/declarations/instance--7e953fc59d8579a61c49122b.md) | 59 | `declaration-track:7e953fc59d8579a61c49122b97d592033d17bb52f073b64c20cacc9db2f8e7a6` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variantd151394ddba285427093893ac7bc1934e72d7a6feabdacc7cf54b98754401bc4.lean/declarations/instance--6bc145ba080a19e1fbcc1dec.md) | 64 | `declaration-track:6bc145ba080a19e1fbcc1decfa3f9efed99d4d2854ed74ec083f3ad7424d616d` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variantd151394ddba285427093893ac7bc1934e72d7a6feabdacc7cf54b98754401bc4.lean/declarations/instance--01623f00a6b6d6aa98a81406.md) | 70 | `declaration-track:01623f00a6b6d6aa98a814060686b2efcf1976787cfd03fbdd1fd9ae5baa2904` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variantd151394ddba285427093893ac7bc1934e72d7a6feabdacc7cf54b98754401bc4.lean/declarations/instance--67c22aad21eba37cad23974f.md) | 74 | `declaration-track:67c22aad21eba37cad23974fca2ac390d233ab6fcebab5815c70d459711bc24f` |
| 10 | `class` | [HasCountableColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variantd151394ddba285427093893ac7bc1934e72d7a6feabdacc7cf54b98754401bc4.lean/declarations/hascountablecolimits--0d8791d3e97806ea6452e2b6.md) | 82 | `declaration-track:0d8791d3e97806ea6452e2b6a72dae3cb6c7c68e23d2d9c886072a02e242ead6` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variantd151394ddba285427093893ac7bc1934e72d7a6feabdacc7cf54b98754401bc4.lean/declarations/instance--86494db9df1bf3c136142262.md) | 87 | `declaration-track:86494db9df1bf3c1361422624400d8a3785d39fc91c818e84fb7b6dc79abeeff` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variantd151394ddba285427093893ac7bc1934e72d7a6feabdacc7cf54b98754401bc4.lean/declarations/instance--8677bf5eb11bf756824a7087.md) | 91 | `declaration-track:8677bf5eb11bf756824a7087699366a8f1c4d31b4946134a8a92d361decff6d5` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variantd151394ddba285427093893ac7bc1934e72d7a6feabdacc7cf54b98754401bc4.lean/declarations/instance--53e13a2476a9b387e978ae9a.md) | 97 | `declaration-track:53e13a2476a9b387e978ae9a5382c43feca27dc3770361844813a93d78b3096e` |
| 14 | `class` | [HasCountableCoproducts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variantd151394ddba285427093893ac7bc1934e72d7a6feabdacc7cf54b98754401bc4.lean/declarations/hascountablecoproducts--5ff7bed97c684d00608b6797.md) | 103 | `declaration-track:5ff7bed97c684d00608b67974fd4fdd0cac0db89f460a61e6a43f4e48f6b4d7f` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variantd151394ddba285427093893ac7bc1934e72d7a6feabdacc7cf54b98754401bc4.lean/declarations/instance--4faeec17d61ee22ee5b7a0f4.md) | 106 | `declaration-track:4faeec17d61ee22ee5b7a0f44db4e2df011a38916a9783812cf5bb48b86ebde2` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variantd151394ddba285427093893ac7bc1934e72d7a6feabdacc7cf54b98754401bc4.lean/declarations/instance--bd339fcf2170b9dd932d72b0.md) | 113 | `declaration-track:bd339fcf2170b9dd932d72b04cbabdd102e5221b21695a82f0b1910d1f91ef51` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variantd151394ddba285427093893ac7bc1934e72d7a6feabdacc7cf54b98754401bc4.lean/declarations/instance--427e5dca88b61c9cf46e8c1b.md) | 118 | `declaration-track:427e5dca88b61c9cf46e8c1b38e2e90889ae0008e2b563d96212211c07075ac1` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variantd151394ddba285427093893ac7bc1934e72d7a6feabdacc7cf54b98754401bc4.lean/declarations/instance--73a2825435bee136b41cc955.md) | 122 | `declaration-track:73a2825435bee136b41cc955ff5ef70861a5efb0b3388f8c0eefbbdc8938c543` |
| 19 | `def` | [sequentialFunctor_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variantd151394ddba285427093893ac7bc1934e72d7a6feabdacc7cf54b98754401bc4.lean/declarations/sequentialfunctor-obj--e94151990302ef6de75e608a.md) | 135 | `declaration-track:e94151990302ef6de75e608a332aba6341eac50beaa7da1218a3abb90e9e306a` |
| 20 | `theorem` | [sequentialFunctor_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variantd151394ddba285427093893ac7bc1934e72d7a6feabdacc7cf54b98754401bc4.lean/declarations/sequentialfunctor-map--ed71d893c9a4e3d2413bd64e.md) | 140 | `result-track:ed71d893c9a4e3d2413bd64e536bdba06a3bfe2fc634bdabc386878a50e0bced` |
| 21 | `def` | [sequentialFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variantd151394ddba285427093893ac7bc1934e72d7a6feabdacc7cf54b98754401bc4.lean/declarations/sequentialfunctor--77cf412f068849b2446b1791.md) | 149 | `declaration-track:77cf412f068849b2446b17916263cd393e4585c9a0221a516d160374ca29aa10` |
| 22 | `theorem` | [sequentialFunctor_final_aux](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variantd151394ddba285427093893ac7bc1934e72d7a6feabdacc7cf54b98754401bc4.lean/declarations/sequentialfunctor-final-aux--e3d60501bb0c4d79e8c2c2f8.md) | 153 | `result-track:e3d60501bb0c4d79e8c2c2f8d375d875d218a95ab048da71c1e131316a3fcb24` |
| 23 | `instance` | [sequentialFunctor_final](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variantd151394ddba285427093893ac7bc1934e72d7a6feabdacc7cf54b98754401bc4.lean/declarations/sequentialfunctor-final--0181b549064fcadd030fd7dc.md) | 159 | `declaration-track:0181b549064fcadd030fd7dcfbbee448db00bf83c4a9386d6a1c98dfbed3c05f` |
| 24 | `def` | [sequentialFunctor_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variantd151394ddba285427093893ac7bc1934e72d7a6feabdacc7cf54b98754401bc4.lean/declarations/sequentialfunctor-obj--bab80e9bf48703fbad9f2261.md) | 183 | `declaration-track:bab80e9bf48703fbad9f2261ad5b4aac1fcbb759c6b5bd802fa035df5e3be502` |
| 25 | `theorem` | [sequentialFunctor_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variantd151394ddba285427093893ac7bc1934e72d7a6feabdacc7cf54b98754401bc4.lean/declarations/sequentialfunctor-map--23fb4732460a026eb42d7292.md) | 188 | `result-track:23fb4732460a026eb42d7292688debd3bdbf3afcf20676326b81f09c4230ca0e` |
| 26 | `def` | [sequentialFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variantd151394ddba285427093893ac7bc1934e72d7a6feabdacc7cf54b98754401bc4.lean/declarations/sequentialfunctor--ec00f5f8a84d4a6db6056f33.md) | 200 | `declaration-track:ec00f5f8a84d4a6db6056f3381b5f3c324850a42e3bb9dad0013bfbb85a39196` |
| 27 | `theorem` | [sequentialFunctor_initial_aux](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variantd151394ddba285427093893ac7bc1934e72d7a6feabdacc7cf54b98754401bc4.lean/declarations/sequentialfunctor-initial-aux--9752c3859e3e86ba0b17e8a9.md) | 204 | `result-track:9752c3859e3e86ba0b17e8a916a0ac151ba6b8cfd9b50dd92330f23cbccd7312` |
| 28 | `instance` | [sequentialFunctor_initial](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variantd151394ddba285427093893ac7bc1934e72d7a6feabdacc7cf54b98754401bc4.lean/declarations/sequentialfunctor-initial--7eed8d257a4aa8c1b7d22bce.md) | 210 | `declaration-track:7eed8d257a4aa8c1b7d22bce499b2f7e11d3caf6fee613dfe02358e22616e945` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
