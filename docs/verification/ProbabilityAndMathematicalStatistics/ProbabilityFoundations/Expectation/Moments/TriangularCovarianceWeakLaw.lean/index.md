# Verification target: GRWTSK.Probability.Moments.TriangularCovarianceWeakLaw

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "09b94bc3dd37ee394ad07dcf427859c6c4b3481f",
  "lexical_observation_count": 1,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Probability/Moments/TriangularCovarianceWeakLaw.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/TriangularCovarianceWeakLaw.lean/index.md) · [Full source](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/TriangularCovarianceWeakLaw.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `09b94bc3dd37ee394ad07dcf427859c6c4b3481f`.

Source path: `GRWTSK/Probability/Moments/TriangularCovarianceWeakLaw.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Probability/Moments/TriangularCovarianceWeakLaw.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Probability.Moments.VarianceBudgetConvergence`](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/VarianceBudgetConvergence.lean/index.md) — import line 1; pinned internal source present.
- `Mathlib.Analysis.SpecificLimits.Basic` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [triangular_average_centered_tail_tendsto_zero](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/TriangularCovarianceWeakLaw.lean/declarations/triangular-average-centered-tail-tendsto-zero--ce90395af2dab37e76fabefb.md) | 14 | `result-track:ce90395af2dab37e76fabefbed6e4e396f7dd08ac5468a7a3b3fadd50a1002f3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
