# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.GeometricMorphism.Variant71915ede5c673695afb2c0be3987a0f89e33f2d1372794b92c7c4977f42f1410

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3621e6377ddf8470677301ebbec921d442e9aae6",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GeometricMorphism/Variant71915ede5c673695afb2c0be3987a0f89e33f2d1372794b92c7c4977f42f1410.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GeometricMorphism/Variant71915ede5c673695afb2c0be3987a0f89e33f2d1372794b92c7c4977f42f1410.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GeometricMorphism/Variant71915ede5c673695afb2c0be3987a0f89e33f2d1372794b92c7c4977f42f1410.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3621e6377ddf8470677301ebbec921d442e9aae6`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GeometricMorphism/Variant71915ede5c673695afb2c0be3987a0f89e33f2d1372794b92c7c4977f42f1410.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/GeometricMorphism/Variant71915ede5c673695afb2c0be3987a0f89e33f2d1372794b92c7c4977f42f1410.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.Logic.Mathlib.Knowledge` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [GeometricMorphism](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GeometricMorphism/Variant71915ede5c673695afb2c0be3987a0f89e33f2d1372794b92c7c4977f42f1410.lean/declarations/geometricmorphism--bd0669ad8232c63f6e9d0081.md) | 8 | `declaration-track:bd0669ad8232c63f6e9d008185ced66f08ad9d321538efe49ed544fc42ac39d0` |
| 2 | `theorem` | [geometric_morphism_has_left_exact_inverse_image](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GeometricMorphism/Variant71915ede5c673695afb2c0be3987a0f89e33f2d1372794b92c7c4977f42f1410.lean/declarations/geometric-morphism-has-left-exact-inverse-image--feb8755ece2eaa932ad0547e.md) | 19 | `result-track:feb8755ece2eaa932ad0547e5da23fddd45487e0fb386b80e04b35ed59a21f60` |
| 3 | `def` | [geometric_morphism_direct_image_is_right_adjoint](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GeometricMorphism/Variant71915ede5c673695afb2c0be3987a0f89e33f2d1372794b92c7c4977f42f1410.lean/declarations/geometric-morphism-direct-image-is-right-adjoint--b34e67345701c5577829a335.md) | 26 | `declaration-track:b34e67345701c5577829a335883e8714d17124d2050a3a0937d68a102db2a164` |
| 4 | `structure` | [UnitCounitBridge](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GeometricMorphism/Variant71915ede5c673695afb2c0be3987a0f89e33f2d1372794b92c7c4977f42f1410.lean/declarations/unitcounitbridge--7f8cadcda422ed5609262a42.md) | 34 | `declaration-track:7f8cadcda422ed5609262a426a813f671fb917b7643df125a8c3b51524e9166d` |
| 5 | `def` | [UnitCounitBridge.toAdjunction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GeometricMorphism/Variant71915ede5c673695afb2c0be3987a0f89e33f2d1372794b92c7c4977f42f1410.lean/declarations/unitcounitbridge-toadjunction--747df1df4ea7198abab8be67.md) | 50 | `declaration-track:747df1df4ea7198abab8be67928e82aa32d7afacc7bfc8902c36b9051946e6c6` |
| 6 | `structure` | [KnowledgeSitesAdjunction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GeometricMorphism/Variant71915ede5c673695afb2c0be3987a0f89e33f2d1372794b92c7c4977f42f1410.lean/declarations/knowledgesitesadjunction--ae09b44d97847804cad3c9ff.md) | 64 | `declaration-track:ae09b44d97847804cad3c9ffa858838f4f107531dadafa779652c1671c715117` |
| 7 | `def` | [KnowledgeSitesAdjunction.adjunction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GeometricMorphism/Variant71915ede5c673695afb2c0be3987a0f89e33f2d1372794b92c7c4977f42f1410.lean/declarations/knowledgesitesadjunction-adjunction--47f49d5ff385da0c60c32538.md) | 78 | `declaration-track:47f49d5ff385da0c60c32538dbe01747196ea6e3412c5282d3ad995fed3b64e4` |
| 8 | `def` | [KnowledgeSitesAdjunction.direct_image_is_right_adjoint](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GeometricMorphism/Variant71915ede5c673695afb2c0be3987a0f89e33f2d1372794b92c7c4977f42f1410.lean/declarations/knowledgesitesadjunction-direct-image-is-right-adjoint--056790e7b83519f8f7f48b5e.md) | 86 | `declaration-track:056790e7b83519f8f7f48b5ee533edcf8e569e3ff6558b320939ef3a9a1d140e` |
| 9 | `theorem` | [KnowledgeSitesAdjunction.inverse_image_left_exact](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GeometricMorphism/Variant71915ede5c673695afb2c0be3987a0f89e33f2d1372794b92c7c4977f42f1410.lean/declarations/knowledgesitesadjunction-inverse-image-left-exact--06a8ab4a3270b0348b3a8182.md) | 95 | `result-track:06a8ab4a3270b0348b3a8182c3b343ee91529689d178891da0f2b94df26bee37` |
| 10 | `structure` | [SheafTruth](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GeometricMorphism/Variant71915ede5c673695afb2c0be3987a0f89e33f2d1372794b92c7c4977f42f1410.lean/declarations/sheaftruth--eb4639064dc157d77ae60c9a.md) | 105 | `declaration-track:eb4639064dc157d77ae60c9ac5e91a0b200778854b7e5db51e142ae36f972926` |
| 11 | `def` | [SheafTruth.pullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GeometricMorphism/Variant71915ede5c673695afb2c0be3987a0f89e33f2d1372794b92c7c4977f42f1410.lean/declarations/sheaftruth-pullback--11b4191612a3fea07927100f.md) | 113 | `declaration-track:11b4191612a3fea07927100f0168273ba65343433740e5dc5d91ce91d81fee83` |
| 12 | `theorem` | [KnowledgeSitesAdjunction.pullback_truth_preserved](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GeometricMorphism/Variant71915ede5c673695afb2c0be3987a0f89e33f2d1372794b92c7c4977f42f1410.lean/declarations/knowledgesitesadjunction-pullback-truth-preserved--1d6d509b3095dce3f63604fd.md) | 124 | `result-track:1d6d509b3095dce3f63604fdcecf1a9e34ee75b817d87ac408dfe9754cce2864` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
