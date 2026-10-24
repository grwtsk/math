# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.TransfiniteCompositionLifting.Variant3af88ec6e77007a52d886c7b76045da1161bce88c7b7a1c8c2fa9bbda940ddb3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ab3a793cdef7f4a08594380fd58878ced27a6e58",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteCompositionLifting/Variant3af88ec6e77007a52d886c7b76045da1161bce88c7b7a1c8c2fa9bbda940ddb3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteCompositionLifting/Variant3af88ec6e77007a52d886c7b76045da1161bce88c7b7a1c8c2fa9bbda940ddb3.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteCompositionLifting/Variant3af88ec6e77007a52d886c7b76045da1161bce88c7b7a1c8c2fa9bbda940ddb3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ab3a793cdef7f4a08594380fd58878ced27a6e58`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteCompositionLifting/Variant3af88ec6e77007a52d886c7b76045da1161bce88c7b7a1c8c2fa9bbda940ddb3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteCompositionLifting/Variant3af88ec6e77007a52d886c7b76045da1161bce88c7b7a1c8c2fa9bbda940ddb3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.SmallObject.WellOrderInductionData` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.MorphismProperty.LiftingProperty` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.MorphismProperty.TransfiniteComposition` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Preorder.WellOrderContinuous` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SqStruct](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteCompositionLifting/Variant3af88ec6e77007a52d886c7b76045da1161bce88c7b7a1c8c2fa9bbda940ddb3.lean/declarations/sqstruct--2664d896c7943c7e21c7aa46.md) | 90 | `declaration-track:2664d896c7943c7e21c7aa46aa2109ee86ad946304ff3da91ab3c01103f9fb8b` |
| 2 | `lemma` | [w](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteCompositionLifting/Variant3af88ec6e77007a52d886c7b76045da1161bce88c7b7a1c8c2fa9bbda940ddb3.lean/declarations/w--6969f7f4a41bc6397e1079b8.md) | 104 | `result-track:6969f7f4a41bc6397e1079b8ad495b13ff8766a50b66787b110400aba8e6d6e2` |
| 3 | `lemma` | [sq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteCompositionLifting/Variant3af88ec6e77007a52d886c7b76045da1161bce88c7b7a1c8c2fa9bbda940ddb3.lean/declarations/sq--286f7e50d76d2cee43390884.md) | 121 | `result-track:286f7e50d76d2cee43390884eca85cf53a74a25b697ff3e7b40fd4312b13ff6b` |
| 4 | `def` | [map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteCompositionLifting/Variant3af88ec6e77007a52d886c7b76045da1161bce88c7b7a1c8c2fa9bbda940ddb3.lean/declarations/map--4438cf84835c59c6e0800799.md) | 127 | `declaration-track:4438cf84835c59c6e08007993b52d0705e0ba44f3f8ec0dd011d02b39e41a00a` |
| 5 | `def` | [sqFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteCompositionLifting/Variant3af88ec6e77007a52d886c7b76045da1161bce88c7b7a1c8c2fa9bbda940ddb3.lean/declarations/sqfunctor--704d0fbe5534b08985b01a4a.md) | 137 | `declaration-track:704d0fbe5534b08985b01a4af1add66b4dab9781a7ac04c7d4452900e8a5315b` |
| 6 | `def` | [liftHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteCompositionLifting/Variant3af88ec6e77007a52d886c7b76045da1161bce88c7b7a1c8c2fa9bbda940ddb3.lean/declarations/lifthom--27c13e6de17578141db8ff7f.md) | 149 | `declaration-track:27c13e6de17578141db8ff7fef9d50309fb31b65657868abda761af55c645988` |
| 7 | `lemma` | [liftHom_fac](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteCompositionLifting/Variant3af88ec6e77007a52d886c7b76045da1161bce88c7b7a1c8c2fa9bbda940ddb3.lean/declarations/lifthom-fac--e72603070ee442db63516de8.md) | 159 | `result-track:e72603070ee442db63516de8bf218b5e95720249d231018d7ed7b2dcb090c04e` |
| 8 | `def` | [lift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteCompositionLifting/Variant3af88ec6e77007a52d886c7b76045da1161bce88c7b7a1c8c2fa9bbda940ddb3.lean/declarations/lift--e6bf2bed9c4eb2852db37452.md) | 165 | `declaration-track:e6bf2bed9c4eb2852db3745257cad7612899ad7f10a7455fa8303513663b5eee` |
| 9 | `lemma` | [map_lift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteCompositionLifting/Variant3af88ec6e77007a52d886c7b76045da1161bce88c7b7a1c8c2fa9bbda940ddb3.lean/declarations/map-lift--d788ba402c34316824e3fc0c.md) | 178 | `result-track:d788ba402c34316824e3fc0ce9adfc0c21da14be010eb405cae1376791173184` |
| 10 | `def` | [wellOrderInductionData](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteCompositionLifting/Variant3af88ec6e77007a52d886c7b76045da1161bce88c7b7a1c8c2fa9bbda940ddb3.lean/declarations/wellorderinductiondata--4937e2241bbdc9a6d9a240a8.md) | 190 | `declaration-track:4937e2241bbdc9a6d9a240a8fe49adae7dccfe025681643c1bf1cba59a07b765` |
| 11 | `lemma` | [hasLift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteCompositionLifting/Variant3af88ec6e77007a52d886c7b76045da1161bce88c7b7a1c8c2fa9bbda940ddb3.lean/declarations/haslift--58d72df6569254d841c6dbfc.md) | 208 | `result-track:58d72df6569254d841c6dbfc14bbc6611a42e9faf1c0b34867a67f39ad8e686f` |
| 12 | `lemma` | [hasLiftingProperty_ι_app_bot](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteCompositionLifting/Variant3af88ec6e77007a52d886c7b76045da1161bce88c7b7a1c8c2fa9bbda940ddb3.lean/declarations/hasliftingproperty-app-bot--af69c80299482899c113a4d0.md) | 222 | `result-track:af69c80299482899c113a4d01c1c65d7b7608b9511d4213553fb448af25d3587` |
| 13 | `instance` | [isStableUnderTransfiniteCompositionOfShape_llp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteCompositionLifting/Variant3af88ec6e77007a52d886c7b76045da1161bce88c7b7a1c8c2fa9bbda940ddb3.lean/declarations/isstableundertransfinitecompositionofshape-llp--63241abfcde01f954d84220a.md) | 234 | `declaration-track:63241abfcde01f954d84220a31cb4299d35b0942735ad4b9b3789de001da0d5a` |
| 14 | `lemma` | [transfiniteCompositionsOfShape_le_llp_rlp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteCompositionLifting/Variant3af88ec6e77007a52d886c7b76045da1161bce88c7b7a1c8c2fa9bbda940ddb3.lean/declarations/transfinitecompositionsofshape-le-llp-rlp--608a9f2f16a22aab007dc1a3.md) | 244 | `result-track:608a9f2f16a22aab007dc1a3ce16eaff0ec35ece7d573282da2c10a0302158fc` |
| 15 | `lemma` | [transfiniteCompositionsOfShape_pushouts_coproducts_le_llp_rlp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteCompositionLifting/Variant3af88ec6e77007a52d886c7b76045da1161bce88c7b7a1c8c2fa9bbda940ddb3.lean/declarations/transfinitecompositionsofshape-pushouts-coproducts-le-llp-rlp--500bb0aad08abdb8810f967a.md) | 250 | `result-track:500bb0aad08abdb8810f967acb7d570ca3e990b36614f2811658c9871c0c1a2d` |
| 16 | `lemma` | [retracts_transfiniteCompositionsOfShape_pushouts_coproducts_le_llp_rlp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteCompositionLifting/Variant3af88ec6e77007a52d886c7b76045da1161bce88c7b7a1c8c2fa9bbda940ddb3.lean/declarations/retracts-transfinitecompositionsofshape-pushouts-coproducts-le-llp-rlp--9f5056cee662e72fd861aee9.md) | 254 | `result-track:9f5056cee662e72fd861aee90df7d51fee26a29df7f713dbbed87f684c8e9258` |
| 17 | `lemma` | [transfiniteCompositions_le_llp_rlp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteCompositionLifting/Variant3af88ec6e77007a52d886c7b76045da1161bce88c7b7a1c8c2fa9bbda940ddb3.lean/declarations/transfinitecompositions-le-llp-rlp--c49760411c1e25b3e20a8b45.md) | 259 | `result-track:c49760411c1e25b3e20a8b45d372940916b133f0a7cd885c0a04cb626e7ee6e9` |
| 18 | `lemma` | [transfiniteCompositions_pushouts_coproducts_le_llp_rlp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteCompositionLifting/Variant3af88ec6e77007a52d886c7b76045da1161bce88c7b7a1c8c2fa9bbda940ddb3.lean/declarations/transfinitecompositions-pushouts-coproducts-le-llp-rlp--b388a0eed09ee4c993db7671.md) | 266 | `result-track:b388a0eed09ee4c993db767151ef220c2540555857971c38f46b6eb30e2201e5` |
| 19 | `lemma` | [retracts_transfiniteComposition_pushouts_coproducts_le_llp_rlp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteCompositionLifting/Variant3af88ec6e77007a52d886c7b76045da1161bce88c7b7a1c8c2fa9bbda940ddb3.lean/declarations/retracts-transfinitecomposition-pushouts-coproducts-le-llp-rlp--d9e7a0cf07e758853e493e80.md) | 270 | `result-track:d9e7a0cf07e758853e493e80f552e7d5ac77064e87224986444e904a040a0f62` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
