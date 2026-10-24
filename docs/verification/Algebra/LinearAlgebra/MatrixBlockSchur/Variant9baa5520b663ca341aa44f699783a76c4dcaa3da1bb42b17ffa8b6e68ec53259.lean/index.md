# Verification target: GRWTSK.Algebra.LinearAlgebra.MatrixBlockSchur.Variant9baa5520b663ca341aa44f699783a76c4dcaa3da1bb42b17ffa8b6e68ec53259

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8983389fa63285e609ec36eff4e4808420c59e60",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/MatrixBlockSchur/Variant9baa5520b663ca341aa44f699783a76c4dcaa3da1bb42b17ffa8b6e68ec53259.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/MatrixBlockSchur/Variant9baa5520b663ca341aa44f699783a76c4dcaa3da1bb42b17ffa8b6e68ec53259.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/MatrixBlockSchur/Variant9baa5520b663ca341aa44f699783a76c4dcaa3da1bb42b17ffa8b6e68ec53259.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8983389fa63285e609ec36eff4e4808420c59e60`.

Source path: `GRWTSK/Algebra/LinearAlgebra/MatrixBlockSchur/Variant9baa5520b663ca341aa44f699783a76c4dcaa3da1bb42b17ffa8b6e68ec53259.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/MatrixBlockSchur/Variant9baa5520b663ca341aa44f699783a76c4dcaa3da1bb42b17ffa8b6e68ec53259.lean.json)

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
| 1 | `structure` | [MatrixBlockRealization](../../../../../mathematics/Algebra/LinearAlgebra/MatrixBlockSchur/Variant9baa5520b663ca341aa44f699783a76c4dcaa3da1bb42b17ffa8b6e68ec53259.lean/declarations/matrixblockrealization--bd9f7e5558c4ddda62404e9e.md) | 33 | `declaration-track:bd9f7e5558c4ddda62404e9ee35b15156015a27c693e41a2d98e8f3dc170d604` |
| 2 | `def` | [solve](../../../../../mathematics/Algebra/LinearAlgebra/MatrixBlockSchur/Variant9baa5520b663ca341aa44f699783a76c4dcaa3da1bb42b17ffa8b6e68ec53259.lean/declarations/solve--6b6025e20883dc181837ffb0.md) | 56 | `declaration-track:6b6025e20883dc181837ffb01c7c06e609c874bd69498971e742772e4b7ffbed` |
| 3 | `theorem` | [solve_apply](../../../../../mathematics/Algebra/LinearAlgebra/MatrixBlockSchur/Variant9baa5520b663ca341aa44f699783a76c4dcaa3da1bb42b17ffa8b6e68ec53259.lean/declarations/solve-apply--70a6cff22330215fb7328441.md) | 61 | `result-track:70a6cff22330215fb732844136d9f18866d504d34149e3e716691f85a03ca5a1` |
| 4 | `theorem` | [provenance_mulVec_solve](../../../../../mathematics/Algebra/LinearAlgebra/MatrixBlockSchur/Variant9baa5520b663ca341aa44f699783a76c4dcaa3da1bb42b17ffa8b6e68ec53259.lean/declarations/provenance-mulvec-solve--010168ca2e51cd6006b50752.md) | 67 | `result-track:010168ca2e51cd6006b507520b5f05402c2d6aff5e5f7a5d873a97d72d8fc223` |
| 5 | `theorem` | [form_sub_right](../../../../../mathematics/Algebra/LinearAlgebra/MatrixBlockSchur/Variant9baa5520b663ca341aa44f699783a76c4dcaa3da1bb42b17ffa8b6e68ec53259.lean/declarations/form-sub-right--3e575effcdf84ed0464970ce.md) | 75 | `result-track:3e575effcdf84ed0464970ce77930ee36d1c90622ea8827fe0315797d2d8b5c3` |
| 6 | `def` | [blockSchurSolver](../../../../../mathematics/Algebra/LinearAlgebra/MatrixBlockSchur/Variant9baa5520b663ca341aa44f699783a76c4dcaa3da1bb42b17ffa8b6e68ec53259.lean/declarations/blockschursolver--9178c805695a0d92cf91cd04.md) | 86 | `declaration-track:9178c805695a0d92cf91cd04028a9a52d1148bacb769e56dd43c93dd6bb2cb0d` |
| 7 | `theorem` | [blockSchurSolver_solve](../../../../../mathematics/Algebra/LinearAlgebra/MatrixBlockSchur/Variant9baa5520b663ca341aa44f699783a76c4dcaa3da1bb42b17ffa8b6e68ec53259.lean/declarations/blockschursolver-solve--ced0584821c18a5c4694240a.md) | 97 | `result-track:ced0584821c18a5c4694240a96f6f103bcc08488870256ec2a7bde7dfe74fb95` |
| 8 | `theorem` | [schur_eq_matrix_coordinates](../../../../../mathematics/Algebra/LinearAlgebra/MatrixBlockSchur/Variant9baa5520b663ca341aa44f699783a76c4dcaa3da1bb42b17ffa8b6e68ec53259.lean/declarations/schur-eq-matrix-coordinates--1edb51976d5a793e9811ac47.md) | 103 | `result-track:1edb51976d5a793e9811ac4782fc73e9825aa13d1743011e343caf5d1ec547fa` |
| 9 | `theorem` | [matrix_schur_diagonal_nonnegative](../../../../../mathematics/Algebra/LinearAlgebra/MatrixBlockSchur/Variant9baa5520b663ca341aa44f699783a76c4dcaa3da1bb42b17ffa8b6e68ec53259.lean/declarations/matrix-schur-diagonal-nonnegative--3f54577f5adc0a62fea3ee1d.md) | 114 | `result-track:3f54577f5adc0a62fea3ee1d794564d378efa8cbe945ac112436410cbc2ddb82` |
| 10 | `theorem` | [matrix_autonomous_energy_decomposition](../../../../../mathematics/Algebra/LinearAlgebra/MatrixBlockSchur/Variant9baa5520b663ca341aa44f699783a76c4dcaa3da1bb42b17ffa8b6e68ec53259.lean/declarations/matrix-autonomous-energy-decomposition--27a440b7316fa9037049586e.md) | 125 | `result-track:27a440b7316fa9037049586e10a03eaa319e3e79fe945aa9ad62c4d038771703` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
