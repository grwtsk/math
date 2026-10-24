# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FunctorHom.Variantbc50d1f9a4f3831d251d91857c948aa66303cc956d4407302434978e61933373

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d39ed6a795fea0f436934030bc0c36e703653af1",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorHom/Variantbc50d1f9a4f3831d251d91857c948aa66303cc956d4407302434978e61933373.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorHom/Variantbc50d1f9a4f3831d251d91857c948aa66303cc956d4407302434978e61933373.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorHom/Variantbc50d1f9a4f3831d251d91857c948aa66303cc956d4407302434978e61933373.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d39ed6a795fea0f436934030bc0c36e703653af1`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorHom/Variantbc50d1f9a4f3831d251d91857c948aa66303cc956d4407302434978e61933373.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorHom/Variantbc50d1f9a4f3831d251d91857c948aa66303cc956d4407302434978e61933373.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monoidal.FunctorCategory` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Types.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Enriched.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [HomObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorHom/Variantbc50d1f9a4f3831d251d91857c948aa66303cc956d4407302434978e61933373.lean/declarations/homobj--7da167d4418039e5d7c0d12a.md) | 44 | `declaration-track:7da167d4418039e5d7c0d12a171d3f10c232d2c724dc4a487de281d79f19d5d8` |
| 2 | `def` | [homObjEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorHom/Variantbc50d1f9a4f3831d251d91857c948aa66303cc956d4407302434978e61933373.lean/declarations/homobjequiv--cac40cf8f29f3692fc894e31.md) | 53 | `declaration-track:cac40cf8f29f3692fc894e31c8b7ba469981570addf9d7de091af36e3dc83cf6` |
| 3 | `lemma` | [congr_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorHom/Variantbc50d1f9a4f3831d251d91857c948aa66303cc956d4407302434978e61933373.lean/declarations/congr-app--d027af815d78e76f3ca7b253.md) | 71 | `result-track:d027af815d78e76f3ca7b2532590951cd4dd1daceaa9a598ae85ebe2178445a1` |
| 4 | `def` | [ofNatTrans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorHom/Variantbc50d1f9a4f3831d251d91857c948aa66303cc956d4407302434978e61933373.lean/declarations/ofnattrans--13c591e0a999821c89b2d5c8.md) | 76 | `declaration-track:13c591e0a999821c89b2d5c82546d99c6537ed96db02383e7fb41097bcfe0b9f` |
| 5 | `def` | [id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorHom/Variantbc50d1f9a4f3831d251d91857c948aa66303cc956d4407302434978e61933373.lean/declarations/id--b6ea8e4d8f05002c7f7a0299.md) | 81 | `declaration-track:b6ea8e4d8f05002c7f7a0299eb63a0d693aae84e614095037413d872a0c3504e` |
| 6 | `def` | [comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorHom/Variantbc50d1f9a4f3831d251d91857c948aa66303cc956d4407302434978e61933373.lean/declarations/comp--40a29fdfb3bb546b52b895c7.md) | 85 | `declaration-track:40a29fdfb3bb546b52b895c7cafc16a4ede29cc312a639e6796125560097bb0c` |
| 7 | `def` | [map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorHom/Variantbc50d1f9a4f3831d251d91857c948aa66303cc956d4407302434978e61933373.lean/declarations/map--7c89d3c49858147b4f7750d0.md) | 90 | `declaration-track:7c89d3c49858147b4f7750d0e7648b7dd7dd89d0cefe7b2232aeaeda89b34fa8` |
| 8 | `def` | [homObjFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorHom/Variantbc50d1f9a4f3831d251d91857c948aa66303cc956d4407302434978e61933373.lean/declarations/homobjfunctor--83495507cef5c49805a3bc04.md) | 99 | `declaration-track:83495507cef5c49805a3bc049592e87d5e97f68fdb4cffb7f1e503616d4ce393` |
| 9 | `def` | [functorHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorHom/Variantbc50d1f9a4f3831d251d91857c948aa66303cc956d4407302434978e61933373.lean/declarations/functorhom--3ff82658342edb3154ccc81e.md) | 111 | `declaration-track:3ff82658342edb3154ccc81eea7097a645ea793f72378382426651ff5109941d` |
| 10 | `lemma` | [functorHom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorHom/Variantbc50d1f9a4f3831d251d91857c948aa66303cc956d4407302434978e61933373.lean/declarations/functorhom-ext--926963c15af06f27e7758b3a.md) | 115 | `result-track:926963c15af06f27e7758b3ac00ac132a275e408c17b38a64b2a922b9bc12c8d` |
| 11 | `def` | [functorHomEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorHom/Variantbc50d1f9a4f3831d251d91857c948aa66303cc956d4407302434978e61933373.lean/declarations/functorhomequiv--dba5fb841cc4881a1c4b79b8.md) | 121 | `declaration-track:dba5fb841cc4881a1c4b79b83c44ebdd1a4cf264412b07809127259c4ca1667c` |
| 12 | `def` | [natTransEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorHom/Variantbc50d1f9a4f3831d251d91857c948aa66303cc956d4407302434978e61933373.lean/declarations/nattransequiv--8067107b0149c611f7f6b8c7.md) | 146 | `declaration-track:8067107b0149c611f7f6b8c7e2e8c5670a83d2fceaaf3829db356ff6c0208891` |
| 13 | `lemma` | [natTransEquiv_symm_app_app_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorHom/Variantbc50d1f9a4f3831d251d91857c948aa66303cc956d4407302434978e61933373.lean/declarations/nattransequiv-symm-app-app-apply--236bca7d63f82cb08afa2c32.md) | 169 | `result-track:236bca7d63f82cb08afa2c325eab151800c7f1524bae577f5afd1a27b188a048` |
| 14 | `lemma` | [natTransEquiv_symm_whiskerRight_functorHom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorHom/Variantbc50d1f9a4f3831d251d91857c948aa66303cc956d4407302434978e61933373.lean/declarations/nattransequiv-symm-whiskerright-functorhom-app--390394bc61646744798dc79b.md) | 174 | `result-track:390394bc61646744798dc79b53884b9c01b7e9fa2da83c6805d87789fc0b8165` |
| 15 | `lemma` | [functorHom_whiskerLeft_natTransEquiv_symm_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorHom/Variantbc50d1f9a4f3831d251d91857c948aa66303cc956d4407302434978e61933373.lean/declarations/functorhom-whiskerleft-nattransequiv-symm-app--bfe112d506bbcf8c44518345.md) | 180 | `result-track:bfe112d506bbcf8c445183452014f38a59e8461383e41fc29ffc0292a04ded6c` |
| 16 | `lemma` | [whiskerLeft_app_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorHom/Variantbc50d1f9a4f3831d251d91857c948aa66303cc956d4407302434978e61933373.lean/declarations/whiskerleft-app-apply--44dcba09d5732f902e70e5d0.md) | 186 | `result-track:44dcba09d5732f902e70e5d0b481ef842e9efc5a1d455abc3bfc5a0a1848e6b2` |
| 17 | `lemma` | [whiskerRight_app_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorHom/Variantbc50d1f9a4f3831d251d91857c948aa66303cc956d4407302434978e61933373.lean/declarations/whiskerright-app-apply--b7f7b7cf73172ae66c41439f.md) | 192 | `result-track:b7f7b7cf73172ae66c41439f271a6e4c46ec10f1454048e59bfc741500643796` |
| 18 | `lemma` | [associator_inv_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorHom/Variantbc50d1f9a4f3831d251d91857c948aa66303cc956d4407302434978e61933373.lean/declarations/associator-inv-apply--1dee1bbcbd7fb8a74c05397b.md) | 198 | `result-track:1dee1bbcbd7fb8a74c05397bb2d09df506ddca9be7eaa80d5aefa473f5deb838` |
| 19 | `lemma` | [associator_hom_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorHom/Variantbc50d1f9a4f3831d251d91857c948aa66303cc956d4407302434978e61933373.lean/declarations/associator-hom-apply--44c86362db5d9bc69ed1c931.md) | 204 | `result-track:44c86362db5d9bc69ed1c931dda672ef1e33db718421b0dbbd19878dcb09921b` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorHom/Variantbc50d1f9a4f3831d251d91857c948aa66303cc956d4407302434978e61933373.lean/declarations/instance--38039fbdda99212d9bdd8c6d.md) | 209 | `declaration-track:38039fbdda99212d9bdd8c6de99e60960541bca6f214c0efe3f5f64d3534e3ad` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
