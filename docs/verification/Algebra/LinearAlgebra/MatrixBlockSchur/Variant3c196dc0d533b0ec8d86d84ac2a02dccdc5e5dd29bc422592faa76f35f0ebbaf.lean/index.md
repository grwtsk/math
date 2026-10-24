# Verification target: GRWTSK.Algebra.LinearAlgebra.MatrixBlockSchur.Variant3c196dc0d533b0ec8d86d84ac2a02dccdc5e5dd29bc422592faa76f35f0ebbaf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "31378b5dd910e5615d5bc7432b7f233b17f4f680",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/MatrixBlockSchur/Variant3c196dc0d533b0ec8d86d84ac2a02dccdc5e5dd29bc422592faa76f35f0ebbaf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/MatrixBlockSchur/Variant3c196dc0d533b0ec8d86d84ac2a02dccdc5e5dd29bc422592faa76f35f0ebbaf.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/MatrixBlockSchur/Variant3c196dc0d533b0ec8d86d84ac2a02dccdc5e5dd29bc422592faa76f35f0ebbaf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `31378b5dd910e5615d5bc7432b7f233b17f4f680`.

Source path: `GRWTSK/Algebra/LinearAlgebra/MatrixBlockSchur/Variant3c196dc0d533b0ec8d86d84ac2a02dccdc5e5dd29bc422592faa76f35f0ebbaf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/MatrixBlockSchur/Variant3c196dc0d533b0ec8d86d84ac2a02dccdc5e5dd29bc422592faa76f35f0ebbaf.lean.json)

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
| 1 | `structure` | [MatrixBlockRealization](../../../../../mathematics/Algebra/LinearAlgebra/MatrixBlockSchur/Variant3c196dc0d533b0ec8d86d84ac2a02dccdc5e5dd29bc422592faa76f35f0ebbaf.lean/declarations/matrixblockrealization--083a154570ea4458ad151ce4.md) | 41 | `declaration-track:083a154570ea4458ad151ce48b21e2837bd8d5fca9da8029e4da5dbd6d32c396` |
| 2 | `def` | [solve](../../../../../mathematics/Algebra/LinearAlgebra/MatrixBlockSchur/Variant3c196dc0d533b0ec8d86d84ac2a02dccdc5e5dd29bc422592faa76f35f0ebbaf.lean/declarations/solve--2cffada3a8dd2cd69ac30d7b.md) | 68 | `declaration-track:2cffada3a8dd2cd69ac30d7b4e63cedb4a2a50f094d3902535ad32df788a7c30` |
| 3 | `theorem` | [solve_apply](../../../../../mathematics/Algebra/LinearAlgebra/MatrixBlockSchur/Variant3c196dc0d533b0ec8d86d84ac2a02dccdc5e5dd29bc422592faa76f35f0ebbaf.lean/declarations/solve-apply--8ba6a7639d53632f6e0db3cf.md) | 73 | `result-track:8ba6a7639d53632f6e0db3cf23dac18d1b0bc06d36de535d7e70e23668ebe47f` |
| 4 | `theorem` | [provenance_mulVec_solve](../../../../../mathematics/Algebra/LinearAlgebra/MatrixBlockSchur/Variant3c196dc0d533b0ec8d86d84ac2a02dccdc5e5dd29bc422592faa76f35f0ebbaf.lean/declarations/provenance-mulvec-solve--8bd36abada8a3a25f8619975.md) | 79 | `result-track:8bd36abada8a3a25f8619975d37bd09cd91098cfe32cfaccf00ba4f0bfba14da` |
| 5 | `theorem` | [form_sub_right](../../../../../mathematics/Algebra/LinearAlgebra/MatrixBlockSchur/Variant3c196dc0d533b0ec8d86d84ac2a02dccdc5e5dd29bc422592faa76f35f0ebbaf.lean/declarations/form-sub-right--85e238708e7820ecc32da66f.md) | 88 | `result-track:85e238708e7820ecc32da66fc8045ca02b90c7f7d90d4100869ca2ae5b1606d2` |
| 6 | `def` | [blockSchurSolver](../../../../../mathematics/Algebra/LinearAlgebra/MatrixBlockSchur/Variant3c196dc0d533b0ec8d86d84ac2a02dccdc5e5dd29bc422592faa76f35f0ebbaf.lean/declarations/blockschursolver--fd81715e03d7bfbfaf5f4523.md) | 99 | `declaration-track:fd81715e03d7bfbfaf5f4523ef32238232b7fe22e1eac4ce2b5b11b3ccd35f85` |
| 7 | `theorem` | [blockSchurSolver_solve](../../../../../mathematics/Algebra/LinearAlgebra/MatrixBlockSchur/Variant3c196dc0d533b0ec8d86d84ac2a02dccdc5e5dd29bc422592faa76f35f0ebbaf.lean/declarations/blockschursolver-solve--2e0f0a9aa22eee4ab1ca0a08.md) | 110 | `result-track:2e0f0a9aa22eee4ab1ca0a08ab32b54069415bdfbbd90f219eeb975bc9b063e2` |
| 8 | `theorem` | [schur_eq_matrix_coordinates](../../../../../mathematics/Algebra/LinearAlgebra/MatrixBlockSchur/Variant3c196dc0d533b0ec8d86d84ac2a02dccdc5e5dd29bc422592faa76f35f0ebbaf.lean/declarations/schur-eq-matrix-coordinates--e7a6f3404cc56c033c534a94.md) | 116 | `result-track:e7a6f3404cc56c033c534a94f43b292be1f3bad3e7406dd433fe694fe810abca` |
| 9 | `theorem` | [matrix_schur_diagonal_nonnegative](../../../../../mathematics/Algebra/LinearAlgebra/MatrixBlockSchur/Variant3c196dc0d533b0ec8d86d84ac2a02dccdc5e5dd29bc422592faa76f35f0ebbaf.lean/declarations/matrix-schur-diagonal-nonnegative--2465b42b1cd6c10ffc3cda04.md) | 127 | `result-track:2465b42b1cd6c10ffc3cda0423c5629ff328e78e76de73dea5682f26683e4471` |
| 10 | `theorem` | [matrix_autonomous_energy_decomposition](../../../../../mathematics/Algebra/LinearAlgebra/MatrixBlockSchur/Variant3c196dc0d533b0ec8d86d84ac2a02dccdc5e5dd29bc422592faa76f35f0ebbaf.lean/declarations/matrix-autonomous-energy-decomposition--0605948dcda17e47b9f03c85.md) | 138 | `result-track:0605948dcda17e47b9f03c8594b3c67d836baba1af3a754a877566dbecdbcd9e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
