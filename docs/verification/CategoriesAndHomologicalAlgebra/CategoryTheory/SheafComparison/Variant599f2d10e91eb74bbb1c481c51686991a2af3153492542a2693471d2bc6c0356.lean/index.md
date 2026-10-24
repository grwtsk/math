# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SheafComparison.Variant599f2d10e91eb74bbb1c481c51686991a2af3153492542a2693471d2bc6c0356

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1938212594bdaa88422a56878254421b6ae30baa",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafComparison/Variant599f2d10e91eb74bbb1c481c51686991a2af3153492542a2693471d2bc6c0356.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafComparison/Variant599f2d10e91eb74bbb1c481c51686991a2af3153492542a2693471d2bc6c0356.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafComparison/Variant599f2d10e91eb74bbb1c481c51686991a2af3153492542a2693471d2bc6c0356.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1938212594bdaa88422a56878254421b6ae30baa`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafComparison/Variant599f2d10e91eb74bbb1c481c51686991a2af3153492542a2693471d2bc6c0356.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafComparison/Variant599f2d10e91eb74bbb1c481c51686991a2af3153492542a2693471d2bc6c0356.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Sites.Coherent.Comparison` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Coherent.ExtensiveSheaves` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Coherent.ReflectsPrecoherent` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Coherent.ReflectsPreregular` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.DenseSubsite.InducedTopology` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Whiskering` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafComparison/Variant599f2d10e91eb74bbb1c481c51686991a2af3153492542a2693471d2bc6c0356.lean/declarations/instance--657e007ce85a04c73afb3b99.md) | 51 | `declaration-track:657e007ce85a04c73afb3b99b27c2d8eb44daffa9f597cc4491175b6d2dd313a` |
| 2 | `theorem` | [exists_effectiveEpiFamily_iff_mem_induced](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafComparison/Variant599f2d10e91eb74bbb1c481c51686991a2af3153492542a2693471d2bc6c0356.lean/declarations/exists-effectiveepifamily-iff-mem-induced--30fc690d7eb336a69a439ea5.md) | 63 | `result-track:30fc690d7eb336a69a439ea532c16954903b0c778f7e23ef52d2751e9eec2079` |
| 3 | `lemma` | [eq_induced](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafComparison/Variant599f2d10e91eb74bbb1c481c51686991a2af3153492542a2693471d2bc6c0356.lean/declarations/eq-induced--33aa0915702f7c605ca50e43.md) | 86 | `result-track:33aa0915702f7c605ca50e430c62255cb3d297af537b0a4838d326db0c27de6f` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafComparison/Variant599f2d10e91eb74bbb1c481c51686991a2af3153492542a2693471d2bc6c0356.lean/declarations/instance--8fe6e8146ce0195105e7dab5.md) | 94 | `declaration-track:8fe6e8146ce0195105e7dab55111dd545494fc44563aa87b949af6e562a09b7a` |
| 5 | `lemma` | [coverPreserving](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafComparison/Variant599f2d10e91eb74bbb1c481c51686991a2af3153492542a2693471d2bc6c0356.lean/declarations/coverpreserving--dab19f4e37d3c6cae620cb8e.md) | 100 | `result-track:dab19f4e37d3c6cae620cb8e6a46bc46c09ae7d32dd03cc0b3f11164fbeff316` |
| 6 | `def` | [equivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafComparison/Variant599f2d10e91eb74bbb1c481c51686991a2af3153492542a2693471d2bc6c0356.lean/declarations/equivalence--5507c3756cd4c43a51581519.md) | 118 | `declaration-track:5507c3756cd4c43a51581519624243c725c6c232db9c9f2fa8af0b273798ebc0` |
| 7 | `def` | [equivalence'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafComparison/Variant599f2d10e91eb74bbb1c481c51686991a2af3153492542a2693471d2bc6c0356.lean/declarations/equivalence--8d591fd25dfc1a04cb634050.md) | 141 | `declaration-track:8d591fd25dfc1a04cb634050eeff9f43b82b6bc1c3440635830911049036aa7b` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafComparison/Variant599f2d10e91eb74bbb1c481c51686991a2af3153492542a2693471d2bc6c0356.lean/declarations/instance--daa97c3b12158088a41cdedd.md) | 156 | `declaration-track:daa97c3b12158088a41cdedd93a38d8c90b76ff82d8561acd76749504955a065` |
| 9 | `theorem` | [exists_effectiveEpi_iff_mem_induced](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafComparison/Variant599f2d10e91eb74bbb1c481c51686991a2af3153492542a2693471d2bc6c0356.lean/declarations/exists-effectiveepi-iff-mem-induced--2670ba88ac60f542d4f66e86.md) | 165 | `result-track:2670ba88ac60f542d4f66e86af8b0130a0db8d81fcc8423b04ff8a97e6befc52` |
| 10 | `lemma` | [eq_induced](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafComparison/Variant599f2d10e91eb74bbb1c481c51686991a2af3153492542a2693471d2bc6c0356.lean/declarations/eq-induced--677e6320c3d29969f7586ee1.md) | 184 | `result-track:677e6320c3d29969f7586ee16e3d6e87df15eb323a1025939f6cbdb701aa6436` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafComparison/Variant599f2d10e91eb74bbb1c481c51686991a2af3153492542a2693471d2bc6c0356.lean/declarations/instance--69e5cc83c6c803c65c5b55c7.md) | 192 | `declaration-track:69e5cc83c6c803c65c5b55c7c5e571bf66134c0da66067b4d3dfa01769a2d0ba` |
| 12 | `lemma` | [coverPreserving](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafComparison/Variant599f2d10e91eb74bbb1c481c51686991a2af3153492542a2693471d2bc6c0356.lean/declarations/coverpreserving--46360bb812ceb14c51b9998f.md) | 198 | `result-track:46360bb812ceb14c51b9998fb2f30d5084b607ada4ae05e886a693cc381ea0ad` |
| 13 | `def` | [equivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafComparison/Variant599f2d10e91eb74bbb1c481c51686991a2af3153492542a2693471d2bc6c0356.lean/declarations/equivalence--d6725c1d4ba66e49c4177459.md) | 216 | `declaration-track:d6725c1d4ba66e49c4177459a7c49766fcdd53139f660ddc3f2cd5add26dc7b7` |
| 14 | `theorem` | [isSheaf_coherent_iff_regular_and_extensive](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafComparison/Variant599f2d10e91eb74bbb1c481c51686991a2af3153492542a2693471d2bc6c0356.lean/declarations/issheaf-coherent-iff-regular-and-extensive--736e790938a98196c023b245.md) | 229 | `result-track:736e790938a98196c023b245d4506b932e7ab489948e36cb2c972f0a9207dc56` |
| 15 | `theorem` | [isSheaf_iff_preservesFiniteProducts_and_equalizerCondition](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafComparison/Variant599f2d10e91eb74bbb1c481c51686991a2af3153492542a2693471d2bc6c0356.lean/declarations/issheaf-iff-preservesfiniteproducts-and-equalizercondition--92ec8ccabb2bf51bf43da06b.md) | 235 | `result-track:92ec8ccabb2bf51bf43da06b1335b3b7cbbb1e815f7870c4831e88a7e4b3c682` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafComparison/Variant599f2d10e91eb74bbb1c481c51686991a2af3153492542a2693471d2bc6c0356.lean/declarations/instance--f77cf7b5a9bd509ed24966d4.md) | 244 | `declaration-track:f77cf7b5a9bd509ed24966d48aea1e369e4686c5c4eac5abede71e06b53a614b` |
| 17 | `theorem` | [isSheaf_iff_preservesFiniteProducts_of_projective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafComparison/Variant599f2d10e91eb74bbb1c481c51686991a2af3153492542a2693471d2bc6c0356.lean/declarations/issheaf-iff-preservesfiniteproducts-of-projective--76d59583f56ddc7f1dc79335.md) | 249 | `result-track:76d59583f56ddc7f1dc793357fd0172be5bd54ea2f3e7f8b3f3cd1b469a5e0e2` |
| 18 | `theorem` | [isSheaf_iff_extensiveSheaf_of_projective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafComparison/Variant599f2d10e91eb74bbb1c481c51686991a2af3153492542a2693471d2bc6c0356.lean/declarations/issheaf-iff-extensivesheaf-of-projective--83714a4b04bb58b22cf581af.md) | 255 | `result-track:83714a4b04bb58b22cf581afacd729ce3399c399cc417b82e45a0e39e3ab9d6c` |
| 19 | `def` | [coherentExtensiveEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafComparison/Variant599f2d10e91eb74bbb1c481c51686991a2af3153492542a2693471d2bc6c0356.lean/declarations/coherentextensiveequivalence--6062678bf9482e0a23405df8.md) | 265 | `declaration-track:6062678bf9482e0a23405df8b518a89acd085a6337ff1c8f9bbb671e79f1048d` |
| 20 | `lemma` | [isSheaf_coherent_of_hasPullbacks_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafComparison/Variant599f2d10e91eb74bbb1c481c51686991a2af3153492542a2693471d2bc6c0356.lean/declarations/issheaf-coherent-of-haspullbacks-comp--490fccdda7ed748b9810c0e7.md) | 279 | `result-track:490fccdda7ed748b9810c0e76477a93b3217cb017b6796735869f9ca73ef5c94` |
| 21 | `lemma` | [isSheaf_coherent_of_hasPullbacks_of_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafComparison/Variant599f2d10e91eb74bbb1c481c51686991a2af3153492542a2693471d2bc6c0356.lean/declarations/issheaf-coherent-of-haspullbacks-of-comp--6cc54143a3b87eb0ebf52a2b.md) | 287 | `result-track:6cc54143a3b87eb0ebf52a2b175ba69392c9d51b866b9f6d82959354ed8fa675` |
| 22 | `lemma` | [isSheaf_coherent_of_projective_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafComparison/Variant599f2d10e91eb74bbb1c481c51686991a2af3153492542a2693471d2bc6c0356.lean/declarations/issheaf-coherent-of-projective-comp--fa6afe18eb91553a7cbc10d6.md) | 297 | `result-track:fa6afe18eb91553a7cbc10d6023723a99fd4b6f95233b0ec5e1a8aac8d717e2f` |
| 23 | `lemma` | [isSheaf_coherent_of_projective_of_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafComparison/Variant599f2d10e91eb74bbb1c481c51686991a2af3153492542a2693471d2bc6c0356.lean/declarations/issheaf-coherent-of-projective-of-comp--93b1d472950ce38a0e935a73.md) | 303 | `result-track:93b1d472950ce38a0e935a73b4a6b1edf8fead7e0c73a2abd06a874011be2806` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafComparison/Variant599f2d10e91eb74bbb1c481c51686991a2af3153492542a2693471d2bc6c0356.lean/declarations/instance--4cc965c9a9c24f39ce5f0b32.md) | 310 | `declaration-track:4cc965c9a9c24f39ce5f0b322f47c10c258a3189ed836bb8b88d052d4b1c4854` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafComparison/Variant599f2d10e91eb74bbb1c481c51686991a2af3153492542a2693471d2bc6c0356.lean/declarations/instance--2b78749a738da7c8839162cc.md) | 315 | `declaration-track:2b78749a738da7c8839162cc118b56aaba693adb1e5279b317084eb265b9b022` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
