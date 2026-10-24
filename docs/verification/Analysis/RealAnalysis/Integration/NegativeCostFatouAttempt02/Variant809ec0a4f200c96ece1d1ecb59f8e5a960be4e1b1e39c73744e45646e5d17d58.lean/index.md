# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.NegativeCostFatouAttempt02.Variant809ec0a4f200c96ece1d1ecb59f8e5a960be4e1b1e39c73744e45646e5d17d58

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c80602b7fda86f5e52c5f6026e11e732b2e0d646",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/NegativeCostFatouAttempt02/Variant809ec0a4f200c96ece1d1ecb59f8e5a960be4e1b1e39c73744e45646e5d17d58.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NegativeCostFatouAttempt02/Variant809ec0a4f200c96ece1d1ecb59f8e5a960be4e1b1e39c73744e45646e5d17d58.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NegativeCostFatouAttempt02/Variant809ec0a4f200c96ece1d1ecb59f8e5a960be4e1b1e39c73744e45646e5d17d58.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c80602b7fda86f5e52c5f6026e11e732b2e0d646`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/NegativeCostFatouAttempt02/Variant809ec0a4f200c96ece1d1ecb59f8e5a960be4e1b1e39c73744e45646e5d17d58.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/NegativeCostFatouAttempt02/Variant809ec0a4f200c96ece1d1ecb59f8e5a960be4e1b1e39c73744e45646e5d17d58.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.Bochner.Basic` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.L1Space.Integrable` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Lebesgue.Basic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [integrable_limit_of_nonnegative_uniform_integrals](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NegativeCostFatouAttempt02/Variant809ec0a4f200c96ece1d1ecb59f8e5a960be4e1b1e39c73744e45646e5d17d58.lean/declarations/integrable-limit-of-nonnegative-uniform-integrals--ab90e41e09316da35cb7d7e0.md) | 16 | `result-track:ab90e41e09316da35cb7d7e01cf24bc42538c6c92dba1d7f97213455ab14831e` |
| 2 | `theorem` | [no_uniform_nonnegative_integrals_of_nonintegrable_limit](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NegativeCostFatouAttempt02/Variant809ec0a4f200c96ece1d1ecb59f8e5a960be4e1b1e39c73744e45646e5d17d58.lean/declarations/no-uniform-nonnegative-integrals-of-nonintegrable-limit--8cff65d44dda72f2fefd0135.md) | 35 | `result-track:8cff65d44dda72f2fefd01355fddd3496b100072d90ed448fe222bdd0c850c38` |
| 3 | `theorem` | [not_integrableOn_of_positive_tail](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NegativeCostFatouAttempt02/Variant809ec0a4f200c96ece1d1ecb59f8e5a960be4e1b1e39c73744e45646e5d17d58.lean/declarations/not-integrableon-of-positive-tail--ef847dafc34611272ff35eca.md) | 46 | `result-track:ef847dafc34611272ff35eca717e3dd78523f10a9162a77cd40204fc1e7c0f1c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
