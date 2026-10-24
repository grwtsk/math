# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ParametricIntervalIntegral.Variant2c5f92a7215e3ad6901ed17f07118b7f1db92472f391bcfd3fb2dfb6f653c8ac

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f61c68f6e0d3fa5fdc0ed30d4457f4a9adc4d5c8",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ParametricIntervalIntegral/Variant2c5f92a7215e3ad6901ed17f07118b7f1db92472f391bcfd3fb2dfb6f653c8ac.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ParametricIntervalIntegral/Variant2c5f92a7215e3ad6901ed17f07118b7f1db92472f391bcfd3fb2dfb6f653c8ac.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ParametricIntervalIntegral/Variant2c5f92a7215e3ad6901ed17f07118b7f1db92472f391bcfd3fb2dfb6f653c8ac.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f61c68f6e0d3fa5fdc0ed30d4457f4a9adc4d5c8`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ParametricIntervalIntegral/Variant2c5f92a7215e3ad6901ed17f07118b7f1db92472f391bcfd3fb2dfb6f653c8ac.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/ParametricIntervalIntegral/Variant2c5f92a7215e3ad6901ed17f07118b7f1db92472f391bcfd3fb2dfb6f653c8ac.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.ParametricIntegral` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [hasFDerivAt_integral_of_dominated_loc_of_lip](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ParametricIntervalIntegral/Variant2c5f92a7215e3ad6901ed17f07118b7f1db92472f391bcfd3fb2dfb6f653c8ac.lean/declarations/hasfderivat-integral-of-dominated-loc-of-lip--957d8eacaec7d364c5b09a07.md) | 38 | `result-track:957d8eacaec7d364c5b09a073600b2bf93898145b766116922ac378ee9fb6603` |
| 2 | `theorem` | [hasFDerivAt_integral_of_dominated_of_fderiv_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ParametricIntervalIntegral/Variant2c5f92a7215e3ad6901ed17f07118b7f1db92472f391bcfd3fb2dfb6f653c8ac.lean/declarations/hasfderivat-integral-of-dominated-of-fderiv-le--bbdd2f8339d0b5d01e8b8bfd.md) | 60 | `result-track:bbdd2f8339d0b5d01e8b8bfdd8c9516ad1648e287e81f624e68b468427b50a27` |
| 3 | `theorem` | [hasDerivAt_integral_of_dominated_loc_of_lip](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ParametricIntervalIntegral/Variant2c5f92a7215e3ad6901ed17f07118b7f1db92472f391bcfd3fb2dfb6f653c8ac.lean/declarations/hasderivat-integral-of-dominated-loc-of-lip--a633478b1ce7537a07466eec.md) | 79 | `result-track:a633478b1ce7537a07466eec35edb7d071410ca10078a227994ce439d2861d1a` |
| 4 | `theorem` | [hasDerivAt_integral_of_dominated_loc_of_deriv_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ParametricIntervalIntegral/Variant2c5f92a7215e3ad6901ed17f07118b7f1db92472f391bcfd3fb2dfb6f653c8ac.lean/declarations/hasderivat-integral-of-dominated-loc-of-deriv-le--ddb24fe8ffd633e6b0109cd6.md) | 100 | `result-track:ddb24fe8ffd633e6b0109cd6bc8c0f2c2e94483c63b7a833d9c32e3746e77993` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
