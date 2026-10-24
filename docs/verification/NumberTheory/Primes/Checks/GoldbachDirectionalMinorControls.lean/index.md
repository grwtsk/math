# Verification target: GRWTSK.NumberTheory.Primes.Checks.GoldbachDirectionalMinorControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bf8ae8dcabef3e50251605a23f8b9557e5c85e4b",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Primes/Checks/GoldbachDirectionalMinorControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachDirectionalMinorControls.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachDirectionalMinorControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bf8ae8dcabef3e50251605a23f8b9557e5c85e4b`.

Source path: `GRWTSK/NumberTheory/Primes/Checks/GoldbachDirectionalMinorControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Primes/Checks/GoldbachDirectionalMinorControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Primes.GoldbachDirectionalMinorBoundary`](../../../../../mathematics/NumberTheory/Primes/GoldbachDirectionalMinorBoundary.lean/index.md) — import line 3; pinned internal source present.
- [`GRWTSK.NumberTheory.Primes.GoldbachTwoArcRationalBudget`](../../../../../mathematics/NumberTheory/Primes/GoldbachTwoArcRationalBudget.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [positive_minor_is_not_a_loss](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachDirectionalMinorControls.lean/declarations/positive-minor-is-not-a-loss--bd2455256d2925283f18c70a.md) | 13 | `result-track:bd2455256d2925283f18c70a170cb6b94e94c9906f8c092d8c495ac161eb014b` |
| 2 | `theorem` | [upper_minor_bound_is_insufficient](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachDirectionalMinorControls.lean/declarations/upper-minor-bound-is-insufficient--bbd04f8a7ac806fb3cf8bed8.md) | 18 | `result-track:bbd04f8a7ac806fb3cf8bed80560f6c62d056cf951ec1c9cfa64aa7e745fe043` |
| 3 | `theorem` | [nonstrict_directional_margin_is_insufficient](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachDirectionalMinorControls.lean/declarations/nonstrict-directional-margin-is-insufficient--b2d201565f3f575c45d49560.md) | 23 | `result-track:b2d201565f3f575c45d49560c9ca76986e97bf76152f11c8842772e717c5e552` |
| 4 | `theorem` | [correction_survives_zero_prefix_budget](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachDirectionalMinorControls.lean/declarations/correction-survives-zero-prefix-budget--38cbe791da3b79fcf71e2834.md) | 29 | `result-track:38cbe791da3b79fcf71e2834412dd520ec7f98ab6c7c78905dadff7a73e2e85b` |
| 5 | `theorem` | [q2_obstruction_rational_gap](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachDirectionalMinorControls.lean/declarations/q2-obstruction-rational-gap--5ce470cac47ee92369ebeddd.md) | 35 | `result-track:5ce470cac47ee92369ebeddd597a53482d7ed1fe7a0166cb55ac67c451f4f93c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
