# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.End.Variant4fe8abcf06c210b9d5ca9f13370c31b2763b2f44daf17053ed826d21828bd002

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2994d7b5dc0ef39a72072fd833016c48f6ea23af",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant4fe8abcf06c210b9d5ca9f13370c31b2763b2f44daf17053ed826d21828bd002.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant4fe8abcf06c210b9d5ca9f13370c31b2763b2f44daf17053ed826d21828bd002.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant4fe8abcf06c210b9d5ca9f13370c31b2763b2f44daf17053ed826d21828bd002.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2994d7b5dc0ef39a72072fd833016c48f6ea23af`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant4fe8abcf06c210b9d5ca9f13370c31b2763b2f44daf17053ed826d21828bd002.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant4fe8abcf06c210b9d5ca9f13370c31b2763b2f44daf17053ed826d21828bd002.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monoidal.Functor` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [endofunctorMonoidalCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant4fe8abcf06c210b9d5ca9f13370c31b2763b2f44daf17053ed826d21828bd002.lean/declarations/endofunctormonoidalcategory--b0e3c68343b692fde7b7cd12.md) | 33 | `declaration-track:b0e3c68343b692fde7b7cd122fda759c4812e7be5dd8488031e3256265f32b3c` |
| 2 | `theorem` | [endofunctorMonoidalCategory_tensorUnit_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant4fe8abcf06c210b9d5ca9f13370c31b2763b2f44daf17053ed826d21828bd002.lean/declarations/endofunctormonoidalcategory-tensorunit-obj--cf49998fad52ffe2657ee40b.md) | 47 | `result-track:cf49998fad52ffe2657ee40b497e45d504804d1ed7af1037359db19f340bb102` |
| 3 | `theorem` | [endofunctorMonoidalCategory_tensorUnit_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant4fe8abcf06c210b9d5ca9f13370c31b2763b2f44daf17053ed826d21828bd002.lean/declarations/endofunctormonoidalcategory-tensorunit-map--7430b1692968b357cf175a35.md) | 50 | `result-track:7430b1692968b357cf175a354151cb0bcf5b8d37cd2595581dbae1009772d9a2` |
| 4 | `theorem` | [endofunctorMonoidalCategory_tensorObj_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant4fe8abcf06c210b9d5ca9f13370c31b2763b2f44daf17053ed826d21828bd002.lean/declarations/endofunctormonoidalcategory-tensorobj-obj--72a18f03147644a5ea51999b.md) | 53 | `result-track:72a18f03147644a5ea51999b3d631077d9c8296d190934c15d8a16df0e73821e` |
| 5 | `theorem` | [endofunctorMonoidalCategory_tensorObj_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant4fe8abcf06c210b9d5ca9f13370c31b2763b2f44daf17053ed826d21828bd002.lean/declarations/endofunctormonoidalcategory-tensorobj-map--4a9f89978626a5bd7e7f13c5.md) | 56 | `result-track:4a9f89978626a5bd7e7f13c54ae014d79de7ee8c3e2261a8983d43abbd2df421` |
| 6 | `theorem` | [endofunctorMonoidalCategory_tensorMap_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant4fe8abcf06c210b9d5ca9f13370c31b2763b2f44daf17053ed826d21828bd002.lean/declarations/endofunctormonoidalcategory-tensormap-app--2fa13a1633ffafd7439ed92b.md) | 59 | `result-track:2fa13a1633ffafd7439ed92b83b8fac97d3417f0ff7f8fe5e65e2915c84d82af` |
| 7 | `theorem` | [endofunctorMonoidalCategory_whiskerLeft_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant4fe8abcf06c210b9d5ca9f13370c31b2763b2f44daf17053ed826d21828bd002.lean/declarations/endofunctormonoidalcategory-whiskerleft-app--d1e0fd1678b9817c943690c0.md) | 63 | `result-track:d1e0fd1678b9817c943690c0387b6808776aff1b53f0b9ffb8668db31f39b4f7` |
| 8 | `theorem` | [endofunctorMonoidalCategory_whiskerRight_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant4fe8abcf06c210b9d5ca9f13370c31b2763b2f44daf17053ed826d21828bd002.lean/declarations/endofunctormonoidalcategory-whiskerright-app--93815a4cf0cb606cba18e075.md) | 67 | `result-track:93815a4cf0cb606cba18e075a22368eafee36b47c2b1d0bc532162b1ded69f03` |
| 9 | `theorem` | [endofunctorMonoidalCategory_associator_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant4fe8abcf06c210b9d5ca9f13370c31b2763b2f44daf17053ed826d21828bd002.lean/declarations/endofunctormonoidalcategory-associator-hom-app--8b96820ff3d69a1a962a6218.md) | 71 | `result-track:8b96820ff3d69a1a962a6218018e0a55dafec8fc77248bceb7e55568fcfc04cc` |
| 10 | `theorem` | [endofunctorMonoidalCategory_associator_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant4fe8abcf06c210b9d5ca9f13370c31b2763b2f44daf17053ed826d21828bd002.lean/declarations/endofunctormonoidalcategory-associator-inv-app--106253affee6089793d81ed8.md) | 74 | `result-track:106253affee6089793d81ed89acaba57caaf22a1319a9ddbacfe9dcd10196657` |
| 11 | `theorem` | [endofunctorMonoidalCategory_leftUnitor_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant4fe8abcf06c210b9d5ca9f13370c31b2763b2f44daf17053ed826d21828bd002.lean/declarations/endofunctormonoidalcategory-leftunitor-hom-app--c6a4aaad492d74d0dc92b60d.md) | 77 | `result-track:c6a4aaad492d74d0dc92b60d9fea9243ec8675ffeaec3744876d213474ea303f` |
| 12 | `theorem` | [endofunctorMonoidalCategory_leftUnitor_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant4fe8abcf06c210b9d5ca9f13370c31b2763b2f44daf17053ed826d21828bd002.lean/declarations/endofunctormonoidalcategory-leftunitor-inv-app--c4ae05417a053da5f4de04d9.md) | 80 | `result-track:c4ae05417a053da5f4de04d95b4b65122197280a39a9497be943e2fa4aa6bda8` |
| 13 | `theorem` | [endofunctorMonoidalCategory_rightUnitor_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant4fe8abcf06c210b9d5ca9f13370c31b2763b2f44daf17053ed826d21828bd002.lean/declarations/endofunctormonoidalcategory-rightunitor-hom-app--446aed8fba72e2a194f03e0b.md) | 83 | `result-track:446aed8fba72e2a194f03e0b598eb8b8d4e0b31a9c510719c223095c4ae1fd54` |
| 14 | `theorem` | [endofunctorMonoidalCategory_rightUnitor_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant4fe8abcf06c210b9d5ca9f13370c31b2763b2f44daf17053ed826d21828bd002.lean/declarations/endofunctormonoidalcategory-rightunitor-inv-app--03f2a7b7b476a15594e38c4a.md) | 86 | `result-track:03f2a7b7b476a15594e38c4a073772e34ceaec8ad11cb6ceb662060650615948` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant4fe8abcf06c210b9d5ca9f13370c31b2763b2f44daf17053ed826d21828bd002.lean/declarations/instance--c5902fb8325224d88bd28185.md) | 95 | `declaration-track:c5902fb8325224d88bd28185284bb9ecdcb02d1a068018696a0a70912ddbdd49` |
| 16 | `lemma` | [tensoringRight_ε](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant4fe8abcf06c210b9d5ca9f13370c31b2763b2f44daf17053ed826d21828bd002.lean/declarations/tensoringright--301860d15f41a1c8442e8fee.md) | 101 | `result-track:301860d15f41a1c8442e8fee920f8f40b218fa80f2c9e3826e10056877833bc0` |
| 17 | `lemma` | [tensoringRight_η](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant4fe8abcf06c210b9d5ca9f13370c31b2763b2f44daf17053ed826d21828bd002.lean/declarations/tensoringright--95eb46f40a97466ae6474d9d.md) | 104 | `result-track:95eb46f40a97466ae6474d9d0ea75a87e69a4bbf46eee32670490f207609734f` |
| 18 | `lemma` | [tensoringRight_μ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant4fe8abcf06c210b9d5ca9f13370c31b2763b2f44daf17053ed826d21828bd002.lean/declarations/tensoringright--63f651f02c9c3c854c3c39ae.md) | 107 | `result-track:63f651f02c9c3c854c3c39aea5170d74e9d3fdd7730caa0e6c19a208cec98fb2` |
| 19 | `lemma` | [tensoringRight_δ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant4fe8abcf06c210b9d5ca9f13370c31b2763b2f44daf17053ed826d21828bd002.lean/declarations/tensoringright--ba16369a297e9edbfc2c84a9.md) | 110 | `result-track:ba16369a297e9edbfc2c84a93d93b47031ae91387d16b203baba4ed6246842f3` |
| 20 | `theorem` | [μ_δ_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant4fe8abcf06c210b9d5ca9f13370c31b2763b2f44daf17053ed826d21828bd002.lean/declarations/app--4731daa76aa5ffa18f0f0396.md) | 119 | `result-track:4731daa76aa5ffa18f0f0396f3ff8af8af08d594fc46824d921c0f89bb85c8d0` |
| 21 | `theorem` | [δ_μ_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant4fe8abcf06c210b9d5ca9f13370c31b2763b2f44daf17053ed826d21828bd002.lean/declarations/app--4e0c87766047792822d7f29d.md) | 124 | `result-track:4e0c87766047792822d7f29d052e8205748f012b2b6a3b1da3b633afeabb516a` |
| 22 | `theorem` | [ε_η_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant4fe8abcf06c210b9d5ca9f13370c31b2763b2f44daf17053ed826d21828bd002.lean/declarations/app--8c7f082a75f42901578c3973.md) | 129 | `result-track:8c7f082a75f42901578c39735dda7c88197c60f5ef74b7fc2037fb5d347be765` |
| 23 | `theorem` | [η_ε_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant4fe8abcf06c210b9d5ca9f13370c31b2763b2f44daf17053ed826d21828bd002.lean/declarations/app--693c74e8caf0898c46542b89.md) | 133 | `result-track:693c74e8caf0898c46542b89dd64f9e5d2b72639786c47338e10bf43b37eb69c` |
| 24 | `theorem` | [ε_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant4fe8abcf06c210b9d5ca9f13370c31b2763b2f44daf17053ed826d21828bd002.lean/declarations/naturality--ddb7ce6b0a6b1ff4c4f48f7b.md) | 137 | `result-track:ddb7ce6b0a6b1ff4c4f48f7bd0d79b44c56357e3041685e4a00fc1f45c276683` |
| 25 | `theorem` | [η_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant4fe8abcf06c210b9d5ca9f13370c31b2763b2f44daf17053ed826d21828bd002.lean/declarations/naturality--ba6ef0025faab773dc035f28.md) | 142 | `result-track:ba6ef0025faab773dc035f288b028225353b22d8b237f25b796c6ab67838a85c` |
| 26 | `theorem` | [μ_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant4fe8abcf06c210b9d5ca9f13370c31b2763b2f44daf17053ed826d21828bd002.lean/declarations/naturality--6b977b2883b196b90fdc75b7.md) | 147 | `result-track:6b977b2883b196b90fdc75b7b481ac4cff49731894184a45a12778d1d62dad00` |
| 27 | `theorem` | [δ_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant4fe8abcf06c210b9d5ca9f13370c31b2763b2f44daf17053ed826d21828bd002.lean/declarations/naturality--0a5b29a7e46d9abaf820579a.md) | 153 | `result-track:0a5b29a7e46d9abaf820579a31c36782251ca6bd81d2e2bdf86b0459ecabc633` |
| 28 | `theorem` | [μ_naturality₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant4fe8abcf06c210b9d5ca9f13370c31b2763b2f44daf17053ed826d21828bd002.lean/declarations/naturality--bc24c326af632fb2bde88045.md) | 159 | `result-track:bc24c326af632fb2bde88045bec3731184c1f38c7a811aa8baa90a9fd64aea44` |
| 29 | `theorem` | [μ_naturalityₗ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant4fe8abcf06c210b9d5ca9f13370c31b2763b2f44daf17053ed826d21828bd002.lean/declarations/naturality--80c49c985c870ba7aa9ccfed.md) | 167 | `result-track:80c49c985c870ba7aa9ccfede16e1a5b5d562e202caa0b857044d0edc67054ce` |
| 30 | `theorem` | [μ_naturalityᵣ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant4fe8abcf06c210b9d5ca9f13370c31b2763b2f44daf17053ed826d21828bd002.lean/declarations/naturality--f08692aea7713ddb2f6bcd57.md) | 174 | `result-track:f08692aea7713ddb2f6bcd57a2759e7d1beb24fc2623d3a99583d0d175d50fb3` |
| 31 | `theorem` | [δ_naturalityₗ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant4fe8abcf06c210b9d5ca9f13370c31b2763b2f44daf17053ed826d21828bd002.lean/declarations/naturality--3b26a07ac8309b2df2486920.md) | 181 | `result-track:3b26a07ac8309b2df2486920002b5c5946532ccb91878dde1e054d0b81fbf5e3` |
| 32 | `theorem` | [δ_naturalityᵣ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant4fe8abcf06c210b9d5ca9f13370c31b2763b2f44daf17053ed826d21828bd002.lean/declarations/naturality--cf38313093b23109ad364f7f.md) | 187 | `result-track:cf38313093b23109ad364f7f67fd5f5f5f02b9a131d7493c740eca0abe6a002f` |
| 33 | `theorem` | [left_unitality_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant4fe8abcf06c210b9d5ca9f13370c31b2763b2f44daf17053ed826d21828bd002.lean/declarations/left-unitality-app--b5d05b9fd889e471bd577b02.md) | 193 | `result-track:b5d05b9fd889e471bd577b02c2491dd474c09911580ff63fbbc470abb7f1caca` |
| 34 | `theorem` | [obj_ε_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant4fe8abcf06c210b9d5ca9f13370c31b2763b2f44daf17053ed826d21828bd002.lean/declarations/obj-app--f68ebb37d53943945c6c5ca3.md) | 198 | `result-track:f68ebb37d53943945c6c5ca3f49c9b39faf59f0bba1fcd2792d732c7873cdfa4` |
| 35 | `theorem` | [obj_η_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant4fe8abcf06c210b9d5ca9f13370c31b2763b2f44daf17053ed826d21828bd002.lean/declarations/obj-app--7913e0f88c6d06773d0721ed.md) | 206 | `result-track:7913e0f88c6d06773d0721edb50ce8ac6e08072dace9ae1acd9b7dfd58a77cd9` |
| 36 | `theorem` | [right_unitality_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant4fe8abcf06c210b9d5ca9f13370c31b2763b2f44daf17053ed826d21828bd002.lean/declarations/right-unitality-app--352851300f64b75ebea8e467.md) | 212 | `result-track:352851300f64b75ebea8e467866d870234942dd52b1fec4b5aaf87aa424e3dc3` |
| 37 | `theorem` | [ε_app_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant4fe8abcf06c210b9d5ca9f13370c31b2763b2f44daf17053ed826d21828bd002.lean/declarations/app-obj--78cef27dfd00bfa793912621.md) | 217 | `result-track:78cef27dfd00bfa793912621f19a0e5219841d3f61b76a9bbd7e9b65b4884bf7` |
| 38 | `theorem` | [η_app_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant4fe8abcf06c210b9d5ca9f13370c31b2763b2f44daf17053ed826d21828bd002.lean/declarations/app-obj--e3cfef6856c15dcdf7aac81e.md) | 225 | `result-track:e3cfef6856c15dcdf7aac81edb880710ab76733746d6ac67f5c99781a3d2bff4` |
| 39 | `theorem` | [associativity_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant4fe8abcf06c210b9d5ca9f13370c31b2763b2f44daf17053ed826d21828bd002.lean/declarations/associativity-app--fa86805d41e8cbb17ff38efe.md) | 232 | `result-track:fa86805d41e8cbb17ff38efe7637e81dd1162bfb5b2b5f7365d20544e0124e16` |
| 40 | `theorem` | [obj_μ_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant4fe8abcf06c210b9d5ca9f13370c31b2763b2f44daf17053ed826d21828bd002.lean/declarations/obj-app--ab288c08247b96f861844335.md) | 241 | `result-track:ab288c08247b96f86184433501266475c944e4ebaf012e03fa27ee1a15f204e7` |
| 41 | `theorem` | [obj_μ_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant4fe8abcf06c210b9d5ca9f13370c31b2763b2f44daf17053ed826d21828bd002.lean/declarations/obj-inv-app--c0d494e2cb28f204c22b6ef3.md) | 250 | `result-track:c0d494e2cb28f204c22b6ef3f528ad08cafe4efa7cd516ff93ed268052294c4a` |
| 42 | `theorem` | [obj_zero_map_μ_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant4fe8abcf06c210b9d5ca9f13370c31b2763b2f44daf17053ed826d21828bd002.lean/declarations/obj-zero-map-app--492f02433f32c3780a94159a.md) | 261 | `result-track:492f02433f32c3780a94159a92c1e06021bbe2ca09e54a67291eadf972f82744` |
| 43 | `theorem` | [obj_μ_zero_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant4fe8abcf06c210b9d5ca9f13370c31b2763b2f44daf17053ed826d21828bd002.lean/declarations/obj-zero-app--895239bfe949d22fb1a27550.md) | 268 | `result-track:895239bfe949d22fb1a27550600e6a7deccd8998326da7f2eca2c9b9910591dc` |
| 44 | `def` | [unitOfTensorIsoUnit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant4fe8abcf06c210b9d5ca9f13370c31b2763b2f44daf17053ed826d21828bd002.lean/declarations/unitoftensorisounit--6d6e2e1d3d79e8b4787bd91d.md) | 278 | `declaration-track:6d6e2e1d3d79e8b4787bd91d20af9810d393c88757501d0e5f5671aaf6b8056f` |
| 45 | `def` | [equivOfTensorIsoUnit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant4fe8abcf06c210b9d5ca9f13370c31b2763b2f44daf17053ed826d21828bd002.lean/declarations/equivoftensorisounit--16d1f6c5aed191a9ae7839c0.md) | 285 | `declaration-track:16d1f6c5aed191a9ae7839c0a53f74d3b71627dc77031c352cbcc0dbd388d81c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
