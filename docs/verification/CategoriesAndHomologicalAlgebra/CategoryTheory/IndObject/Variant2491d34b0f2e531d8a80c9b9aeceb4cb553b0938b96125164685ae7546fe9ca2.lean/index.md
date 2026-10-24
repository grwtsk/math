# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.IndObject.Variant2491d34b0f2e531d8a80c9b9aeceb4cb553b0938b96125164685ae7546fe9ca2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b7e7f1ce6b73ec4e09cef03453a977be655219b0",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IndObject/Variant2491d34b0f2e531d8a80c9b9aeceb4cb553b0938b96125164685ae7546fe9ca2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IndObject/Variant2491d34b0f2e531d8a80c9b9aeceb4cb553b0938b96125164685ae7546fe9ca2.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IndObject/Variant2491d34b0f2e531d8a80c9b9aeceb4cb553b0938b96125164685ae7546fe9ca2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b7e7f1ce6b73ec4e09cef03453a977be655219b0`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IndObject/Variant2491d34b0f2e531d8a80c9b9aeceb4cb553b0938b96125164685ae7546fe9ca2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/IndObject/Variant2491d34b0f2e531d8a80c9b9aeceb4cb553b0938b96125164685ae7546fe9ca2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.FinallySmall` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Presheaf` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Filtered.Small` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.ObjectProperty.ClosedUnderIsomorphisms` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Finite` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Presheaf` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IndObjectPresentation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IndObject/Variant2491d34b0f2e531d8a80c9b9aeceb4cb553b0938b96125164685ae7546fe9ca2.lean/declarations/indobjectpresentation--67b4b31ef8b6b995f48f7ab4.md) | 62 | `declaration-track:67b4b31ef8b6b995f48f7ab4e6632ee9c13f2c22a77f9c27700de055ca9b1e96` |
| 2 | `def` | [ofCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IndObject/Variant2491d34b0f2e531d8a80c9b9aeceb4cb553b0938b96125164685ae7546fe9ca2.lean/declarations/ofcocone--99c40919b019140249844889.md) | 80 | `declaration-track:99c40919b0191402498448894bbf7ef30221011e25fab90d8e51c266b0ced7bf` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IndObject/Variant2491d34b0f2e531d8a80c9b9aeceb4cb553b0938b96125164685ae7546fe9ca2.lean/declarations/instance--784deab2c4d7062e46e57ec9.md) | 89 | `declaration-track:784deab2c4d7062e46e57ec929abd301198a65325e8ee92e8c39e4cf5386addd` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IndObject/Variant2491d34b0f2e531d8a80c9b9aeceb4cb553b0938b96125164685ae7546fe9ca2.lean/declarations/instance--44fe9deb7f23be3a28fbf00b.md) | 90 | `declaration-track:44fe9deb7f23be3a28fbf00b96be95887d22cd5daaa41076b2fcf9106ebfa4ea` |
| 5 | `def` | [cocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IndObject/Variant2491d34b0f2e531d8a80c9b9aeceb4cb553b0938b96125164685ae7546fe9ca2.lean/declarations/cocone--eabab42b83ce72b4044c8d6b.md) | 94 | `declaration-track:eabab42b83ce72b4044c8d6bf1b409d44975fe549a1ff712872b1b9d2cd412ee` |
| 6 | `def` | [coconeIsColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IndObject/Variant2491d34b0f2e531d8a80c9b9aeceb4cb553b0938b96125164685ae7546fe9ca2.lean/declarations/coconeiscolimit--a487de0f5e746f09bd1227cf.md) | 99 | `declaration-track:a487de0f5e746f09bd1227cf70917d1ea73c84bcac02b5eb4cba83d444149671` |
| 7 | `def` | [extend](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IndObject/Variant2491d34b0f2e531d8a80c9b9aeceb4cb553b0938b96125164685ae7546fe9ca2.lean/declarations/extend--45a5141b4383bf87bd475312.md) | 105 | `declaration-track:45a5141b4383bf87bd475312485e25a34eb71b0733459ac6c9eac161bc6159a8` |
| 8 | `def` | [toCostructuredArrow](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IndObject/Variant2491d34b0f2e531d8a80c9b9aeceb4cb553b0938b96125164685ae7546fe9ca2.lean/declarations/tocostructuredarrow--9a3b472f27cbbe922d2499a5.md) | 112 | `declaration-track:9a3b472f27cbbe922d2499a5b8fa17c411c200459f684ac6cc7254abb2144c2f` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IndObject/Variant2491d34b0f2e531d8a80c9b9aeceb4cb553b0938b96125164685ae7546fe9ca2.lean/declarations/instance--97d32fed8896f20fdccaed58.md) | 115 | `declaration-track:97d32fed8896f20fdccaed5833e33541acb079597d237623134d5da6ed6b922b` |
| 10 | `def` | [yoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IndObject/Variant2491d34b0f2e531d8a80c9b9aeceb4cb553b0938b96125164685ae7546fe9ca2.lean/declarations/yoneda--54b669208198c42b1a5c2222.md) | 120 | `declaration-track:54b669208198c42b1a5c2222741d55269287435de501354b9e2ef4c6ba02df09` |
| 11 | `structure` | [IsIndObject](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IndObject/Variant2491d34b0f2e531d8a80c9b9aeceb4cb553b0938b96125164685ae7546fe9ca2.lean/declarations/isindobject--81d126003a2a174e1e72182d.md) | 132 | `declaration-track:81d126003a2a174e1e72182d08681fc0780b5fcebff557f3ecc7d67d22720202` |
| 12 | `theorem` | [IsIndObject.mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IndObject/Variant2491d34b0f2e531d8a80c9b9aeceb4cb553b0938b96125164685ae7546fe9ca2.lean/declarations/isindobject-mk--bef7f1ef9c5b52ea1edfdd96.md) | 135 | `result-track:bef7f1ef9c5b52ea1edfdd96f179bbaa9bd36033639ac0a7d7f89a6136f7f110` |
| 13 | `theorem` | [isIndObject_yoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IndObject/Variant2491d34b0f2e531d8a80c9b9aeceb4cb553b0938b96125164685ae7546fe9ca2.lean/declarations/isindobject-yoneda--154fa3fdb0af466aa9833472.md) | 139 | `result-track:154fa3fdb0af466aa9833472ec7fce043046576bae3f12934579f4ca2eccfd86` |
| 14 | `theorem` | [map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IndObject/Variant2491d34b0f2e531d8a80c9b9aeceb4cb553b0938b96125164685ae7546fe9ca2.lean/declarations/map--4fadd364ba31cc0a232c224e.md) | 146 | `result-track:4fadd364ba31cc0a232c224ec3175a6e4d5274a4f6c8f65c7173791de7013af0` |
| 15 | `theorem` | [iff_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IndObject/Variant2491d34b0f2e531d8a80c9b9aeceb4cb553b0938b96125164685ae7546fe9ca2.lean/declarations/iff-of-iso--69611409ff2d8d55762cfa1d.md) | 149 | `result-track:69611409ff2d8d55762cfa1da6b2dc7dc670bc4060a54005bb876500114c9689` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IndObject/Variant2491d34b0f2e531d8a80c9b9aeceb4cb553b0938b96125164685ae7546fe9ca2.lean/declarations/instance--46289412018616b5fa5f9118.md) | 152 | `declaration-track:46289412018616b5fa5f9118769d24e2579dfda3e535b366937fc060b8495b1d` |
| 17 | `def` | [presentation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IndObject/Variant2491d34b0f2e531d8a80c9b9aeceb4cb553b0938b96125164685ae7546fe9ca2.lean/declarations/presentation--6ea1a52fef8a8448957f9bf9.md) | 156 | `declaration-track:6ea1a52fef8a8448957f9bf9c857ba739ad698ace789b8e57a4eead98eb66e2d` |
| 18 | `theorem` | [isFiltered](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IndObject/Variant2491d34b0f2e531d8a80c9b9aeceb4cb553b0938b96125164685ae7546fe9ca2.lean/declarations/isfiltered--b3b76e1c5ad37df166c8c2d0.md) | 159 | `result-track:b3b76e1c5ad37df166c8c2d01a918823245a97516f84ad83e61f3001dd656c73` |
| 19 | `theorem` | [finallySmall](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IndObject/Variant2491d34b0f2e531d8a80c9b9aeceb4cb553b0938b96125164685ae7546fe9ca2.lean/declarations/finallysmall--acc03e3eea74c8081e372287.md) | 162 | `result-track:acc03e3eea74c8081e37228765c26d520f3a53dcd3a6654658f3aadad9a37d26` |
| 20 | `theorem` | [isIndObject_of_isFiltered_of_finallySmall](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IndObject/Variant2491d34b0f2e531d8a80c9b9aeceb4cb553b0938b96125164685ae7546fe9ca2.lean/declarations/isindobject-of-isfiltered-of-finallysmall--c78eee9124c8adc12ff7dc5d.md) | 169 | `result-track:c78eee9124c8adc12ff7dc5dc5f8b84883e85eeef58681fdd48905fdce7a031c` |
| 21 | `theorem` | [isIndObject_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IndObject/Variant2491d34b0f2e531d8a80c9b9aeceb4cb553b0938b96125164685ae7546fe9ca2.lean/declarations/isindobject-iff--6f84e69164e7e279ebbaec94.md) | 189 | `result-track:6f84e69164e7e279ebbaec9437af11c55f03a06fe691e5bb4e32497c2be4b95b` |
| 22 | `theorem` | [isIndObject_limit_comp_yoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IndObject/Variant2491d34b0f2e531d8a80c9b9aeceb4cb553b0938b96125164685ae7546fe9ca2.lean/declarations/isindobject-limit-comp-yoneda--dfdda60b8bd2cb15c8713930.md) | 196 | `result-track:dfdda60b8bd2cb15c871393094c64a9ca90009a07d1c1b3c8fdc0b3bf069b972` |
| 23 | `lemma` | [isIndObject_iff_preservesFiniteLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IndObject/Variant2491d34b0f2e531d8a80c9b9aeceb4cb553b0938b96125164685ae7546fe9ca2.lean/declarations/isindobject-iff-preservesfinitelimits--385aab7a1053bb9a9530f2e9.md) | 208 | `result-track:385aab7a1053bb9a9530f2e9c80f5e8a041af252377dcc335d89b83394ac1df1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
