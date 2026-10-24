# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.KernelVariationTransportAudit.Variant9aee929d12e749cbcc48a9c2be5dcf97ea1f4c6ebfde770fe0ca1f63e0fa3276

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7fe7ec21c6459a8ab55158a81ac047eeb487c1e2",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/KernelVariationTransportAudit/Variant9aee929d12e749cbcc48a9c2be5dcf97ea1f4c6ebfde770fe0ca1f63e0fa3276.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KernelVariationTransportAudit/Variant9aee929d12e749cbcc48a9c2be5dcf97ea1f4c6ebfde770fe0ca1f63e0fa3276.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KernelVariationTransportAudit/Variant9aee929d12e749cbcc48a9c2be5dcf97ea1f4c6ebfde770fe0ca1f63e0fa3276.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7fe7ec21c6459a8ab55158a81ac047eeb487c1e2`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/KernelVariationTransportAudit/Variant9aee929d12e749cbcc48a9c2be5dcf97ea1f4c6ebfde770fe0ca1f63e0fa3276.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/KernelVariationTransportAudit/Variant9aee929d12e749cbcc48a9c2be5dcf97ea1f4c6ebfde770fe0ca1f63e0fa3276.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.Deriv.MeanValue` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Inv` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Pow` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Real.Sqrt` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Intervals` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [abs_sub_le_reciprocal](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KernelVariationTransportAudit/Variant9aee929d12e749cbcc48a9c2be5dcf97ea1f4c6ebfde770fe0ca1f63e0fa3276.lean/declarations/abs-sub-le-reciprocal--9aab72920208f5e1ed05da9d.md) | 19 | `result-track:9aab72920208f5e1ed05da9df9106b6e762d4bc89c6d751a3ccea2c1e4054d71` |
| 2 | `theorem` | [sqrt_reciprocal_step_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KernelVariationTransportAudit/Variant9aee929d12e749cbcc48a9c2be5dcf97ea1f4c6ebfde770fe0ca1f63e0fa3276.lean/declarations/sqrt-reciprocal-step-le--66e5621475183e1bcccb5722.md) | 59 | `result-track:66e5621475183e1bcccb5722961b93c9faf6785c7f013522d33de6cd0bbbd05d` |
| 3 | `theorem` | [sqrt_reciprocal_variation_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KernelVariationTransportAudit/Variant9aee929d12e749cbcc48a9c2be5dcf97ea1f4c6ebfde770fe0ca1f63e0fa3276.lean/declarations/sqrt-reciprocal-variation-le--4459e9df9d17f3c525cc4de9.md) | 87 | `result-track:4459e9df9d17f3c525cc4de9489de3d93c9f738d7a105325658d4da204d03545` |
| 4 | `theorem` | [composed_abs_sub_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KernelVariationTransportAudit/Variant9aee929d12e749cbcc48a9c2be5dcf97ea1f4c6ebfde770fe0ca1f63e0fa3276.lean/declarations/composed-abs-sub-le--c51d0917c693cd66e40944eb.md) | 114 | `result-track:c51d0917c693cd66e40944eba459ee8a898447b8a50578ba3ba8f8d99d0648b6` |
| 5 | `def` | [composedVariation](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KernelVariationTransportAudit/Variant9aee929d12e749cbcc48a9c2be5dcf97ea1f4c6ebfde770fe0ca1f63e0fa3276.lean/declarations/composedvariation--765e2b03dc175b9ae34afd52.md) | 147 | `declaration-track:765e2b03dc175b9ae34afd5280512b36e5bb41cebf4b67137ad76804b77a66ef` |
| 6 | `theorem` | [composedVariation_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KernelVariationTransportAudit/Variant9aee929d12e749cbcc48a9c2be5dcf97ea1f4c6ebfde770fe0ca1f63e0fa3276.lean/declarations/composedvariation-zero--5aa0b208b26b806dba36a2e5.md) | 152 | `result-track:5aa0b208b26b806dba36a2e506af351330119b36da8a5c2ea083093cc5f83ea0` |
| 7 | `theorem` | [composedVariation_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KernelVariationTransportAudit/Variant9aee929d12e749cbcc48a9c2be5dcf97ea1f4c6ebfde770fe0ca1f63e0fa3276.lean/declarations/composedvariation-le--dc511494568fd0b19d4e668e.md) | 155 | `result-track:dc511494568fd0b19d4e668e616657041162af5f0f07fa817a6c13eca834e2d6` |
| 8 | `theorem` | [composedVariation_nat_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KernelVariationTransportAudit/Variant9aee929d12e749cbcc48a9c2be5dcf97ea1f4c6ebfde770fe0ca1f63e0fa3276.lean/declarations/composedvariation-nat-le--2822065834e4f5b71c980e35.md) | 219 | `result-track:2822065834e4f5b71c980e35b7e209ee6cb0a2f2864ea66ae08d23747b8c067f` |
| 9 | `theorem` | [rpow_three_halves](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KernelVariationTransportAudit/Variant9aee929d12e749cbcc48a9c2be5dcf97ea1f4c6ebfde770fe0ca1f63e0fa3276.lean/declarations/rpow-three-halves--68c709473ed6e321750dc567.md) | 231 | `result-track:68c709473ed6e321750dc567e5dbabd04c8534e1b914e68e1bb5d8b28f3b3496` |
| 10 | `theorem` | [composedVariation_nat_le_rpow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KernelVariationTransportAudit/Variant9aee929d12e749cbcc48a9c2be5dcf97ea1f4c6ebfde770fe0ca1f63e0fa3276.lean/declarations/composedvariation-nat-le-rpow--0992b8b146d800274e99a982.md) | 236 | `result-track:0992b8b146d800274e99a982af02f9a4b96313a0d1b377cef12e7221e1229c90` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
