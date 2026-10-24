# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Groupoid.Variant707eea4b9da901d10ab8cda8dd0e54cc6637e06e0a45da433a0c2e38d7161aa9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1cac869eeb3aa482b4f38b29a73e60d77a01d039",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Groupoid/Variant707eea4b9da901d10ab8cda8dd0e54cc6637e06e0a45da433a0c2e38d7161aa9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Groupoid/Variant707eea4b9da901d10ab8cda8dd0e54cc6637e06e0a45da433a0c2e38d7161aa9.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Groupoid/Variant707eea4b9da901d10ab8cda8dd0e54cc6637e06e0a45da433a0c2e38d7161aa9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1cac869eeb3aa482b4f38b29a73e60d77a01d039`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Groupoid/Variant707eea4b9da901d10ab8cda8dd0e54cc6637e06e0a45da433a0c2e38d7161aa9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Groupoid/Variant707eea4b9da901d10ab8cda8dd0e54cc6637e06e0a45da433a0c2e38d7161aa9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.ObjectProperty.FullSubcategory` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Products.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Pi.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Category.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.Quiver.Symmetric` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.ReflectsIso.Basic` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Groupoid](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Groupoid/Variant707eea4b9da901d10ab8cda8dd0e54cc6637e06e0a45da433a0c2e38d7161aa9.lean/declarations/groupoid--f5cc3806851304ce02a86b08.md) | 48 | `declaration-track:f5cc3806851304ce02a86b080e714c6cab5fba683f2d9242ef62efff89602238` |
| 2 | `abbrev` | [LargeGroupoid](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Groupoid/Variant707eea4b9da901d10ab8cda8dd0e54cc6637e06e0a45da433a0c2e38d7161aa9.lean/declarations/largegroupoid--3e11837edff6040bdd3b0ab6.md) | 61 | `declaration-track:3e11837edff6040bdd3b0ab62bf5b9ec7b75f7a2cbb7185dc9fc22b290c998fc` |
| 3 | `abbrev` | [SmallGroupoid](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Groupoid/Variant707eea4b9da901d10ab8cda8dd0e54cc6637e06e0a45da433a0c2e38d7161aa9.lean/declarations/smallgroupoid--ccb7fd3c68b2758dd91ff434.md) | 67 | `declaration-track:ccb7fd3c68b2758dd91ff434690be03d5a49e13100b85496009d26b6512c9f65` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Groupoid/Variant707eea4b9da901d10ab8cda8dd0e54cc6637e06e0a45da433a0c2e38d7161aa9.lean/declarations/instance--57f0acb29ddc18060cf44de4.md) | 75 | `declaration-track:57f0acb29ddc18060cf44de49dbc8b60e0dba99f9a0f55059a2e73e6b4794e8d` |
| 5 | `theorem` | [Groupoid.inv_eq_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Groupoid/Variant707eea4b9da901d10ab8cda8dd0e54cc6637e06e0a45da433a0c2e38d7161aa9.lean/declarations/groupoid-inv-eq-inv--2900fdc23214d70b753387ca.md) | 79 | `result-track:2900fdc23214d70b753387ca3cac139ed8528d7d37c1793872614f25b9b65e78` |
| 6 | `def` | [Groupoid.invEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Groupoid/Variant707eea4b9da901d10ab8cda8dd0e54cc6637e06e0a45da433a0c2e38d7161aa9.lean/declarations/groupoid-invequiv--1959b7e2277233c136ccfb1e.md) | 84 | `declaration-track:1959b7e2277233c136ccfb1e73d0b2a9557057551aee9bc7265e385a8a40251e` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Groupoid/Variant707eea4b9da901d10ab8cda8dd0e54cc6637e06e0a45da433a0c2e38d7161aa9.lean/declarations/instance--ad0eecbaf4843f4572e2fcc8.md) | 87 | `declaration-track:ad0eecbaf4843f4572e2fcc8bd2168d5acf20f70d957d70a39fbc7d4b8094018` |
| 8 | `theorem` | [Groupoid.reverse_eq_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Groupoid/Variant707eea4b9da901d10ab8cda8dd0e54cc6637e06e0a45da433a0c2e38d7161aa9.lean/declarations/groupoid-reverse-eq-inv--7309aee6b08e9dd99f2e0e5f.md) | 94 | `result-track:7309aee6b08e9dd99f2e0e5f855b8aac24fe67c73b174878c2abb8eff1c49327` |
| 9 | `instance` | [functorMapReverse](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Groupoid/Variant707eea4b9da901d10ab8cda8dd0e54cc6637e06e0a45da433a0c2e38d7161aa9.lean/declarations/functormapreverse--9de52efbae3da4da28f52de3.md) | 97 | `declaration-track:9de52efbae3da4da28f52de34dbd34543108e29fc847d0d19c3664fa65b29188` |
| 10 | `def` | [Groupoid.isoEquivHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Groupoid/Variant707eea4b9da901d10ab8cda8dd0e54cc6637e06e0a45da433a0c2e38d7161aa9.lean/declarations/groupoid-isoequivhom--f0753f1105a3c664dd8b55e7.md) | 106 | `declaration-track:f0753f1105a3c664dd8b55e7a24ceda02e68f8b2df0f7e333ff836071f8865e6` |
| 11 | `def` | [Groupoid.invFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Groupoid/Variant707eea4b9da901d10ab8cda8dd0e54cc6637e06e0a45da433a0c2e38d7161aa9.lean/declarations/groupoid-invfunctor--1b8b447231cbf09dc7e5e17c.md) | 116 | `declaration-track:1b8b447231cbf09dc7e5e17cfb3e54b4a43811f55eeb2c7ae12df4443c4209e8` |
| 12 | `class` | [IsGroupoid](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Groupoid/Variant707eea4b9da901d10ab8cda8dd0e54cc6637e06e0a45da433a0c2e38d7161aa9.lean/declarations/isgroupoid--d493f68c32bdd70e4de7883c.md) | 125 | `declaration-track:d493f68c32bdd70e4de7883ced9d96e05451a66b335663ea83ab65be0ad46c21` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Groupoid/Variant707eea4b9da901d10ab8cda8dd0e54cc6637e06e0a45da433a0c2e38d7161aa9.lean/declarations/instance--67404a736f9c6f600f1aa7af.md) | 130 | `declaration-track:67404a736f9c6f600f1aa7aff11fd9f6b056294ceaf28945eb7c39a32d941545` |
| 14 | `def` | [Groupoid.ofIsGroupoid](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Groupoid/Variant707eea4b9da901d10ab8cda8dd0e54cc6637e06e0a45da433a0c2e38d7161aa9.lean/declarations/groupoid-ofisgroupoid--b8219da62394398d41d6ed31.md) | 135 | `declaration-track:b8219da62394398d41d6ed31edc3efe0b30aaec73e3d3245d672eb709c860aa6` |
| 15 | `def` | [Groupoid.ofIsIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Groupoid/Variant707eea4b9da901d10ab8cda8dd0e54cc6637e06e0a45da433a0c2e38d7161aa9.lean/declarations/groupoid-ofisiso--723b1e9957fbb6cc4694227e.md) | 140 | `declaration-track:723b1e9957fbb6cc4694227e1089dfd778c934d4dc2bc3f2a52c5d8d48e5707a` |
| 16 | `def` | [Groupoid.ofHomUnique](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Groupoid/Variant707eea4b9da901d10ab8cda8dd0e54cc6637e06e0a45da433a0c2e38d7161aa9.lean/declarations/groupoid-ofhomunique--050d14b72a623b06f78e693e.md) | 146 | `declaration-track:050d14b72a623b06f78e693e74bf7dc7d664d6d85e12f09b9575c6404f21844a` |
| 17 | `lemma` | [isGroupoid_of_reflects_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Groupoid/Variant707eea4b9da901d10ab8cda8dd0e54cc6637e06e0a45da433a0c2e38d7161aa9.lean/declarations/isgroupoid-of-reflects-iso--7d0c931d6055b95ceceee190.md) | 151 | `result-track:7d0c931d6055b95ceceee190b1e3aa1bdadaa48b0efc10eea519083892333be6` |
| 18 | `def` | [Groupoid.ofFullyFaithfulToGroupoid](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Groupoid/Variant707eea4b9da901d10ab8cda8dd0e54cc6637e06e0a45da433a0c2e38d7161aa9.lean/declarations/groupoid-offullyfaithfultogroupoid--7ed02eb38442f4e23fc407cd.md) | 157 | `declaration-track:7ed02eb38442f4e23fc407cd752cf92d756531293cc33d40d87fa2e7b2aa2942` |
| 19 | `instance` | [InducedCategory.groupoid](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Groupoid/Variant707eea4b9da901d10ab8cda8dd0e54cc6637e06e0a45da433a0c2e38d7161aa9.lean/declarations/inducedcategory-groupoid--4839fd2b56d28d6ccc7a1865.md) | 168 | `declaration-track:4839fd2b56d28d6ccc7a1865b2915a58413768993449fd4d770414ec4611f6c0` |
| 20 | `instance` | [InducedCategory.isGroupoid](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Groupoid/Variant707eea4b9da901d10ab8cda8dd0e54cc6637e06e0a45da433a0c2e38d7161aa9.lean/declarations/inducedcategory-isgroupoid--a0c443f3686dfa7b32b17c39.md) | 172 | `declaration-track:a0c443f3686dfa7b32b17c39b591404cd945a8a41e01acae4a39e867666732fd` |
| 21 | `instance` | [groupoidPi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Groupoid/Variant707eea4b9da901d10ab8cda8dd0e54cc6637e06e0a45da433a0c2e38d7161aa9.lean/declarations/groupoidpi--d89897bbbaf6c4e57f165251.md) | 179 | `declaration-track:d89897bbbaf6c4e57f165251590b69d847fd8ea8f43541a94a968d7a289932bb` |
| 22 | `instance` | [groupoidProd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Groupoid/Variant707eea4b9da901d10ab8cda8dd0e54cc6637e06e0a45da433a0c2e38d7161aa9.lean/declarations/groupoidprod--3c8fa0913c6a457c600bdf37.md) | 185 | `declaration-track:3c8fa0913c6a457c600bdf37e97e52740736b41088c97ac73a059189ce35a59f` |
| 23 | `instance` | [isGroupoidPi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Groupoid/Variant707eea4b9da901d10ab8cda8dd0e54cc6637e06e0a45da433a0c2e38d7161aa9.lean/declarations/isgroupoidpi--601516051bb851b047bc81b8.md) | 189 | `declaration-track:601516051bb851b047bc81b8a0b6f91a6cc3e1b2a2cfb14fa928495615ee9105` |
| 24 | `instance` | [isGroupoidProd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Groupoid/Variant707eea4b9da901d10ab8cda8dd0e54cc6637e06e0a45da433a0c2e38d7161aa9.lean/declarations/isgroupoidprod--b963694e4b7a4e5dbfa0be5d.md) | 194 | `declaration-track:b963694e4b7a4e5dbfa0be5d9edb1b291e7a5c3cd27184e67cd6c550b79b76af` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
