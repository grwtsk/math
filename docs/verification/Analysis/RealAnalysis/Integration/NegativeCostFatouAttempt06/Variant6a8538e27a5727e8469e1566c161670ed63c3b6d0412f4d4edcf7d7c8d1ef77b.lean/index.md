# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.NegativeCostFatouAttempt06.Variant6a8538e27a5727e8469e1566c161670ed63c3b6d0412f4d4edcf7d7c8d1ef77b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "89e42e5ed47d550616e5566ac3616a3df3a4de8e",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/NegativeCostFatouAttempt06/Variant6a8538e27a5727e8469e1566c161670ed63c3b6d0412f4d4edcf7d7c8d1ef77b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NegativeCostFatouAttempt06/Variant6a8538e27a5727e8469e1566c161670ed63c3b6d0412f4d4edcf7d7c8d1ef77b.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NegativeCostFatouAttempt06/Variant6a8538e27a5727e8469e1566c161670ed63c3b6d0412f4d4edcf7d7c8d1ef77b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `89e42e5ed47d550616e5566ac3616a3df3a4de8e`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/NegativeCostFatouAttempt06/Variant6a8538e27a5727e8469e1566c161670ed63c3b6d0412f4d4edcf7d7c8d1ef77b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/NegativeCostFatouAttempt06/Variant6a8538e27a5727e8469e1566c161670ed63c3b6d0412f4d4edcf7d7c8d1ef77b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.Bochner.Set` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.L1Space.Integrable` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Lebesgue.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [integrable_limit_of_nonnegative_uniform_integrals](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NegativeCostFatouAttempt06/Variant6a8538e27a5727e8469e1566c161670ed63c3b6d0412f4d4edcf7d7c8d1ef77b.lean/declarations/integrable-limit-of-nonnegative-uniform-integrals--02c6d01995967d6064ba2fcc.md) | 24 | `result-track:02c6d01995967d6064ba2fcc03bb1bc38d0ddfdf03e56509589328630f3281fe` |
| 2 | `theorem` | [no_uniform_nonnegative_integrals_of_nonintegrable_limit](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NegativeCostFatouAttempt06/Variant6a8538e27a5727e8469e1566c161670ed63c3b6d0412f4d4edcf7d7c8d1ef77b.lean/declarations/no-uniform-nonnegative-integrals-of-nonintegrable-limit--e4c65fb18886b3fc0879c009.md) | 43 | `result-track:e4c65fb18886b3fc0879c009e862df90dc8cc096fefa0f18661ceb2068c10c80` |
| 3 | `theorem` | [not_integrableOn_of_positive_tail](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NegativeCostFatouAttempt06/Variant6a8538e27a5727e8469e1566c161670ed63c3b6d0412f4d4edcf7d7c8d1ef77b.lean/declarations/not-integrableon-of-positive-tail--3815e47ee908666a3fc62035.md) | 54 | `result-track:3815e47ee908666a3fc620359f618c15198a23de7e2d8c07f3cf7cbf3f8ffc18` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
