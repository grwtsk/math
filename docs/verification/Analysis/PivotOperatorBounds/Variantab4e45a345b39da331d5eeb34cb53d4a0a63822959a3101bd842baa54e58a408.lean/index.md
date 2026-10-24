# Verification target: GRWTSK.Analysis.PivotOperatorBounds.Variantab4e45a345b39da331d5eeb34cb53d4a0a63822959a3101bd842baa54e58a408

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "39a1323678eebe9b22c248e8e9cd3363449bba12",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/PivotOperatorBounds/Variantab4e45a345b39da331d5eeb34cb53d4a0a63822959a3101bd842baa54e58a408.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/PivotOperatorBounds/Variantab4e45a345b39da331d5eeb34cb53d4a0a63822959a3101bd842baa54e58a408.lean/index.md) · [Full source](../../../../mathematics/Analysis/PivotOperatorBounds/Variantab4e45a345b39da331d5eeb34cb53d4a0a63822959a3101bd842baa54e58a408.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `39a1323678eebe9b22c248e8e9cd3363449bba12`.

Source path: `GRWTSK/Analysis/PivotOperatorBounds/Variantab4e45a345b39da331d5eeb34cb53d4a0a63822959a3101bd842baa54e58a408.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/PivotOperatorBounds/Variantab4e45a345b39da331d5eeb34cb53d4a0a63822959a3101bd842baa54e58a408.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.Grassmannian.PivotBounds` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.CStarAlgebra.Matrix` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Positive` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [l2_opNorm_le_one_of_orthonormalRows](../../../../mathematics/Analysis/PivotOperatorBounds/Variantab4e45a345b39da331d5eeb34cb53d4a0a63822959a3101bd842baa54e58a408.lean/declarations/l2-opnorm-le-one-of-orthonormalrows--d152ac4b9d2734989fd5aeb6.md) | 24 | `result-track:d152ac4b9d2734989fd5aeb6060457f891d7f802a1d7859cb4401bb557ba995d` |
| 2 | `theorem` | [l2_opNorm_toEuclideanLin_le](../../../../mathematics/Analysis/PivotOperatorBounds/Variantab4e45a345b39da331d5eeb34cb53d4a0a63822959a3101bd842baa54e58a408.lean/declarations/l2-opnorm-toeuclideanlin-le--7badbdbc84e84e39a38f5093.md) | 38 | `result-track:7badbdbc84e84e39a38f5093936298443f81417da6ed8105e4814d5fb6f2eb82` |
| 3 | `theorem` | [euclidean_norm_restrict_le](../../../../mathematics/Analysis/PivotOperatorBounds/Variantab4e45a345b39da331d5eeb34cb53d4a0a63822959a3101bd842baa54e58a408.lean/declarations/euclidean-norm-restrict-le--76d3d19058f92a2d43375ff5.md) | 46 | `result-track:76d3d19058f92a2d43375ff581d75ae6c2b6797958aad51986f2563e360dc85c` |
| 4 | `theorem` | [l2_opNorm_columnSubmatrix_le](../../../../mathematics/Analysis/PivotOperatorBounds/Variantab4e45a345b39da331d5eeb34cb53d4a0a63822959a3101bd842baa54e58a408.lean/declarations/l2-opnorm-columnsubmatrix-le--20d50b80ff684cbddf6df279.md) | 61 | `result-track:20d50b80ff684cbddf6df279b76639d21047f7534c7f25449d5dc8a530fe0638` |
| 5 | `theorem` | [det_sq_mul_norm_sq_le_image](../../../../mathematics/Analysis/PivotOperatorBounds/Variantab4e45a345b39da331d5eeb34cb53d4a0a63822959a3101bd842baa54e58a408.lean/declarations/det-sq-mul-norm-sq-le-image--a9d6fcc6918e11345bbfaa9e.md) | 83 | `result-track:a9d6fcc6918e11345bbfaa9e5ad032bea3904ea61bbc8ec91d62e1bcdfb67bc5` |
| 6 | `theorem` | [l2_opNorm_inverse_le_margin](../../../../mathematics/Analysis/PivotOperatorBounds/Variantab4e45a345b39da331d5eeb34cb53d4a0a63822959a3101bd842baa54e58a408.lean/declarations/l2-opnorm-inverse-le-margin--abcd11b790d64a07fd9b5f51.md) | 150 | `result-track:abcd11b790d64a07fd9b5f51c24935330bc23c1e3c8affc565ecfccf0c9b1e46` |
| 7 | `theorem` | [controlled_pivot_operator_bounds](../../../../mathematics/Analysis/PivotOperatorBounds/Variantab4e45a345b39da331d5eeb34cb53d4a0a63822959a3101bd842baa54e58a408.lean/declarations/controlled-pivot-operator-bounds--366ba259dfdb8d1e60a11598.md) | 178 | `result-track:366ba259dfdb8d1e60a11598cf4be5981253b4cc857b43b5c0d3b62b4e29a117` |
| 8 | `theorem` | [controlled_transition_operator_bounds](../../../../mathematics/Analysis/PivotOperatorBounds/Variantab4e45a345b39da331d5eeb34cb53d4a0a63822959a3101bd842baa54e58a408.lean/declarations/controlled-transition-operator-bounds--3fb59f1ab7cdb8ff299860e8.md) | 200 | `result-track:3fb59f1ab7cdb8ff299860e854890d6b7c9533baa308a55405fe57511af7ac50` |
| 9 | `theorem` | [controlledCover_normalization_bound](../../../../mathematics/Analysis/PivotOperatorBounds/Variantab4e45a345b39da331d5eeb34cb53d4a0a63822959a3101bd842baa54e58a408.lean/declarations/controlledcover-normalization-bound--ca3640dd393815af17f70cc3.md) | 225 | `result-track:ca3640dd393815af17f70cc3f5ce0a012f7f893c57a12fa32fd2a0379e97574b` |
| 10 | `theorem` | [controlledCover_transition_bounds](../../../../mathematics/Analysis/PivotOperatorBounds/Variantab4e45a345b39da331d5eeb34cb53d4a0a63822959a3101bd842baa54e58a408.lean/declarations/controlledcover-transition-bounds--ca43806cb2a6ef88311b1402.md) | 239 | `result-track:ca43806cb2a6ef88311b1402100dbc3f7e4f8e588e8334796436df4f1574b59e` |
| 11 | `theorem` | [controlledCover_rank_zero](../../../../mathematics/Analysis/PivotOperatorBounds/Variantab4e45a345b39da331d5eeb34cb53d4a0a63822959a3101bd842baa54e58a408.lean/declarations/controlledcover-rank-zero--ed32cf93270215e5b2d73489.md) | 254 | `result-track:ed32cf93270215e5b2d73489175c2e865f7d2131be368f2612d1521435ca7d5a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
