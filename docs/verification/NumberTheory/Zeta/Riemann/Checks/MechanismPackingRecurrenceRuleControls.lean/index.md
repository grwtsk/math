# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.Checks.MechanismPackingRecurrenceRuleControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0329e19e1c3f9c47ebb6391d947ceb280fdc9512",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/MechanismPackingRecurrenceRuleControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/MechanismPackingRecurrenceRuleControls.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/MechanismPackingRecurrenceRuleControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0329e19e1c3f9c47ebb6391d947ceb280fdc9512`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/Checks/MechanismPackingRecurrenceRuleControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/Checks/MechanismPackingRecurrenceRuleControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.MechanismPackingRecurrenceRule`](../../../../../../mathematics/NumberTheory/Zeta/Riemann/MechanismPackingRecurrenceRule.lean/index.md) — import line 3; pinned internal source present.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [recurrence_program_has_no_stage_positivity_obligation](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/MechanismPackingRecurrenceRuleControls.lean/declarations/recurrence-program-has-no-stage-positivity-obligation--325da9f90f3dc4efd2439ea3.md) | 15 | `result-track:325da9f90f3dc4efd2439ea351bec9c74a33866aae5fa27e970c29d14633a7fe` |
| 2 | `theorem` | [recurrence_program_has_exact_two_point_memory](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/MechanismPackingRecurrenceRuleControls.lean/declarations/recurrence-program-has-exact-two-point-memory--8f1453afe83225e22c74c357.md) | 26 | `result-track:8f1453afe83225e22c74c3579ca41ea3607c2121208fbffe272a2542a24141ea` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
