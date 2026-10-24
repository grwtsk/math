# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Categories.Morphisms.BoundaryComparison.Variant0865c8022a8e323b.FiniteSingletonWitness

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aa8e90849782cf2e8cb000140a3946a0d0a52618",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Categories/Morphisms/BoundaryComparison/Variant0865c8022a8e323b/FiniteSingletonWitness.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Categories/Morphisms/BoundaryComparison/Variant0865c8022a8e323b/FiniteSingletonWitness.lean/index.md) · [Full source](../../../../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Categories/Morphisms/BoundaryComparison/Variant0865c8022a8e323b/FiniteSingletonWitness.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aa8e90849782cf2e8cb000140a3946a0d0a52618`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Categories/Morphisms/BoundaryComparison/Variant0865c8022a8e323b/FiniteSingletonWitness.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Categories/Morphisms/BoundaryComparison/Variant0865c8022a8e323b/FiniteSingletonWitness.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Equivalence` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.ZeroMorphisms` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Types.Basic` — import line 19; external provider; requires a separately pinned dependency.
- [`GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Categories.Morphisms.BoundaryComparison.Variant0865c8022a8e323b.HomComparisonCancellation`](../../../../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Categories/Morphisms/BoundaryComparison/Variant0865c8022a8e323b/HomComparisonCancellation.lean/index.md) — import line 21; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [finiteBoundaryToUnit](../../../../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Categories/Morphisms/BoundaryComparison/Variant0865c8022a8e323b/FiniteSingletonWitness.lean/declarations/finiteboundarytounit--27eed68130713311d169ca89.md) | 37 | `declaration-track:27eed68130713311d169ca8995404c976f248a04d2eb20752b88651d719b4874` |
| 2 | `def` | [finiteBoundaryToFinOne](../../../../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Categories/Morphisms/BoundaryComparison/Variant0865c8022a8e323b/FiniteSingletonWitness.lean/declarations/finiteboundarytofinone--dc6db2dbc95dc80c5ea0d948.md) | 39 | `declaration-track:dc6db2dbc95dc80c5ea0d948a2ad21ecbd0f08b1b3999e95b3a3340f700d0f6e` |
| 3 | `instance` | [(anonymous)](../../../../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Categories/Morphisms/BoundaryComparison/Variant0865c8022a8e323b/FiniteSingletonWitness.lean/declarations/instance--d015b39731709e25fee418ee.md) | 41 | `declaration-track:d015b39731709e25fee418eeee65f34d9303bfeea36be7e9a9096442c65d4074` |
| 4 | `def` | [finiteClosedHomComparison](../../../../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Categories/Morphisms/BoundaryComparison/Variant0865c8022a8e323b/FiniteSingletonWitness.lean/declarations/finiteclosedhomcomparison--22c0ae1c93a3996353dbd871.md) | 48 | `declaration-track:22c0ae1c93a3996353dbd871356e3c794f5304a3c5e176fb231bfc6af029f95b` |
| 5 | `theorem` | [finite_boundary_epi](../../../../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Categories/Morphisms/BoundaryComparison/Variant0865c8022a8e323b/FiniteSingletonWitness.lean/declarations/finite-boundary-epi--19656cdb913fedf361f9a3d0.md) | 59 | `result-track:19656cdb913fedf361f9a3d0ab544169721f51e763d3ead5462805ae967319c1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
