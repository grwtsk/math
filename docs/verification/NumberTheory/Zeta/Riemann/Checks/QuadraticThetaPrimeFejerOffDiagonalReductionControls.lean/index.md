# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.Checks.QuadraticThetaPrimeFejerOffDiagonalReductionControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f81abe552fa5daec01d4e9683fc4c4a16cc6c546",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/QuadraticThetaPrimeFejerOffDiagonalReductionControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/QuadraticThetaPrimeFejerOffDiagonalReductionControls.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/QuadraticThetaPrimeFejerOffDiagonalReductionControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f81abe552fa5daec01d4e9683fc4c4a16cc6c546`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/Checks/QuadraticThetaPrimeFejerOffDiagonalReductionControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/Checks/QuadraticThetaPrimeFejerOffDiagonalReductionControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerOffDiagonalReduction`](../../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerOffDiagonalReduction.lean/index.md) — import line 3; pinned internal source present.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [exactFrontier](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/QuadraticThetaPrimeFejerOffDiagonalReductionControls.lean/declarations/exactfrontier--dc6af194e3ff16ea07008fb7.md) | 13 | `declaration-track:dc6af194e3ff16ea07008fb7eac4d5ae7d6e9186b6ecc55c945322a3de4e6d2b` |
| 2 | `theorem` | [diagonalTargetClosed](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/QuadraticThetaPrimeFejerOffDiagonalReductionControls.lean/declarations/diagonaltargetclosed--a90e20f221e47e2ef4424828.md) | 27 | `result-track:a90e20f221e47e2ef4424828496c87a2cfa49dfe298a6bfb4f93fe9776d64e26` |
| 3 | `theorem` | [signedOffDiagonalSuffices](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/QuadraticThetaPrimeFejerOffDiagonalReductionControls.lean/declarations/signedoffdiagonalsuffices--dcd94cfe861409779744849d.md) | 45 | `result-track:dcd94cfe861409779744849d840841e682d592b5bbe23d75f3313816262b632d` |
| 4 | `def` | [remainingArithmeticFrontier](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/QuadraticThetaPrimeFejerOffDiagonalReductionControls.lean/declarations/remainingarithmeticfrontier--55309e99f008cbd3d97bd35c.md) | 50 | `declaration-track:55309e99f008cbd3d97bd35cd2b9962edae1fe68a8240b16892c017fc944c999` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
