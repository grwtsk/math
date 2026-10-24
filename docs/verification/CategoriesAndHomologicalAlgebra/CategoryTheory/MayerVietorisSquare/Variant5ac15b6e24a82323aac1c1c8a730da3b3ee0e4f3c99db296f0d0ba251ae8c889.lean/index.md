# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.MayerVietorisSquare.Variant5ac15b6e24a82323aac1c1c8a730da3b3ee0e4f3c99db296f0d0ba251ae8c889

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "943b7af0295d7d090cae223dc2c9935af7c8d1f6",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MayerVietorisSquare/Variant5ac15b6e24a82323aac1c1c8a730da3b3ee0e4f3c99db296f0d0ba251ae8c889.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MayerVietorisSquare/Variant5ac15b6e24a82323aac1c1c8a730da3b3ee0e4f3c99db296f0d0ba251ae8c889.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MayerVietorisSquare/Variant5ac15b6e24a82323aac1c1c8a730da3b3ee0e4f3c99db296f0d0ba251ae8c889.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `943b7af0295d7d090cae223dc2c9935af7c8d1f6`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MayerVietorisSquare/Variant5ac15b6e24a82323aac1c1c8a730da3b3ee0e4f3c99db296f0d0ba251ae8c889.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/MayerVietorisSquare/Variant5ac15b6e24a82323aac1c1c8a730da3b3ee0e4f3c99db296f0d0ba251ae8c889.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.Grp.Abelian` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.Grp.Adjunctions` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.ShortComplex.ShortExact` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.Square` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.FunctorCategory.EpiMono` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Shapes.Square` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Types.Shapes` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Abelian` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Adjunction` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Sheafification` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [Sheaf.isPullback_square_op_map_yoneda_presheafToSheaf_yoneda_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MayerVietorisSquare/Variant5ac15b6e24a82323aac1c1c8a730da3b3ee0e4f3c99db296f0d0ba251ae8c889.lean/declarations/sheaf-ispullback-square-op-map-yoneda-presheaftosheaf-yoneda-iff--fe3ba40bbf2ec36377fd52b3.md) | 70 | `result-track:fe3ba40bbf2ec36377fd52b3154e6ee730da67a2563f6c9cee13cfaa7ffd659e` |
| 2 | `structure` | [MayerVietorisSquare](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MayerVietorisSquare/Variant5ac15b6e24a82323aac1c1c8a730da3b3ee0e4f3c99db296f0d0ba251ae8c889.lean/declarations/mayervietorissquare--030dcd63c146ba86367f0aad.md) | 95 | `declaration-track:030dcd63c146ba86367f0aadb3c4003928544df9bf4047ee55dcfc4edcbda058` |
| 3 | `def` | [mk'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MayerVietorisSquare/Variant5ac15b6e24a82323aac1c1c8a730da3b3ee0e4f3c99db296f0d0ba251ae8c889.lean/declarations/mk--a70b5b33259b1fe3b8523982.md) | 114 | `declaration-track:a70b5b33259b1fe3b8523982f0f2f8daa963c7173a0e6c8db3514992acbf0b3f` |
| 4 | `def` | [mk_of_isPullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MayerVietorisSquare/Variant5ac15b6e24a82323aac1c1c8a730da3b3ee0e4f3c99db296f0d0ba251ae8c889.lean/declarations/mk-of-ispullback--d4a195d7c468964f3dc10c81.md) | 127 | `declaration-track:d4a195d7c468964f3dc10c8153a44d92df8c5ef024cff53f329b901f9bf00ab9` |
| 5 | `lemma` | [isPushoutAddCommGrpFreeSheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MayerVietorisSquare/Variant5ac15b6e24a82323aac1c1c8a730da3b3ee0e4f3c99db296f0d0ba251ae8c889.lean/declarations/ispushoutaddcommgrpfreesheaf--ce1ece7f7e421dd9199e269d.md) | 157 | `result-track:ce1ece7f7e421dd9199e269da476eca07af6b1c26faaf430a5c52bcb8d519846` |
| 6 | `def` | [SheafCondition](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MayerVietorisSquare/Variant5ac15b6e24a82323aac1c1c8a730da3b3ee0e4f3c99db296f0d0ba251ae8c889.lean/declarations/sheafcondition--073a5ffec87ab50fdecfbe3f.md) | 167 | `declaration-track:073a5ffec87ab50fdecfbe3f61fc23348e30a0fdf86d8b27f6d1790fad6b0939` |
| 7 | `lemma` | [sheafCondition_iff_comp_coyoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MayerVietorisSquare/Variant5ac15b6e24a82323aac1c1c8a730da3b3ee0e4f3c99db296f0d0ba251ae8c889.lean/declarations/sheafcondition-iff-comp-coyoneda--20554f677432900204c66468.md) | 170 | `result-track:20554f677432900204c664680d076a55945b9301807d5f3634aa4ca3245684c5` |
| 8 | `abbrev` | [toPullbackObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MayerVietorisSquare/Variant5ac15b6e24a82323aac1c1c8a730da3b3ee0e4f3c99db296f0d0ba251ae8c889.lean/declarations/topullbackobj--5a8e48bad94c2d4969ceff43.md) | 177 | `declaration-track:5a8e48bad94c2d4969ceff432d13fdcc298d8f15b2334ecb3e8246a305576e4b` |
| 9 | `lemma` | [sheafCondition_iff_bijective_toPullbackObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MayerVietorisSquare/Variant5ac15b6e24a82323aac1c1c8a730da3b3ee0e4f3c99db296f0d0ba251ae8c889.lean/declarations/sheafcondition-iff-bijective-topullbackobj--12f8093aca117d07f2775b2d.md) | 181 | `result-track:12f8093aca117d07f2775b2d55c78ea5fc65086fffb0f8b58f5a161e54eaa39a` |
| 10 | `lemma` | [bijective_toPullbackObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MayerVietorisSquare/Variant5ac15b6e24a82323aac1c1c8a730da3b3ee0e4f3c99db296f0d0ba251ae8c889.lean/declarations/bijective-topullbackobj--fdd7e1edcd19c9e933bd7caa.md) | 192 | `result-track:fdd7e1edcd19c9e933bd7caa5882407bbdc8e181d9f2fa3fb18e1e0dfe657244` |
| 11 | `lemma` | [ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MayerVietorisSquare/Variant5ac15b6e24a82323aac1c1c8a730da3b3ee0e4f3c99db296f0d0ba251ae8c889.lean/declarations/ext--943405a55f5c98c3d26ed2f2.md) | 195 | `result-track:943405a55f5c98c3d26ed2f28528892eddb2500c796870f9785652bfc2eddff5` |
| 12 | `def` | [glue](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MayerVietorisSquare/Variant5ac15b6e24a82323aac1c1c8a730da3b3ee0e4f3c99db296f0d0ba251ae8c889.lean/declarations/glue--9f21c021050f584b5fbefdcb.md) | 207 | `declaration-track:9f21c021050f584b5fbefdcbc52bf92be6e54296fa2ff9b379fe3c414428db87` |
| 13 | `lemma` | [map_f₂₄_op_glue](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MayerVietorisSquare/Variant5ac15b6e24a82323aac1c1c8a730da3b3ee0e4f3c99db296f0d0ba251ae8c889.lean/declarations/map-f-op-glue--f4993af2919a27aee0b464c3.md) | 211 | `result-track:f4993af2919a27aee0b464c3dcc411d56b6878c8f93b94fcd08a49bba57e986d` |
| 14 | `lemma` | [map_f₃₄_op_glue](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MayerVietorisSquare/Variant5ac15b6e24a82323aac1c1c8a730da3b3ee0e4f3c99db296f0d0ba251ae8c889.lean/declarations/map-f-op-glue--03f4f48f4185c05bea78151d.md) | 215 | `result-track:03f4f48f4185c05bea78151d558812975938488caf8b7b06cee79023db644abb` |
| 15 | `lemma` | [sheafCondition_of_sheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MayerVietorisSquare/Variant5ac15b6e24a82323aac1c1c8a730da3b3ee0e4f3c99db296f0d0ba251ae8c889.lean/declarations/sheafcondition-of-sheaf--a43499bfd9a04b008a5b1b48.md) | 220 | `result-track:a43499bfd9a04b008a5b1b48cf2cc2d99dcbe93c8f03f4a8e5fc12bbe63e8ab3` |
| 16 | `def` | [shortComplex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MayerVietorisSquare/Variant5ac15b6e24a82323aac1c1c8a730da3b3ee0e4f3c99db296f0d0ba251ae8c889.lean/declarations/shortcomplex--7cfd2dea575029086b591eaf.md) | 237 | `declaration-track:7cfd2dea575029086b591eaf510254c029e1be5232a0c107d35961f10384d20d` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MayerVietorisSquare/Variant5ac15b6e24a82323aac1c1c8a730da3b3ee0e4f3c99db296f0d0ba251ae8c889.lean/declarations/instance--49769fb5955f139e472bde27.md) | 254 | `declaration-track:49769fb5955f139e472bde27eb6bc675ab987f63c9ee37dd81c8a67849e01f70` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MayerVietorisSquare/Variant5ac15b6e24a82323aac1c1c8a730da3b3ee0e4f3c99db296f0d0ba251ae8c889.lean/declarations/instance--d31124ff1ade182710df4183.md) | 261 | `declaration-track:d31124ff1ade182710df418358360a14b1072454b34e04f91366d3858fc64150` |
| 19 | `lemma` | [shortComplex_exact](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MayerVietorisSquare/Variant5ac15b6e24a82323aac1c1c8a730da3b3ee0e4f3c99db296f0d0ba251ae8c889.lean/declarations/shortcomplex-exact--8907a2e4c1b6205e153929d7.md) | 265 | `result-track:8907a2e4c1b6205e153929d7047f65f322da8003efa8458955023f982c678f97` |
| 20 | `lemma` | [shortComplex_shortExact](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MayerVietorisSquare/Variant5ac15b6e24a82323aac1c1c8a730da3b3ee0e4f3c99db296f0d0ba251ae8c889.lean/declarations/shortcomplex-shortexact--e40ad487e04bbc5524d8a70f.md) | 269 | `result-track:e40ad487e04bbc5524d8a70f2708128ff7ace88832b6a023581d40d487508ca8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
