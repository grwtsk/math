# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variant390170b7989890a556b5353dfc9254ddda57f80599096e065836f9c7a5ce160e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4585d6e73d92f12f52ef509b47256b41244bbd31",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant390170b7989890a556b5353dfc9254ddda57f80599096e065836f9c7a5ce160e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant390170b7989890a556b5353dfc9254ddda57f80599096e065836f9c7a5ce160e.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant390170b7989890a556b5353dfc9254ddda57f80599096e065836f9c7a5ce160e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4585d6e73d92f12f52ef509b47256b41244bbd31`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant390170b7989890a556b5353dfc9254ddda57f80599096e065836f9c7a5ce160e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant390170b7989890a556b5353dfc9254ddda57f80599096e065836f9c7a5ce160e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.ModuleCat.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Coalgebra.Equiv` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CoalgCat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant390170b7989890a556b5353dfc9254ddda57f80599096e065836f9c7a5ce160e.lean/declarations/coalgcat--0d1da530028f1023be627a0a.md) | 26 | `declaration-track:0d1da530028f1023be627a0a8e036cd1a266bbf5818326884e3a80baf9f0e20a` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant390170b7989890a556b5353dfc9254ddda57f80599096e065836f9c7a5ce160e.lean/declarations/instance--463448514ed4dd79e5a6fc2c.md) | 37 | `declaration-track:463448514ed4dd79e5a6fc2ce95365de17b4e77db5dee249518819bd58a81de2` |
| 3 | `theorem` | [moduleCat_of_toModuleCat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant390170b7989890a556b5353dfc9254ddda57f80599096e065836f9c7a5ce160e.lean/declarations/modulecat-of-tomodulecat--c5ecb95ea44c6916490d420f.md) | 40 | `result-track:c5ecb95ea44c6916490d420feb4ca2aa006c238c894456d3ece3613f4863ea3f` |
| 4 | `abbrev` | [of](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant390170b7989890a556b5353dfc9254ddda57f80599096e065836f9c7a5ce160e.lean/declarations/of--6fb217b9f3928d69651523ae.md) | 46 | `declaration-track:6fb217b9f3928d69651523aebf99f85ec8fc9c989108f3ced57f69fc8400cb23` |
| 5 | `lemma` | [of_comul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant390170b7989890a556b5353dfc9254ddda57f80599096e065836f9c7a5ce160e.lean/declarations/of-comul--e91c661c693248e4d5e471a5.md) | 52 | `result-track:e91c661c693248e4d5e471a5984732f98a1edefe5ff6403234c6217e09d734af` |
| 6 | `lemma` | [of_counit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant390170b7989890a556b5353dfc9254ddda57f80599096e065836f9c7a5ce160e.lean/declarations/of-counit--6be395ccac1b0322edb138bd.md) | 56 | `result-track:6be395ccac1b0322edb138bdae01a628b5d8752d44ca29c1824fbd9e451342a9` |
| 7 | `structure` | [Hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant390170b7989890a556b5353dfc9254ddda57f80599096e065836f9c7a5ce160e.lean/declarations/hom--ffc647d952690945b77b6a70.md) | 62 | `declaration-track:ffc647d952690945b77b6a707debe44c29a00629bf05abb1f8107553f63d8335` |
| 8 | `instance` | [category](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant390170b7989890a556b5353dfc9254ddda57f80599096e065836f9c7a5ce160e.lean/declarations/category--a6366f48033cb31020491528.md) | 66 | `declaration-track:a6366f48033cb31020491528bac617bc9cfc6febe0faa860c232038fda4156df` |
| 9 | `instance` | [concreteCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant390170b7989890a556b5353dfc9254ddda57f80599096e065836f9c7a5ce160e.lean/declarations/concretecategory--ac06fb5839d236553211af2e.md) | 71 | `declaration-track:ac06fb5839d236553211af2e816715dd6f7ba370ffcf996aaa3b4a1b8a4b107c` |
| 10 | `abbrev` | [Hom.toCoalgHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant390170b7989890a556b5353dfc9254ddda57f80599096e065836f9c7a5ce160e.lean/declarations/hom-tocoalghom--1a6ea734465946d7da197625.md) | 76 | `declaration-track:1a6ea734465946d7da1976254d87779d429820195df785003ca648890e22d127` |
| 11 | `abbrev` | [ofHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant390170b7989890a556b5353dfc9254ddda57f80599096e065836f9c7a5ce160e.lean/declarations/ofhom--7c5cc543e7a72b36cf9ac0e0.md) | 80 | `declaration-track:7c5cc543e7a72b36cf9ac0e0a2227952a5c0933ab8302ee25ff9d29f91cc13d0` |
| 12 | `lemma` | [Hom.toCoalgHom_injective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant390170b7989890a556b5353dfc9254ddda57f80599096e065836f9c7a5ce160e.lean/declarations/hom-tocoalghom-injective--fb55661c9c960e055293e1a7.md) | 85 | `result-track:fb55661c9c960e055293e1a746707b89b1c7b2217a4339e168daca9f2c3a1b3f` |
| 13 | `lemma` | [hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant390170b7989890a556b5353dfc9254ddda57f80599096e065836f9c7a5ce160e.lean/declarations/hom-ext--833a576ee26ea71ba08bf165.md) | 90 | `result-track:833a576ee26ea71ba08bf165eab4b3724ce70f7ca118b112aee19a3da17c3d86` |
| 14 | `theorem` | [toCoalgHom_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant390170b7989890a556b5353dfc9254ddda57f80599096e065836f9c7a5ce160e.lean/declarations/tocoalghom-comp--21cd20b141ebb4a286cf171a.md) | 94 | `result-track:21cd20b141ebb4a286cf171a0e4f6e95fcfb2d467e5b76f96be218108ae35133` |
| 15 | `theorem` | [toCoalgHom_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant390170b7989890a556b5353dfc9254ddda57f80599096e065836f9c7a5ce160e.lean/declarations/tocoalghom-id--bb0c45f5ade3505ec5d6ec03.md) | 98 | `result-track:bb0c45f5ade3505ec5d6ec033dd491cae0db0f47d9087ffffd3aea97c5460c76` |
| 16 | `instance` | [hasForgetToModule](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant390170b7989890a556b5353dfc9254ddda57f80599096e065836f9c7a5ce160e.lean/declarations/hasforgettomodule--93830f6920797528788b3f91.md) | 102 | `declaration-track:93830f6920797528788b3f911d5c2844aeead2974e0b862bc73d9513d48360f5` |
| 17 | `theorem` | [forget₂_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant390170b7989890a556b5353dfc9254ddda57f80599096e065836f9c7a5ce160e.lean/declarations/forget-obj--7e89aeb98ae481ccf5e337d9.md) | 108 | `result-track:7e89aeb98ae481ccf5e337d955a2b1455592069d6838d8c8f852afac3dfeaf15` |
| 18 | `theorem` | [forget₂_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant390170b7989890a556b5353dfc9254ddda57f80599096e065836f9c7a5ce160e.lean/declarations/forget-map--292b8a55c1c485c25cae2e47.md) | 113 | `result-track:292b8a55c1c485c25cae2e4741121dcf2d66a4d03e3effc63a9fa385b86e7c83` |
| 19 | `def` | [toCoalgIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant390170b7989890a556b5353dfc9254ddda57f80599096e065836f9c7a5ce160e.lean/declarations/tocoalgiso--af824bf0e413368d2c226ba2.md) | 130 | `declaration-track:af824bf0e413368d2c226ba253481dbdf59f8261cc7c96fc515980cbee244516` |
| 20 | `theorem` | [toCoalgIso_refl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant390170b7989890a556b5353dfc9254ddda57f80599096e065836f9c7a5ce160e.lean/declarations/tocoalgiso-refl--7b58463d0c2a893c3234ee2f.md) | 136 | `result-track:7b58463d0c2a893c3234ee2f2ae4a01eacc8aa52aee1a227f840c44958b98c85` |
| 21 | `theorem` | [toCoalgIso_symm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant390170b7989890a556b5353dfc9254ddda57f80599096e065836f9c7a5ce160e.lean/declarations/tocoalgiso-symm--c65feb6a6b902ec9b1d98f0e.md) | 140 | `result-track:c65feb6a6b902ec9b1d98f0e3c2e0bec510e200aeb7405d758ff2065c52d7b95` |
| 22 | `theorem` | [toCoalgIso_trans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant390170b7989890a556b5353dfc9254ddda57f80599096e065836f9c7a5ce160e.lean/declarations/tocoalgiso-trans--43710338e55e291d6067709d.md) | 144 | `result-track:43710338e55e291d6067709dfb2251155afb3b8356eaa99cad22729f3fd6f1b6` |
| 23 | `def` | [toCoalgEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant390170b7989890a556b5353dfc9254ddda57f80599096e065836f9c7a5ce160e.lean/declarations/tocoalgequiv--2f9e6aaa5f58ae2a0e1a6a42.md) | 158 | `declaration-track:2f9e6aaa5f58ae2a0e1a6a42861bfa58eaf23ab744493e3fc1cba89fadd23ca3` |
| 24 | `theorem` | [toCoalgEquiv_toCoalgHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant390170b7989890a556b5353dfc9254ddda57f80599096e065836f9c7a5ce160e.lean/declarations/tocoalgequiv-tocoalghom--8cf02c1d7ba3d683082e2ae1.md) | 164 | `result-track:8cf02c1d7ba3d683082e2ae19b9905e0932952d389091368a9ba659ace3e20ba` |
| 25 | `theorem` | [toCoalgEquiv_refl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant390170b7989890a556b5353dfc9254ddda57f80599096e065836f9c7a5ce160e.lean/declarations/tocoalgequiv-refl--5880622467011f1158fb5a73.md) | 167 | `result-track:5880622467011f1158fb5a739b29713b7b42cfe521754cc5ff90c83da3b4fdad` |
| 26 | `theorem` | [toCoalgEquiv_symm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant390170b7989890a556b5353dfc9254ddda57f80599096e065836f9c7a5ce160e.lean/declarations/tocoalgequiv-symm--c80ec11a4ed6f3a2db0b673f.md) | 170 | `result-track:c80ec11a4ed6f3a2db0b673ff66ba564ff388af17369905e6b80e0757c5e5681` |
| 27 | `theorem` | [toCoalgEquiv_trans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant390170b7989890a556b5353dfc9254ddda57f80599096e065836f9c7a5ce160e.lean/declarations/tocoalgequiv-trans--a787b55815e0fc1cb4b552bc.md) | 174 | `result-track:a787b55815e0fc1cb4b552bcf0f1d2b374becf817d012abd5b7219e2c52a804a` |
| 28 | `instance` | [CoalgCat.forget_reflects_isos](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant390170b7989890a556b5353dfc9254ddda57f80599096e065836f9c7a5ce160e.lean/declarations/coalgcat-forget-reflects-isos--584bf63df0b4b611ebd62613.md) | 180 | `declaration-track:584bf63df0b4b611ebd62613797f0627b1521e65015a13c2016059c0eaa771b2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
