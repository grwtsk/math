# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Colimits.Variant4fd53f93d8387fec72025760ca99bb6fe00872a1ceb88c7d08aa5e58ec52535a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d58be64998b8f0c021bb1fb08f32725998a4994f",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant4fd53f93d8387fec72025760ca99bb6fe00872a1ceb88c7d08aa5e58ec52535a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant4fd53f93d8387fec72025760ca99bb6fe00872a1ceb88c7d08aa5e58ec52535a.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant4fd53f93d8387fec72025760ca99bb6fe00872a1ceb88c7d08aa5e58ec52535a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d58be64998b8f0c021bb1fb08f32725998a4994f`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant4fd53f93d8387fec72025760ca99bb6fe00872a1ceb88c7d08aa5e58ec52535a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant4fd53f93d8387fec72025760ca99bb6fe00872a1ceb88c7d08aa5e58ec52535a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.Grp.Preadditive` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Equiv.TransferInstance` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.ConcreteCategory.Elementwise` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.DFinsupp.BigOperators` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.DFinsupp.Small` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.QuotientGroup.Defs` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Relations](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant4fd53f93d8387fec72025760ca99bb6fe00872a1ceb88c7d08aa5e58ec52535a.lean/declarations/relations--d3366c992a2c3603f6527c9e.md) | 41 | `declaration-track:d3366c992a2c3603f6527c9e72cbf411d6e6e4116af336ec875580425813ca51` |
| 2 | `def` | [Quot](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant4fd53f93d8387fec72025760ca99bb6fe00872a1ceb88c7d08aa5e58ec52535a.lean/declarations/quot--839a1a8994b7dcd76c35b7ee.md) | 50 | `declaration-track:839a1a8994b7dcd76c35b7ee702af5cc280018e89582e8103da26a470a2117df` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant4fd53f93d8387fec72025760ca99bb6fe00872a1ceb88c7d08aa5e58ec52535a.lean/declarations/instance--5c26f187f97e265c560b2c73.md) | 53 | `declaration-track:5c26f187f97e265c560b2c73b1058c7fd535cb5e988cb48b876401dc2648f35e` |
| 4 | `def` | [Quot.ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant4fd53f93d8387fec72025760ca99bb6fe00872a1ceb88c7d08aa5e58ec52535a.lean/declarations/quot--eb70ea4e799d7fa51043ab34.md) | 58 | `declaration-track:eb70ea4e799d7fa51043ab34843d813be6c2c58517dc0fac0332e0d7a1f47c0f` |
| 5 | `lemma` | [Quot.addMonoidHom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant4fd53f93d8387fec72025760ca99bb6fe00872a1ceb88c7d08aa5e58ec52535a.lean/declarations/quot-addmonoidhom-ext--efbace84c13ea23e6802a0a1.md) | 61 | `result-track:efbace84c13ea23e6802a0a1ec1792b955caaeb31c3d9b2b8df2faf57a123dda` |
| 6 | `def` | [Quot.desc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant4fd53f93d8387fec72025760ca99bb6fe00872a1ceb88c7d08aa5e58ec52535a.lean/declarations/quot-desc--88e114b7b2a282e752e6138e.md) | 69 | `declaration-track:88e114b7b2a282e752e6138e85afa9163f4a5bc2c297460a592679532013bea6` |
| 7 | `lemma` | [Quot.ι_desc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant4fd53f93d8387fec72025760ca99bb6fe00872a1ceb88c7d08aa5e58ec52535a.lean/declarations/quot-desc--85bb2afa036ed1a8537562a0.md) | 81 | `result-track:85bb2afa036ed1a8537562a0a3e8b7677aef14278cbdbe593f15d0962c1e61da` |
| 8 | `lemma` | [Quot.map_ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant4fd53f93d8387fec72025760ca99bb6fe00872a1ceb88c7d08aa5e58ec52535a.lean/declarations/quot-map--037450f18daf3bf081d14e27.md) | 88 | `result-track:037450f18daf3bf081d14e27e359cf3d223c0d4aaf2c7f23562b1e13ea8713a5` |
| 9 | `def` | [quotToQuotUlift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant4fd53f93d8387fec72025760ca99bb6fe00872a1ceb88c7d08aa5e58ec52535a.lean/declarations/quottoquotulift--6f5348d9b9fc46fd41be6452.md) | 100 | `declaration-track:6f5348d9b9fc46fd41be64522bf099467ae851993b3f577ba412142d1c72ea99` |
| 10 | `lemma` | [quotToQuotUlift_ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant4fd53f93d8387fec72025760ca99bb6fe00872a1ceb88c7d08aa5e58ec52535a.lean/declarations/quottoquotulift--88191301dff93573dce03839.md) | 113 | `result-track:88191301dff93573dce03839147dcd14becae395834f777a6cb1383378fc6271` |
| 11 | `def` | [quotUliftToQuot](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant4fd53f93d8387fec72025760ca99bb6fe00872a1ceb88c7d08aa5e58ec52535a.lean/declarations/quotulifttoquot--bf87aafc879a94bbd36b259c.md) | 125 | `declaration-track:bf87aafc879a94bbd36b259c8eec1a50a558a4a0670c84978c99d4c0a0cf4152` |
| 12 | `lemma` | [quotUliftToQuot_ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant4fd53f93d8387fec72025760ca99bb6fe00872a1ceb88c7d08aa5e58ec52535a.lean/declarations/quotulifttoquot--267d9514264baf87ca8c0dbb.md) | 138 | `result-track:267d9514264baf87ca8c0dbb196aac1f2e19a3f1db49aa976454bc28b58480c1` |
| 13 | `def` | [quotQuotUliftAddEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant4fd53f93d8387fec72025760ca99bb6fe00872a1ceb88c7d08aa5e58ec52535a.lean/declarations/quotquotuliftaddequiv--d83bbe0c8fc6f3bd26140897.md) | 151 | `declaration-track:d83bbe0c8fc6f3bd2614089734b1d10a8b745a963f19ff45206bbe7f7e2d5227` |
| 14 | `lemma` | [Quot.desc_quotQuotUliftAddEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant4fd53f93d8387fec72025760ca99bb6fe00872a1ceb88c7d08aa5e58ec52535a.lean/declarations/quot-desc-quotquotuliftaddequiv--4ad1b8f180990cc0396a20cb.md) | 167 | `result-track:4ad1b8f180990cc0396a20cbe49087f0b3d7e0c374d940138b1374232daa9cc7` |
| 15 | `def` | [toCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant4fd53f93d8387fec72025760ca99bb6fe00872a1ceb88c7d08aa5e58ec52535a.lean/declarations/tococone--c5eeb9020e3428720fd96c32.md) | 182 | `declaration-track:c5eeb9020e3428720fd96c328c88e1d7dc785117ee11e736dc825c7ecdcfb3bb` |
| 16 | `lemma` | [Quot.desc_toCocone_desc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant4fd53f93d8387fec72025760ca99bb6fe00872a1ceb88c7d08aa5e58ec52535a.lean/declarations/quot-desc-tococone-desc--8a0d515460bf730acabef1ca.md) | 186 | `result-track:8a0d515460bf730acabef1ca6c9d395e12186b88a3e91edd67d66cc258631642` |
| 17 | `lemma` | [Quot.desc_toCocone_desc_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant4fd53f93d8387fec72025760ca99bb6fe00872a1ceb88c7d08aa5e58ec52535a.lean/declarations/quot-desc-tococone-desc-app--021de2bb618fd2ab571ce5fd.md) | 194 | `result-track:021de2bb618fd2ab571ce5fd58a6c7f1b15fa2f84c1748f69b5d4ea15fde4914` |
| 18 | `def` | [isColimit_of_bijective_desc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant4fd53f93d8387fec72025760ca99bb6fe00872a1ceb88c7d08aa5e58ec52535a.lean/declarations/iscolimit-of-bijective-desc--dc17320fdcad1c7296bec43e.md) | 203 | `declaration-track:dc17320fdcad1c7296bec43e56a673a8756892c95fbc9e49ff1930e1fb39d89f` |
| 19 | `def` | [colimitCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant4fd53f93d8387fec72025760ca99bb6fe00872a1ceb88c7d08aa5e58ec52535a.lean/declarations/colimitcocone--dfa6e89ec421eaf0f18abd8a.md) | 226 | `declaration-track:dfa6e89ec421eaf0f18abd8af6bdff0a8df0d7371b203da2d32757beff50dd5a` |
| 20 | `theorem` | [Quot.desc_colimitCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant4fd53f93d8387fec72025760ca99bb6fe00872a1ceb88c7d08aa5e58ec52535a.lean/declarations/quot-desc-colimitcocone--667f2836fddb216f9e72faef.md) | 238 | `result-track:667f2836fddb216f9e72faefac70acbece2d35f9feeed71b4a3f5c006a41eef0` |
| 21 | `def` | [colimitCoconeIsColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant4fd53f93d8387fec72025760ca99bb6fe00872a1ceb88c7d08aa5e58ec52535a.lean/declarations/colimitcoconeiscolimit--70f671094a3b4525f6a355be.md) | 247 | `declaration-track:70f671094a3b4525f6a355beb77d25aca18ed8cb63b34cb24fe2f417904de767` |
| 22 | `lemma` | [hasColimit_of_small_quot](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant4fd53f93d8387fec72025760ca99bb6fe00872a1ceb88c7d08aa5e58ec52535a.lean/declarations/hascolimit-of-small-quot--848fcfbed14a4a798929715b.md) | 257 | `result-track:848fcfbed14a4a798929715bb00e85f8e9072953b075e11cc01f63f943725be6` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant4fd53f93d8387fec72025760ca99bb6fe00872a1ceb88c7d08aa5e58ec52535a.lean/declarations/instance--a59767aa844c843f0b4a7405.md) | 260 | `declaration-track:a59767aa844c843f0b4a740526d8fbb45161fbeab264086329fafab96559700e` |
| 24 | `instance` | [hasColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant4fd53f93d8387fec72025760ca99bb6fe00872a1ceb88c7d08aa5e58ec52535a.lean/declarations/hascolimit--0f93f10c9cc815329f3ec58f.md) | 263 | `declaration-track:0f93f10c9cc815329f3ec58f9830089fab703004d9325aa53e1214fa1b143b14` |
| 25 | `instance` | [hasColimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant4fd53f93d8387fec72025760ca99bb6fe00872a1ceb88c7d08aa5e58ec52535a.lean/declarations/hascolimitsofshape--67bbb1dd550a3918d93e7844.md) | 271 | `declaration-track:67bbb1dd550a3918d93e78448b4acbe89be7b6514b847a2b5224b2d38f0a60be` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant4fd53f93d8387fec72025760ca99bb6fe00872a1ceb88c7d08aa5e58ec52535a.lean/declarations/instance--06fac54dbd44cbc4d196b158.md) | 275 | `declaration-track:06fac54dbd44cbc4d196b158435e3c3bf4381de43d9d5db989f63ea78bd36f00` |
| 27 | `def` | [cokernelIsoQuotient](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant4fd53f93d8387fec72025760ca99bb6fe00872a1ceb88c7d08aa5e58ec52535a.lean/declarations/cokernelisoquotient--d64d08924ff9667caff9153e.md) | 287 | `declaration-track:d64d08924ff9667caff9153e0c0ea64c3110592f146c1c6a7bad1dced5d2ab60` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
