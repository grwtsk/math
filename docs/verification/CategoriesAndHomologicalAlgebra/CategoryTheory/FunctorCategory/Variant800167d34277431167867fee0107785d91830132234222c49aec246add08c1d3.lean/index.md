# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FunctorCategory.Variant800167d34277431167867fee0107785d91830132234222c49aec246add08c1d3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9b9748ca851eba4ec062ec1bd3c37c3b30b4eb2c",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant800167d34277431167867fee0107785d91830132234222c49aec246add08c1d3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant800167d34277431167867fee0107785d91830132234222c49aec246add08c1d3.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant800167d34277431167867fee0107785d91830132234222c49aec246add08c1d3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9b9748ca851eba4ec062ec1bd3c37c3b30b4eb2c`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant800167d34277431167867fee0107785d91830132234222c49aec246add08c1d3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant800167d34277431167867fee0107785d91830132234222c49aec246add08c1d3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.FunctorCategory.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Cartesian.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [chosenTerminal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant800167d34277431167867fee0107785d91830132234222c49aec246add08c1d3.lean/declarations/chosenterminal--8ed1e0c3a4d9fe700e93210c.md) | 33 | `declaration-track:8ed1e0c3a4d9fe700e93210c9cf9fd4353ceee5127edaf3eae80f006baf14605` |
| 2 | `def` | [chosenTerminalIsTerminal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant800167d34277431167867fee0107785d91830132234222c49aec246add08c1d3.lean/declarations/chosenterminalisterminal--57eec7f0d9133da9d0bf7353.md) | 36 | `declaration-track:57eec7f0d9133da9d0bf7353109c5e68559e1c252a284988416c696340a66a01` |
| 3 | `def` | [chosenProd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant800167d34277431167867fee0107785d91830132234222c49aec246add08c1d3.lean/declarations/chosenprod--79c2620504b6dca7d27c9152.md) | 47 | `declaration-track:79c2620504b6dca7d27c9152a55c05b70d84addc029fdcd2c580223a6713c2ab` |
| 4 | `def` | [fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant800167d34277431167867fee0107785d91830132234222c49aec246add08c1d3.lean/declarations/fst--5e7cf573ae9c08ef3481ef10.md) | 54 | `declaration-track:5e7cf573ae9c08ef3481ef1040359fce0980e69c1f5a42944e59a6d130014a21` |
| 5 | `def` | [snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant800167d34277431167867fee0107785d91830132234222c49aec246add08c1d3.lean/declarations/snd--23187f4592225611a2d48dff.md) | 58 | `declaration-track:23187f4592225611a2d48dff79a85e60de20b075bd0d4f3632da3403ec4301c5` |
| 6 | `def` | [isLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant800167d34277431167867fee0107785d91830132234222c49aec246add08c1d3.lean/declarations/islimit--ae9dad5f11cf01b7d12c6f04.md) | 62 | `declaration-track:ae9dad5f11cf01b7d12c6f04c48654e3c4f88832f4e927c815d505f400a203db` |
| 7 | `instance` | [cartesianMonoidalCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant800167d34277431167867fee0107785d91830132234222c49aec246add08c1d3.lean/declarations/cartesianmonoidalcategory--4e016629debe85ce0986af3e.md) | 73 | `declaration-track:4e016629debe85ce0986af3efe4b8f9a2ea19acab16257e2a20dc8d59fa2edf1` |
| 8 | `lemma` | [tensorObj_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant800167d34277431167867fee0107785d91830132234222c49aec246add08c1d3.lean/declarations/tensorobj-obj--47d60ca5e002a0989beaaaaf.md) | 84 | `result-track:47d60ca5e002a0989beaaaaf98c3e18ad3133169d124312547b8d338668ad11f` |
| 9 | `lemma` | [tensorObj_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant800167d34277431167867fee0107785d91830132234222c49aec246add08c1d3.lean/declarations/tensorobj-map--68473c554d83ed0b5be12ab3.md) | 87 | `result-track:68473c554d83ed0b5be12ab3d6b7a6c686bff60540ea30a264f49cf6311190f7` |
| 10 | `lemma` | [fst_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant800167d34277431167867fee0107785d91830132234222c49aec246add08c1d3.lean/declarations/fst-app--141af920bdd445d57e65274b.md) | 91 | `result-track:141af920bdd445d57e65274b36711653fb77118c68e36cbda737e236f9e023fb` |
| 11 | `lemma` | [snd_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant800167d34277431167867fee0107785d91830132234222c49aec246add08c1d3.lean/declarations/snd-app--9a10ff960d2d916d6eaf36c3.md) | 94 | `result-track:9a10ff960d2d916d6eaf36c3027648acbdc1315189aa1c231dbed921ab5f8756` |
| 12 | `lemma` | [leftUnitor_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant800167d34277431167867fee0107785d91830132234222c49aec246add08c1d3.lean/declarations/leftunitor-hom-app--9f2217c4b5ac3779528dce1e.md) | 97 | `result-track:9f2217c4b5ac3779528dce1e5142b130908c3dbb89ff7e43d17053c8e78554ac` |
| 13 | `lemma` | [leftUnitor_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant800167d34277431167867fee0107785d91830132234222c49aec246add08c1d3.lean/declarations/leftunitor-inv-app--c4782ee0849819a0787b6674.md) | 101 | `result-track:c4782ee0849819a0787b66748c0681c91287e53fd4799112e358cd971b06caf5` |
| 14 | `lemma` | [rightUnitor_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant800167d34277431167867fee0107785d91830132234222c49aec246add08c1d3.lean/declarations/rightunitor-hom-app--aa4fb5c23067fdcd506e1d09.md) | 107 | `result-track:aa4fb5c23067fdcd506e1d096f71d2c88ef93ea95d0cf84bfd0c262748600840` |
| 15 | `lemma` | [rightUnitor_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant800167d34277431167867fee0107785d91830132234222c49aec246add08c1d3.lean/declarations/rightunitor-inv-app--78c9f707f3cac52b254e696e.md) | 111 | `result-track:78c9f707f3cac52b254e696e461f0b4957f9f6570c240da0e43767acb82b8305` |
| 16 | `lemma` | [tensorHom_app_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant800167d34277431167867fee0107785d91830132234222c49aec246add08c1d3.lean/declarations/tensorhom-app-fst--1ded99377877f6c437cf0836.md) | 117 | `result-track:1ded99377877f6c437cf0836a22fb9b56b61a99b826050abc518b095ff2066b5` |
| 17 | `lemma` | [tensorHom_app_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant800167d34277431167867fee0107785d91830132234222c49aec246add08c1d3.lean/declarations/tensorhom-app-snd--2625555bb3528d93e37f825d.md) | 124 | `result-track:2625555bb3528d93e37f825d009ec79390ef3980c7550b54a60777b00bd6b9cd` |
| 18 | `lemma` | [whiskerLeft_app_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant800167d34277431167867fee0107785d91830132234222c49aec246add08c1d3.lean/declarations/whiskerleft-app-fst--61e7db982e9d948353b9def9.md) | 131 | `result-track:61e7db982e9d948353b9def984a211d2ee59dad87b007a7d626028afd394e31e` |
| 19 | `lemma` | [whiskerLeft_app_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant800167d34277431167867fee0107785d91830132234222c49aec246add08c1d3.lean/declarations/whiskerleft-app-snd--d5c203e2208a67ddb75a9eb1.md) | 136 | `result-track:d5c203e2208a67ddb75a9eb114b504e648c9ffc110489c0cf899369e344cb9eb` |
| 20 | `lemma` | [whiskerRight_app_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant800167d34277431167867fee0107785d91830132234222c49aec246add08c1d3.lean/declarations/whiskerright-app-fst--eaff70a1b9a47b4e512a830b.md) | 141 | `result-track:eaff70a1b9a47b4e512a830b986db4e21e2e59e590c52114511259e9f72656d2` |
| 21 | `lemma` | [whiskerRight_app_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant800167d34277431167867fee0107785d91830132234222c49aec246add08c1d3.lean/declarations/whiskerright-app-snd--6832ba53995f27ff2dd8e93f.md) | 146 | `result-track:6832ba53995f27ff2dd8e93fdd224e2f7d636654592b4ac632cf9807ba497587` |
| 22 | `lemma` | [associator_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant800167d34277431167867fee0107785d91830132234222c49aec246add08c1d3.lean/declarations/associator-hom-app--2e941f752512c5243f045804.md) | 151 | `result-track:2e941f752512c5243f0458043f6d0317a2f46c91bf031d2e5e0745d509b1d691` |
| 23 | `lemma` | [associator_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant800167d34277431167867fee0107785d91830132234222c49aec246add08c1d3.lean/declarations/associator-inv-app--6342f6920b1ede25aa439582.md) | 165 | `result-track:6342f6920b1ede25aa439582940be23035f15abe4160952c61ff4f55b067bd8a` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant800167d34277431167867fee0107785d91830132234222c49aec246add08c1d3.lean/declarations/instance--5dfae1922a5217b6776881d1.md) | 169 | `declaration-track:5dfae1922a5217b6776881d141f18597d793f2c37dad3f02a7c5df48a257af8b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
