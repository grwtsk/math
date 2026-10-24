# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.FiniteCountedEulerStrictProgress

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6fd249430d3ff71371056caeea538ed69309d205",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerStrictProgress.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerStrictProgress.lean/index.md) · [Full source](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerStrictProgress.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6fd249430d3ff71371056caeea538ed69309d205`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerStrictProgress.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerStrictProgress.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.FiniteCountedEulerResidualTrail`](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerResidualTrail.lean/index.md) — import line 3; pinned internal source present.
- [`GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.FiniteCountedEulerWalkConcat`](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerWalkConcat.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [FreshCountedTrail.exists_strict_progress_of_visited_unused_edge](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerStrictProgress.lean/declarations/freshcountedtrail-exists-strict-progress-of-visited-unused-edge--fb1ae290e279c824533957b5.md) | 27 | `result-track:fb1ae290e279c824533957b5a74fb5ae83db86fcb9c16463180726d6ccb529f5` |
| 2 | `theorem` | [FreshCountedTrail.complete_or_unused_edge](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerStrictProgress.lean/declarations/freshcountedtrail-complete-or-unused-edge--5e61f82955955549547f64b1.md) | 63 | `result-track:5e61f82955955549547f64b14e8fb937833227d73bf34c8d42ff63d2e0658e84` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
