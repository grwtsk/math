# Verification target: GRWTSK.Algebra.LinearAlgebra.MatrixBlockSchur.Variantce8a8861b0cbbcf22d4218397507d8d012c9d538bec917a0e71b4d388096d0b1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "443abe4d8d54da00b92a154c5f116945dacf34dd",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/MatrixBlockSchur/Variantce8a8861b0cbbcf22d4218397507d8d012c9d538bec917a0e71b4d388096d0b1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/MatrixBlockSchur/Variantce8a8861b0cbbcf22d4218397507d8d012c9d538bec917a0e71b4d388096d0b1.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/MatrixBlockSchur/Variantce8a8861b0cbbcf22d4218397507d8d012c9d538bec917a0e71b4d388096d0b1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `443abe4d8d54da00b92a154c5f116945dacf34dd`.

Source path: `GRWTSK/Algebra/LinearAlgebra/MatrixBlockSchur/Variantce8a8861b0cbbcf22d4218397507d8d012c9d538bec917a0e71b4d388096d0b1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/MatrixBlockSchur/Variantce8a8861b0cbbcf22d4218397507d8d012c9d538bec917a0e71b4d388096d0b1.lean.json)

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
| 1 | `structure` | [MatrixBlockRealization](../../../../../mathematics/Algebra/LinearAlgebra/MatrixBlockSchur/Variantce8a8861b0cbbcf22d4218397507d8d012c9d538bec917a0e71b4d388096d0b1.lean/declarations/matrixblockrealization--118dea14c65ee991f7c44642.md) | 41 | `declaration-track:118dea14c65ee991f7c446425bfa42257aab45e7d5ae225425ab119dc465c7f9` |
| 2 | `def` | [solve](../../../../../mathematics/Algebra/LinearAlgebra/MatrixBlockSchur/Variantce8a8861b0cbbcf22d4218397507d8d012c9d538bec917a0e71b4d388096d0b1.lean/declarations/solve--c012010fef9160aac6e3b00d.md) | 64 | `declaration-track:c012010fef9160aac6e3b00dba0cd8fcbc90e7f67fdbcebb71fbe790e110270f` |
| 3 | `theorem` | [solve_apply](../../../../../mathematics/Algebra/LinearAlgebra/MatrixBlockSchur/Variantce8a8861b0cbbcf22d4218397507d8d012c9d538bec917a0e71b4d388096d0b1.lean/declarations/solve-apply--3dfdbe9fdd7af28c8d6958fe.md) | 69 | `result-track:3dfdbe9fdd7af28c8d6958fe9e13924e9f2f7bf646eb3af81a2deae6d3a10dcc` |
| 4 | `theorem` | [provenance_mulVec_solve](../../../../../mathematics/Algebra/LinearAlgebra/MatrixBlockSchur/Variantce8a8861b0cbbcf22d4218397507d8d012c9d538bec917a0e71b4d388096d0b1.lean/declarations/provenance-mulvec-solve--cedf0b31a00e0f1469abd5c2.md) | 75 | `result-track:cedf0b31a00e0f1469abd5c2630961e81a01e0a7c4e493fd35ffcee77e3e9e02` |
| 5 | `theorem` | [form_sub_right](../../../../../mathematics/Algebra/LinearAlgebra/MatrixBlockSchur/Variantce8a8861b0cbbcf22d4218397507d8d012c9d538bec917a0e71b4d388096d0b1.lean/declarations/form-sub-right--02c2b9da78a4920614b83fd4.md) | 83 | `result-track:02c2b9da78a4920614b83fd4e14622a7d17d041eebe79c64672f5fd1cf40d2d4` |
| 6 | `def` | [blockSchurSolver](../../../../../mathematics/Algebra/LinearAlgebra/MatrixBlockSchur/Variantce8a8861b0cbbcf22d4218397507d8d012c9d538bec917a0e71b4d388096d0b1.lean/declarations/blockschursolver--a1e2ea91369f49c8731f780c.md) | 94 | `declaration-track:a1e2ea91369f49c8731f780c371a7761906b6a9e107c53685ad52eb4e2a9d0cc` |
| 7 | `theorem` | [blockSchurSolver_solve](../../../../../mathematics/Algebra/LinearAlgebra/MatrixBlockSchur/Variantce8a8861b0cbbcf22d4218397507d8d012c9d538bec917a0e71b4d388096d0b1.lean/declarations/blockschursolver-solve--93d5cdc3393f5e0fd9e74f49.md) | 105 | `result-track:93d5cdc3393f5e0fd9e74f49250b20a7cc9f58f321fd1d917841f3bc562f6ffa` |
| 8 | `theorem` | [schur_eq_matrix_coordinates](../../../../../mathematics/Algebra/LinearAlgebra/MatrixBlockSchur/Variantce8a8861b0cbbcf22d4218397507d8d012c9d538bec917a0e71b4d388096d0b1.lean/declarations/schur-eq-matrix-coordinates--afe89ae655d8e3e3efac72f1.md) | 111 | `result-track:afe89ae655d8e3e3efac72f1f7e7c9f152ba18f418f7df383c1cf4084b5e21fb` |
| 9 | `theorem` | [matrix_schur_diagonal_nonnegative](../../../../../mathematics/Algebra/LinearAlgebra/MatrixBlockSchur/Variantce8a8861b0cbbcf22d4218397507d8d012c9d538bec917a0e71b4d388096d0b1.lean/declarations/matrix-schur-diagonal-nonnegative--e479f35139a1361fe3bfa6c8.md) | 122 | `result-track:e479f35139a1361fe3bfa6c8b5eee25ba9f881437d6f3f1132089ad68bd462c9` |
| 10 | `theorem` | [matrix_autonomous_energy_decomposition](../../../../../mathematics/Algebra/LinearAlgebra/MatrixBlockSchur/Variantce8a8861b0cbbcf22d4218397507d8d012c9d538bec917a0e71b4d388096d0b1.lean/declarations/matrix-autonomous-energy-decomposition--c416b5bbc7ff703e91232e8a.md) | 133 | `result-track:c416b5bbc7ff703e91232e8a9899370e3998099dd627fb5f63d4a2eb69d80de0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
