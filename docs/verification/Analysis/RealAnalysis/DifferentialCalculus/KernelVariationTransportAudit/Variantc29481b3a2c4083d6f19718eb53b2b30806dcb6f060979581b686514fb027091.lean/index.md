# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.KernelVariationTransportAudit.Variantc29481b3a2c4083d6f19718eb53b2b30806dcb6f060979581b686514fb027091

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "84449de5983d2cf6351c839c21baa8e7dc64939b",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/KernelVariationTransportAudit/Variantc29481b3a2c4083d6f19718eb53b2b30806dcb6f060979581b686514fb027091.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KernelVariationTransportAudit/Variantc29481b3a2c4083d6f19718eb53b2b30806dcb6f060979581b686514fb027091.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KernelVariationTransportAudit/Variantc29481b3a2c4083d6f19718eb53b2b30806dcb6f060979581b686514fb027091.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `84449de5983d2cf6351c839c21baa8e7dc64939b`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/KernelVariationTransportAudit/Variantc29481b3a2c4083d6f19718eb53b2b30806dcb6f060979581b686514fb027091.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/KernelVariationTransportAudit/Variantc29481b3a2c4083d6f19718eb53b2b30806dcb6f060979581b686514fb027091.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.Deriv.MeanValue` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Inv` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Pow` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Real.Sqrt` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Intervals` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [abs_sub_le_reciprocal](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KernelVariationTransportAudit/Variantc29481b3a2c4083d6f19718eb53b2b30806dcb6f060979581b686514fb027091.lean/declarations/abs-sub-le-reciprocal--dc6906d6a8f1e8a08cb68f98.md) | 27 | `result-track:dc6906d6a8f1e8a08cb68f989de91edc6273b9eeb0b0a1912e83703d4f491ee8` |
| 2 | `theorem` | [sqrt_reciprocal_step_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KernelVariationTransportAudit/Variantc29481b3a2c4083d6f19718eb53b2b30806dcb6f060979581b686514fb027091.lean/declarations/sqrt-reciprocal-step-le--8d959709f7219ec10559e46b.md) | 67 | `result-track:8d959709f7219ec10559e46b6b17f7c819d1553270fae691aa5973b0a7402d53` |
| 3 | `theorem` | [sqrt_reciprocal_variation_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KernelVariationTransportAudit/Variantc29481b3a2c4083d6f19718eb53b2b30806dcb6f060979581b686514fb027091.lean/declarations/sqrt-reciprocal-variation-le--6c1404da9b2136f4296d187b.md) | 95 | `result-track:6c1404da9b2136f4296d187bc95d9351d2a3b67195678004d85e7b358e0a6dca` |
| 4 | `theorem` | [composed_abs_sub_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KernelVariationTransportAudit/Variantc29481b3a2c4083d6f19718eb53b2b30806dcb6f060979581b686514fb027091.lean/declarations/composed-abs-sub-le--5bb404b05f4cf857de65a7dd.md) | 122 | `result-track:5bb404b05f4cf857de65a7ddf6577a798498fb812ce813ef9ddb2ad844f67419` |
| 5 | `def` | [composedVariation](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KernelVariationTransportAudit/Variantc29481b3a2c4083d6f19718eb53b2b30806dcb6f060979581b686514fb027091.lean/declarations/composedvariation--19c080e2fb6e39d78c967873.md) | 155 | `declaration-track:19c080e2fb6e39d78c967873a2640a602ff95e144777eca3337bacff65411d7f` |
| 6 | `theorem` | [composedVariation_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KernelVariationTransportAudit/Variantc29481b3a2c4083d6f19718eb53b2b30806dcb6f060979581b686514fb027091.lean/declarations/composedvariation-zero--8fa1dfc5758e89b0740e0276.md) | 160 | `result-track:8fa1dfc5758e89b0740e02764dc25b3c53006f886aaf7b7ad122ee4c76735140` |
| 7 | `theorem` | [composedVariation_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KernelVariationTransportAudit/Variantc29481b3a2c4083d6f19718eb53b2b30806dcb6f060979581b686514fb027091.lean/declarations/composedvariation-le--93cfee4bd319b018258c6f78.md) | 163 | `result-track:93cfee4bd319b018258c6f780cda24e0aa7d248fbba8ade27b3972b8dd9361b1` |
| 8 | `theorem` | [composedVariation_nat_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KernelVariationTransportAudit/Variantc29481b3a2c4083d6f19718eb53b2b30806dcb6f060979581b686514fb027091.lean/declarations/composedvariation-nat-le--8d030e9e19a9884a358ae4b4.md) | 227 | `result-track:8d030e9e19a9884a358ae4b4e23ffb38916f2867918c7c12f2987224aae4eb3a` |
| 9 | `theorem` | [rpow_three_halves](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KernelVariationTransportAudit/Variantc29481b3a2c4083d6f19718eb53b2b30806dcb6f060979581b686514fb027091.lean/declarations/rpow-three-halves--04a6fbec46fe5bb50ccbd26a.md) | 239 | `result-track:04a6fbec46fe5bb50ccbd26aae1df0f93f88c64b5e852a01590531206a4f881c` |
| 10 | `theorem` | [composedVariation_nat_le_rpow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KernelVariationTransportAudit/Variantc29481b3a2c4083d6f19718eb53b2b30806dcb6f060979581b686514fb027091.lean/declarations/composedvariation-nat-le-rpow--0c21ff539240b85cf2af5881.md) | 244 | `result-track:0c21ff539240b85cf2af58819771b859a62e2c46517e671ec9c66979e8d0f83d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
