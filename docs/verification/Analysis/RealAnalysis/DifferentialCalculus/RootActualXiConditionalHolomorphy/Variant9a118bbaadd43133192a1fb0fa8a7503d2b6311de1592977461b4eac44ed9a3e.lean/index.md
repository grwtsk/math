# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.RootActualXiConditionalHolomorphy.Variant9a118bbaadd43133192a1fb0fa8a7503d2b6311de1592977461b4eac44ed9a3e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8f5ce606afc3362d8eba59e26431fc0e75c554a7",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RootActualXiConditionalHolomorphy/Variant9a118bbaadd43133192a1fb0fa8a7503d2b6311de1592977461b4eac44ed9a3e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RootActualXiConditionalHolomorphy/Variant9a118bbaadd43133192a1fb0fa8a7503d2b6311de1592977461b4eac44ed9a3e.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RootActualXiConditionalHolomorphy/Variant9a118bbaadd43133192a1fb0fa8a7503d2b6311de1592977461b4eac44ed9a3e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8f5ce606afc3362d8eba59e26431fc0e75c554a7`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RootActualXiConditionalHolomorphy/Variant9a118bbaadd43133192a1fb0fa8a7503d2b6311de1592977461b4eac44ed9a3e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/RootActualXiConditionalHolomorphy/Variant9a118bbaadd43133192a1fb0fa8a7503d2b6311de1592977461b4eac44ed9a3e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `RootActualXiConditionalComplexLaplace` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ParametricIntegral` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.CauchyIntegral` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [time_exp_bound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RootActualXiConditionalHolomorphy/Variant9a118bbaadd43133192a1fb0fa8a7503d2b6311de1592977461b4eac44ed9a3e.lean/declarations/time-exp-bound--f7ce03cfd7cd16498d544ae8.md) | 20 | `result-track:f7ce03cfd7cd16498d544ae89bc53136467363da732250694f85a57dcaf3d946` |
| 2 | `theorem` | [derivative_norm_bound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RootActualXiConditionalHolomorphy/Variant9a118bbaadd43133192a1fb0fa8a7503d2b6311de1592977461b4eac44ed9a3e.lean/declarations/derivative-norm-bound--ec705d20190f9c8f6f9631b7.md) | 28 | `result-track:ec705d20190f9c8f6f9631b79fa66b8808098d4766698afd3be0eb6bd9d10cdc` |
| 3 | `theorem` | [kernel_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RootActualXiConditionalHolomorphy/Variant9a118bbaadd43133192a1fb0fa8a7503d2b6311de1592977461b4eac44ed9a3e.lean/declarations/kernel-hasderivat--75a97b4f486c12b28f3f0127.md) | 51 | `result-track:75a97b4f486c12b28f3f012776c64d7d7dd8be17801fd99dece1e54f45310360` |
| 4 | `theorem` | [actualXiComplexLaplace_hasDerivAt_of_future_average](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RootActualXiConditionalHolomorphy/Variant9a118bbaadd43133192a1fb0fa8a7503d2b6311de1592977461b4eac44ed9a3e.lean/declarations/actualxicomplexlaplace-hasderivat-of-future-average--99ece802d9fb0390a16fbe97.md) | 61 | `result-track:99ece802d9fb0390a16fbe97144edf7320e7427b065774e6ed23780d3900d9ef` |
| 5 | `theorem` | [actualXiComplexLaplace_analyticOnNhd_of_future_average](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RootActualXiConditionalHolomorphy/Variant9a118bbaadd43133192a1fb0fa8a7503d2b6311de1592977461b4eac44ed9a3e.lean/declarations/actualxicomplexlaplace-analyticonnhd-of-future-average--32ab9fecd81a698783f84385.md) | 113 | `result-track:32ab9fecd81a698783f8438594237e5e7dc17a97de45da13ab9009b2763ae7c9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
