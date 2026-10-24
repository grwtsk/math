# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FunctorCategory.Variant79a02721a38574b48d42748659045fea17a558c17cd2ed9a07841236b226bac2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9c3164e18be2e9f4730f8cd2a5c9925865c9b3f6",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant79a02721a38574b48d42748659045fea17a558c17cd2ed9a07841236b226bac2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant79a02721a38574b48d42748659045fea17a558c17cd2ed9a07841236b226bac2.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant79a02721a38574b48d42748659045fea17a558c17cd2ed9a07841236b226bac2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9c3164e18be2e9f4730f8cd2a5c9925865c9b3f6`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant79a02721a38574b48d42748659045fea17a558c17cd2ed9a07841236b226bac2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant79a02721a38574b48d42748659045fea17a558c17cd2ed9a07841236b226bac2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.FunctorCategory.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Cartesian.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [chosenTerminal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant79a02721a38574b48d42748659045fea17a558c17cd2ed9a07841236b226bac2.lean/declarations/chosenterminal--49b3ed0a56b1e30bcd728556.md) | 25 | `declaration-track:49b3ed0a56b1e30bcd7285565b051729b1cf4b4433120243c5d3c4ea8b1a1f53` |
| 2 | `def` | [chosenTerminalIsTerminal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant79a02721a38574b48d42748659045fea17a558c17cd2ed9a07841236b226bac2.lean/declarations/chosenterminalisterminal--64e400dd52472fefd7d4e166.md) | 28 | `declaration-track:64e400dd52472fefd7d4e166e4cdd60edd5147f8005ffa34a45ec5b8ea6a4622` |
| 3 | `def` | [chosenProd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant79a02721a38574b48d42748659045fea17a558c17cd2ed9a07841236b226bac2.lean/declarations/chosenprod--3844c0741a8a970fd89ff93a.md) | 39 | `declaration-track:3844c0741a8a970fd89ff93a4b848c2d0457f3e8bb76e2ea12dcfc1f715086c0` |
| 4 | `def` | [fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant79a02721a38574b48d42748659045fea17a558c17cd2ed9a07841236b226bac2.lean/declarations/fst--6a0d4780652bbd6f69408508.md) | 46 | `declaration-track:6a0d4780652bbd6f69408508199710949bbbd73971dd2d6b4abc5cacf0280a35` |
| 5 | `def` | [snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant79a02721a38574b48d42748659045fea17a558c17cd2ed9a07841236b226bac2.lean/declarations/snd--7e2c428fd4de8b86e26bbd14.md) | 50 | `declaration-track:7e2c428fd4de8b86e26bbd14f9b073c2f578f19ce3d97baf38330fa366733141` |
| 6 | `def` | [isLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant79a02721a38574b48d42748659045fea17a558c17cd2ed9a07841236b226bac2.lean/declarations/islimit--42fc320a9a799b07e17b7d13.md) | 54 | `declaration-track:42fc320a9a799b07e17b7d135b5d13b5f17dd5e95c70b00b1feca55fb4e14301` |
| 7 | `instance` | [cartesianMonoidalCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant79a02721a38574b48d42748659045fea17a558c17cd2ed9a07841236b226bac2.lean/declarations/cartesianmonoidalcategory--b7259cfdbb4c7a319dbc4b5b.md) | 65 | `declaration-track:b7259cfdbb4c7a319dbc4b5b6587f4994121bed2e282e62b25054e25e1e3a741` |
| 8 | `lemma` | [tensorObj_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant79a02721a38574b48d42748659045fea17a558c17cd2ed9a07841236b226bac2.lean/declarations/tensorobj-obj--738b288f65913f34bfc5004d.md) | 76 | `result-track:738b288f65913f34bfc5004d1fa7952a70bcf10469fb4e4382c1853180434fdd` |
| 9 | `lemma` | [tensorObj_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant79a02721a38574b48d42748659045fea17a558c17cd2ed9a07841236b226bac2.lean/declarations/tensorobj-map--ee8cddb48fa4b9f261e64184.md) | 79 | `result-track:ee8cddb48fa4b9f261e64184444b0080b9b9c73053e55a4a856c3c226a3e7706` |
| 10 | `lemma` | [fst_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant79a02721a38574b48d42748659045fea17a558c17cd2ed9a07841236b226bac2.lean/declarations/fst-app--c7045cff0c8ce4c969b99efa.md) | 83 | `result-track:c7045cff0c8ce4c969b99efa695ff9d20fcb1bb35ab45304eb77c33700083c9c` |
| 11 | `lemma` | [snd_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant79a02721a38574b48d42748659045fea17a558c17cd2ed9a07841236b226bac2.lean/declarations/snd-app--8dc0250835a854584f1eedc1.md) | 86 | `result-track:8dc0250835a854584f1eedc1c2b6906d25b9c6c74d58fc552db3fd8b86c9dcb4` |
| 12 | `lemma` | [leftUnitor_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant79a02721a38574b48d42748659045fea17a558c17cd2ed9a07841236b226bac2.lean/declarations/leftunitor-hom-app--7f8579b43f62a5903a8cbc39.md) | 89 | `result-track:7f8579b43f62a5903a8cbc3999f47f41d82b39e2c95b37115d4ca1f59652739c` |
| 13 | `lemma` | [leftUnitor_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant79a02721a38574b48d42748659045fea17a558c17cd2ed9a07841236b226bac2.lean/declarations/leftunitor-inv-app--b185eb7bccc12abdc09f7d30.md) | 93 | `result-track:b185eb7bccc12abdc09f7d3005bc88054ff60f733faf7e791c686b6592a085be` |
| 14 | `lemma` | [rightUnitor_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant79a02721a38574b48d42748659045fea17a558c17cd2ed9a07841236b226bac2.lean/declarations/rightunitor-hom-app--8bd208fa219f16a2c7d2eb0a.md) | 99 | `result-track:8bd208fa219f16a2c7d2eb0a1efb795051764dafe28870274d5a93546a126bf0` |
| 15 | `lemma` | [rightUnitor_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant79a02721a38574b48d42748659045fea17a558c17cd2ed9a07841236b226bac2.lean/declarations/rightunitor-inv-app--d16819ecfe2c40d794a625b1.md) | 103 | `result-track:d16819ecfe2c40d794a625b1259b1f13dde6820e64f555a1a5a2778ffe3b1e00` |
| 16 | `lemma` | [tensorHom_app_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant79a02721a38574b48d42748659045fea17a558c17cd2ed9a07841236b226bac2.lean/declarations/tensorhom-app-fst--adb92e877e3a6d1862659414.md) | 109 | `result-track:adb92e877e3a6d1862659414ec716dc86be44626535baa48409a933c12e79c27` |
| 17 | `lemma` | [tensorHom_app_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant79a02721a38574b48d42748659045fea17a558c17cd2ed9a07841236b226bac2.lean/declarations/tensorhom-app-snd--c8dbf5a51845506de0c6bcb3.md) | 116 | `result-track:c8dbf5a51845506de0c6bcb32c4b6aec22d465bc22c5ebdd7eb57c3067339a6d` |
| 18 | `lemma` | [whiskerLeft_app_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant79a02721a38574b48d42748659045fea17a558c17cd2ed9a07841236b226bac2.lean/declarations/whiskerleft-app-fst--281699d99338df40052068be.md) | 123 | `result-track:281699d99338df40052068be17d05ff3f430ca46d17af6140bc8c361ff145ca5` |
| 19 | `lemma` | [whiskerLeft_app_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant79a02721a38574b48d42748659045fea17a558c17cd2ed9a07841236b226bac2.lean/declarations/whiskerleft-app-snd--5b142629586255801e8b2f95.md) | 128 | `result-track:5b142629586255801e8b2f952fde3c5e2b9120bb9b75f3e94d70051c9547e213` |
| 20 | `lemma` | [whiskerRight_app_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant79a02721a38574b48d42748659045fea17a558c17cd2ed9a07841236b226bac2.lean/declarations/whiskerright-app-fst--e6c4912bd86d19bdd598a349.md) | 133 | `result-track:e6c4912bd86d19bdd598a349436c44e9b1f1f76eba8812a9aa87296c2e0ca761` |
| 21 | `lemma` | [whiskerRight_app_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant79a02721a38574b48d42748659045fea17a558c17cd2ed9a07841236b226bac2.lean/declarations/whiskerright-app-snd--9541452647c5817ddaca40f7.md) | 138 | `result-track:9541452647c5817ddaca40f7293ab950b0a85a974195190787381e6449a6dab1` |
| 22 | `lemma` | [associator_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant79a02721a38574b48d42748659045fea17a558c17cd2ed9a07841236b226bac2.lean/declarations/associator-hom-app--cdc2609e9318c28e14c74528.md) | 143 | `result-track:cdc2609e9318c28e14c745284c55db589ac405e6b2616ffb5fab48ef5b4a624f` |
| 23 | `lemma` | [associator_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant79a02721a38574b48d42748659045fea17a558c17cd2ed9a07841236b226bac2.lean/declarations/associator-inv-app--f2af79491b3be4254ddf7a8a.md) | 157 | `result-track:f2af79491b3be4254ddf7a8af7a18a2adeb9076bfd6f42960db98690365a5c01` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant79a02721a38574b48d42748659045fea17a558c17cd2ed9a07841236b226bac2.lean/declarations/instance--20c5a128a5f275f90591f349.md) | 161 | `declaration-track:20c5a128a5f275f90591f3497d499d3e2be877a28aa8597631a150086073988f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
