# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ActualGoodKernelAttempt02.Variant5a75a154d3bdb9327115c38321a3452daaa4566e15102c9447d5c6604aebca96

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e6935361baa6b686bc18cad1bf1e2e60273a65f8",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualGoodKernelAttempt02/Variant5a75a154d3bdb9327115c38321a3452daaa4566e15102c9447d5c6604aebca96.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualGoodKernelAttempt02/Variant5a75a154d3bdb9327115c38321a3452daaa4566e15102c9447d5c6604aebca96.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualGoodKernelAttempt02/Variant5a75a154d3bdb9327115c38321a3452daaa4566e15102c9447d5c6604aebca96.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e6935361baa6b686bc18cad1bf1e2e60273a65f8`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualGoodKernelAttempt02/Variant5a75a154d3bdb9327115c38321a3452daaa4566e15102c9447d5c6604aebca96.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/ActualGoodKernelAttempt02/Variant5a75a154d3bdb9327115c38321a3452daaa4566e15102c9447d5c6604aebca96.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LogarithmicSource` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Support` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Deriv` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [actualLogSource_contDiff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualGoodKernelAttempt02/Variant5a75a154d3bdb9327115c38321a3452daaa4566e15102c9447d5c6604aebca96.lean/declarations/actuallogsource-contdiff--5f6db3923e9a24e7c4c4b6be.md) | 18 | `result-track:5f6db3923e9a24e7c4c4b6be675e03e195f6cf24eb9d00770c367631dd98764e` |
| 2 | `theorem` | [actualLogSource_deriv_hasCompactSupport](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualGoodKernelAttempt02/Variant5a75a154d3bdb9327115c38321a3452daaa4566e15102c9447d5c6604aebca96.lean/declarations/actuallogsource-deriv-hascompactsupport--a0fcf17fce9fbbc91d63f380.md) | 36 | `result-track:a0fcf17fce9fbbc91d63f380e50780946aa13f46432f1202fd8af8fd0ba1878f` |
| 3 | `theorem` | [actualLogSource_integrable_global](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualGoodKernelAttempt02/Variant5a75a154d3bdb9327115c38321a3452daaa4566e15102c9447d5c6604aebca96.lean/declarations/actuallogsource-integrable-global--d692142ab3b52616ccb655ca.md) | 40 | `result-track:d692142ab3b52616ccb655ca6fb56e28b5474efdcd2b4092033d25c6a4096fed` |
| 4 | `theorem` | [actualLogSource_weighted_derivative_integrable_global](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualGoodKernelAttempt02/Variant5a75a154d3bdb9327115c38321a3452daaa4566e15102c9447d5c6604aebca96.lean/declarations/actuallogsource-weighted-derivative-integrable-global--ea5589a48f0acd5d25665085.md) | 45 | `result-track:ea5589a48f0acd5d256650856b1de7fd492f6fe7cb4aa3b51a600c38bb8b20fe` |
| 5 | `theorem` | [actualLogSource_weighted_derivative_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualGoodKernelAttempt02/Variant5a75a154d3bdb9327115c38321a3452daaa4566e15102c9447d5c6604aebca96.lean/declarations/actuallogsource-weighted-derivative-integrable--2199125f4f3136450c71e7b7.md) | 52 | `result-track:2199125f4f3136450c71e7b727dd7cb888d224de1c0e82ec8c0883f4b1deab72` |
| 6 | `theorem` | [actual_good_kernel_hypotheses](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualGoodKernelAttempt02/Variant5a75a154d3bdb9327115c38321a3452daaa4566e15102c9447d5c6604aebca96.lean/declarations/actual-good-kernel-hypotheses--16807b3fc02f3b99b2a9b273.md) | 56 | `result-track:16807b3fc02f3b99b2a9b273583539bd4bd5cdff5b7ab5973e6dff814aa0ce28` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
