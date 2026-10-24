# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.Checks.PrimeThetaQuadraticKernelCriterionControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d70dadd9e2b2b4eedf62a52dd3c9c036d5d3f1a1",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/PrimeThetaQuadraticKernelCriterionControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PrimeThetaQuadraticKernelCriterionControls.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PrimeThetaQuadraticKernelCriterionControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d70dadd9e2b2b4eedf62a52dd3c9c036d5d3f1a1`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/Checks/PrimeThetaQuadraticKernelCriterionControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/Checks/PrimeThetaQuadraticKernelCriterionControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.ClauseIndexedPrimeThetaKernelCriterion`](../../../../../../mathematics/NumberTheory/Zeta/Riemann/ClauseIndexedPrimeThetaKernelCriterion.lean/index.md) — import line 3; pinned internal source present.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [positivePolarity](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PrimeThetaQuadraticKernelCriterionControls.lean/declarations/positivepolarity--d4ea80548d2604922a86ac45.md) | 16 | `declaration-track:d4ea80548d2604922a86ac455f57a8e72ef081db90c8da77bad74cfd0a3b2a44` |
| 2 | `theorem` | [concrete_clause_kernel_criteria](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PrimeThetaQuadraticKernelCriterionControls.lean/declarations/concrete-clause-kernel-criteria--44563cc37262c9814fe0262f.md) | 21 | `result-track:44563cc37262c9814fe0262fa0717b03058e5f42eec0a996c95e8139a80ed265` |
| 3 | `theorem` | [concrete_two_clause_kernel_criterion](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PrimeThetaQuadraticKernelCriterionControls.lean/declarations/concrete-two-clause-kernel-criterion--586921ea33cadcf21b7ce3ed.md) | 26 | `result-track:586921ea33cadcf21b7ce3ed9f0872578e2ef6dea20b6f96c58b0eb4b6566dc9` |
| 4 | `theorem` | [zero_response_zero_residual_not_majorant](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PrimeThetaQuadraticKernelCriterionControls.lean/declarations/zero-response-zero-residual-not-majorant--112f1a0eeec5a757b791a682.md) | 33 | `result-track:112f1a0eeec5a757b791a682b4423e58f143f53cbc3bc746caab0d55798fe57b` |
| 5 | `def` | [requiredKernelObligations](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PrimeThetaQuadraticKernelCriterionControls.lean/declarations/requiredkernelobligations--afc4a3c2bf906c380c28f7a3.md) | 41 | `declaration-track:afc4a3c2bf906c380c28f7a35abe1141928ba185494d9ff5e46741fa9c7fcfdc` |
| 6 | `def` | [prohibitedPromotions](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PrimeThetaQuadraticKernelCriterionControls.lean/declarations/prohibitedpromotions--a9b6226db786ec8cc19118bb.md) | 48 | `declaration-track:a9b6226db786ec8cc19118bb0b825e7223dd2fb014e2f69065dfe7350ebe2d8f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
