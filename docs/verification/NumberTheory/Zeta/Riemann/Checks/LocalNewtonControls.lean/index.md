# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.Checks.LocalNewtonControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "18f428f8f1211e205d6a9235b42f0575da1582b6",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/LocalNewtonControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/LocalNewtonControls.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/LocalNewtonControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `18f428f8f1211e205d6a9235b42f0575da1582b6`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/Checks/LocalNewtonControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/Checks/LocalNewtonControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.LocalNewtonWitness`](../../../../../../mathematics/NumberTheory/Zeta/Riemann/LocalNewtonWitness.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Tactic.NormNum` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [quadraticData](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/LocalNewtonControls.lean/declarations/quadraticdata--6f10851f85215d92c2d5cf2e.md) | 20 | `declaration-track:6f10851f85215d92c2d5cf2e99360e6b2a48b1950bb2569b48b3074aa11e4314` |
| 2 | `theorem` | [quadratic_margins](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/LocalNewtonControls.lean/declarations/quadratic-margins--aeef63067b8b48f862e0c680.md) | 22 | `result-track:aeef63067b8b48f862e0c6800ea278b27e467e88a4c77f4fb86a9175910dd97f` |
| 3 | `theorem` | [multiple_root_defect_rejected](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/LocalNewtonControls.lean/declarations/multiple-root-defect-rejected--a86572b912b0a6e2c33aa75a.md) | 27 | `result-track:a86572b912b0a6e2c33aa75a14c24100f1cf38de8cfb22a9b769eb37a498843d` |
| 4 | `theorem` | [missing_selfmap_rejected](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/LocalNewtonControls.lean/declarations/missing-selfmap-rejected--62adfe2b943bf930046245fc.md) | 31 | `result-track:62adfe2b943bf930046245fc383e631cbc8fb07e91ac323a5ed9fd34291a6e01` |
| 5 | `theorem` | [zero_preconditioner_rejected](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/LocalNewtonControls.lean/declarations/zero-preconditioner-rejected--9c9225b29c146a9b06110f46.md) | 34 | `result-track:9c9225b29c146a9b06110f46d9020a882c16031f81ee74087bae90cbb2d1f977` |
| 6 | `theorem` | [imaginary_defect_rejected](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/LocalNewtonControls.lean/declarations/imaginary-defect-rejected--2d494bfa19f58ee7c97c9ba5.md) | 38 | `result-track:2d494bfa19f58ee7c97c9ba5f90dacc9026706e9f8d4f5159b2b09425ed035a5` |
| 7 | `theorem` | [negative_errors_rejected](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/LocalNewtonControls.lean/declarations/negative-errors-rejected--791504f6352b18361b7ca12f.md) | 41 | `result-track:791504f6352b18361b7ca12fca51b283bc6eb5e139cec35a4b0bae2b0ae94749` |
| 8 | `theorem` | [geometry_controls](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/LocalNewtonControls.lean/declarations/geometry-controls--b09171818f1ad2b072a90b1c.md) | 47 | `result-track:b09171818f1ad2b072a90b1ce64aeaf7e93ca562a3c5c8ccd21eab0a65c58a1c` |
| 9 | `theorem` | [unproved_curvature_is_not_checked](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/LocalNewtonControls.lean/declarations/unproved-curvature-is-not-checked--5f6607620dbddd08614ab966.md) | 54 | `result-track:5f6607620dbddd08614ab9661405bc776d39f55a55e57f7e15b382f8b0d454d4` |
| 10 | `theorem` | [no_zero_derivative_defect](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/LocalNewtonControls.lean/declarations/no-zero-derivative-defect--b7a7fb5b262f6b0e1a40ec96.md) | 59 | `result-track:b7a7fb5b262f6b0e1a40ec96fe51726ef0ac274fdcba8dfcb6bddb248736f7c2` |
| 11 | `theorem` | [affine_analytic_example](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/LocalNewtonControls.lean/declarations/affine-analytic-example--0e1eba716986cfdacab1ca97.md) | 62 | `result-track:0e1eba716986cfdacab1ca9798b9f1464cef3a2d7ee6a09dbe35ca0cd0cac4f9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
