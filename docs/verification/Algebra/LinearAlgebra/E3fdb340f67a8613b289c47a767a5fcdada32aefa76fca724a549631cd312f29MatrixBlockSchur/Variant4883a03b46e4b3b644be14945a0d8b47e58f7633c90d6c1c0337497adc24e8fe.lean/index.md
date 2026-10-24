# Verification target: GRWTSK.Algebra.LinearAlgebra.E3fdb340f67a8613b289c47a767a5fcdada32aefa76fca724a549631cd312f29MatrixBlockSchur.Variant4883a03b46e4b3b644be14945a0d8b47e58f7633c90d6c1c0337497adc24e8fe

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "01430e93191497266452d7529cda8a7c2d0668f3",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/E3fdb340f67a8613b289c47a767a5fcdada32aefa76fca724a549631cd312f29MatrixBlockSchur/Variant4883a03b46e4b3b644be14945a0d8b47e58f7633c90d6c1c0337497adc24e8fe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/E3fdb340f67a8613b289c47a767a5fcdada32aefa76fca724a549631cd312f29MatrixBlockSchur/Variant4883a03b46e4b3b644be14945a0d8b47e58f7633c90d6c1c0337497adc24e8fe.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/E3fdb340f67a8613b289c47a767a5fcdada32aefa76fca724a549631cd312f29MatrixBlockSchur/Variant4883a03b46e4b3b644be14945a0d8b47e58f7633c90d6c1c0337497adc24e8fe.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `01430e93191497266452d7529cda8a7c2d0668f3`.

Source path: `GRWTSK/Algebra/LinearAlgebra/E3fdb340f67a8613b289c47a767a5fcdada32aefa76fca724a549631cd312f29MatrixBlockSchur/Variant4883a03b46e4b3b644be14945a0d8b47e58f7633c90d6c1c0337497adc24e8fe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/E3fdb340f67a8613b289c47a767a5fcdada32aefa76fca724a549631cd312f29MatrixBlockSchur/Variant4883a03b46e4b3b644be14945a0d8b47e58f7633c90d6c1c0337497adc24e8fe.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.InvertibleBlockSchur` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.ToLin` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [MatrixBlockRealization](../../../../../mathematics/Algebra/LinearAlgebra/E3fdb340f67a8613b289c47a767a5fcdada32aefa76fca724a549631cd312f29MatrixBlockSchur/Variant4883a03b46e4b3b644be14945a0d8b47e58f7633c90d6c1c0337497adc24e8fe.lean/declarations/matrixblockrealization--d849630130bcf376b635a6cb.md) | 41 | `declaration-track:d849630130bcf376b635a6cb9e08161266fb1add7d2b3c7f89b4694153aa3c4a` |
| 2 | `def` | [solve](../../../../../mathematics/Algebra/LinearAlgebra/E3fdb340f67a8613b289c47a767a5fcdada32aefa76fca724a549631cd312f29MatrixBlockSchur/Variant4883a03b46e4b3b644be14945a0d8b47e58f7633c90d6c1c0337497adc24e8fe.lean/declarations/solve--6911059f76db0433b7f7fb3e.md) | 64 | `declaration-track:6911059f76db0433b7f7fb3efeaef018f4c8cb38eb26dc621a1aa6d8584cb2ab` |
| 3 | `theorem` | [solve_apply](../../../../../mathematics/Algebra/LinearAlgebra/E3fdb340f67a8613b289c47a767a5fcdada32aefa76fca724a549631cd312f29MatrixBlockSchur/Variant4883a03b46e4b3b644be14945a0d8b47e58f7633c90d6c1c0337497adc24e8fe.lean/declarations/solve-apply--09913de8900ccf99c2567d54.md) | 69 | `result-track:09913de8900ccf99c2567d54fd7be2e0c99f2df85b774782c3f0f058a07fb137` |
| 4 | `theorem` | [provenance_mulVec_solve](../../../../../mathematics/Algebra/LinearAlgebra/E3fdb340f67a8613b289c47a767a5fcdada32aefa76fca724a549631cd312f29MatrixBlockSchur/Variant4883a03b46e4b3b644be14945a0d8b47e58f7633c90d6c1c0337497adc24e8fe.lean/declarations/provenance-mulvec-solve--f78380ae114a42662bb8a78f.md) | 75 | `result-track:f78380ae114a42662bb8a78fbe2881763d34da8c5cc681883901924482f8fdac` |
| 5 | `theorem` | [form_sub_right](../../../../../mathematics/Algebra/LinearAlgebra/E3fdb340f67a8613b289c47a767a5fcdada32aefa76fca724a549631cd312f29MatrixBlockSchur/Variant4883a03b46e4b3b644be14945a0d8b47e58f7633c90d6c1c0337497adc24e8fe.lean/declarations/form-sub-right--923e6a6e53261a3854ba13db.md) | 84 | `result-track:923e6a6e53261a3854ba13db45530f05017b1e16edf123a5eaf2af288bc24b57` |
| 6 | `def` | [blockSchurSolver](../../../../../mathematics/Algebra/LinearAlgebra/E3fdb340f67a8613b289c47a767a5fcdada32aefa76fca724a549631cd312f29MatrixBlockSchur/Variant4883a03b46e4b3b644be14945a0d8b47e58f7633c90d6c1c0337497adc24e8fe.lean/declarations/blockschursolver--4147c6fd40c19deba2e277bb.md) | 95 | `declaration-track:4147c6fd40c19deba2e277bb6359c81e7743a6857bb8a98f19bc2b947e5b3cdd` |
| 7 | `theorem` | [blockSchurSolver_solve](../../../../../mathematics/Algebra/LinearAlgebra/E3fdb340f67a8613b289c47a767a5fcdada32aefa76fca724a549631cd312f29MatrixBlockSchur/Variant4883a03b46e4b3b644be14945a0d8b47e58f7633c90d6c1c0337497adc24e8fe.lean/declarations/blockschursolver-solve--af671e511d35248f932c6923.md) | 106 | `result-track:af671e511d35248f932c6923c577abc7ab9ef49a183f054962a3ac58e26065dc` |
| 8 | `theorem` | [schur_eq_matrix_coordinates](../../../../../mathematics/Algebra/LinearAlgebra/E3fdb340f67a8613b289c47a767a5fcdada32aefa76fca724a549631cd312f29MatrixBlockSchur/Variant4883a03b46e4b3b644be14945a0d8b47e58f7633c90d6c1c0337497adc24e8fe.lean/declarations/schur-eq-matrix-coordinates--ce761326dc5083b93372e939.md) | 112 | `result-track:ce761326dc5083b93372e939cc70337581390af10cfc6c2dec34d18523e81701` |
| 9 | `theorem` | [matrix_schur_diagonal_nonnegative](../../../../../mathematics/Algebra/LinearAlgebra/E3fdb340f67a8613b289c47a767a5fcdada32aefa76fca724a549631cd312f29MatrixBlockSchur/Variant4883a03b46e4b3b644be14945a0d8b47e58f7633c90d6c1c0337497adc24e8fe.lean/declarations/matrix-schur-diagonal-nonnegative--8d0d600ecc5a64570aa72989.md) | 123 | `result-track:8d0d600ecc5a64570aa729893d6fac4da0e6441a5c50c47a7f2cbd2ed892448f` |
| 10 | `theorem` | [matrix_autonomous_energy_decomposition](../../../../../mathematics/Algebra/LinearAlgebra/E3fdb340f67a8613b289c47a767a5fcdada32aefa76fca724a549631cd312f29MatrixBlockSchur/Variant4883a03b46e4b3b644be14945a0d8b47e58f7633c90d6c1c0337497adc24e8fe.lean/declarations/matrix-autonomous-energy-decomposition--723a2a7322e6b3ba91cbe3eb.md) | 134 | `result-track:723a2a7322e6b3ba91cbe3ebccdb6584580ed8856a3d101ff2a234bab69fa116` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
