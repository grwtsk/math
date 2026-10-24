# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FilteredColimits.Variant85011de6ddc4875218acd60babf5f45192fddbf4c1dd31fc979f17fcc896fda6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "61a7beb1fbb47b26f39d0f223eedda258a9b98ff",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant85011de6ddc4875218acd60babf5f45192fddbf4c1dd31fc979f17fcc896fda6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant85011de6ddc4875218acd60babf5f45192fddbf4c1dd31fc979f17fcc896fda6.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant85011de6ddc4875218acd60babf5f45192fddbf4c1dd31fc979f17fcc896fda6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `61a7beb1fbb47b26f39d0f223eedda258a9b98ff`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant85011de6ddc4875218acd60babf5f45192fddbf4c1dd31fc979f17fcc896fda6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant85011de6ddc4875218acd60babf5f45192fddbf4c1dd31fc979f17fcc896fda6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.MonCat.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Filtered` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.ConcreteCategory.Elementwise` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Types` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [M](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant85011de6ddc4875218acd60babf5f45192fddbf4c1dd31fc979f17fcc896fda6.lean/declarations/m--b106d590bde8aac65dc864c2.md) | 54 | `declaration-track:b106d590bde8aac65dc864c2faae740bc8def36827a77818a7ed91aad4fad6e1` |
| 2 | `abbrev` | [M.mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant85011de6ddc4875218acd60babf5f45192fddbf4c1dd31fc979f17fcc896fda6.lean/declarations/m-mk--209dab9da487a72b371bfdbf.md) | 61 | `declaration-track:209dab9da487a72b371bfdbfac61d8c8dfa23e13decf3a6246a35c4d7aaf1a15` |
| 3 | `theorem` | [M.mk_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant85011de6ddc4875218acd60babf5f45192fddbf4c1dd31fc979f17fcc896fda6.lean/declarations/m-mk-eq--91e0c4caf502b718992e3676.md) | 67 | `result-track:91e0c4caf502b718992e3676b3ab5b9773f36975c975522c976291b89e2c88c4` |
| 4 | `instance` | [colimitOne](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant85011de6ddc4875218acd60babf5f45192fddbf4c1dd31fc979f17fcc896fda6.lean/declarations/colimitone--075be1be0e7b1d056a6c0040.md) | 82 | `declaration-track:075be1be0e7b1d056a6c004042096c51cd542a9f24e65a31bec76687dc63fc7d` |
| 5 | `theorem` | [colimit_one_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant85011de6ddc4875218acd60babf5f45192fddbf4c1dd31fc979f17fcc896fda6.lean/declarations/colimit-one-eq--7c63d6b0f8ae48ad4f16c49a.md) | 95 | `result-track:7c63d6b0f8ae48ad4f16c49a25326e5f63a90a1cb271298729381d016eb906d7` |
| 6 | `def` | [colimitMulAux](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant85011de6ddc4875218acd60babf5f45192fddbf4c1dd31fc979f17fcc896fda6.lean/declarations/colimitmulaux--2e7f9ab4c0eecf6cbc17e28f.md) | 110 | `declaration-track:2e7f9ab4c0eecf6cbc17e28fd463f81fa7a5dbb3c92c2b5ae932de8aaeb31b9f` |
| 7 | `theorem` | [colimitMulAux_eq_of_rel_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant85011de6ddc4875218acd60babf5f45192fddbf4c1dd31fc979f17fcc896fda6.lean/declarations/colimitmulaux-eq-of-rel-left--41644c193c64e6a1a21275e9.md) | 118 | `result-track:41644c193c64e6a1a21275e946f4c30abfe4530f3e5717448d0c738657afc24a` |
| 8 | `theorem` | [colimitMulAux_eq_of_rel_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant85011de6ddc4875218acd60babf5f45192fddbf4c1dd31fc979f17fcc896fda6.lean/declarations/colimitmulaux-eq-of-rel-right--df398c9ff6df9d5b66872bc8.md) | 143 | `result-track:df398c9ff6df9d5b66872bc8feb4add8477b0443fe7494ffd37a5e23f4112d6b` |
| 9 | `instance` | [colimitMul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant85011de6ddc4875218acd60babf5f45192fddbf4c1dd31fc979f17fcc896fda6.lean/declarations/colimitmul--38075a7805bae91f5641b554.md) | 168 | `declaration-track:38075a7805bae91f5641b55429d9e0062f32cdc09834cdc3f2acb30a665abe67` |
| 10 | `theorem` | [colimit_mul_mk_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant85011de6ddc4875218acd60babf5f45192fddbf4c1dd31fc979f17fcc896fda6.lean/declarations/colimit-mul-mk-eq--75fc6bc528451456d2f0a22f.md) | 190 | `result-track:75fc6bc528451456d2f0a22f58e9708b89c7cba7d72a064083583835cd79b295` |
| 11 | `instance` | [colimitMulOneClass](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant85011de6ddc4875218acd60babf5f45192fddbf4c1dd31fc979f17fcc896fda6.lean/declarations/colimitmuloneclass--8d019484054ac8eda30c7377.md) | 207 | `declaration-track:8d019484054ac8eda30c73777b65d4dd6baf3d736bce44fa7532310adccf95ea` |
| 12 | `instance` | [colimitMonoid](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant85011de6ddc4875218acd60babf5f45192fddbf4c1dd31fc979f17fcc896fda6.lean/declarations/colimitmonoid--9e7a9a59de7d0d2d77cdebe3.md) | 228 | `declaration-track:9e7a9a59de7d0d2d77cdebe3df92032c610506a36f87d35c822542b82357c9ba` |
| 13 | `def` | [colimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant85011de6ddc4875218acd60babf5f45192fddbf4c1dd31fc979f17fcc896fda6.lean/declarations/colimit--df3504454cac92a7be1734ef.md) | 258 | `declaration-track:df3504454cac92a7be1734ef3fa1d931b1170bb7cca52e6719f46e6efa49b31f` |
| 14 | `def` | [coconeMorphism](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant85011de6ddc4875218acd60babf5f45192fddbf4c1dd31fc979f17fcc896fda6.lean/declarations/coconemorphism--052f3157d72c0d3a6197b561.md) | 267 | `declaration-track:052f3157d72c0d3a6197b561321efa02d9407f73ae3e38a56cd1151c8e2d0ae4` |
| 15 | `theorem` | [cocone_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant85011de6ddc4875218acd60babf5f45192fddbf4c1dd31fc979f17fcc896fda6.lean/declarations/cocone-naturality--5b4fb26a7eb0ae44126118fc.md) | 278 | `result-track:5b4fb26a7eb0ae44126118fc07c37c1af57e7d0928377a89f6de52d71cf990fd` |
| 16 | `def` | [colimitCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant85011de6ddc4875218acd60babf5f45192fddbf4c1dd31fc979f17fcc896fda6.lean/declarations/colimitcocone--5f7e892bdb0b393b9f1da799.md) | 286 | `declaration-track:5f7e892bdb0b393b9f1da799d19de76d82ee59d846051f663a94f0141e24d172` |
| 17 | `def` | [colimitDesc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant85011de6ddc4875218acd60babf5f45192fddbf4c1dd31fc979f17fcc896fda6.lean/declarations/colimitdesc--d0099459f32ec92b66e7b720.md) | 301 | `declaration-track:d0099459f32ec92b66e7b720a49bc9b363087fc96e143490802363f5cfc79ca0` |
| 18 | `def` | [colimitCoconeIsColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant85011de6ddc4875218acd60babf5f45192fddbf4c1dd31fc979f17fcc896fda6.lean/declarations/colimitcoconeiscolimit--85bc5e28063c7bf3b2b8bcc1.md) | 325 | `declaration-track:85bc5e28063c7bf3b2b8bcc1021ab6e1c0ad74674700dcf3d77a9d1333224ab7` |
| 19 | `instance` | [forgetPreservesFilteredColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant85011de6ddc4875218acd60babf5f45192fddbf4c1dd31fc979f17fcc896fda6.lean/declarations/forgetpreservesfilteredcolimits--6a507c3a5ce38bb7cd2cf572.md) | 337 | `declaration-track:6a507c3a5ce38bb7cd2cf572d06830545536831f1a1483d0fa2148558df1f2f8` |
| 20 | `abbrev` | [M](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant85011de6ddc4875218acd60babf5f45192fddbf4c1dd31fc979f17fcc896fda6.lean/declarations/m--fbaed7c9b7edfac094d85b1f.md) | 362 | `declaration-track:fbaed7c9b7edfac094d85b1fffb2924f3b5992f9d5a59b91113ba3bb606ad0a0` |
| 21 | `instance` | [colimitCommMonoid](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant85011de6ddc4875218acd60babf5f45192fddbf4c1dd31fc979f17fcc896fda6.lean/declarations/colimitcommmonoid--ce3d4bcd6dd38c1c4d4c8d6e.md) | 368 | `declaration-track:ce3d4bcd6dd38c1c4d4c8d6e418368ee54ce8569ccaadd3e3fb977cff029223b` |
| 22 | `def` | [colimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant85011de6ddc4875218acd60babf5f45192fddbf4c1dd31fc979f17fcc896fda6.lean/declarations/colimit--6b35607285c140aaa5289f57.md) | 386 | `declaration-track:6b35607285c140aaa5289f574f2ea8be140e11babfa9f05b3c03f95556f7dc8c` |
| 23 | `def` | [colimitCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant85011de6ddc4875218acd60babf5f45192fddbf4c1dd31fc979f17fcc896fda6.lean/declarations/colimitcocone--d8e6f0d14f8b3dd76e577025.md) | 393 | `declaration-track:d8e6f0d14f8b3dd76e57702533fa96966668b303fd961c305a009c623a41a3aa` |
| 24 | `def` | [colimitCoconeIsColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant85011de6ddc4875218acd60babf5f45192fddbf4c1dd31fc979f17fcc896fda6.lean/declarations/colimitcoconeiscolimit--afd2793a6b4186d18ed33b10.md) | 402 | `declaration-track:afd2793a6b4186d18ed33b10bf4763f0e0f57116da89a850b6b2bd30906daa98` |
| 25 | `instance` | [forget₂MonPreservesFilteredColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant85011de6ddc4875218acd60babf5f45192fddbf4c1dd31fc979f17fcc896fda6.lean/declarations/forget-monpreservesfilteredcolimits--b105bfc6f3ffe396a6fe4017.md) | 420 | `declaration-track:b105bfc6f3ffe396a6fe4017b19f64d530e0ad8de133ae14db0097cd890b10b3` |
| 26 | `instance` | [forgetPreservesFilteredColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant85011de6ddc4875218acd60babf5f45192fddbf4c1dd31fc979f17fcc896fda6.lean/declarations/forgetpreservesfilteredcolimits--c8d347b7f70437751fb6951f.md) | 429 | `declaration-track:c8d347b7f70437751fb6951fec8bae9bfd79a1160c6f8785aee5786683b46daf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
