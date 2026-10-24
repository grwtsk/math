# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.EssentiallySmall.Varianta40874faa3a3f2b4bb6e89981d62d0d775ec68f5de6f00d7b996a81320530390

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "89c344c8c6685daf5776cc1dfb8835baf1239b80",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Varianta40874faa3a3f2b4bb6e89981d62d0d775ec68f5de6f00d7b996a81320530390.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Varianta40874faa3a3f2b4bb6e89981d62d0d775ec68f5de6f00d7b996a81320530390.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Varianta40874faa3a3f2b4bb6e89981d62d0d775ec68f5de6f00d7b996a81320530390.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `89c344c8c6685daf5776cc1dfb8835baf1239b80`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Varianta40874faa3a3f2b4bb6e89981d62d0d775ec68f5de6f00d7b996a81320530390.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Varianta40874faa3a3f2b4bb6e89981d62d0d775ec68f5de6f00d7b996a81320530390.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Category.ULift` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.EqToHom` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Skeletal` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.UnivLE` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Small.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [EssentiallySmall](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Varianta40874faa3a3f2b4bb6e89981d62d0d775ec68f5de6f00d7b996a81320530390.lean/declarations/essentiallysmall--1a2240cbfbe8a7c39c42731c.md) | 37 | `declaration-track:1a2240cbfbe8a7c39c42731c2e0ad9938bb09a2e608ba370fd56cd6244233292` |
| 2 | `theorem` | [EssentiallySmall.mk'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Varianta40874faa3a3f2b4bb6e89981d62d0d775ec68f5de6f00d7b996a81320530390.lean/declarations/essentiallysmall-mk--e6844a848ad14731e62cfb86.md) | 42 | `result-track:e6844a848ad14731e62cfb86ac7c3910ba1bfba0d09902ae18da7adb56ddeebd` |
| 3 | `def` | [SmallModel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Varianta40874faa3a3f2b4bb6e89981d62d0d775ec68f5de6f00d7b996a81320530390.lean/declarations/smallmodel--10dc29bc18ddce0659587a4e.md) | 49 | `declaration-track:10dc29bc18ddce0659587a4ee6ba1be40f7a00bbfa48aab0d073fbfcb865b729` |
| 4 | `instance` | [smallCategorySmallModel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Varianta40874faa3a3f2b4bb6e89981d62d0d775ec68f5de6f00d7b996a81320530390.lean/declarations/smallcategorysmallmodel--6ab47592e194308d404c992c.md) | 52 | `declaration-track:6ab47592e194308d404c992c5402572429a067260b3769e24688a01e80b9b7ac` |
| 5 | `def` | [equivSmallModel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Varianta40874faa3a3f2b4bb6e89981d62d0d775ec68f5de6f00d7b996a81320530390.lean/declarations/equivsmallmodel--50ba1726bf6b2af8403c8347.md) | 59 | `declaration-track:50ba1726bf6b2af8403c8347027b692c28353f4817862e10c6c673de1e6038b8` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Varianta40874faa3a3f2b4bb6e89981d62d0d775ec68f5de6f00d7b996a81320530390.lean/declarations/instance--f8c9ffc925f41b82458a4ba8.md) | 64 | `declaration-track:f8c9ffc925f41b82458a4ba83ef077f0dcc3df34276f3176ad1095c0b7b8bbff` |
| 7 | `theorem` | [essentiallySmall_congr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Varianta40874faa3a3f2b4bb6e89981d62d0d775ec68f5de6f00d7b996a81320530390.lean/declarations/essentiallysmall-congr--e32f8f14c7cc433529f6527b.md) | 67 | `result-track:e32f8f14c7cc433529f6527b4202a9efa874f9f283aa4d6acb82ade5219b2562` |
| 8 | `theorem` | [Discrete.essentiallySmallOfSmall](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Varianta40874faa3a3f2b4bb6e89981d62d0d775ec68f5de6f00d7b996a81320530390.lean/declarations/discrete-essentiallysmallofsmall--a72eb2b8c9aef48fdb74cc28.md) | 75 | `result-track:a72eb2b8c9aef48fdb74cc284a4faa76a1e423ec3421ec3dff762010ae829804` |
| 9 | `theorem` | [essentiallySmallSelf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Varianta40874faa3a3f2b4bb6e89981d62d0d775ec68f5de6f00d7b996a81320530390.lean/declarations/essentiallysmallself--62a35f37fce74b7a86d05cfa.md) | 79 | `result-track:62a35f37fce74b7a86d05cfa4d432e0fb5205610da58f72cb39245efe791caab` |
| 10 | `class` | [LocallySmall](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Varianta40874faa3a3f2b4bb6e89981d62d0d775ec68f5de6f00d7b996a81320530390.lean/declarations/locallysmall--7ce47260906322b5bb9299d2.md) | 87 | `declaration-track:7ce47260906322b5bb9299d2968eadb300eab46e8e191767e6e15f91202c480f` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Varianta40874faa3a3f2b4bb6e89981d62d0d775ec68f5de6f00d7b996a81320530390.lean/declarations/instance--878ef24d3a59a5bea651c129.md) | 91 | `declaration-track:878ef24d3a59a5bea651c129819ca7efab2eae99fbb65dd7209d8acd8b925f36` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Varianta40874faa3a3f2b4bb6e89981d62d0d775ec68f5de6f00d7b996a81320530390.lean/declarations/instance--c805cbd680ee4a35f3ee7a2f.md) | 94 | `declaration-track:c805cbd680ee4a35f3ee7a2fd64a01215bd5a799b7d67d6f219563c3e81525e5` |
| 13 | `theorem` | [locallySmall_of_faithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Varianta40874faa3a3f2b4bb6e89981d62d0d775ec68f5de6f00d7b996a81320530390.lean/declarations/locallysmall-of-faithful--b17758f93145a77c740ce14d.md) | 97 | `result-track:b17758f93145a77c740ce14dc69e9a99ef56fb6c8743b9d2dd224d379750cd17` |
| 14 | `theorem` | [locallySmall_congr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Varianta40874faa3a3f2b4bb6e89981d62d0d775ec68f5de6f00d7b996a81320530390.lean/declarations/locallysmall-congr--5b78e690e0223f34835d686b.md) | 101 | `result-track:5b78e690e0223f34835d686b3233481b977fb11f54e53f629b2a9aa766773ee8` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Varianta40874faa3a3f2b4bb6e89981d62d0d775ec68f5de6f00d7b996a81320530390.lean/declarations/instance--0850855fcd813a1ef1a52d88.md) | 105 | `declaration-track:0850855fcd813a1ef1a52d88de983cb6120b495cc0f3f389822789e835de05c0` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Varianta40874faa3a3f2b4bb6e89981d62d0d775ec68f5de6f00d7b996a81320530390.lean/declarations/instance--28355c2a400aa344959bebd2.md) | 108 | `declaration-track:28355c2a400aa344959bebd29c3d47b6095ee6344eb8dc220665b6d89d13c3ec` |
| 17 | `theorem` | [locallySmall_max](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Varianta40874faa3a3f2b4bb6e89981d62d0d775ec68f5de6f00d7b996a81320530390.lean/declarations/locallysmall-max--2d7bc0fde4d1ac3ce28a08c6.md) | 111 | `result-track:2d7bc0fde4d1ac3ce28a08c6dec05add8703e9cbbfb147888d2b64d9ef12e263` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Varianta40874faa3a3f2b4bb6e89981d62d0d775ec68f5de6f00d7b996a81320530390.lean/declarations/instance--e378e75326837d140ae19632.md) | 114 | `declaration-track:e378e75326837d140ae196320765679aab970a7546d4cc7c06d43cc0fdc0764e` |
| 19 | `def` | [ShrinkHoms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Varianta40874faa3a3f2b4bb6e89981d62d0d775ec68f5de6f00d7b996a81320530390.lean/declarations/shrinkhoms--bbab91103dc304ca97e8c043.md) | 122 | `declaration-track:bbab91103dc304ca97e8c0437bf81bbdbca6318193a0a6325640f7baa6473ae5` |
| 20 | `def` | [toShrinkHoms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Varianta40874faa3a3f2b4bb6e89981d62d0d775ec68f5de6f00d7b996a81320530390.lean/declarations/toshrinkhoms--35ff4da1991352c7ac350c67.md) | 133 | `declaration-track:35ff4da1991352c7ac350c675df1c097eb8937e75e85b11611e4ebe383edabf5` |
| 21 | `def` | [fromShrinkHoms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Varianta40874faa3a3f2b4bb6e89981d62d0d775ec68f5de6f00d7b996a81320530390.lean/declarations/fromshrinkhoms--bb956027803756310d8ed094.md) | 137 | `declaration-track:bb956027803756310d8ed0940150e5eca426096f4160bacfcf0490cccbde4183` |
| 22 | `theorem` | [to_from](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Varianta40874faa3a3f2b4bb6e89981d62d0d775ec68f5de6f00d7b996a81320530390.lean/declarations/to-from--d239676a3d76b77b23a43e26.md) | 141 | `result-track:d239676a3d76b77b23a43e264450d1b52a46b3d208efcdef6c254ed5ad55a4c1` |
| 23 | `theorem` | [from_to](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Varianta40874faa3a3f2b4bb6e89981d62d0d775ec68f5de6f00d7b996a81320530390.lean/declarations/from-to--9ff75e2c4e783b379c0c357f.md) | 145 | `result-track:9ff75e2c4e783b379c0c357f8f8a52b7af95ab0fb82e4dc53a8d685828ea265c` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Varianta40874faa3a3f2b4bb6e89981d62d0d775ec68f5de6f00d7b996a81320530390.lean/declarations/instance--c5c1a288076b7da981023084.md) | 153 | `declaration-track:c5c1a288076b7da98102308419de5dceb90878cc422b3ff664925dcd565dfa21` |
| 25 | `def` | [functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Varianta40874faa3a3f2b4bb6e89981d62d0d775ec68f5de6f00d7b996a81320530390.lean/declarations/functor--a9618167bd16269a52b4f23f.md) | 160 | `declaration-track:a9618167bd16269a52b4f23f6e8211f9cfb28fac875f657ba25dad7335fc8c35` |
| 26 | `def` | [inverse](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Varianta40874faa3a3f2b4bb6e89981d62d0d775ec68f5de6f00d7b996a81320530390.lean/declarations/inverse--5c832d6509a08b370d8b36fc.md) | 166 | `declaration-track:5c832d6509a08b370d8b36fcee44c4f5514b9e7b3427cb87baf06aeb525ed895` |
| 27 | `def` | [equivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Varianta40874faa3a3f2b4bb6e89981d62d0d775ec68f5de6f00d7b996a81320530390.lean/declarations/equivalence--dcc42cbfdc09ac51cc895337.md) | 173 | `declaration-track:dcc42cbfdc09ac51cc89533735335cdd16c89cd12f24a0be0689458274c88c54` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Varianta40874faa3a3f2b4bb6e89981d62d0d775ec68f5de6f00d7b996a81320530390.lean/declarations/instance--a4117b796701b0fc3db07b71.md) | 179 | `declaration-track:a4117b796701b0fc3db07b71ff04a9b3424352ca9b7e97031914f96fe43bef2b` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Varianta40874faa3a3f2b4bb6e89981d62d0d775ec68f5de6f00d7b996a81320530390.lean/declarations/instance--c084ac514e45f09668d0904e.md) | 180 | `declaration-track:c084ac514e45f09668d0904e8d91ab8d725fe97134f432c3c62f2a686e49be37` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Varianta40874faa3a3f2b4bb6e89981d62d0d775ec68f5de6f00d7b996a81320530390.lean/declarations/instance--7af3caaabcdcb0675e2e821d.md) | 186 | `declaration-track:7af3caaabcdcb0675e2e821d36205b8348f6a9198401fa781afc4ac81ba3a13b` |
| 31 | `def` | [equivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Varianta40874faa3a3f2b4bb6e89981d62d0d775ec68f5de6f00d7b996a81320530390.lean/declarations/equivalence--5730bc80d2b43513e79d39c8.md) | 190 | `declaration-track:5730bc80d2b43513e79d39c85a94611d9dfaec77be68c37fd0d40676f4400f81` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Varianta40874faa3a3f2b4bb6e89981d62d0d775ec68f5de6f00d7b996a81320530390.lean/declarations/instance--4fc04d80340c345bd49642f3.md) | 193 | `declaration-track:4fc04d80340c345bd49642f3e1113c1a3bb3c560fd67bc4c4376e14dc99c599b` |
| 33 | `theorem` | [essentiallySmall_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Varianta40874faa3a3f2b4bb6e89981d62d0d775ec68f5de6f00d7b996a81320530390.lean/declarations/essentiallysmall-iff--2766fda7392120888ef658ca.md) | 203 | `result-track:2766fda7392120888ef658cada5ec1198cbaa196df5a727f96de60001389b5eb` |
| 34 | `theorem` | [essentiallySmall_of_small_of_locallySmall](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Varianta40874faa3a3f2b4bb6e89981d62d0d775ec68f5de6f00d7b996a81320530390.lean/declarations/essentiallysmall-of-small-of-locallysmall--2a5559b13d91bd4259b79ed9.md) | 221 | `result-track:2a5559b13d91bd4259b79ed9bf4d1c24905026834c2565b66acd25357b59e643` |
| 35 | `instance` | [locallySmall_fullSubcategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Varianta40874faa3a3f2b4bb6e89981d62d0d775ec68f5de6f00d7b996a81320530390.lean/declarations/locallysmall-fullsubcategory--7be447744a3a5f8239af5c71.md) | 227 | `declaration-track:7be447744a3a5f8239af5c71d4b28c2531a3978c219928d7988b615298f5f67a` |
| 36 | `instance` | [essentiallySmall_fullSubcategory_mem](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Varianta40874faa3a3f2b4bb6e89981d62d0d775ec68f5de6f00d7b996a81320530390.lean/declarations/essentiallysmall-fullsubcategory-mem--bc2508374749631fde9f13aa.md) | 231 | `declaration-track:bc2508374749631fde9f13aa58c46746f266c40a6bf34e7bff96bba0a001a04a` |
| 37 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Varianta40874faa3a3f2b4bb6e89981d62d0d775ec68f5de6f00d7b996a81320530390.lean/declarations/instance--973631f7858b041396a31840.md) | 241 | `declaration-track:973631f7858b041396a31840ce6a998c78a30165c4954631c8ab8d44fd2f3a18` |
| 38 | `theorem` | [essentiallySmall_iff_of_thin](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Varianta40874faa3a3f2b4bb6e89981d62d0d775ec68f5de6f00d7b996a81320530390.lean/declarations/essentiallysmall-iff-of-thin--ca0264d58ab23ee89acdfb65.md) | 247 | `result-track:ca0264d58ab23ee89acdfb658f79f432023823c1f60ace964b75a499bd1b0713` |
| 39 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Varianta40874faa3a3f2b4bb6e89981d62d0d775ec68f5de6f00d7b996a81320530390.lean/declarations/instance--55aac3b39c3cae1b4a08313b.md) | 251 | `declaration-track:55aac3b39c3cae1b4a08313b6e4c31964343f91372b5207d48b16d67a6c02e67` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
