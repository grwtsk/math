# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Bifunctor.Variant787fcf32be73457ae11c00c20e7353330e7af0866cadbecc0344e9274f0d1639

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d75315d0baea29eb4c4127b44fa3e28e431ee0a9",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant787fcf32be73457ae11c00c20e7353330e7af0866cadbecc0344e9274f0d1639.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant787fcf32be73457ae11c00c20e7353330e7af0866cadbecc0344e9274f0d1639.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant787fcf32be73457ae11c00c20e7353330e7af0866cadbecc0344e9274f0d1639.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d75315d0baea29eb4c4127b44fa3e28e431ee0a9`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant787fcf32be73457ae11c00c20e7353330e7af0866cadbecc0344e9274f0d1639.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant787fcf32be73457ae11c00c20e7353330e7af0866cadbecc0344e9274f0d1639.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.TotalComplex` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.GradedObject.Bifunctor` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mapBifunctorHomologicalComplexObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant787fcf32be73457ae11c00c20e7353330e7af0866cadbecc0344e9274f0d1639.lean/declarations/mapbifunctorhomologicalcomplexobj--b7636599e404d544ddf50876.md) | 49 | `declaration-track:b7636599e404d544ddf5087620cd6a77088088de1287c8d064cdb0cec3b5df74` |
| 2 | `def` | [mapBifunctorHomologicalComplex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant787fcf32be73457ae11c00c20e7353330e7af0866cadbecc0344e9274f0d1639.lean/declarations/mapbifunctorhomologicalcomplex--d6cc96481aecff426574494b.md) | 84 | `declaration-track:d6cc96481aecff426574494b08cf7f665fb086de4202c237084d5d288961eed9` |
| 3 | `lemma` | [mapBifunctorHomologicalComplex_obj_obj_toGradedObject](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant787fcf32be73457ae11c00c20e7353330e7af0866cadbecc0344e9274f0d1639.lean/declarations/mapbifunctorhomologicalcomplex-obj-obj-togradedobject--051d82f3a1e43138c7190b82.md) | 97 | `result-track:051d82f3a1e43138c7190b8294620422c1ac114b37fff256a64e785e8d57e7e7` |
| 4 | `abbrev` | [HasMapBifunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant787fcf32be73457ae11c00c20e7353330e7af0866cadbecc0344e9274f0d1639.lean/declarations/hasmapbifunctor--067570e54e600d4d0441ef55.md) | 117 | `declaration-track:067570e54e600d4d0441ef55ed53b941243b4e5e3465c8187eb55600983efc8e` |
| 5 | `abbrev` | [mapBifunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant787fcf32be73457ae11c00c20e7353330e7af0866cadbecc0344e9274f0d1639.lean/declarations/mapbifunctor--7d0374aff09e59f1e5ebb09d.md) | 125 | `declaration-track:7d0374aff09e59f1e5ebb09dbee3a088f0330cbf90d1d1251c31b25d6de043d5` |
| 6 | `abbrev` | [ιMapBifunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant787fcf32be73457ae11c00c20e7353330e7af0866cadbecc0344e9274f0d1639.lean/declarations/mapbifunctor--a68e3b77a567a60e56147e09.md) | 129 | `declaration-track:a68e3b77a567a60e56147e09af61420a754002d620f5bdfde2fc859434dde65a` |
| 7 | `abbrev` | [ιMapBifunctorOrZero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant787fcf32be73457ae11c00c20e7353330e7af0866cadbecc0344e9274f0d1639.lean/declarations/mapbifunctororzero--95332702415837e1be827413.md) | 135 | `declaration-track:95332702415837e1be82741352f00d8da78b61aad5f8557d7d85d783b88cc9a9` |
| 8 | `lemma` | [ιMapBifunctorOrZero_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant787fcf32be73457ae11c00c20e7353330e7af0866cadbecc0344e9274f0d1639.lean/declarations/mapbifunctororzero-eq--ec510cca8a6ba6354b3dd975.md) | 139 | `result-track:ec510cca8a6ba6354b3dd975850619fa393906d566dad2e87477ccd334b5fce1` |
| 9 | `lemma` | [ιMapBifunctorOrZero_eq_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant787fcf32be73457ae11c00c20e7353330e7af0866cadbecc0344e9274f0d1639.lean/declarations/mapbifunctororzero-eq-zero--3ce4f81adf81838587d433e2.md) | 143 | `result-track:3ce4f81adf81838587d433e2c225c4f8af53fd34468ef38a05c7edfeedded5fd` |
| 10 | `def` | [mapBifunctorDesc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant787fcf32be73457ae11c00c20e7353330e7af0866cadbecc0344e9274f0d1639.lean/declarations/mapbifunctordesc--80baf0bd5c6e0f83d5b42ea8.md) | 155 | `declaration-track:80baf0bd5c6e0f83d5b42ea8729379a3d0ca3b815bbdfd52aa82ea84cabd1c72` |
| 11 | `lemma` | [ι_mapBifunctorDesc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant787fcf32be73457ae11c00c20e7353330e7af0866cadbecc0344e9274f0d1639.lean/declarations/mapbifunctordesc--29bfcfba81a9af74445fc144.md) | 159 | `result-track:29bfcfba81a9af74445fc1440e91ad05ceb1d84543a789b512c620ceddbe2094` |
| 12 | `lemma` | [hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant787fcf32be73457ae11c00c20e7353330e7af0866cadbecc0344e9274f0d1639.lean/declarations/hom-ext--153c3fad5d2f774d6bf9e187.md) | 169 | `result-track:153c3fad5d2f774d6bf9e1874a8b1ffe14d4a01b8401a0626a6f50603099249c` |
| 13 | `def` | [D₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant787fcf32be73457ae11c00c20e7353330e7af0866cadbecc0344e9274f0d1639.lean/declarations/d--8ced41c9981ab7d76a883bfa.md) | 180 | `declaration-track:8ced41c9981ab7d76a883bfae4be6d20c8b650e105435988a7e1de1552aaf76d` |
| 14 | `def` | [D₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant787fcf32be73457ae11c00c20e7353330e7af0866cadbecc0344e9274f0d1639.lean/declarations/d--848def7115c581be5a5910b1.md) | 185 | `declaration-track:848def7115c581be5a5910b150399ffcee4e5da58d61644dc789af24975fb74c` |
| 15 | `lemma` | [d_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant787fcf32be73457ae11c00c20e7353330e7af0866cadbecc0344e9274f0d1639.lean/declarations/d-eq--138e8e0c3c8b5b2819fcaa43.md) | 189 | `result-track:138e8e0c3c8b5b2819fcaa432402cc1f297dfba613c8cb1bbc633b65e459ad7e` |
| 16 | `def` | [d₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant787fcf32be73457ae11c00c20e7353330e7af0866cadbecc0344e9274f0d1639.lean/declarations/d--216e8168759f4c716a960327.md) | 199 | `declaration-track:216e8168759f4c716a96032757dc109bf2f41bde01c34f5835580e4488bdcf6b` |
| 17 | `def` | [d₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant787fcf32be73457ae11c00c20e7353330e7af0866cadbecc0344e9274f0d1639.lean/declarations/d--7b305a1ce627c8ae32c7b90a.md) | 204 | `declaration-track:7b305a1ce627c8ae32c7b90a96b67638b6119331f92761a460b7f89e3584c519` |
| 18 | `lemma` | [d₁_eq_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant787fcf32be73457ae11c00c20e7353330e7af0866cadbecc0344e9274f0d1639.lean/declarations/d-eq-zero--cd9bff9dd1dddef8469e1b47.md) | 208 | `result-track:cd9bff9dd1dddef8469e1b470b25de0786b3ae7c5db0528e57e9bb1500d88cb0` |
| 19 | `lemma` | [d₂_eq_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant787fcf32be73457ae11c00c20e7353330e7af0866cadbecc0344e9274f0d1639.lean/declarations/d-eq-zero--c6e5733092f2a4e300b7e1e2.md) | 212 | `result-track:c6e5733092f2a4e300b7e1e2f6ad7e504bdaa3ab5dc5a0459c6db17354f416d7` |
| 20 | `lemma` | [d₁_eq_zero'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant787fcf32be73457ae11c00c20e7353330e7af0866cadbecc0344e9274f0d1639.lean/declarations/d-eq-zero--fa2bb9457a1770f40251534f.md) | 216 | `result-track:fa2bb9457a1770f40251534f3b7aebd4366e18c3204b6efcb29c44a32a46a9b1` |
| 21 | `lemma` | [d₂_eq_zero'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant787fcf32be73457ae11c00c20e7353330e7af0866cadbecc0344e9274f0d1639.lean/declarations/d-eq-zero--02a82a2c42c949781f110b63.md) | 221 | `result-track:02a82a2c42c949781f110b6374c1e5da2f05aaff89a30b772cbfaf908927c67d` |
| 22 | `lemma` | [d₁_eq'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant787fcf32be73457ae11c00c20e7353330e7af0866cadbecc0344e9274f0d1639.lean/declarations/d-eq--a38dc1d9ee75421d4a630912.md) | 226 | `result-track:a38dc1d9ee75421d4a63091202dfe60d9b837672e452c0cde7271e4b9713f863` |
| 23 | `lemma` | [d₂_eq'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant787fcf32be73457ae11c00c20e7353330e7af0866cadbecc0344e9274f0d1639.lean/declarations/d-eq--91a9c1527189a7ab868e2fd3.md) | 231 | `result-track:91a9c1527189a7ab868e2fd3a2ddae9dfe988289e5c5943fa261c7319e8735c0` |
| 24 | `lemma` | [d₁_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant787fcf32be73457ae11c00c20e7353330e7af0866cadbecc0344e9274f0d1639.lean/declarations/d-eq--57fba7bf05129f8657972cac.md) | 236 | `result-track:57fba7bf05129f8657972cacbe537bf877c199740a772f0d7e0f8fdf21e1458c` |
| 25 | `lemma` | [d₂_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant787fcf32be73457ae11c00c20e7353330e7af0866cadbecc0344e9274f0d1639.lean/declarations/d-eq--4317a83a4d88841c37f50185.md) | 242 | `result-track:4317a83a4d88841c37f50185efae94007b672e22c59d497a745317bf47966fe7` |
| 26 | `lemma` | [ι_D₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant787fcf32be73457ae11c00c20e7353330e7af0866cadbecc0344e9274f0d1639.lean/declarations/d--5d263125f8e794104aeec151.md) | 255 | `result-track:5d263125f8e794104aeec151dc524553c4d60fa52a6b067cf1ad8eec3bd64b67` |
| 27 | `lemma` | [ι_D₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant787fcf32be73457ae11c00c20e7353330e7af0866cadbecc0344e9274f0d1639.lean/declarations/d--acab6aab2a97c39eb9430761.md) | 260 | `result-track:acab6aab2a97c39eb94307618b23ed855677db9e4ad54360ec2cee2ba984999c` |
| 28 | `def` | [mapBifunctorMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant787fcf32be73457ae11c00c20e7353330e7af0866cadbecc0344e9274f0d1639.lean/declarations/mapbifunctormap--cf629d08b9ad658d5114d13a.md) | 274 | `declaration-track:cf629d08b9ad658d5114d13afaeb8f5c7a882a874d5d0407cc4dcf0fd03baef5` |
| 29 | `lemma` | [ι_mapBifunctorMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant787fcf32be73457ae11c00c20e7353330e7af0866cadbecc0344e9274f0d1639.lean/declarations/mapbifunctormap--159bcba4f86a4e3bc3ed53c4.md) | 279 | `result-track:159bcba4f86a4e3bc3ed53c4c44bb379e7d8be33bd9a33d926a4f31d42d9bb6d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
