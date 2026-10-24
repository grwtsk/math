# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Yoneda.Variant71992ee3d9daf082d5f4dea1610c9b25486e5c71d82507d6986ac8d0fc43e1c4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fb551b821cabacf0cbe05a24d234e969123c98c0",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant71992ee3d9daf082d5f4dea1610c9b25486e5c71d82507d6986ac8d0fc43e1c4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant71992ee3d9daf082d5f4dea1610c9b25486e5c71d82507d6986ac8d0fc43e1c4.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant71992ee3d9daf082d5f4dea1610c9b25486e5c71d82507d6986ac8d0fc43e1c4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fb551b821cabacf0cbe05a24d234e969123c98c0`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant71992ee3d9daf082d5f4dea1610c9b25486e5c71d82507d6986ac8d0fc43e1c4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant71992ee3d9daf082d5f4dea1610c9b25486e5c71d82507d6986ac8d0fc43e1c4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.ShortComplex.Ab` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.Yoneda.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Shift.ShiftedHomOpposite` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Triangulated.HomologicalFunctor` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Triangulated.Opposite.Pretriangulated` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant71992ee3d9daf082d5f4dea1610c9b25486e5c71d82507d6986ac8d0fc43e1c4.lean/declarations/instance--e0bb760a383f4a3fa94c9461.md) | 38 | `declaration-track:e0bb760a383f4a3fa94c9461705d38b17903f9ee65b8baf0cd8763a10184bdc3` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant71992ee3d9daf082d5f4dea1610c9b25486e5c71d82507d6986ac8d0fc43e1c4.lean/declarations/instance--5a50fc2441f340830a418ea5.md) | 45 | `declaration-track:5a50fc2441f340830a418ea52bfb37aa00e76c445d58046da6f5de407918fa7d` |
| 3 | `lemma` | [preadditiveYoneda_map_distinguished](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant71992ee3d9daf082d5f4dea1610c9b25486e5c71d82507d6986ac8d0fc43e1c4.lean/declarations/preadditiveyoneda-map-distinguished--b1ddc5c7824221a52978c0d2.md) | 52 | `result-track:b1ddc5c7824221a52978c0d2d1b35f951e3f3fc22be1471ca60a158fbf0f78d1` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant71992ee3d9daf082d5f4dea1610c9b25486e5c71d82507d6986ac8d0fc43e1c4.lean/declarations/instance--68ebf90ccb046a34d37f0fd3.md) | 59 | `declaration-track:68ebf90ccb046a34d37f0fd30fe9a628a8cffdce749ed7262d59606e20f4ef03` |
| 5 | `lemma` | [preadditiveCoyoneda_homologySequenceδ_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant71992ee3d9daf082d5f4dea1610c9b25486e5c71d82507d6986ac8d0fc43e1c4.lean/declarations/preadditivecoyoneda-homologysequence-apply--9769136f7bc15dc099af1380.md) | 62 | `result-track:9769136f7bc15dc099af138023b520bc55831eba4c3091c5f6da06abf9a73754` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant71992ee3d9daf082d5f4dea1610c9b25486e5c71d82507d6986ac8d0fc43e1c4.lean/declarations/instance--8850c5e1c9875905b4c60029.md) | 72 | `declaration-track:8850c5e1c9875905b4c60029df96cc147e0a13756d399c533062df2d68f03d6a` |
| 7 | `lemma` | [preadditiveYoneda_shiftMap_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant71992ee3d9daf082d5f4dea1610c9b25486e5c71d82507d6986ac8d0fc43e1c4.lean/declarations/preadditiveyoneda-shiftmap-apply--d9405297d96de49032a51f4e.md) | 84 | `result-track:d9405297d96de49032a51f4ee4e86360301f573cc55bd68f15fb87f8d5091725` |
| 8 | `lemma` | [preadditiveYoneda_homologySequenceδ_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant71992ee3d9daf082d5f4dea1610c9b25486e5c71d82507d6986ac8d0fc43e1c4.lean/declarations/preadditiveyoneda-homologysequence-apply--17050778a55c6ed8c92ea361.md) | 91 | `result-track:17050778a55c6ed8c92ea36120b1888b8fa43e35d6036ce3fc471815ae513884` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
