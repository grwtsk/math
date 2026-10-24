# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.QuasiIso.Variant6882015857a7ac0fd9906fc22622d600ea6033dc5d4fc3ceca63402422c4e8f0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ccd2344c7f295b110371dcfdf81d96556e2a0415",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant6882015857a7ac0fd9906fc22622d600ea6033dc5d4fc3ceca63402422c4e8f0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant6882015857a7ac0fd9906fc22622d600ea6033dc5d4fc3ceca63402422c4e8f0.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant6882015857a7ac0fd9906fc22622d600ea6033dc5d4fc3ceca63402422c4e8f0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ccd2344c7f295b110371dcfdf81d96556e2a0415`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant6882015857a7ac0fd9906fc22622d600ea6033dc5d4fc3ceca63402422c4e8f0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant6882015857a7ac0fd9906fc22622d600ea6033dc5d4fc3ceca63402422c4e8f0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.ShortComplex.Homology` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [QuasiIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant6882015857a7ac0fd9906fc22622d600ea6033dc5d4fc3ceca63402422c4e8f0.lean/declarations/quasiiso--51d3c88a59baac1f4713893b.md) | 38 | `declaration-track:51d3c88a59baac1f4713893bfbd37d179c2fdb7de13cf6ebf08945e0f0f24ce2` |
| 2 | `instance` | [QuasiIso.isIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant6882015857a7ac0fd9906fc22622d600ea6033dc5d4fc3ceca63402422c4e8f0.lean/declarations/quasiiso-isiso--3e48b5387e79de8716021b98.md) | 42 | `declaration-track:3e48b5387e79de8716021b98ac9d361565f936b8a0b9d8c32c8e647d7ce33812` |
| 3 | `lemma` | [quasiIso_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant6882015857a7ac0fd9906fc22622d600ea6033dc5d4fc3ceca63402422c4e8f0.lean/declarations/quasiiso-iff--fd2ad2ce14d95cbb032bb1ae.md) | 44 | `result-track:fd2ad2ce14d95cbb032bb1ae881702e92d064105b1483dfae3efbac1b2254267` |
| 4 | `instance` | [quasiIso_of_isIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant6882015857a7ac0fd9906fc22622d600ea6033dc5d4fc3ceca63402422c4e8f0.lean/declarations/quasiiso-of-isiso--82426f034a434948919ba22d.md) | 52 | `declaration-track:82426f034a434948919ba22d7998c04ac5c66c3030ea8ca161e0572c3ba7c401` |
| 5 | `instance` | [quasiIso_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant6882015857a7ac0fd9906fc22622d600ea6033dc5d4fc3ceca63402422c4e8f0.lean/declarations/quasiiso-comp--698944d2aa4486fb72726776.md) | 55 | `declaration-track:698944d2aa4486fb727267769de12ea6959f015be0f633c42c4529f779841bd5` |
| 6 | `lemma` | [quasiIso_of_comp_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant6882015857a7ac0fd9906fc22622d600ea6033dc5d4fc3ceca63402422c4e8f0.lean/declarations/quasiiso-of-comp-left--65d4275c4190714170987a7e.md) | 61 | `result-track:65d4275c4190714170987a7e9b56362e7fc57a49932cbfc5b069ea376e9223ca` |
| 7 | `lemma` | [quasiIso_iff_comp_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant6882015857a7ac0fd9906fc22622d600ea6033dc5d4fc3ceca63402422c4e8f0.lean/declarations/quasiiso-iff-comp-left--16b4d145f4e779b13dd8a74d.md) | 68 | `result-track:16b4d145f4e779b13dd8a74d1ce1aa4d1f703bce4154e489d5ef4308509f39b1` |
| 8 | `lemma` | [quasiIso_of_comp_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant6882015857a7ac0fd9906fc22622d600ea6033dc5d4fc3ceca63402422c4e8f0.lean/declarations/quasiiso-of-comp-right--46debba4cdaaa4e26f1b15e4.md) | 76 | `result-track:46debba4cdaaa4e26f1b15e43a66ac48159a8df8cc684bbfda32fc04cd3837cd` |
| 9 | `lemma` | [quasiIso_iff_comp_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant6882015857a7ac0fd9906fc22622d600ea6033dc5d4fc3ceca63402422c4e8f0.lean/declarations/quasiiso-iff-comp-right--1e1c28ed2cf5db0b8e97bd2f.md) | 83 | `result-track:1e1c28ed2cf5db0b8e97bd2f2957e03560cba1cdd8cae3780994ad894d34088a` |
| 10 | `lemma` | [quasiIso_of_arrow_mk_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant6882015857a7ac0fd9906fc22622d600ea6033dc5d4fc3ceca63402422c4e8f0.lean/declarations/quasiiso-of-arrow-mk-iso--98056724784747437ac49550.md) | 91 | `result-track:98056724784747437ac49550f6db73836afaf6ba9260d3e7e4edb3c158dcc418` |
| 11 | `lemma` | [quasiIso_iff_of_arrow_mk_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant6882015857a7ac0fd9906fc22622d600ea6033dc5d4fc3ceca63402422c4e8f0.lean/declarations/quasiiso-iff-of-arrow-mk-iso--17907954bcf4cedf4c8c823b.md) | 101 | `result-track:17907954bcf4cedf4c8c823bf6944d6b2456de81618377ada7a37e2a32a41832` |
| 12 | `lemma` | [LeftHomologyMapData.quasiIso_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant6882015857a7ac0fd9906fc22622d600ea6033dc5d4fc3ceca63402422c4e8f0.lean/declarations/lefthomologymapdata-quasiiso-iff--bfd2a49fb498d82d95ec0101.md) | 105 | `result-track:bfd2a49fb498d82d95ec01011abb966f6d8dc8dd6c1738e2fe8a2dd1d77ef89f` |
| 13 | `lemma` | [RightHomologyMapData.quasiIso_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant6882015857a7ac0fd9906fc22622d600ea6033dc5d4fc3ceca63402422c4e8f0.lean/declarations/righthomologymapdata-quasiiso-iff--a4aa72b4400d91fe35b93379.md) | 117 | `result-track:a4aa72b4400d91fe35b933799dd0b3cd941c07fb0ec50ce566eadb7b3113dbac` |
| 14 | `lemma` | [quasiIso_iff_isIso_leftHomologyMap'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant6882015857a7ac0fd9906fc22622d600ea6033dc5d4fc3ceca63402422c4e8f0.lean/declarations/quasiiso-iff-isiso-lefthomologymap--bdc352745fefa3bcda061ed6.md) | 129 | `result-track:bdc352745fefa3bcda061ed6f218b4d59ef71057e9db857ffeceafbdb6d70a60` |
| 15 | `lemma` | [quasiIso_iff_isIso_rightHomologyMap'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant6882015857a7ac0fd9906fc22622d600ea6033dc5d4fc3ceca63402422c4e8f0.lean/declarations/quasiiso-iff-isiso-righthomologymap--3660bf3546378873235cc110.md) | 135 | `result-track:3660bf3546378873235cc110fc082455541ed3e2b1c7ebafd00b68f910c37967` |
| 16 | `lemma` | [quasiIso_iff_isIso_homologyMap'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant6882015857a7ac0fd9906fc22622d600ea6033dc5d4fc3ceca63402422c4e8f0.lean/declarations/quasiiso-iff-isiso-homologymap--3310b632a5f8c7d024a436d8.md) | 141 | `result-track:3310b632a5f8c7d024a436d88925dbbe21443d6089ab547be331dfd587a7326f` |
| 17 | `lemma` | [quasiIso_of_epi_of_isIso_of_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant6882015857a7ac0fd9906fc22622d600ea6033dc5d4fc3ceca63402422c4e8f0.lean/declarations/quasiiso-of-epi-of-isiso-of-mono--c0b9195d63894587c2648d92.md) | 146 | `result-track:c0b9195d63894587c2648d92303e403260ac2c62a8b3f302638ff9c85eeefa1e` |
| 18 | `lemma` | [quasiIso_opMap_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant6882015857a7ac0fd9906fc22622d600ea6033dc5d4fc3ceca63402422c4e8f0.lean/declarations/quasiiso-opmap-iff--dc7d759ccf5d5137ac384ed0.md) | 152 | `result-track:dc7d759ccf5d5137ac384ed0e1782ffd8e100cd2437643bd5708e94edce62f4d` |
| 19 | `lemma` | [quasiIso_opMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant6882015857a7ac0fd9906fc22622d600ea6033dc5d4fc3ceca63402422c4e8f0.lean/declarations/quasiiso-opmap--6871175b297512ed1f38e82e.md) | 163 | `result-track:6871175b297512ed1f38e82ed21efbcfbca8be68db519a6580151a049128f9eb` |
| 20 | `lemma` | [quasiIso_unopMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant6882015857a7ac0fd9906fc22622d600ea6033dc5d4fc3ceca63402422c4e8f0.lean/declarations/quasiiso-unopmap--75e68a3d341cf47154c5a4d8.md) | 168 | `result-track:75e68a3d341cf47154c5a4d8f275a46754b12de2dc5953325e68274c37329fc9` |
| 21 | `lemma` | [quasiIso_iff_isIso_liftCycles](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant6882015857a7ac0fd9906fc22622d600ea6033dc5d4fc3ceca63402422c4e8f0.lean/declarations/quasiiso-iff-isiso-liftcycles--087484939299850b1b612ddb.md) | 175 | `result-track:087484939299850b1b612ddb8e7a4e69a10dc0b1a60eee92f99b0565b8c993a8` |
| 22 | `lemma` | [quasiIso_iff_isIso_descOpcycles](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant6882015857a7ac0fd9906fc22622d600ea6033dc5d4fc3ceca63402422c4e8f0.lean/declarations/quasiiso-iff-isiso-descopcycles--42455291e91103ebf4652f01.md) | 184 | `result-track:42455291e91103ebf4652f01316a287dab5fe29116bb86548aefa227e769e262` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
