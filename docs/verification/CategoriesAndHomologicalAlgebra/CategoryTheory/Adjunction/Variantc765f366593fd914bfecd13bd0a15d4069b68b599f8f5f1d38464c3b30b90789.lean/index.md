# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Adjunction.Variantc765f366593fd914bfecd13bd0a15d4069b68b599f8f5f1d38464c3b30b90789

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d559014dd15ce3fd9a78cb24068dd7a728ed8888",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantc765f366593fd914bfecd13bd0a15d4069b68b599f8f5f1d38464c3b30b90789.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantc765f366593fd914bfecd13bd0a15d4069b68b599f8f5f1d38464c3b30b90789.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantc765f366593fd914bfecd13bd0a15d4069b68b599f8f5f1d38464c3b30b90789.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d559014dd15ce3fd9a78cb24068dd7a728ed8888`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantc765f366593fd914bfecd13bd0a15d4069b68b599f8f5f1d38464c3b30b90789.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantc765f366593fd914bfecd13bd0a15d4069b68b599f8f5f1d38464c3b30b90789.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Category.Cat` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Adjunction.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.ConnectedComponents` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [typeToCatObjectsAdjHomEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantc765f366593fd914bfecd13bd0a15d4069b68b599f8f5f1d38464c3b30b90789.lean/declarations/typetocatobjectsadjhomequiv--153cae017df2458f9c96a588.md) | 37 | `declaration-track:153cae017df2458f9c96a588e3401dc015404e2e8373339118a006b841171960` |
| 2 | `def` | [typeToCatObjectsAdjCounitApp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantc765f366593fd914bfecd13bd0a15d4069b68b599f8f5f1d38464c3b30b90789.lean/declarations/typetocatobjectsadjcounitapp--e82438df42c7ad321a59ad61.md) | 45 | `declaration-track:e82438df42c7ad321a59ad6123dc8ebc3310e65de22cbd626b1c476d353cbb22` |
| 3 | `def` | [typeToCatObjectsAdj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantc765f366593fd914bfecd13bd0a15d4069b68b599f8f5f1d38464c3b30b90789.lean/declarations/typetocatobjectsadj--3c4da03a069abddede853d98.md) | 50 | `declaration-track:3c4da03a069abddede853d986993a01cee77d1245ea31b80c4341545419e7025` |
| 4 | `def` | [connectedComponents](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantc765f366593fd914bfecd13bd0a15d4069b68b599f8f5f1d38464c3b30b90789.lean/declarations/connectedcomponents--994ae73f87353948181b99c9.md) | 62 | `declaration-track:994ae73f87353948181b99c927e1d05a8245f2374889d2a0cad0931bf908889f` |
| 5 | `def` | [connectedComponentsTypeToCatAdj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantc765f366593fd914bfecd13bd0a15d4069b68b599f8f5f1d38464c3b30b90789.lean/declarations/connectedcomponentstypetocatadj--104dbb0ca7028a0276aad016.md) | 69 | `declaration-track:104dbb0ca7028a0276aad0168784fbdbe31f9ef46f55aebcb177fc6777435cd9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
