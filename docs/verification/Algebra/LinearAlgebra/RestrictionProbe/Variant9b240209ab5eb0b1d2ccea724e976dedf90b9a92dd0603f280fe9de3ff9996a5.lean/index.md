# Verification target: GRWTSK.Algebra.LinearAlgebra.RestrictionProbe.Variant9b240209ab5eb0b1d2ccea724e976dedf90b9a92dd0603f280fe9de3ff9996a5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "be5cf30a076874fee57bfbe9370e9409939d4213",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/RestrictionProbe/Variant9b240209ab5eb0b1d2ccea724e976dedf90b9a92dd0603f280fe9de3ff9996a5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/RestrictionProbe/Variant9b240209ab5eb0b1d2ccea724e976dedf90b9a92dd0603f280fe9de3ff9996a5.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/RestrictionProbe/Variant9b240209ab5eb0b1d2ccea724e976dedf90b9a92dd0603f280fe9de3ff9996a5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `be5cf30a076874fee57bfbe9370e9409939d4213`.

Source path: `GRWTSK/Algebra/LinearAlgebra/RestrictionProbe/Variant9b240209ab5eb0b1d2ccea724e976dedf90b9a92dd0603f280fe9de3ff9996a5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/RestrictionProbe/Variant9b240209ab5eb0b1d2ccea724e976dedf90b9a92dd0603f280fe9de3ff9996a5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.Grassmannian.PivotBounds` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.CStarAlgebra.Matrix` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Positive` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [l2_opNorm_le_one_of_orthonormalRows](../../../../../mathematics/Algebra/LinearAlgebra/RestrictionProbe/Variant9b240209ab5eb0b1d2ccea724e976dedf90b9a92dd0603f280fe9de3ff9996a5.lean/declarations/l2-opnorm-le-one-of-orthonormalrows--719921a0a79e6694f258d111.md) | 27 | `result-track:719921a0a79e6694f258d111050de57d0e11a3f25ef8538c2c42c240bbbf2a27` |
| 2 | `theorem` | [euclidean_norm_restrict_le](../../../../../mathematics/Algebra/LinearAlgebra/RestrictionProbe/Variant9b240209ab5eb0b1d2ccea724e976dedf90b9a92dd0603f280fe9de3ff9996a5.lean/declarations/euclidean-norm-restrict-le--079e31765a945fd4a0a05d45.md) | 41 | `result-track:079e31765a945fd4a0a05d45a04b4df45a7c6634fe44d6e073ceb891c3e9ae9a` |
| 3 | `theorem` | [l2_opNorm_columnSubmatrix_le](../../../../../mathematics/Algebra/LinearAlgebra/RestrictionProbe/Variant9b240209ab5eb0b1d2ccea724e976dedf90b9a92dd0603f280fe9de3ff9996a5.lean/declarations/l2-opnorm-columnsubmatrix-le--5b84756b8712176f0861cf41.md) | 57 | `result-track:5b84756b8712176f0861cf41a89039e8b0c0327f74b38681b1785ca03fa0fae0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
