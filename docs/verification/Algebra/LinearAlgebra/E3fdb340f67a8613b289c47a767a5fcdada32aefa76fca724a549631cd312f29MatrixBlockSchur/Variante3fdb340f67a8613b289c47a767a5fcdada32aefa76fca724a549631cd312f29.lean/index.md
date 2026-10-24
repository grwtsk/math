# Verification target: GRWTSK.Algebra.LinearAlgebra.E3fdb340f67a8613b289c47a767a5fcdada32aefa76fca724a549631cd312f29MatrixBlockSchur.Variante3fdb340f67a8613b289c47a767a5fcdada32aefa76fca724a549631cd312f29

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "208db32a55a69282e270a73be99eb2a3b737ec3f",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/E3fdb340f67a8613b289c47a767a5fcdada32aefa76fca724a549631cd312f29MatrixBlockSchur/Variante3fdb340f67a8613b289c47a767a5fcdada32aefa76fca724a549631cd312f29.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/E3fdb340f67a8613b289c47a767a5fcdada32aefa76fca724a549631cd312f29MatrixBlockSchur/Variante3fdb340f67a8613b289c47a767a5fcdada32aefa76fca724a549631cd312f29.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/E3fdb340f67a8613b289c47a767a5fcdada32aefa76fca724a549631cd312f29MatrixBlockSchur/Variante3fdb340f67a8613b289c47a767a5fcdada32aefa76fca724a549631cd312f29.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `208db32a55a69282e270a73be99eb2a3b737ec3f`.

Source path: `GRWTSK/Algebra/LinearAlgebra/E3fdb340f67a8613b289c47a767a5fcdada32aefa76fca724a549631cd312f29MatrixBlockSchur/Variante3fdb340f67a8613b289c47a767a5fcdada32aefa76fca724a549631cd312f29.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/E3fdb340f67a8613b289c47a767a5fcdada32aefa76fca724a549631cd312f29MatrixBlockSchur/Variante3fdb340f67a8613b289c47a767a5fcdada32aefa76fca724a549631cd312f29.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.InvertibleBlockSchur` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.ToLin` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [MatrixBlockRealization](../../../../../mathematics/Algebra/LinearAlgebra/E3fdb340f67a8613b289c47a767a5fcdada32aefa76fca724a549631cd312f29MatrixBlockSchur/Variante3fdb340f67a8613b289c47a767a5fcdada32aefa76fca724a549631cd312f29.lean/declarations/matrixblockrealization--d3f957b95a3c950d8d083878.md) | 33 | `declaration-track:d3f957b95a3c950d8d083878ddc96ccc18dcf429aaa80c40d7b2ea35a63641e5` |
| 2 | `def` | [solve](../../../../../mathematics/Algebra/LinearAlgebra/E3fdb340f67a8613b289c47a767a5fcdada32aefa76fca724a549631cd312f29MatrixBlockSchur/Variante3fdb340f67a8613b289c47a767a5fcdada32aefa76fca724a549631cd312f29.lean/declarations/solve--5d2375e835ae2c662024c425.md) | 56 | `declaration-track:5d2375e835ae2c662024c42597fd15d3475bc14b8f4063bcf864a83348de6296` |
| 3 | `theorem` | [solve_apply](../../../../../mathematics/Algebra/LinearAlgebra/E3fdb340f67a8613b289c47a767a5fcdada32aefa76fca724a549631cd312f29MatrixBlockSchur/Variante3fdb340f67a8613b289c47a767a5fcdada32aefa76fca724a549631cd312f29.lean/declarations/solve-apply--fed64594e78dd94478ce0484.md) | 61 | `result-track:fed64594e78dd94478ce0484c1bad7ad3d56e9cfce12a613278641767172d4f0` |
| 4 | `theorem` | [provenance_mulVec_solve](../../../../../mathematics/Algebra/LinearAlgebra/E3fdb340f67a8613b289c47a767a5fcdada32aefa76fca724a549631cd312f29MatrixBlockSchur/Variante3fdb340f67a8613b289c47a767a5fcdada32aefa76fca724a549631cd312f29.lean/declarations/provenance-mulvec-solve--ce3215766ae31356829a743f.md) | 67 | `result-track:ce3215766ae31356829a743fc8cc7e48c12800142a7e91d190f51b4b48621f53` |
| 5 | `theorem` | [form_sub_right](../../../../../mathematics/Algebra/LinearAlgebra/E3fdb340f67a8613b289c47a767a5fcdada32aefa76fca724a549631cd312f29MatrixBlockSchur/Variante3fdb340f67a8613b289c47a767a5fcdada32aefa76fca724a549631cd312f29.lean/declarations/form-sub-right--dcdca20242297992d306c164.md) | 76 | `result-track:dcdca20242297992d306c1642d69aecf4ee087d4996ed243ef986309ba97ef6d` |
| 6 | `def` | [blockSchurSolver](../../../../../mathematics/Algebra/LinearAlgebra/E3fdb340f67a8613b289c47a767a5fcdada32aefa76fca724a549631cd312f29MatrixBlockSchur/Variante3fdb340f67a8613b289c47a767a5fcdada32aefa76fca724a549631cd312f29.lean/declarations/blockschursolver--c5cba375eaa12ade3d7b7f99.md) | 87 | `declaration-track:c5cba375eaa12ade3d7b7f99e73c71bc75e8820b797a119d8ecf1a3a66457721` |
| 7 | `theorem` | [blockSchurSolver_solve](../../../../../mathematics/Algebra/LinearAlgebra/E3fdb340f67a8613b289c47a767a5fcdada32aefa76fca724a549631cd312f29MatrixBlockSchur/Variante3fdb340f67a8613b289c47a767a5fcdada32aefa76fca724a549631cd312f29.lean/declarations/blockschursolver-solve--b7fa4458b1872d421c4eace3.md) | 98 | `result-track:b7fa4458b1872d421c4eace373c6334c8dea2400a3e7204dca72462e26270537` |
| 8 | `theorem` | [schur_eq_matrix_coordinates](../../../../../mathematics/Algebra/LinearAlgebra/E3fdb340f67a8613b289c47a767a5fcdada32aefa76fca724a549631cd312f29MatrixBlockSchur/Variante3fdb340f67a8613b289c47a767a5fcdada32aefa76fca724a549631cd312f29.lean/declarations/schur-eq-matrix-coordinates--90d603edbef23af6a1c2e2d3.md) | 104 | `result-track:90d603edbef23af6a1c2e2d3815f10d032e302bf2d867c8c5eeea8ecd01289b8` |
| 9 | `theorem` | [matrix_schur_diagonal_nonnegative](../../../../../mathematics/Algebra/LinearAlgebra/E3fdb340f67a8613b289c47a767a5fcdada32aefa76fca724a549631cd312f29MatrixBlockSchur/Variante3fdb340f67a8613b289c47a767a5fcdada32aefa76fca724a549631cd312f29.lean/declarations/matrix-schur-diagonal-nonnegative--6320abedb285193d19657aed.md) | 115 | `result-track:6320abedb285193d19657aed5dfa8b4d97481550a8da60146c4f647c57b6f47b` |
| 10 | `theorem` | [matrix_autonomous_energy_decomposition](../../../../../mathematics/Algebra/LinearAlgebra/E3fdb340f67a8613b289c47a767a5fcdada32aefa76fca724a549631cd312f29MatrixBlockSchur/Variante3fdb340f67a8613b289c47a767a5fcdada32aefa76fca724a549631cd312f29.lean/declarations/matrix-autonomous-energy-decomposition--0728c13dc740887cfaa366a1.md) | 126 | `result-track:0728c13dc740887cfaa366a19d71f8f38f0feca5404837d42a8fecd77c7bd820` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
