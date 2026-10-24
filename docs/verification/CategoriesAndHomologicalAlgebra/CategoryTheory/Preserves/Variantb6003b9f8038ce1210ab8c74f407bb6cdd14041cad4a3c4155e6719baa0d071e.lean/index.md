# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Preserves.Variantb6003b9f8038ce1210ab8c74f407bb6cdd14041cad4a3c4155e6719baa0d071e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6d1fcdbcf6d5a681add990f6d7a727e34385ace5",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variantb6003b9f8038ce1210ab8c74f407bb6cdd14041cad4a3c4155e6719baa0d071e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variantb6003b9f8038ce1210ab8c74f407bb6cdd14041cad4a3c4155e6719baa0d071e.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variantb6003b9f8038ce1210ab8c74f407bb6cdd14041cad4a3c4155e6719baa0d071e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6d1fcdbcf6d5a681add990f6d7a727e34385ace5`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variantb6003b9f8038ce1210ab8c74f407bb6cdd14041cad4a3c4155e6719baa0d071e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variantb6003b9f8038ce1210ab8c74f407bb6cdd14041cad4a3c4155e6719baa0d071e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Preadditive.Projective.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Functor.PreservesProjectiveObjects](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variantb6003b9f8038ce1210ab8c74f407bb6cdd14041cad4a3c4155e6719baa0d071e.lean/declarations/functor-preservesprojectiveobjects--7cbdb4034247112246c56172.md) | 34 | `declaration-track:7cbdb4034247112246c56172ff7a259a8fd13ad01cc28054d04896551a81021b` |
| 2 | `instance` | [Functor.projective_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variantb6003b9f8038ce1210ab8c74f407bb6cdd14041cad4a3c4155e6719baa0d071e.lean/declarations/functor-projective-obj--e5403e5b3a0e1576d6555047.md) | 39 | `declaration-track:e5403e5b3a0e1576d6555047c405ba4efb31da48f102141fe0097c50b56096ed` |
| 3 | `theorem` | [Functor.projective_obj_of_projective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variantb6003b9f8038ce1210ab8c74f407bb6cdd14041cad4a3c4155e6719baa0d071e.lean/declarations/functor-projective-obj-of-projective--2f85d93154b49293e900b4a7.md) | 44 | `result-track:2f85d93154b49293e900b4a7ac292925e5858b3e726f670dafe469493ad7fa6a` |
| 4 | `instance` | [Functor.preservesProjectiveObjects_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variantb6003b9f8038ce1210ab8c74f407bb6cdd14041cad4a3c4155e6719baa0d071e.lean/declarations/functor-preservesprojectiveobjects-comp--bdb6ed19a3ac12c1d74b42e0.md) | 48 | `declaration-track:bdb6ed19a3ac12c1d74b42e07933e51a8f706302f720a5ca5b2d53aed8ea2aa4` |
| 5 | `theorem` | [Functor.preservesProjectiveObjects_of_adjunction_of_preservesEpimorphisms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variantb6003b9f8038ce1210ab8c74f407bb6cdd14041cad4a3c4155e6719baa0d071e.lean/declarations/functor-preservesprojectiveobjects-of-adjunction-of-preservesepimorphism--19cb694ce097a38c6b67d622.md) | 53 | `result-track:19cb694ce097a38c6b67d6224aaca9580e10cc38d8cf5445a58edf1a77c61b7e` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variantb6003b9f8038ce1210ab8c74f407bb6cdd14041cad4a3c4155e6719baa0d071e.lean/declarations/instance--dc41521d055da96f68abb684.md) | 58 | `declaration-track:dc41521d055da96f68abb6848e6ebd0c96322063a93aeb312dd28ecde540a69c` |
| 7 | `theorem` | [Functor.preservesEpimorphisms_of_adjunction_of_preservesProjectiveObjects](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variantb6003b9f8038ce1210ab8c74f407bb6cdd14041cad4a3c4155e6719baa0d071e.lean/declarations/functor-preservesepimorphisms-of-adjunction-of-preservesprojectiveobject--682a775bff475492e4bc1e4a.md) | 62 | `result-track:682a775bff475492e4bc1e4a2003c990618e19f5d75c43ccf9d2a1420d9e0320` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
