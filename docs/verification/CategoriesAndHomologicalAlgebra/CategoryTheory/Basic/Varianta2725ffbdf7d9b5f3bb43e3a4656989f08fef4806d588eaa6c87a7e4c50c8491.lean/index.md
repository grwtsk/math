# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Varianta2725ffbdf7d9b5f3bb43e3a4656989f08fef4806d588eaa6c87a7e4c50c8491

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "600dda0a6191b43435a439e6c5d52abea0e55741",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianta2725ffbdf7d9b5f3bb43e3a4656989f08fef4806d588eaa6c87a7e4c50c8491.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianta2725ffbdf7d9b5f3bb43e3a4656989f08fef4806d588eaa6c87a7e4c50c8491.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianta2725ffbdf7d9b5f3bb43e3a4656989f08fef4806d588eaa6c87a7e4c50c8491.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `600dda0a6191b43435a439e6c5d52abea0e55741`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianta2725ffbdf7d9b5f3bb43e3a4656989f08fef4806d588eaa6c87a7e4c50c8491.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianta2725ffbdf7d9b5f3bb43e3a4656989f08fef4806d588eaa6c87a7e4c50c8491.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.BialgCat.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.HopfAlgebra.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [HopfAlgCat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianta2725ffbdf7d9b5f3bb43e3a4656989f08fef4806d588eaa6c87a7e4c50c8491.lean/declarations/hopfalgcat--5e9718743a7f2a05ce8fdc7b.md) | 34 | `declaration-track:5e9718743a7f2a05ce8fdc7b759de6a013f6f8d51273ff0681639b222b891c20` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianta2725ffbdf7d9b5f3bb43e3a4656989f08fef4806d588eaa6c87a7e4c50c8491.lean/declarations/instance--595754d45f3c3448a7c23d95.md) | 48 | `declaration-track:595754d45f3c3448a7c23d957fc3bc62140dea5e6ed19d34f6616d1a242bbf2b` |
| 3 | `abbrev` | [of](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianta2725ffbdf7d9b5f3bb43e3a4656989f08fef4806d588eaa6c87a7e4c50c8491.lean/declarations/of--0cbf807a7c64d83b86adf23c.md) | 53 | `declaration-track:0cbf807a7c64d83b86adf23ca96ff88cbb7e103d312f39fa5bfbcd897695114a` |
| 4 | `lemma` | [of_comul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianta2725ffbdf7d9b5f3bb43e3a4656989f08fef4806d588eaa6c87a7e4c50c8491.lean/declarations/of-comul--a32d0e347350ffaa09a97ed3.md) | 58 | `result-track:a32d0e347350ffaa09a97ed380f44811e51890c907cc9fb0b006e091cb583d30` |
| 5 | `lemma` | [of_counit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianta2725ffbdf7d9b5f3bb43e3a4656989f08fef4806d588eaa6c87a7e4c50c8491.lean/declarations/of-counit--c20cc12da5451575f032dfae.md) | 62 | `result-track:c20cc12da5451575f032dfae756e8d230c7c53f0105dde7141040a8791ea0fb8` |
| 6 | `structure` | [Hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianta2725ffbdf7d9b5f3bb43e3a4656989f08fef4806d588eaa6c87a7e4c50c8491.lean/declarations/hom--c70a217e723132ebdadedf9b.md) | 68 | `declaration-track:c70a217e723132ebdadedf9bec214c967dba07ea7f3bef42b8e2f27e7bcdc903` |
| 7 | `instance` | [category](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianta2725ffbdf7d9b5f3bb43e3a4656989f08fef4806d588eaa6c87a7e4c50c8491.lean/declarations/category--1c067e6d3a75d7b8ef3d3d5c.md) | 72 | `declaration-track:1c067e6d3a75d7b8ef3d3d5c658bfc3170dbef2a0dd1a4c1bceb5cbb66086825` |
| 8 | `instance` | [concreteCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianta2725ffbdf7d9b5f3bb43e3a4656989f08fef4806d588eaa6c87a7e4c50c8491.lean/declarations/concretecategory--d3dddd92a3ebe076ac70b17d.md) | 77 | `declaration-track:d3dddd92a3ebe076ac70b17db3da7e391ffea9765e35d8c3db6bc8586c02deff` |
| 9 | `abbrev` | [Hom.toBialgHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianta2725ffbdf7d9b5f3bb43e3a4656989f08fef4806d588eaa6c87a7e4c50c8491.lean/declarations/hom-tobialghom--0c5dfeeb72669b67ead4cc84.md) | 82 | `declaration-track:0c5dfeeb72669b67ead4cc844bc50b6dfaa7ae4b5fc24c6ed3f9d6570fa6c06a` |
| 10 | `abbrev` | [ofHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianta2725ffbdf7d9b5f3bb43e3a4656989f08fef4806d588eaa6c87a7e4c50c8491.lean/declarations/ofhom--9d1f3546278fd919849e06d5.md) | 86 | `declaration-track:9d1f3546278fd919849e06d55ad4ea46e8080e35be676d84498bca1c392638ae` |
| 11 | `lemma` | [Hom.toBialgHom_injective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianta2725ffbdf7d9b5f3bb43e3a4656989f08fef4806d588eaa6c87a7e4c50c8491.lean/declarations/hom-tobialghom-injective--6ab8ee89c13c2f4c4fd4ee6c.md) | 91 | `result-track:6ab8ee89c13c2f4c4fd4ee6c7e72d1bcf35b80b334d737f32c2960d9ec32e8eb` |
| 12 | `lemma` | [hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianta2725ffbdf7d9b5f3bb43e3a4656989f08fef4806d588eaa6c87a7e4c50c8491.lean/declarations/hom-ext--e7b5db4032340f9b34b39112.md) | 96 | `result-track:e7b5db4032340f9b34b3911238f045e92453311956e616c74348bc3b5e9c095f` |
| 13 | `theorem` | [toBialgHom_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianta2725ffbdf7d9b5f3bb43e3a4656989f08fef4806d588eaa6c87a7e4c50c8491.lean/declarations/tobialghom-comp--c06fcaac8f80521c7fe985b0.md) | 100 | `result-track:c06fcaac8f80521c7fe985b0d5d6c90370a1d4cb86ae512d221fd3f2ef81633e` |
| 14 | `theorem` | [toBialgHom_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianta2725ffbdf7d9b5f3bb43e3a4656989f08fef4806d588eaa6c87a7e4c50c8491.lean/declarations/tobialghom-id--40984bc1ca9a226f4135c24c.md) | 104 | `result-track:40984bc1ca9a226f4135c24ca72df8007442fa72f83f400e55799097ba1e2150` |
| 15 | `instance` | [hasForgetToBialgebra](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianta2725ffbdf7d9b5f3bb43e3a4656989f08fef4806d588eaa6c87a7e4c50c8491.lean/declarations/hasforgettobialgebra--5e02ee1bf62bffd207b0889d.md) | 108 | `declaration-track:5e02ee1bf62bffd207b0889d770a911de76f755a286531d7b116769c8727bc11` |
| 16 | `theorem` | [forget₂_bialgebra_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianta2725ffbdf7d9b5f3bb43e3a4656989f08fef4806d588eaa6c87a7e4c50c8491.lean/declarations/forget-bialgebra-obj--e0bf9fc9c5892d914a2b02ba.md) | 114 | `result-track:e0bf9fc9c5892d914a2b02bae475242b4ce0e6797378f5f7558000d888f0aaaa` |
| 17 | `theorem` | [forget₂_bialgebra_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianta2725ffbdf7d9b5f3bb43e3a4656989f08fef4806d588eaa6c87a7e4c50c8491.lean/declarations/forget-bialgebra-map--11ebb992cae2a8d6e90d105d.md) | 119 | `result-track:11ebb992cae2a8d6e90d105d2bc124db1a570773c5490bdcbd622976dc645056` |
| 18 | `def` | [toHopfAlgIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianta2725ffbdf7d9b5f3bb43e3a4656989f08fef4806d588eaa6c87a7e4c50c8491.lean/declarations/tohopfalgiso--bca0e879149ed3c118db23de.md) | 136 | `declaration-track:bca0e879149ed3c118db23debf081349a668dade3ed6815911bee72045c16e07` |
| 19 | `theorem` | [toHopfAlgIso_refl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianta2725ffbdf7d9b5f3bb43e3a4656989f08fef4806d588eaa6c87a7e4c50c8491.lean/declarations/tohopfalgiso-refl--3bf6e8c0584564417564b25a.md) | 142 | `result-track:3bf6e8c0584564417564b25a89f3cdb46793afeb7cd282d7183b0d1785dffbd8` |
| 20 | `theorem` | [toHopfAlgIso_symm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianta2725ffbdf7d9b5f3bb43e3a4656989f08fef4806d588eaa6c87a7e4c50c8491.lean/declarations/tohopfalgiso-symm--7b7238e73725b6b839f92724.md) | 146 | `result-track:7b7238e73725b6b839f9272472bd6bbe52d6cb5d7241b24113e47a11f1c3d6f0` |
| 21 | `theorem` | [toHopfAlgIso_trans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianta2725ffbdf7d9b5f3bb43e3a4656989f08fef4806d588eaa6c87a7e4c50c8491.lean/declarations/tohopfalgiso-trans--ec4dcb011dbd3dc056060013.md) | 150 | `result-track:ec4dcb011dbd3dc056060013d9b6ad6c1874aeaef8055800f64d2c823ea0e398` |
| 22 | `def` | [toHopfAlgEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianta2725ffbdf7d9b5f3bb43e3a4656989f08fef4806d588eaa6c87a7e4c50c8491.lean/declarations/tohopfalgequiv--59062be08feeae7db49f8b85.md) | 164 | `declaration-track:59062be08feeae7db49f8b859020a50d7597c09e103815e41ababf00ece1dd9b` |
| 23 | `theorem` | [toHopfAlgEquiv_toBialgHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianta2725ffbdf7d9b5f3bb43e3a4656989f08fef4806d588eaa6c87a7e4c50c8491.lean/declarations/tohopfalgequiv-tobialghom--56e3b36597ed09e24e98452d.md) | 170 | `result-track:56e3b36597ed09e24e98452d440dddd28be3e2ccea7a8b7550b7cb27db4ab3f5` |
| 24 | `theorem` | [toHopfAlgEquiv_refl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianta2725ffbdf7d9b5f3bb43e3a4656989f08fef4806d588eaa6c87a7e4c50c8491.lean/declarations/tohopfalgequiv-refl--d4d9c049ee69243564fcd5c8.md) | 173 | `result-track:d4d9c049ee69243564fcd5c8d9b0ac6d94840821ff76e7683ec4e9587f2fdce7` |
| 25 | `theorem` | [toHopfAlgEquiv_symm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianta2725ffbdf7d9b5f3bb43e3a4656989f08fef4806d588eaa6c87a7e4c50c8491.lean/declarations/tohopfalgequiv-symm--88bb5a2c2d09b1b727f67f10.md) | 176 | `result-track:88bb5a2c2d09b1b727f67f10fc4be11e244dbe3d92a8929ca20c30b1191d38b3` |
| 26 | `theorem` | [toHopfAlgEquiv_trans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianta2725ffbdf7d9b5f3bb43e3a4656989f08fef4806d588eaa6c87a7e4c50c8491.lean/declarations/tohopfalgequiv-trans--034705eb7205f6e06b4c382d.md) | 180 | `result-track:034705eb7205f6e06b4c382d2c80580f217123829a82ddc686cdb5f6cff2a3b1` |
| 27 | `instance` | [HopfAlgCat.forget_reflects_isos](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianta2725ffbdf7d9b5f3bb43e3a4656989f08fef4806d588eaa6c87a7e4c50c8491.lean/declarations/hopfalgcat-forget-reflects-isos--0d8873319b6f09fcdd0dbd4d.md) | 186 | `declaration-track:0d8873319b6f09fcdd0dbd4dbfe02e9a6ff78cde7d34db1306b4c3155db9c099` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
