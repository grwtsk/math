# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Right.Variantb6cace285d54370fcfff86522569814dcede4292e0f061b9e14870eb6378c663

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "89bc8e957914d4dc24e423bc702f2fb8600c9a28",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Right/Variantb6cace285d54370fcfff86522569814dcede4292e0f061b9e14870eb6378c663.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Right/Variantb6cace285d54370fcfff86522569814dcede4292e0f061b9e14870eb6378c663.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Right/Variantb6cace285d54370fcfff86522569814dcede4292e0f061b9e14870eb6378c663.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `89bc8e957914d4dc24e423bc702f2fb8600c9a28`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Right/Variantb6cace285d54370fcfff86522569814dcede4292e0f061b9e14870eb6378c663.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Right/Variantb6cace285d54370fcfff86522569814dcede4292e0f061b9e14870eb6378c663.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monad.Adjunction` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monad.Equalizer` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [unitEqualises](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Right/Variantb6cace285d54370fcfff86522569814dcede4292e0f061b9e14870eb6378c663.lean/declarations/unitequalises--278c358d87095a319a8061ae.md) | 78 | `declaration-track:278c358d87095a319a8061aed8b09afb42e6660011ce3e262c7ba37433786002` |
| 2 | `def` | [otherMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Right/Variantb6cace285d54370fcfff86522569814dcede4292e0f061b9e14870eb6378c663.lean/declarations/othermap--0f11441ae85588e7a37e17c6.md) | 101 | `declaration-track:0f11441ae85588e7a37e17c66e1a4daaec84a739d0c5d4db304181e33c8f950f` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Right/Variantb6cace285d54370fcfff86522569814dcede4292e0f061b9e14870eb6378c663.lean/declarations/instance--925adf448f3e6ad8bc78ea8b.md) | 107 | `declaration-track:925adf448f3e6ad8bc78ea8b82cc1bf2a91cb3b909a9eccc41eb027f58e47607` |
| 4 | `def` | [constructRightAdjointObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Right/Variantb6cace285d54370fcfff86522569814dcede4292e0f061b9e14870eb6378c663.lean/declarations/constructrightadjointobj--8147a7dfa4bdac38ea5421a4.md) | 118 | `declaration-track:8147a7dfa4bdac38ea5421a447ee280e7fdad59abc2b60d54fb0b9016aec61d9` |
| 5 | `def` | [constructRightAdjointEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Right/Variantb6cace285d54370fcfff86522569814dcede4292e0f061b9e14870eb6378c663.lean/declarations/constructrightadjointequiv--efa2323f50c150a0e57bfcb1.md) | 123 | `declaration-track:efa2323f50c150a0e57bfcb18215bcddf8240027b8e78bf3edf582e19bcff685` |
| 6 | `def` | [constructRightAdjoint](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Right/Variantb6cace285d54370fcfff86522569814dcede4292e0f061b9e14870eb6378c663.lean/declarations/constructrightadjoint--3f394f1f73c67c118d68782e.md) | 148 | `declaration-track:3f394f1f73c67c118d68782e54110dc34559cb53d9fa10d588470d498528f637` |
| 7 | `lemma` | [isLeftAdjoint_triangle_lift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Right/Variantb6cace285d54370fcfff86522569814dcede4292e0f061b9e14870eb6378c663.lean/declarations/isleftadjoint-triangle-lift--8f3adcaeb51148a8abbdde42.md) | 170 | `result-track:8f3adcaeb51148a8abbdde42fa353d97577ee503435d792135d600261c7389b2` |
| 8 | `lemma` | [isLeftAdjoint_triangle_lift_comonadic](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Right/Variantb6cace285d54370fcfff86522569814dcede4292e0f061b9e14870eb6378c663.lean/declarations/isleftadjoint-triangle-lift-comonadic--5bb35b9521683fdcf96088c6.md) | 181 | `result-track:5bb35b9521683fdcf96088c6c0601b8c2c2c2302f6a03b7e684633a1478fa254` |
| 9 | `lemma` | [isLeftAdjoint_square_lift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Right/Variantb6cace285d54370fcfff86522569814dcede4292e0f061b9e14870eb6378c663.lean/declarations/isleftadjoint-square-lift--f51bb47443bf40d0ed92fef8.md) | 218 | `result-track:f51bb47443bf40d0ed92fef86d39a3fb6d15cf1386d260e385438806b7ef3794` |
| 10 | `lemma` | [isLeftAdjoint_square_lift_comonadic](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Right/Variantb6cace285d54370fcfff86522569814dcede4292e0f061b9e14870eb6378c663.lean/declarations/isleftadjoint-square-lift-comonadic--e5d42c4b282cdaf416a6539b.md) | 240 | `result-track:e5d42c4b282cdaf416a6539b72625520f8480c64f84af95cb9b809d7fd89c4c0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
