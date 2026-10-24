# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.Checks.QuadraticThetaPrimeFejerMobiusLogCongruenceReductionControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ac5355df98cd1497e7d31e20cffe095ab13a681b",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/QuadraticThetaPrimeFejerMobiusLogCongruenceReductionControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/QuadraticThetaPrimeFejerMobiusLogCongruenceReductionControls.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/QuadraticThetaPrimeFejerMobiusLogCongruenceReductionControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ac5355df98cd1497e7d31e20cffe095ab13a681b`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/Checks/QuadraticThetaPrimeFejerMobiusLogCongruenceReductionControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/Checks/QuadraticThetaPrimeFejerMobiusLogCongruenceReductionControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerMobiusLogCongruenceReduction`](../../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogCongruenceReduction.lean/index.md) — import line 3; pinned internal source present.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [exactFrontier](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/QuadraticThetaPrimeFejerMobiusLogCongruenceReductionControls.lean/declarations/exactfrontier--1ffe980ee3d7af0704a0e0b3.md) | 13 | `declaration-track:1ffe980ee3d7af0704a0e0b338b9fc5c5f1b3c2fb568403b478054b603baa966` |
| 2 | `theorem` | [exactSupplierEquivalence](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/QuadraticThetaPrimeFejerMobiusLogCongruenceReductionControls.lean/declarations/exactsupplierequivalence--590db9ded842e95a3d14c353.md) | 28 | `result-track:590db9ded842e95a3d14c35342a1ad66e811c6b064d432b92a354d6c2629fe30` |
| 3 | `theorem` | [genuineDivisorCompatibility](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/QuadraticThetaPrimeFejerMobiusLogCongruenceReductionControls.lean/declarations/genuinedivisorcompatibility--bd5076c83d03492e424d706e.md) | 33 | `result-track:bd5076c83d03492e424d706ee3a47c4a65885e851e810d45beee518f439da31c` |
| 4 | `def` | [remainingArithmeticFrontier](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/QuadraticThetaPrimeFejerMobiusLogCongruenceReductionControls.lean/declarations/remainingarithmeticfrontier--767ba63bc4cf7a84fc4e931e.md) | 43 | `declaration-track:767ba63bc4cf7a84fc4e931ef317f0637125cf4d3933576f0582539b6232ada9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
