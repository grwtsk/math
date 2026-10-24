# Verification target: GRWTSK.LinearAlgebra.BilinearForm.ZeroCoordinateObstruction

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b15f90ffa0f87f05d8c34fc037739611eac2bdc3",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/LinearAlgebra/BilinearForm/ZeroCoordinateObstruction.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/BilinearForm/ZeroCoordinateObstruction.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/BilinearForm/ZeroCoordinateObstruction.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b15f90ffa0f87f05d8c34fc037739611eac2bdc3`.

Source path: `GRWTSK/LinearAlgebra/BilinearForm/ZeroCoordinateObstruction.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/LinearAlgebra/BilinearForm/ZeroCoordinateObstruction.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Group.Finset.Piecewise` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Basic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [coordinateWeight](../../../../../mathematics/Algebra/LinearAlgebra/BilinearForm/ZeroCoordinateObstruction.lean/declarations/coordinateweight--a1c3b41ce386247634447f8f.md) | 29 | `declaration-track:a1c3b41ce386247634447f8fc560c8d64f16de574a1f7dad210162155711d0e6` |
| 2 | `def` | [orderedQuadratic](../../../../../mathematics/Algebra/LinearAlgebra/BilinearForm/ZeroCoordinateObstruction.lean/declarations/orderedquadratic--34f05b13cc516156b227765e.md) | 33 | `declaration-track:34f05b13cc516156b227765e88ef514103b0ba96bd57303426668d9b910d427b` |
| 3 | `theorem` | [coordinate_quadratic_eq](../../../../../mathematics/Algebra/LinearAlgebra/BilinearForm/ZeroCoordinateObstruction.lean/declarations/coordinate-quadratic-eq--163977c333f6dff4d90d395b.md) | 37 | `result-track:163977c333f6dff4d90d395b3a1d666541bd290e30f9bc891732de95ec863a9c` |
| 4 | `theorem` | [no_uniform_domination](../../../../../mathematics/Algebra/LinearAlgebra/BilinearForm/ZeroCoordinateObstruction.lean/declarations/no-uniform-domination--c40e6727f3ea2324b9d88df8.md) | 56 | `result-track:c40e6727f3ea2324b9d88df8db4c48ebf91974e5ad43b31cfea929717e7acf7b` |
| 5 | `def` | [diagonalScale](../../../../../mathematics/Algebra/LinearAlgebra/BilinearForm/ZeroCoordinateObstruction.lean/declarations/diagonalscale--f1a2e31fadaf371606a3045f.md) | 67 | `declaration-track:f1a2e31fadaf371606a3045f51dd706eaba90bf9f17a996c604921aa768a57bc` |
| 6 | `theorem` | [diagonal_scale_ne_positive](../../../../../mathematics/Algebra/LinearAlgebra/BilinearForm/ZeroCoordinateObstruction.lean/declarations/diagonal-scale-ne-positive--f4266e5986aab6516705a35c.md) | 70 | `result-track:f4266e5986aab6516705a35c3777117b7fab4219c69e57ea29bd16374487d078` |
| 7 | `theorem` | [zero_preserving_map_ne_target](../../../../../mathematics/Algebra/LinearAlgebra/BilinearForm/ZeroCoordinateObstruction.lean/declarations/zero-preserving-map-ne-target--4788483b0a6dff8f4e9ee19e.md) | 77 | `result-track:4788483b0a6dff8f4e9ee19e31158c1cabab0d0b8d5b6c92ff98f7511fe612af` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
