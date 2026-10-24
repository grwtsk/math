# Verification target: GRWTSK.Analysis.PivotOperatorBounds.Variant36f8c065ff38b75e723630d17d2c39a72368a7367f0f792c4f1222048c9c52ee

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7e907f0d68bac8a653334cce6a0238972133b88f",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/PivotOperatorBounds/Variant36f8c065ff38b75e723630d17d2c39a72368a7367f0f792c4f1222048c9c52ee.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/PivotOperatorBounds/Variant36f8c065ff38b75e723630d17d2c39a72368a7367f0f792c4f1222048c9c52ee.lean/index.md) · [Full source](../../../../mathematics/Analysis/PivotOperatorBounds/Variant36f8c065ff38b75e723630d17d2c39a72368a7367f0f792c4f1222048c9c52ee.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7e907f0d68bac8a653334cce6a0238972133b88f`.

Source path: `GRWTSK/Analysis/PivotOperatorBounds/Variant36f8c065ff38b75e723630d17d2c39a72368a7367f0f792c4f1222048c9c52ee.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/PivotOperatorBounds/Variant36f8c065ff38b75e723630d17d2c39a72368a7367f0f792c4f1222048c9c52ee.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.Grassmannian.PivotBounds` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.CStarAlgebra.Matrix` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Positive` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [l2_opNorm_le_one_of_orthonormalRows](../../../../mathematics/Analysis/PivotOperatorBounds/Variant36f8c065ff38b75e723630d17d2c39a72368a7367f0f792c4f1222048c9c52ee.lean/declarations/l2-opnorm-le-one-of-orthonormalrows--7ff54c1c35044ad22ecab50d.md) | 32 | `result-track:7ff54c1c35044ad22ecab50df577ba9af6aa7c3cd49fc95115ab9d3ac1eccb7b` |
| 2 | `theorem` | [l2_opNorm_toEuclideanLin_le](../../../../mathematics/Analysis/PivotOperatorBounds/Variant36f8c065ff38b75e723630d17d2c39a72368a7367f0f792c4f1222048c9c52ee.lean/declarations/l2-opnorm-toeuclideanlin-le--74d0065977c7d918bbb7f629.md) | 46 | `result-track:74d0065977c7d918bbb7f629c4b1a3350d0b1a7707ffc2994f0a1abbbbdaed75` |
| 3 | `theorem` | [euclidean_norm_restrict_le](../../../../mathematics/Analysis/PivotOperatorBounds/Variant36f8c065ff38b75e723630d17d2c39a72368a7367f0f792c4f1222048c9c52ee.lean/declarations/euclidean-norm-restrict-le--66dae6c54d825847e8db0fbb.md) | 54 | `result-track:66dae6c54d825847e8db0fbb75d9a866d4d9423d6e38bdd3b7b0013bfdf7621f` |
| 4 | `theorem` | [l2_opNorm_columnSubmatrix_le](../../../../mathematics/Analysis/PivotOperatorBounds/Variant36f8c065ff38b75e723630d17d2c39a72368a7367f0f792c4f1222048c9c52ee.lean/declarations/l2-opnorm-columnsubmatrix-le--39c2e313113d22de8a95ffff.md) | 69 | `result-track:39c2e313113d22de8a95ffffdc5f38efa67e65815dbef68e838e5f966f236665` |
| 5 | `theorem` | [det_sq_mul_norm_sq_le_image](../../../../mathematics/Analysis/PivotOperatorBounds/Variant36f8c065ff38b75e723630d17d2c39a72368a7367f0f792c4f1222048c9c52ee.lean/declarations/det-sq-mul-norm-sq-le-image--3832ef9a54891b5b47b49121.md) | 91 | `result-track:3832ef9a54891b5b47b49121a3fd5ed1621774c48439e5131dccf95f4a409e9f` |
| 6 | `theorem` | [l2_opNorm_inverse_le_margin](../../../../mathematics/Analysis/PivotOperatorBounds/Variant36f8c065ff38b75e723630d17d2c39a72368a7367f0f792c4f1222048c9c52ee.lean/declarations/l2-opnorm-inverse-le-margin--8b5f44b8597ce69c2c87cdb1.md) | 158 | `result-track:8b5f44b8597ce69c2c87cdb1e711a5fd5ebd96b2fa62582154eea64243c33759` |
| 7 | `theorem` | [controlled_pivot_operator_bounds](../../../../mathematics/Analysis/PivotOperatorBounds/Variant36f8c065ff38b75e723630d17d2c39a72368a7367f0f792c4f1222048c9c52ee.lean/declarations/controlled-pivot-operator-bounds--9dc8dd7ecb57f6cd3b6835b9.md) | 186 | `result-track:9dc8dd7ecb57f6cd3b6835b9b734cefa5ae68d67d61d8711704e29e53c4ad1c7` |
| 8 | `theorem` | [controlled_transition_operator_bounds](../../../../mathematics/Analysis/PivotOperatorBounds/Variant36f8c065ff38b75e723630d17d2c39a72368a7367f0f792c4f1222048c9c52ee.lean/declarations/controlled-transition-operator-bounds--c771e08ea0ec2e2b858462fe.md) | 208 | `result-track:c771e08ea0ec2e2b858462feec665fb8bc3760ffc392130c743618a89e2e8b70` |
| 9 | `theorem` | [controlledCover_normalization_bound](../../../../mathematics/Analysis/PivotOperatorBounds/Variant36f8c065ff38b75e723630d17d2c39a72368a7367f0f792c4f1222048c9c52ee.lean/declarations/controlledcover-normalization-bound--a58f79cf23145f4fd03d29ec.md) | 233 | `result-track:a58f79cf23145f4fd03d29ece27795c9fc27e8b07f7e1862fd5bb8a61f595649` |
| 10 | `theorem` | [controlledCover_transition_bounds](../../../../mathematics/Analysis/PivotOperatorBounds/Variant36f8c065ff38b75e723630d17d2c39a72368a7367f0f792c4f1222048c9c52ee.lean/declarations/controlledcover-transition-bounds--92e27659ced9574474c4f50b.md) | 247 | `result-track:92e27659ced9574474c4f50b3fbee96b935f54f909566cefe317fd7611fcd27c` |
| 11 | `theorem` | [controlledCover_rank_zero](../../../../mathematics/Analysis/PivotOperatorBounds/Variant36f8c065ff38b75e723630d17d2c39a72368a7367f0f792c4f1222048c9c52ee.lean/declarations/controlledcover-rank-zero--79bf51022693917774762581.md) | 262 | `result-track:79bf5102269391777476258164deab9c216bc33bd786169cc4133ca3bf5223fa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
