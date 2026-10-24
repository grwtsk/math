# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.NegativeCostFatouAttempt06.Variant2068963ec863e4f40fb44ea3bbe478141fb920de3d92f435e24640749af40c04

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e6eef0199e0b392cb38abf3f6b190659a8c82199",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/NegativeCostFatouAttempt06/Variant2068963ec863e4f40fb44ea3bbe478141fb920de3d92f435e24640749af40c04.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NegativeCostFatouAttempt06/Variant2068963ec863e4f40fb44ea3bbe478141fb920de3d92f435e24640749af40c04.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NegativeCostFatouAttempt06/Variant2068963ec863e4f40fb44ea3bbe478141fb920de3d92f435e24640749af40c04.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e6eef0199e0b392cb38abf3f6b190659a8c82199`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/NegativeCostFatouAttempt06/Variant2068963ec863e4f40fb44ea3bbe478141fb920de3d92f435e24640749af40c04.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/NegativeCostFatouAttempt06/Variant2068963ec863e4f40fb44ea3bbe478141fb920de3d92f435e24640749af40c04.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.Bochner.Set` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.L1Space.Integrable` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Lebesgue.Basic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [integrable_limit_of_nonnegative_uniform_integrals](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NegativeCostFatouAttempt06/Variant2068963ec863e4f40fb44ea3bbe478141fb920de3d92f435e24640749af40c04.lean/declarations/integrable-limit-of-nonnegative-uniform-integrals--ed07c87e51138e91758c7494.md) | 16 | `result-track:ed07c87e51138e91758c7494ec690da3842b0461c9d304d2d2bfb920674d9ef5` |
| 2 | `theorem` | [no_uniform_nonnegative_integrals_of_nonintegrable_limit](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NegativeCostFatouAttempt06/Variant2068963ec863e4f40fb44ea3bbe478141fb920de3d92f435e24640749af40c04.lean/declarations/no-uniform-nonnegative-integrals-of-nonintegrable-limit--6e6ed3e469b293dd0fe92281.md) | 35 | `result-track:6e6ed3e469b293dd0fe922817b40566e8f13fab9a5d47cef2ff78fd22119e50b` |
| 3 | `theorem` | [not_integrableOn_of_positive_tail](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NegativeCostFatouAttempt06/Variant2068963ec863e4f40fb44ea3bbe478141fb920de3d92f435e24640749af40c04.lean/declarations/not-integrableon-of-positive-tail--934841de2e935c0164bda63a.md) | 46 | `result-track:934841de2e935c0164bda63a878282202fefb1c977dd03674e8b44d88f0cd0d3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
