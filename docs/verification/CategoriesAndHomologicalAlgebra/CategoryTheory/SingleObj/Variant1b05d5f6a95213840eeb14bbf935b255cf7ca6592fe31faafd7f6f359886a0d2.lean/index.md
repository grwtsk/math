# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SingleObj.Variant1b05d5f6a95213840eeb14bbf935b255cf7ca6592fe31faafd7f6f359886a0d2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bdabf8d3b3d79921add07297a6682ff04883d8bd",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant1b05d5f6a95213840eeb14bbf935b255cf7ca6592fe31faafd7f6f359886a0d2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant1b05d5f6a95213840eeb14bbf935b255cf7ca6592fe31faafd7f6f359886a0d2.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant1b05d5f6a95213840eeb14bbf935b255cf7ca6592fe31faafd7f6f359886a0d2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bdabf8d3b3d79921add07297a6682ff04883d8bd`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant1b05d5f6a95213840eeb14bbf935b255cf7ca6592fe31faafd7f6f359886a0d2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant1b05d5f6a95213840eeb14bbf935b255cf7ca6592fe31faafd7f6f359886a0d2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Endomorphism` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.FinCategory.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Category.Cat` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.MonCat.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.Quiver.SingleObj` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Units.Equiv` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [SingleObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant1b05d5f6a95213840eeb14bbf935b255cf7ca6592fe31faafd7f6f359886a0d2.lean/declarations/singleobj--299ef58e235ac1beb88a2878.md) | 48 | `declaration-track:299ef58e235ac1beb88a287872a994418a5bf23fa386a3eb5ff19078ee5c0f57` |
| 2 | `instance` | [categoryStruct](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant1b05d5f6a95213840eeb14bbf935b255cf7ca6592fe31faafd7f6f359886a0d2.lean/declarations/categorystruct--5844e3c95e7f731c5239a408.md) | 56 | `declaration-track:5844e3c95e7f731c5239a40862c421fc33f374942948aa0c513401374fdc6b1c` |
| 3 | `instance` | [category](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant1b05d5f6a95213840eeb14bbf935b255cf7ca6592fe31faafd7f6f359886a0d2.lean/declarations/category--afdd23971601bfd5c7d7998c.md) | 64 | `declaration-track:afdd23971601bfd5c7d7998cd8a0e40f532b1ae36ef7beb3a10b003fda172511` |
| 4 | `theorem` | [id_as_one](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant1b05d5f6a95213840eeb14bbf935b255cf7ca6592fe31faafd7f6f359886a0d2.lean/declarations/id-as-one--20b6f444b5b75122d5a7ca4a.md) | 69 | `result-track:20b6f444b5b75122d5a7ca4ae4d1191225b01ed5cd94c8d2f4c9a4a4b6d57fc2` |
| 5 | `theorem` | [comp_as_mul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant1b05d5f6a95213840eeb14bbf935b255cf7ca6592fe31faafd7f6f359886a0d2.lean/declarations/comp-as-mul--ed417d451b022f93895d5121.md) | 72 | `result-track:ed417d451b022f93895d5121f84c1da6b7144a00a6c0ab3d7baf9da53bbac3b0` |
| 6 | `instance` | [finCategoryOfFintype](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant1b05d5f6a95213840eeb14bbf935b255cf7ca6592fe31faafd7f6f359886a0d2.lean/declarations/fincategoryoffintype--856d0abd329bc49b0a4dd06f.md) | 76 | `declaration-track:856d0abd329bc49b0a4dd06fb2f410e4ebe00585f747e35b5571f93238d12544` |
| 7 | `instance` | [groupoid](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant1b05d5f6a95213840eeb14bbf935b255cf7ca6592fe31faafd7f6f359886a0d2.lean/declarations/groupoid--8475d8db0acaf94687b68f15.md) | 80 | `declaration-track:8475d8db0acaf94687b68f15069baf54f65d802fd0aa6a8de2bbeeb6577c21ba` |
| 8 | `theorem` | [inv_as_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant1b05d5f6a95213840eeb14bbf935b255cf7ca6592fe31faafd7f6f359886a0d2.lean/declarations/inv-as-inv--b2e7aea0548225430da58aae.md) | 85 | `result-track:b2e7aea0548225430da58aae92fbc36cca0db9f181bca6e8184f7d40c7d38016` |
| 9 | `abbrev` | [star](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant1b05d5f6a95213840eeb14bbf935b255cf7ca6592fe31faafd7f6f359886a0d2.lean/declarations/star--7db99f95baf8177a64c4d98a.md) | 92 | `declaration-track:7db99f95baf8177a64c4d98a7baf4bef41a09b90d84249c926138cfa56df0c8f` |
| 10 | `def` | [toEnd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant1b05d5f6a95213840eeb14bbf935b255cf7ca6592fe31faafd7f6f359886a0d2.lean/declarations/toend--6e49ce51ce1a47457c541f21.md) | 97 | `declaration-track:6e49ce51ce1a47457c541f218ab3ce26f60487159c3e7ca95d6dbede8258ce41` |
| 11 | `theorem` | [toEnd_def](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant1b05d5f6a95213840eeb14bbf935b255cf7ca6592fe31faafd7f6f359886a0d2.lean/declarations/toend-def--dc61c5775789da98467e0df5.md) | 100 | `result-track:dc61c5775789da98467e0df528dae72618c516cd2a3ab8ae9ba044b0b2e74982` |
| 12 | `def` | [mapHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant1b05d5f6a95213840eeb14bbf935b255cf7ca6592fe31faafd7f6f359886a0d2.lean/declarations/maphom--37d9e905abfec363265f7ee7.md) | 108 | `declaration-track:37d9e905abfec363265f7ee7a7d33194ed7d7b905848665322c5c8e3d3664dcb` |
| 13 | `theorem` | [mapHom_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant1b05d5f6a95213840eeb14bbf935b255cf7ca6592fe31faafd7f6f359886a0d2.lean/declarations/maphom-id--c98dd2c4ee23ca5ecef5cb3f.md) | 121 | `result-track:c98dd2c4ee23ca5ecef5cb3f598e1ed8f5c53b3fe8d54849e8c3adecc75e7db0` |
| 14 | `theorem` | [mapHom_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant1b05d5f6a95213840eeb14bbf935b255cf7ca6592fe31faafd7f6f359886a0d2.lean/declarations/maphom-comp--fa492c7fe431ffff37324cb7.md) | 126 | `result-track:fa492c7fe431ffff37324cb71a42565173a07394f400dc365849758ed13ed078` |
| 15 | `def` | [differenceFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant1b05d5f6a95213840eeb14bbf935b255cf7ca6592fe31faafd7f6f359886a0d2.lean/declarations/differencefunctor--9024a70fdf667a69f113e7c8.md) | 135 | `declaration-track:9024a70fdf667a69f113e7c88e594d54ff1f93d641c3887a94e1841656b673e1` |
| 16 | `def` | [functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant1b05d5f6a95213840eeb14bbf935b255cf7ca6592fe31faafd7f6f359886a0d2.lean/declarations/functor--c62d1ba354196b2942d4e1bd.md) | 148 | `declaration-track:c62d1ba354196b2942d4e1bda3eb21e3070b5caeb3ed68cffa6436bfc7fbb037` |
| 17 | `def` | [natTrans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant1b05d5f6a95213840eeb14bbf935b255cf7ca6592fe31faafd7f6f359886a0d2.lean/declarations/nattrans--74cf9f8151b052f127f5584c.md) | 157 | `declaration-track:74cf9f8151b052f127f5584cd2076372b2e3c1722fca552ad85f4b275fce5662` |
| 18 | `abbrev` | [toFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant1b05d5f6a95213840eeb14bbf935b255cf7ca6592fe31faafd7f6f359886a0d2.lean/declarations/tofunctor--c93eabb6ab1839b601292875.md) | 174 | `declaration-track:c93eabb6ab1839b60129287598bebf3adcb75ea121341fc2df2910866c613294` |
| 19 | `theorem` | [comp_toFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant1b05d5f6a95213840eeb14bbf935b255cf7ca6592fe31faafd7f6f359886a0d2.lean/declarations/comp-tofunctor--80c45b5f73cd676cc7df6880.md) | 178 | `result-track:80c45b5f73cd676cc7df68803d64f98e5b7aba656e9696a2519be0cb24590d0f` |
| 20 | `theorem` | [id_toFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant1b05d5f6a95213840eeb14bbf935b255cf7ca6592fe31faafd7f6f359886a0d2.lean/declarations/id-tofunctor--0a89f8fc866a90dd61dfd2d7.md) | 185 | `result-track:0a89f8fc866a90dd61dfd2d7283f0c0e1ece12ce1318a44c88ccd62a96685c1b` |
| 21 | `def` | [toSingleObjEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant1b05d5f6a95213840eeb14bbf935b255cf7ca6592fe31faafd7f6f359886a0d2.lean/declarations/tosingleobjequiv--3653e9dce486631b1fcfa41d.md) | 196 | `declaration-track:3653e9dce486631b1fcfa41d40bff1e533765d4091d4b9b6500aa0dbeceb1ee1` |
| 22 | `def` | [toAut](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant1b05d5f6a95213840eeb14bbf935b255cf7ca6592fe31faafd7f6f359886a0d2.lean/declarations/toaut--f7842642a15ddc1576b51670.md) | 216 | `declaration-track:f7842642a15ddc1576b5167021ae46e32f0b5c83a8f43e255bfb1166f3ecb5dc` |
| 23 | `theorem` | [toAut_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant1b05d5f6a95213840eeb14bbf935b255cf7ca6592fe31faafd7f6f359886a0d2.lean/declarations/toaut-hom--c6d947b83651a1fb897908ca.md) | 221 | `result-track:c6d947b83651a1fb897908ca49db0b73991a213e72a75562e58ec461d5b30c38` |
| 24 | `theorem` | [toAut_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant1b05d5f6a95213840eeb14bbf935b255cf7ca6592fe31faafd7f6f359886a0d2.lean/declarations/toaut-inv--82e9b93b153e794f7af78e97.md) | 225 | `result-track:82e9b93b153e794f7af78e9706ae6b28117a32585312680d710040b048b047ba` |
| 25 | `def` | [toCat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant1b05d5f6a95213840eeb14bbf935b255cf7ca6592fe31faafd7f6f359886a0d2.lean/declarations/tocat--658de60f684c666b018afe32.md) | 235 | `declaration-track:658de60f684c666b018afe3247a8b62f6b64ca3e21be37d61dc69ce091de6af9` |
| 26 | `instance` | [toCat_full](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant1b05d5f6a95213840eeb14bbf935b255cf7ca6592fe31faafd7f6f359886a0d2.lean/declarations/tocat-full--974d543798cd96d835982db8.md) | 239 | `declaration-track:974d543798cd96d835982db8965fe0366a3447d808b8be39b495eeab86a9131b` |
| 27 | `instance` | [toCat_faithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant1b05d5f6a95213840eeb14bbf935b255cf7ca6592fe31faafd7f6f359886a0d2.lean/declarations/tocat-faithful--607957df1f9ad300f3708fab.md) | 244 | `declaration-track:607957df1f9ad300f3708fab19a79746a267de3bef70e9164b817ae6364bdd3d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
