# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variante6e25f52e71d34e6dc373b0ee05d9819d53ff1528f789d919592032a7e7217eb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0c153fe9d31f3adaf9f27181e571bca8d484106b",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante6e25f52e71d34e6dc373b0ee05d9819d53ff1528f789d919592032a7e7217eb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante6e25f52e71d34e6dc373b0ee05d9819d53ff1528f789d919592032a7e7217eb.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante6e25f52e71d34e6dc373b0ee05d9819d53ff1528f789d919592032a7e7217eb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0c153fe9d31f3adaf9f27181e571bca8d484106b`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante6e25f52e71d34e6dc373b0ee05d9819d53ff1528f789d919592032a7e7217eb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante6e25f52e71d34e6dc373b0ee05d9819d53ff1528f789d919592032a7e7217eb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.RegularMono` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Shift.Opposite` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Shift.Pullback` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [OppositeShiftAux](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante6e25f52e71d34e6dc373b0ee05d9819d53ff1528f789d919592032a7e7217eb.lean/declarations/oppositeshiftaux--9ea18368da048ae176856cb8.md) | 60 | `declaration-track:9ea18368da048ae176856cb87647bf3a5b1b6260a350c6edf86bc5c5e73d3705` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante6e25f52e71d34e6dc373b0ee05d9819d53ff1528f789d919592032a7e7217eb.lean/declarations/instance--1bd0e20220d1ebf8a58b664c.md) | 66 | `declaration-track:1bd0e20220d1ebf8a58b664cad240ee7835343d7768755a45840a27682c1a71b` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante6e25f52e71d34e6dc373b0ee05d9819d53ff1528f789d919592032a7e7217eb.lean/declarations/instance--e078af30a11f2d924bfacaa6.md) | 69 | `declaration-track:e078af30a11f2d924bfacaa6248a1a531ff420b2ed28790bf8f4cba8a4404da9` |
| 4 | `def` | [shiftFunctorOpIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante6e25f52e71d34e6dc373b0ee05d9819d53ff1528f789d919592032a7e7217eb.lean/declarations/shiftfunctoropiso--3d07edfefc95386317ec126e.md) | 79 | `declaration-track:3d07edfefc95386317ec126e5d70dc8c1aacda20fa9c9af7509df6ee65678db7` |
| 5 | `lemma` | [shiftFunctorZero_op_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante6e25f52e71d34e6dc373b0ee05d9819d53ff1528f789d919592032a7e7217eb.lean/declarations/shiftfunctorzero-op-hom-app--3470d04522c677aa5ce985cd.md) | 86 | `result-track:3470d04522c677aa5ce985cdbd72698d6014c6e6a5bb2cca47dfb462772fdb7d` |
| 6 | `lemma` | [shiftFunctorZero_op_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante6e25f52e71d34e6dc373b0ee05d9819d53ff1528f789d919592032a7e7217eb.lean/declarations/shiftfunctorzero-op-inv-app--4a2204074abd6935cddbf36c.md) | 92 | `result-track:4a2204074abd6935cddbf36cd94e1a153c40c55085c20d53b8e87430d82f0829` |
| 7 | `lemma` | [shiftFunctorAdd'_op_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante6e25f52e71d34e6dc373b0ee05d9819d53ff1528f789d919592032a7e7217eb.lean/declarations/shiftfunctoradd-op-hom-app--99f866fcc1b35cb4a9fe2710.md) | 100 | `result-track:99f866fcc1b35cb4a9fe2710e56b434f86633aee854c4a6f2ef2276488b4fe81` |
| 8 | `lemma` | [shiftFunctorAdd'_op_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante6e25f52e71d34e6dc373b0ee05d9819d53ff1528f789d919592032a7e7217eb.lean/declarations/shiftfunctoradd-op-inv-app--405dc6aa87d14e17212cd3f9.md) | 112 | `result-track:405dc6aa87d14e17212cd3f922ac9fe0e73d7dd15e035e3bdb1387b471f40875` |
| 9 | `lemma` | [shiftFunctor_op_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante6e25f52e71d34e6dc373b0ee05d9819d53ff1528f789d919592032a7e7217eb.lean/declarations/shiftfunctor-op-map--770eed0c701e6a933015879c.md) | 125 | `result-track:770eed0c701e6a933015879c98ede48714d1d2588cf5f3d84a7e197cac14a61c` |
| 10 | `def` | [opShiftFunctorEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante6e25f52e71d34e6dc373b0ee05d9819d53ff1528f789d919592032a7e7217eb.lean/declarations/opshiftfunctorequivalence--5ad340424a3180f9c45c91f0.md) | 136 | `declaration-track:5ad340424a3180f9c45c91f08975284bd2bc39f9c9028feb2d3c13f6a7860b44` |
| 11 | `lemma` | [opShiftFunctorEquivalence_unitIso_hom_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante6e25f52e71d34e6dc373b0ee05d9819d53ff1528f789d919592032a7e7217eb.lean/declarations/opshiftfunctorequivalence-unitiso-hom-naturality--603012bb371a7f75db323cf8.md) | 154 | `result-track:603012bb371a7f75db323cf893fc583ecc44e4e6b9402ecd7931b8da422e34ab` |
| 12 | `lemma` | [opShiftFunctorEquivalence_unitIso_inv_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante6e25f52e71d34e6dc373b0ee05d9819d53ff1528f789d919592032a7e7217eb.lean/declarations/opshiftfunctorequivalence-unitiso-inv-naturality--e42974fa8c8b51481aac723b.md) | 160 | `result-track:e42974fa8c8b51481aac723bfef10e3501dce06f2f915ef566ec2b6dc0dfc105` |
| 13 | `lemma` | [opShiftFunctorEquivalence_counitIso_hom_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante6e25f52e71d34e6dc373b0ee05d9819d53ff1528f789d919592032a7e7217eb.lean/declarations/opshiftfunctorequivalence-counitiso-hom-naturality--2539178ea5e467c78e7afc70.md) | 166 | `result-track:2539178ea5e467c78e7afc7001739596721a603f8b5c878a9a206e36e2b0c30d` |
| 14 | `lemma` | [opShiftFunctorEquivalence_counitIso_inv_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante6e25f52e71d34e6dc373b0ee05d9819d53ff1528f789d919592032a7e7217eb.lean/declarations/opshiftfunctorequivalence-counitiso-inv-naturality--da7eac8373e9fcf633078596.md) | 172 | `result-track:da7eac8373e9fcf633078596682b9da22277b438e53526dea465131eb0b5d146` |
| 15 | `lemma` | [opShiftFunctorEquivalence_zero_unitIso_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante6e25f52e71d34e6dc373b0ee05d9819d53ff1528f789d919592032a7e7217eb.lean/declarations/opshiftfunctorequivalence-zero-unitiso-hom-app--a1fe8c38a3d41b1022d63f51.md) | 177 | `result-track:a1fe8c38a3d41b1022d63f5120c7d9e0d66c1f15f19fd0788f758572bf1ead92` |
| 16 | `lemma` | [opShiftFunctorEquivalence_zero_unitIso_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante6e25f52e71d34e6dc373b0ee05d9819d53ff1528f789d919592032a7e7217eb.lean/declarations/opshiftfunctorequivalence-zero-unitiso-inv-app--c5c9fc967c42e0c8bf5eb761.md) | 186 | `result-track:c5c9fc967c42e0c8bf5eb7613492427ebd5f0df39e85f634d1130238070c1bfa` |
| 17 | `lemma` | [opShiftFunctorEquivalence_unitIso_hom_app_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante6e25f52e71d34e6dc373b0ee05d9819d53ff1528f789d919592032a7e7217eb.lean/declarations/opshiftfunctorequivalence-unitiso-hom-app-eq--6738b328749e2c49c51b03e6.md) | 195 | `result-track:6738b328749e2c49c51b03e6710bd1f41234efa1a52209370ac6c8fedc1f6fd3` |
| 18 | `lemma` | [opShiftFunctorEquivalence_unitIso_inv_app_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante6e25f52e71d34e6dc373b0ee05d9819d53ff1528f789d919592032a7e7217eb.lean/declarations/opshiftfunctorequivalence-unitiso-inv-app-eq--1823fe11e20031efa713b035.md) | 214 | `result-track:1823fe11e20031efa713b03570d2e046e3ec7220f8a1e1c3b9fad5b2d7e4df1c` |
| 19 | `lemma` | [shift_unop_opShiftFunctorEquivalence_counitIso_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante6e25f52e71d34e6dc373b0ee05d9819d53ff1528f789d919592032a7e7217eb.lean/declarations/shift-unop-opshiftfunctorequivalence-counitiso-inv-app--031efcfde95e60d04ea3c0d7.md) | 229 | `result-track:031efcfde95e60d04ea3c0d76683a1524b0e145692466eb9c605ed42d63e4ec9` |
| 20 | `lemma` | [shift_unop_opShiftFunctorEquivalence_counitIso_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante6e25f52e71d34e6dc373b0ee05d9819d53ff1528f789d919592032a7e7217eb.lean/declarations/shift-unop-opshiftfunctorequivalence-counitiso-hom-app--86627ad2c2f1d82c49488972.md) | 234 | `result-track:86627ad2c2f1d82c494889724b7c5b228b3c004bf3f5ed5f8a70d654231a0e46` |
| 21 | `lemma` | [opShiftFunctorEquivalence_counitIso_inv_app_shift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante6e25f52e71d34e6dc373b0ee05d9819d53ff1528f789d919592032a7e7217eb.lean/declarations/opshiftfunctorequivalence-counitiso-inv-app-shift--aa0a2e854d43012bd6a55cbb.md) | 239 | `result-track:aa0a2e854d43012bd6a55cbbb3a4baf5307dc03fab477151abf4744fb12a5e59` |
| 22 | `lemma` | [opShiftFunctorEquivalence_counitIso_hom_app_shift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante6e25f52e71d34e6dc373b0ee05d9819d53ff1528f789d919592032a7e7217eb.lean/declarations/opshiftfunctorequivalence-counitiso-hom-app-shift--c9ccda206c3d5494e249e733.md) | 244 | `result-track:c9ccda206c3d5494e249e7339960c986c2d539eab8458f3469a6dda5784f49f2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
