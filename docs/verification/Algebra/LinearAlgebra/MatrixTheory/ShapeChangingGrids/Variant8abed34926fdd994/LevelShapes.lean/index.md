# Verification target: GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ShapeChangingGrids.Variant8abed34926fdd994.LevelShapes

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "23ac0bce81357695e3f48c66e497fbefdfec2c6a",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/MatrixTheory/ShapeChangingGrids/Variant8abed34926fdd994/LevelShapes.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/ShapeChangingGrids/Variant8abed34926fdd994/LevelShapes.lean/index.md) · [Full source](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/ShapeChangingGrids/Variant8abed34926fdd994/LevelShapes.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `23ac0bce81357695e3f48c66e497fbefdfec2c6a`.

Source path: `GRWTSK/Algebra/LinearAlgebra/MatrixTheory/ShapeChangingGrids/Variant8abed34926fdd994/LevelShapes.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/MatrixTheory/ShapeChangingGrids/Variant8abed34926fdd994/LevelShapes.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Catalan.Tree` — import line 19; external provider; requires a separately pinned dependency.
- `Folder.Expansion.Shell` — import line 20; external provider; requires a separately pinned dependency.
- `Folder.Spectral.Expansion` — import line 21; external provider; requires a separately pinned dependency.
- `Folder.Spectral.Fiber` — import line 22; external provider; requires a separately pinned dependency.
- `Folder.Spectral.Tensor` — import line 23; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [levelShape](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/ShapeChangingGrids/Variant8abed34926fdd994/LevelShapes.lean/declarations/levelshape--db0ae15bcc12265f22f61f16.md) | 45 | `declaration-track:db0ae15bcc12265f22f61f1653e46ca9a73bd6baa031d92eb6321e6b36693c70` |
| 2 | `theorem` | [levelShape_rows_succ](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/ShapeChangingGrids/Variant8abed34926fdd994/LevelShapes.lean/declarations/levelshape-rows-succ--aeb063dd20cbd74d3a866e3d.md) | 50 | `result-track:aeb063dd20cbd74d3a866e3d2f4a6225b988c4fc26ebaba9643f7ab199fb9de8` |
| 3 | `theorem` | [levelShape_cols_succ](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/ShapeChangingGrids/Variant8abed34926fdd994/LevelShapes.lean/declarations/levelshape-cols-succ--9e928fbc9a54c0e9be6188cf.md) | 58 | `result-track:9e928fbc9a54c0e9be6188cfbe3a797c2fc8c1fa42ee01bac620e4330e932e2e` |
| 4 | `theorem` | [shape_changes_of_step](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/ShapeChangingGrids/Variant8abed34926fdd994/LevelShapes.lean/declarations/shape-changes-of-step--d5de51408c84967237bb6cea.md) | 66 | `result-track:d5de51408c84967237bb6cea5f66a4cb11ddbd9674efd37c4ebe8c0272bbe6a6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
