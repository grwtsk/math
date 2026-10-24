# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SheafHom.Variant81e4700925fcb569eabebcc624730133f88924ef882773578dba3ab24686e79c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1b798e48eb161ce8f65e7b288d0c96ec864566fa",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafHom/Variant81e4700925fcb569eabebcc624730133f88924ef882773578dba3ab24686e79c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafHom/Variant81e4700925fcb569eabebcc624730133f88924ef882773578dba3ab24686e79c.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafHom/Variant81e4700925fcb569eabebcc624730133f88924ef882773578dba3ab24686e79c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1b798e48eb161ce8f65e7b288d0c96ec864566fa`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafHom/Variant81e4700925fcb569eabebcc624730133f88924ef882773578dba3ab24686e79c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafHom/Variant81e4700925fcb569eabebcc624730133f88924ef882773578dba3ab24686e79c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Sites.Over` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [presheafHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafHom/Variant81e4700925fcb569eabebcc624730133f88924ef882773578dba3ab24686e79c.lean/declarations/presheafhom--e76e098c45defaf71d41d506.md) | 43 | `declaration-track:e76e098c45defaf71d41d506abf5aeb04d93a84da2ba494306d63da16312ba54` |
| 2 | `lemma` | [presheafHom_map_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafHom/Variant81e4700925fcb569eabebcc624730133f88924ef882773578dba3ab24686e79c.lean/declarations/presheafhom-map-app--1620b56f5c094935f0e49ede.md) | 60 | `result-track:1620b56f5c094935f0e49ede093f525288aeb87de3e42ce58bc0c3e88e562b3c` |
| 3 | `lemma` | [presheafHom_map_app_op_mk_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafHom/Variant81e4700925fcb569eabebcc624730133f88924ef882773578dba3ab24686e79c.lean/declarations/presheafhom-map-app-op-mk-id--c394ca13608cdffcd755d184.md) | 68 | `result-track:c394ca13608cdffcd755d1848cb05c6f0a4bbff6f7c9399928452a9eb9eb1f49` |
| 4 | `def` | [presheafHomSectionsEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafHom/Variant81e4700925fcb569eabebcc624730133f88924ef882773578dba3ab24686e79c.lean/declarations/presheafhomsectionsequiv--e70e36ef2a58bb948274136d.md) | 77 | `declaration-track:e70e36ef2a58bb948274136de35becc7b21524a0d90bef21fdefc78dddcee3a8` |
| 5 | `lemma` | [PresheafHom.isAmalgamation_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafHom/Variant81e4700925fcb569eabebcc624730133f88924ef882773578dba3ab24686e79c.lean/declarations/presheafhom-isamalgamation-iff--47d3f1c3a811422c7cdbaba6.md) | 99 | `result-track:47d3f1c3a811422c7cdbaba66a0b5d3cbf1de3a583634dd5d1c021d69a309083` |
| 6 | `lemma` | [exists_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafHom/Variant81e4700925fcb569eabebcc624730133f88924ef882773578dba3ab24686e79c.lean/declarations/exists-app--5d2e234fde77570ae60871f9.md) | 127 | `result-track:5d2e234fde77570ae60871f9c37acdce5fb6986be03abfec8136a8b443978bdf` |
| 7 | `def` | [app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafHom/Variant81e4700925fcb569eabebcc624730133f88924ef882773578dba3ab24686e79c.lean/declarations/app--6ea1e64fe51e3093ad6c5a93.md) | 152 | `declaration-track:6ea1e64fe51e3093ad6c5a93484ed7dd0523379adf604e8755206cff8f2f4964` |
| 8 | `lemma` | [app_cond](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafHom/Variant81e4700925fcb569eabebcc624730133f88924ef882773578dba3ab24686e79c.lean/declarations/app-cond--220aaa6447f4afacddaff007.md) | 155 | `result-track:220aaa6447f4afacddaff007004e78bc45650bc5a39778d77316062277837846` |
| 9 | `lemma` | [presheafHom_isSheafFor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafHom/Variant81e4700925fcb569eabebcc624730133f88924ef882773578dba3ab24686e79c.lean/declarations/presheafhom-issheaffor--83cb04d6bfd91191c4a4f7ee.md) | 165 | `result-track:83cb04d6bfd91191c4a4f7ee2f26512483fcd06c0401de0be1a5f79968f5925c` |
| 10 | `lemma` | [Presheaf.IsSheaf.hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafHom/Variant81e4700925fcb569eabebcc624730133f88924ef882773578dba3ab24686e79c.lean/declarations/presheaf-issheaf-hom--01d85454e4a06150fba796aa.md) | 202 | `result-track:01d85454e4a06150fba796aaf537aa5fc96fcc11892cc6ca61063309d5a7683b` |
| 11 | `def` | [sheafHom'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafHom/Variant81e4700925fcb569eabebcc624730133f88924ef882773578dba3ab24686e79c.lean/declarations/sheafhom--512a2add37eed44039883e95.md) | 212 | `declaration-track:512a2add37eed44039883e9520c4465830dca2df4b61b5ef772aa93c880687b5` |
| 12 | `def` | [sheafHom'Iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafHom/Variant81e4700925fcb569eabebcc624730133f88924ef882773578dba3ab24686e79c.lean/declarations/sheafhom-iso--ec3435f67089765818a3580b.md) | 223 | `declaration-track:ec3435f67089765818a3580bedbfc4a8b7522d931afbb1674ae4d8fd3ea919e1` |
| 13 | `def` | [sheafHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafHom/Variant81e4700925fcb569eabebcc624730133f88924ef882773578dba3ab24686e79c.lean/declarations/sheafhom--a9ba42c423ed288b65418edf.md) | 231 | `declaration-track:a9ba42c423ed288b65418edfd60fd0d11812853d55f8c402bd888c9442417315` |
| 14 | `def` | [sheafHomSectionsEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafHom/Variant81e4700925fcb569eabebcc624730133f88924ef882773578dba3ab24686e79c.lean/declarations/sheafhomsectionsequiv--e8683ccbd48ab6ec8c7b3ff7.md) | 236 | `declaration-track:e8683ccbd48ab6ec8c7b3ff7d1ac349c4f3812ccfce3fef5228275e07d467aab` |
| 15 | `lemma` | [sheafHomSectionsEquiv_symm_apply_coe_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafHom/Variant81e4700925fcb569eabebcc624730133f88924ef882773578dba3ab24686e79c.lean/declarations/sheafhomsectionsequiv-symm-apply-coe-apply--0ac2c4fe8b40254183494ef6.md) | 242 | `result-track:0ac2c4fe8b40254183494ef6a8ca122c87759eccc5abb496c447da326817e951` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
