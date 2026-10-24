# Verification target: GRWTSK.NumberTheory.Chebyshev.Checks.LogBudgetIntegrationControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "23bea55880e818c96d3b5ef379579cac5e843c03",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Chebyshev/Checks/LogBudgetIntegrationControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Chebyshev/Checks/LogBudgetIntegrationControls.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Chebyshev/Checks/LogBudgetIntegrationControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `23bea55880e818c96d3b5ef379579cac5e843c03`.

Source path: `GRWTSK/NumberTheory/Chebyshev/Checks/LogBudgetIntegrationControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Chebyshev/Checks/LogBudgetIntegrationControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Chebyshev.LegendreLogBudget`](../../../../../mathematics/NumberTheory/Chebyshev/LegendreLogBudget.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [complete_mass_identity_control](../../../../../mathematics/NumberTheory/Chebyshev/Checks/LogBudgetIntegrationControls.lean/declarations/complete-mass-identity-control--5333e7a0b091192f330a5fa5.md) | 26 | `result-track:5333e7a0b091192f330a5fa5c2c488bfa406e31dc56dc2577a88a683244f70c7` |
| 2 | `theorem` | [upper_square_retained_control](../../../../../mathematics/NumberTheory/Chebyshev/Checks/LogBudgetIntegrationControls.lean/declarations/upper-square-retained-control--c1f466bcc05dd431fcb780e3.md) | 31 | `result-track:c1f466bcc05dd431fcb780e353addd8852f6406d8e1eb00d9cd687edf62c99e5` |
| 3 | `theorem` | [two_exponents_retained_control](../../../../../mathematics/NumberTheory/Chebyshev/Checks/LogBudgetIntegrationControls.lean/declarations/two-exponents-retained-control--895b4443b72d3f262246ac73.md) | 36 | `result-track:895b4443b72d3f262246ac73f90b80736e90e04b24cff7b3a888c5881849015b` |
| 4 | `theorem` | [equality_budget_allows_failure_control](../../../../../mathematics/NumberTheory/Chebyshev/Checks/LogBudgetIntegrationControls.lean/declarations/equality-budget-allows-failure-control--3ae963e728aebddfe7889d1f.md) | 41 | `result-track:3ae963e728aebddfe7889d1f8cb6da31951c9e0214503571a24e1079fd573c89` |
| 5 | `theorem` | [non_strict_margin_control](../../../../../mathematics/NumberTheory/Chebyshev/Checks/LogBudgetIntegrationControls.lean/declarations/non-strict-margin-control--e137bff609941477e9c9242a.md) | 49 | `result-track:e137bff609941477e9c9242a69c9ed89271d8b0a01e2c2659d4d0bc72fac9b24` |
| 6 | `theorem` | [empty_finite_scope_control](../../../../../mathematics/NumberTheory/Chebyshev/Checks/LogBudgetIntegrationControls.lean/declarations/empty-finite-scope-control--d4f20f43197c33a3b7d6dfc7.md) | 54 | `result-track:d4f20f43197c33a3b7d6dfc7f4711285ebe8cfe83625fd33cd2c602ef2d2563d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
