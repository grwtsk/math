# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ReflQuiv.Variantc7733ad596b6571fa51bfbf18cd4e93da7d45285f4acbfce6cb2a759798de88b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5d351d895bf6bb19d3a1c724b999348eada8de10",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ReflQuiv/Variantc7733ad596b6571fa51bfbf18cd4e93da7d45285f4acbfce6cb2a759798de88b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ReflQuiv/Variantc7733ad596b6571fa51bfbf18cd4e93da7d45285f4acbfce6cb2a759798de88b.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ReflQuiv/Variantc7733ad596b6571fa51bfbf18cd4e93da7d45285f4acbfce6cb2a759798de88b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5d351d895bf6bb19d3a1c724b999348eada8de10`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ReflQuiv/Variantc7733ad596b6571fa51bfbf18cd4e93da7d45285f4acbfce6cb2a759798de88b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/ReflQuiv/Variantc7733ad596b6571fa51bfbf18cd4e93da7d45285f4acbfce6cb2a759798de88b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.Quiver.ReflQuiver` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Category.Cat` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Category.Quiv` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ReflQuiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ReflQuiv/Variantc7733ad596b6571fa51bfbf18cd4e93da7d45285f4acbfce6cb2a759798de88b.lean/declarations/reflquiv--f86647dc62a46eb80aac805c.md) | 22 | `declaration-track:f86647dc62a46eb80aac805cb9f89caa0d19eaee6d8c824c5e8e844bf471623b` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ReflQuiv/Variantc7733ad596b6571fa51bfbf18cd4e93da7d45285f4acbfce6cb2a759798de88b.lean/declarations/instance--69e37704549ea882be5919f2.md) | 27 | `declaration-track:69e37704549ea882be5919f2808e7b78db7a97baf912ac62d1fb289102f95701` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ReflQuiv/Variantc7733ad596b6571fa51bfbf18cd4e93da7d45285f4acbfce6cb2a759798de88b.lean/declarations/instance--9a4faca98d750cce301553b7.md) | 29 | `declaration-track:9a4faca98d750cce301553b7f1f513c06972f1434df565b9f87a122a16202b67` |
| 4 | `def` | [toQuiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ReflQuiv/Variantc7733ad596b6571fa51bfbf18cd4e93da7d45285f4acbfce6cb2a759798de88b.lean/declarations/toquiv--ab643af0a1fd8f6c1857453c.md) | 32 | `declaration-track:ab643af0a1fd8f6c1857453c168ccb9fefd7c80e7732bdca489a87e6efc15238` |
| 5 | `def` | [of](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ReflQuiv/Variantc7733ad596b6571fa51bfbf18cd4e93da7d45285f4acbfce6cb2a759798de88b.lean/declarations/of--18fb762b6503cf279af7432e.md) | 35 | `declaration-track:18fb762b6503cf279af7432e6562de6157a00eaa88b7ff3ce866c346c1f4712a` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ReflQuiv/Variantc7733ad596b6571fa51bfbf18cd4e93da7d45285f4acbfce6cb2a759798de88b.lean/declarations/instance--e45c05558782452c3c3746c3.md) | 37 | `declaration-track:e45c05558782452c3c3746c3f68d993c1f37f0a78a9aaec7820df4f32649bf33` |
| 7 | `theorem` | [of_val](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ReflQuiv/Variantc7733ad596b6571fa51bfbf18cd4e93da7d45285f4acbfce6cb2a759798de88b.lean/declarations/of-val--22dea6fec7c516f1debe762f.md) | 39 | `result-track:22dea6fec7c516f1debe762f41124f9e2b9e4757b9f6154b19db196b03014448` |
| 8 | `instance` | [category](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ReflQuiv/Variantc7733ad596b6571fa51bfbf18cd4e93da7d45285f4acbfce6cb2a759798de88b.lean/declarations/category--19fd1c8fddc038af4b18f7b1.md) | 42 | `declaration-track:19fd1c8fddc038af4b18f7b1913b5f5956e0de3729c75b6bc8f533c5b41c2603` |
| 9 | `theorem` | [id_eq_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ReflQuiv/Variantc7733ad596b6571fa51bfbf18cd4e93da7d45285f4acbfce6cb2a759798de88b.lean/declarations/id-eq-id--a01d1eabeebf677056162302.md) | 47 | `result-track:a01d1eabeebf677056162302986957d1feda73f0e7d0f2055f0a2855c99f2056` |
| 10 | `theorem` | [comp_eq_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ReflQuiv/Variantc7733ad596b6571fa51bfbf18cd4e93da7d45285f4acbfce6cb2a759798de88b.lean/declarations/comp-eq-comp--2d80dcb355b20afb925125c6.md) | 48 | `result-track:2d80dcb355b20afb925125c6e966b82965013a16ee1c43904483a30a192d7142` |
| 11 | `def` | [forget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ReflQuiv/Variantc7733ad596b6571fa51bfbf18cd4e93da7d45285f4acbfce6cb2a759798de88b.lean/declarations/forget--19a9208e90d7fe2f41a7c773.md) | 52 | `declaration-track:19a9208e90d7fe2f41a7c773c7b4579e4e7847d2b0b4359e3c49ea6d128def64` |
| 12 | `theorem` | [forget_faithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ReflQuiv/Variantc7733ad596b6571fa51bfbf18cd4e93da7d45285f4acbfce6cb2a759798de88b.lean/declarations/forget-faithful--3d1b9ab7c3b353e4299c6023.md) | 56 | `result-track:3d1b9ab7c3b353e4299c602334e4de2b94dd0b1a498ba0ca2921aa6a8d74ea82` |
| 13 | `instance` | [forget.Faithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ReflQuiv/Variantc7733ad596b6571fa51bfbf18cd4e93da7d45285f4acbfce6cb2a759798de88b.lean/declarations/forget-faithful--6182e61e4d31c4297155fbfe.md) | 60 | `declaration-track:6182e61e4d31c4297155fbfe234013a7e5611be87be799c368344ae143fdbb9b` |
| 14 | `def` | [forgetToQuiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ReflQuiv/Variantc7733ad596b6571fa51bfbf18cd4e93da7d45285f4acbfce6cb2a759798de88b.lean/declarations/forgettoquiv--04e72532f35613902fdc845e.md) | 65 | `declaration-track:04e72532f35613902fdc845e6546ef21559e03f44f93458c299690852fbfcc10` |
| 15 | `theorem` | [forgetToQuiv_faithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ReflQuiv/Variantc7733ad596b6571fa51bfbf18cd4e93da7d45285f4acbfce6cb2a759798de88b.lean/declarations/forgettoquiv-faithful--4b7413925747626f62b1dd05.md) | 69 | `result-track:4b7413925747626f62b1dd05e374566e7e4b293695ec7d7740a1bba84467f5fe` |
| 16 | `instance` | [forgetToQuiv.Faithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ReflQuiv/Variantc7733ad596b6571fa51bfbf18cd4e93da7d45285f4acbfce6cb2a759798de88b.lean/declarations/forgettoquiv-faithful--6f71fe6d261b7ca5cf1e5995.md) | 73 | `declaration-track:6f71fe6d261b7ca5cf1e59958d77bb7b7fbabfee33ebd6f7d84b6378aa0e19f0` |
| 17 | `theorem` | [forget_forgetToQuiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ReflQuiv/Variantc7733ad596b6571fa51bfbf18cd4e93da7d45285f4acbfce6cb2a759798de88b.lean/declarations/forget-forgettoquiv--bab4808081554748f313e384.md) | 76 | `result-track:bab4808081554748f313e38493e72bfb7aee53400d0016e5a16a3139ff3f13f6` |
| 18 | `def` | [isoOfQuivIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ReflQuiv/Variantc7733ad596b6571fa51bfbf18cd4e93da7d45285f4acbfce6cb2a759798de88b.lean/declarations/isoofquiviso--9a7c667649632e4fbf21af64.md) | 80 | `declaration-track:9a7c667649632e4fbf21af64ec423c1f2712f17fbd1fabf284f9f6fc12f7aa81` |
| 19 | `def` | [isoOfEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ReflQuiv/Variantc7733ad596b6571fa51bfbf18cd4e93da7d45285f4acbfce6cb2a759798de88b.lean/declarations/isoofequiv--5d029da12bcfe647403754b0.md) | 95 | `declaration-track:5d029da12bcfe647403754b09db43ba8df506cff237b4e6f21e00f4571024631` |
| 20 | `def` | [toFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ReflQuiv/Variantc7733ad596b6571fa51bfbf18cd4e93da7d45285f4acbfce6cb2a759798de88b.lean/declarations/tofunctor--b549ef95b17a9b09875c2b04.md) | 105 | `declaration-track:b549ef95b17a9b09875c2b04a906048190eb34009f1af2cd7d3afa627c8e30c9` |
| 21 | `inductive` | [FreeReflRel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ReflQuiv/Variantc7733ad596b6571fa51bfbf18cd4e93da7d45285f4acbfce6cb2a759798de88b.lean/declarations/freereflrel--68bffd6f5c2d1913ef1dc3bd.md) | 119 | `declaration-track:68bffd6f5c2d1913ef1dc3bdbcbf243b73be46b259a7618df4ae878079ddb7fc` |
| 22 | `def` | [FreeRefl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ReflQuiv/Variantc7733ad596b6571fa51bfbf18cd4e93da7d45285f4acbfce6cb2a759798de88b.lean/declarations/freerefl--c5af3a7d5ad933c8755be574.md) | 125 | `declaration-track:c5af3a7d5ad933c8755be574806fb504a231ce3ecfbe8bab43f3e0725dbd0ce6` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ReflQuiv/Variantc7733ad596b6571fa51bfbf18cd4e93da7d45285f4acbfce6cb2a759798de88b.lean/declarations/instance--314560132c05cffbaabe974b.md) | 127 | `declaration-track:314560132c05cffbaabe974bb8d754c1bc637680b55acd419cc8af7cdec750a2` |
| 24 | `def` | [FreeRefl.quotientFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ReflQuiv/Variantc7733ad596b6571fa51bfbf18cd4e93da7d45285f4acbfce6cb2a759798de88b.lean/declarations/freerefl-quotientfunctor--1b4905bb5e31f25c26875f69.md) | 132 | `declaration-track:1b4905bb5e31f25c26875f69aab2a8b4211ed46a681e4e2e306d517ab5605644` |
| 25 | `theorem` | [FreeRefl.lift_unique'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ReflQuiv/Variantc7733ad596b6571fa51bfbf18cd4e93da7d45285f4acbfce6cb2a759798de88b.lean/declarations/freerefl-lift-unique--366823ee8f7f96b1cdeb84e9.md) | 137 | `result-track:366823ee8f7f96b1cdeb84e95433687fdfaa5b5cb9453a0b6499ec3a178de4a5` |
| 26 | `def` | [freeReflMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ReflQuiv/Variantc7733ad596b6571fa51bfbf18cd4e93da7d45285f4acbfce6cb2a759798de88b.lean/declarations/freereflmap--b4aea1d96de8237dd4612e8c.md) | 146 | `declaration-track:b4aea1d96de8237dd4612e8c3ca22361cb4e704b3390653f4516033d569b87b6` |
| 27 | `theorem` | [freeReflMap_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ReflQuiv/Variantc7733ad596b6571fa51bfbf18cd4e93da7d45285f4acbfce6cb2a759798de88b.lean/declarations/freereflmap-naturality--aaac24010af2c3c37734ca17.md) | 154 | `result-track:aaac24010af2c3c37734ca17d60954dcc3048d3984d44598fe5c7930e7fa5252` |
| 28 | `def` | [freeRefl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ReflQuiv/Variantc7733ad596b6571fa51bfbf18cd4e93da7d45285f4acbfce6cb2a759798de88b.lean/declarations/freerefl--22ea1e071cb46d7450b96e10.md) | 162 | `declaration-track:22ea1e071cb46d7450b96e10739bb1f51b83c3815c993e0bb95f08c4f92a3839` |
| 29 | `def` | [freeReflNatTrans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ReflQuiv/Variantc7733ad596b6571fa51bfbf18cd4e93da7d45285f4acbfce6cb2a759798de88b.lean/declarations/freereflnattrans--7868d674ae4476ca156a09ca.md) | 181 | `declaration-track:7868d674ae4476ca156a09cab77c8571267fe33293d9a26229dd9374c2ed091b` |
| 30 | `def` | [adj.unit.app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ReflQuiv/Variantc7733ad596b6571fa51bfbf18cd4e93da7d45285f4acbfce6cb2a759798de88b.lean/declarations/adj-unit-app--10dd359a6e0282a57db4440f.md) | 193 | `declaration-track:10dd359a6e0282a57db4440fb688069a76210aea653755c4d5cacc353abc599c` |
| 31 | `theorem` | [adj.unit.map_app_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ReflQuiv/Variantc7733ad596b6571fa51bfbf18cd4e93da7d45285f4acbfce6cb2a759798de88b.lean/declarations/adj-unit-map-app-eq--cc2c330beae54667db392f73.md) | 199 | `result-track:cc2c330beae54667db392f739e59d89beee3a5e88288d9f8c0ab8302a59b47ca` |
| 32 | `def` | [adj.counit.app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ReflQuiv/Variantc7733ad596b6571fa51bfbf18cd4e93da7d45285f4acbfce6cb2a759798de88b.lean/declarations/adj-counit-app--96c8151929765a3a9bcb3a39.md) | 206 | `declaration-track:96c8151929765a3a9bcb3a392f9a525343d882c5d49b6959e3b0f216f7215824` |
| 33 | `theorem` | [adj.counit.comp_app_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ReflQuiv/Variantc7733ad596b6571fa51bfbf18cd4e93da7d45285f4acbfce6cb2a759798de88b.lean/declarations/adj-counit-comp-app-eq--949d0e571123887d171255d1.md) | 218 | `result-track:949d0e571123887d171255d1c56db4147aecd222fcc2baa0ec3b71fa0c2cf14e` |
| 34 | `def` | [adj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ReflQuiv/Variantc7733ad596b6571fa51bfbf18cd4e93da7d45285f4acbfce6cb2a759798de88b.lean/declarations/adj--602e402ba6197ea6689a0498.md) | 226 | `declaration-track:602e402ba6197ea6689a049819564c0a90713da9fc2053a332a39c1f3d78ef13` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
