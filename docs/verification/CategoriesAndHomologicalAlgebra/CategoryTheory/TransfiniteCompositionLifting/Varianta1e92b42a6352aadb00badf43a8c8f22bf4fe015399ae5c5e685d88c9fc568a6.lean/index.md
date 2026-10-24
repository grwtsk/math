# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.TransfiniteCompositionLifting.Varianta1e92b42a6352aadb00badf43a8c8f22bf4fe015399ae5c5e685d88c9fc568a6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "80682022a65435ca39d9d09f9532730cbe5f3c63",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteCompositionLifting/Varianta1e92b42a6352aadb00badf43a8c8f22bf4fe015399ae5c5e685d88c9fc568a6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteCompositionLifting/Varianta1e92b42a6352aadb00badf43a8c8f22bf4fe015399ae5c5e685d88c9fc568a6.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteCompositionLifting/Varianta1e92b42a6352aadb00badf43a8c8f22bf4fe015399ae5c5e685d88c9fc568a6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `80682022a65435ca39d9d09f9532730cbe5f3c63`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteCompositionLifting/Varianta1e92b42a6352aadb00badf43a8c8f22bf4fe015399ae5c5e685d88c9fc568a6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteCompositionLifting/Varianta1e92b42a6352aadb00badf43a8c8f22bf4fe015399ae5c5e685d88c9fc568a6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.SmallObject.WellOrderInductionData` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.MorphismProperty.LiftingProperty` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.MorphismProperty.TransfiniteComposition` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Preorder.WellOrderContinuous` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SqStruct](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteCompositionLifting/Varianta1e92b42a6352aadb00badf43a8c8f22bf4fe015399ae5c5e685d88c9fc568a6.lean/declarations/sqstruct--aa96ce84784d70b506773b02.md) | 98 | `declaration-track:aa96ce84784d70b506773b02e6493c8f14e9c91117833cb697f2cc09726f30c8` |
| 2 | `lemma` | [w](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteCompositionLifting/Varianta1e92b42a6352aadb00badf43a8c8f22bf4fe015399ae5c5e685d88c9fc568a6.lean/declarations/w--86f0125730449106d35322d4.md) | 112 | `result-track:86f0125730449106d35322d4f5433eed8dadaab3134ecc06d2153b1c17468425` |
| 3 | `lemma` | [sq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteCompositionLifting/Varianta1e92b42a6352aadb00badf43a8c8f22bf4fe015399ae5c5e685d88c9fc568a6.lean/declarations/sq--23faedeb7d3c34b404044f59.md) | 129 | `result-track:23faedeb7d3c34b404044f59e57ea5e2d08e755ff1b2c43acdf883c47115bfec` |
| 4 | `def` | [map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteCompositionLifting/Varianta1e92b42a6352aadb00badf43a8c8f22bf4fe015399ae5c5e685d88c9fc568a6.lean/declarations/map--156095a6b94c4ee11b9eadce.md) | 135 | `declaration-track:156095a6b94c4ee11b9eadcec7ab505c49e4a4103c86cc2f74c794be423c1dfd` |
| 5 | `def` | [sqFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteCompositionLifting/Varianta1e92b42a6352aadb00badf43a8c8f22bf4fe015399ae5c5e685d88c9fc568a6.lean/declarations/sqfunctor--88ae95af2a9e9eeccf5f4fe8.md) | 145 | `declaration-track:88ae95af2a9e9eeccf5f4fe83dd39690c623b293a80b8d5f7508136514d71a5f` |
| 6 | `def` | [liftHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteCompositionLifting/Varianta1e92b42a6352aadb00badf43a8c8f22bf4fe015399ae5c5e685d88c9fc568a6.lean/declarations/lifthom--7218606ae5db64ccbe781ee2.md) | 157 | `declaration-track:7218606ae5db64ccbe781ee27aa9d351d7b5c1ad23692634a0969b5886d20e22` |
| 7 | `lemma` | [liftHom_fac](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteCompositionLifting/Varianta1e92b42a6352aadb00badf43a8c8f22bf4fe015399ae5c5e685d88c9fc568a6.lean/declarations/lifthom-fac--ab0d1a2417b1a5208f77a251.md) | 167 | `result-track:ab0d1a2417b1a5208f77a251a3b1809a0feed71dc8fc4c5a8f480c748e992b92` |
| 8 | `def` | [lift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteCompositionLifting/Varianta1e92b42a6352aadb00badf43a8c8f22bf4fe015399ae5c5e685d88c9fc568a6.lean/declarations/lift--a7b27a3c70048200dd56b6c6.md) | 173 | `declaration-track:a7b27a3c70048200dd56b6c655e4e33b0169770efaf73efbed70d8ae43e58d55` |
| 9 | `lemma` | [map_lift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteCompositionLifting/Varianta1e92b42a6352aadb00badf43a8c8f22bf4fe015399ae5c5e685d88c9fc568a6.lean/declarations/map-lift--14ddbc9464ff04610878aea3.md) | 186 | `result-track:14ddbc9464ff04610878aea35a811df6c03970340ba0dd7df435dd96b4f0bdd5` |
| 10 | `def` | [wellOrderInductionData](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteCompositionLifting/Varianta1e92b42a6352aadb00badf43a8c8f22bf4fe015399ae5c5e685d88c9fc568a6.lean/declarations/wellorderinductiondata--2027237cfecc58ec906d739c.md) | 198 | `declaration-track:2027237cfecc58ec906d739cc5d26a4e89b02180093623888e074c0e688d813b` |
| 11 | `lemma` | [hasLift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteCompositionLifting/Varianta1e92b42a6352aadb00badf43a8c8f22bf4fe015399ae5c5e685d88c9fc568a6.lean/declarations/haslift--a94d578c664dcc0c85937b4b.md) | 216 | `result-track:a94d578c664dcc0c85937b4bfe40b22cd81bd4426efe2649ce078e76d0caae0e` |
| 12 | `lemma` | [hasLiftingProperty_ι_app_bot](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteCompositionLifting/Varianta1e92b42a6352aadb00badf43a8c8f22bf4fe015399ae5c5e685d88c9fc568a6.lean/declarations/hasliftingproperty-app-bot--557bc19d9e8583745769f189.md) | 230 | `result-track:557bc19d9e8583745769f189aa223528ac9935b2d1b78f21b8bdb229374a1ade` |
| 13 | `instance` | [isStableUnderTransfiniteCompositionOfShape_llp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteCompositionLifting/Varianta1e92b42a6352aadb00badf43a8c8f22bf4fe015399ae5c5e685d88c9fc568a6.lean/declarations/isstableundertransfinitecompositionofshape-llp--407439c17bf29642a2aeaabc.md) | 242 | `declaration-track:407439c17bf29642a2aeaabc45657c18be6408b2ce5d1df316b8fb99643b39fa` |
| 14 | `lemma` | [transfiniteCompositionsOfShape_le_llp_rlp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteCompositionLifting/Varianta1e92b42a6352aadb00badf43a8c8f22bf4fe015399ae5c5e685d88c9fc568a6.lean/declarations/transfinitecompositionsofshape-le-llp-rlp--1b7d90bca95e37a3323b584a.md) | 252 | `result-track:1b7d90bca95e37a3323b584acc4570d4c0e56a0f3d64d4520f0a179d444c713f` |
| 15 | `lemma` | [transfiniteCompositionsOfShape_pushouts_coproducts_le_llp_rlp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteCompositionLifting/Varianta1e92b42a6352aadb00badf43a8c8f22bf4fe015399ae5c5e685d88c9fc568a6.lean/declarations/transfinitecompositionsofshape-pushouts-coproducts-le-llp-rlp--203423ceaeb8acc2c0545020.md) | 258 | `result-track:203423ceaeb8acc2c05450208f7ab2c202939167774473de86bd72cde256b0f2` |
| 16 | `lemma` | [retracts_transfiniteCompositionsOfShape_pushouts_coproducts_le_llp_rlp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteCompositionLifting/Varianta1e92b42a6352aadb00badf43a8c8f22bf4fe015399ae5c5e685d88c9fc568a6.lean/declarations/retracts-transfinitecompositionsofshape-pushouts-coproducts-le-llp-rlp--33fa5fa91deb1484669094fb.md) | 262 | `result-track:33fa5fa91deb1484669094fb2ae61dc244d9341eb78522a1446963703a87ead9` |
| 17 | `lemma` | [transfiniteCompositions_le_llp_rlp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteCompositionLifting/Varianta1e92b42a6352aadb00badf43a8c8f22bf4fe015399ae5c5e685d88c9fc568a6.lean/declarations/transfinitecompositions-le-llp-rlp--02b7e851deee0a94e9ef29b7.md) | 267 | `result-track:02b7e851deee0a94e9ef29b71670d7ff9924fd247f5c806c9b4becbe54b37692` |
| 18 | `lemma` | [transfiniteCompositions_pushouts_coproducts_le_llp_rlp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteCompositionLifting/Varianta1e92b42a6352aadb00badf43a8c8f22bf4fe015399ae5c5e685d88c9fc568a6.lean/declarations/transfinitecompositions-pushouts-coproducts-le-llp-rlp--8207de28446ad2dd14ec4a2a.md) | 274 | `result-track:8207de28446ad2dd14ec4a2a8fbe6683a6a0a7016850b00464e8c753dc56847d` |
| 19 | `lemma` | [retracts_transfiniteComposition_pushouts_coproducts_le_llp_rlp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteCompositionLifting/Varianta1e92b42a6352aadb00badf43a8c8f22bf4fe015399ae5c5e685d88c9fc568a6.lean/declarations/retracts-transfinitecomposition-pushouts-coproducts-le-llp-rlp--de91c2a2c477896b51a62844.md) | 278 | `result-track:de91c2a2c477896b51a62844bcc05ce99aa08a4519d7708e3d05f89ad695dd78` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
