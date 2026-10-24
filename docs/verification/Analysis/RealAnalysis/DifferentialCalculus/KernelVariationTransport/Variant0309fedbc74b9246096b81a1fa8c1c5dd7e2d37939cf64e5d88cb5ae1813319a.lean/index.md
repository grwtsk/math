# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.KernelVariationTransport.Variant0309fedbc74b9246096b81a1fa8c1c5dd7e2d37939cf64e5d88cb5ae1813319a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b33461db8ed0e94763546a954f13ecc9dd10d0a4",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/KernelVariationTransport/Variant0309fedbc74b9246096b81a1fa8c1c5dd7e2d37939cf64e5d88cb5ae1813319a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KernelVariationTransport/Variant0309fedbc74b9246096b81a1fa8c1c5dd7e2d37939cf64e5d88cb5ae1813319a.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KernelVariationTransport/Variant0309fedbc74b9246096b81a1fa8c1c5dd7e2d37939cf64e5d88cb5ae1813319a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b33461db8ed0e94763546a954f13ecc9dd10d0a4`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/KernelVariationTransport/Variant0309fedbc74b9246096b81a1fa8c1c5dd7e2d37939cf64e5d88cb5ae1813319a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/KernelVariationTransport/Variant0309fedbc74b9246096b81a1fa8c1c5dd7e2d37939cf64e5d88cb5ae1813319a.lean.json)

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
| 1 | `theorem` | [abs_sub_le_reciprocal](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KernelVariationTransport/Variant0309fedbc74b9246096b81a1fa8c1c5dd7e2d37939cf64e5d88cb5ae1813319a.lean/declarations/abs-sub-le-reciprocal--adc9c8f15f9f6c6dc64baeaf.md) | 19 | `result-track:adc9c8f15f9f6c6dc64baeaf1bab2c229710aabd9251baa75eb0e780067d40cf` |
| 2 | `theorem` | [sqrt_reciprocal_step_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KernelVariationTransport/Variant0309fedbc74b9246096b81a1fa8c1c5dd7e2d37939cf64e5d88cb5ae1813319a.lean/declarations/sqrt-reciprocal-step-le--1d24a8063ced1e3b99a213d4.md) | 59 | `result-track:1d24a8063ced1e3b99a213d44d6c00fa94960aee99d16f37a69d6b7725ad5be3` |
| 3 | `theorem` | [sqrt_reciprocal_variation_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KernelVariationTransport/Variant0309fedbc74b9246096b81a1fa8c1c5dd7e2d37939cf64e5d88cb5ae1813319a.lean/declarations/sqrt-reciprocal-variation-le--af04ec63b4bbb65a3d5cfebe.md) | 87 | `result-track:af04ec63b4bbb65a3d5cfebedefe28cb8a096b2fc343a0a92d3882eb7a287b7d` |
| 4 | `theorem` | [composed_abs_sub_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KernelVariationTransport/Variant0309fedbc74b9246096b81a1fa8c1c5dd7e2d37939cf64e5d88cb5ae1813319a.lean/declarations/composed-abs-sub-le--3dd32fa5d3ee51fcf6c38603.md) | 114 | `result-track:3dd32fa5d3ee51fcf6c386030e9afb5cb855fa397a2cd8764ffb93e9ac5e2c57` |
| 5 | `def` | [composedVariation](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KernelVariationTransport/Variant0309fedbc74b9246096b81a1fa8c1c5dd7e2d37939cf64e5d88cb5ae1813319a.lean/declarations/composedvariation--4ebd02dfc9b5e53a2b477b26.md) | 147 | `declaration-track:4ebd02dfc9b5e53a2b477b26fa6476569dfb435b4e01df6b98342a2694cefe46` |
| 6 | `theorem` | [composedVariation_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KernelVariationTransport/Variant0309fedbc74b9246096b81a1fa8c1c5dd7e2d37939cf64e5d88cb5ae1813319a.lean/declarations/composedvariation-zero--d8048e9a3de4c4d4ab013561.md) | 152 | `result-track:d8048e9a3de4c4d4ab01356126e5491f1cb0356987083a2da23d68fac83b16fe` |
| 7 | `theorem` | [composedVariation_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KernelVariationTransport/Variant0309fedbc74b9246096b81a1fa8c1c5dd7e2d37939cf64e5d88cb5ae1813319a.lean/declarations/composedvariation-le--b8c4b2724796a8cfaa6101fd.md) | 155 | `result-track:b8c4b2724796a8cfaa6101fd9f2bc692e6ff8aeb0719fee8f698374cd6d2418c` |
| 8 | `theorem` | [composedVariation_nat_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KernelVariationTransport/Variant0309fedbc74b9246096b81a1fa8c1c5dd7e2d37939cf64e5d88cb5ae1813319a.lean/declarations/composedvariation-nat-le--cdeab524b42de156294e8c1d.md) | 219 | `result-track:cdeab524b42de156294e8c1d23e707d2612ee4e8584a87c498cd52027b5827a9` |
| 9 | `theorem` | [rpow_three_halves](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KernelVariationTransport/Variant0309fedbc74b9246096b81a1fa8c1c5dd7e2d37939cf64e5d88cb5ae1813319a.lean/declarations/rpow-three-halves--0e679eeb5e2a594e24c44c1b.md) | 231 | `result-track:0e679eeb5e2a594e24c44c1b98d1a7b72f15fe2a4ad17335733dace4337a0fe8` |
| 10 | `theorem` | [composedVariation_nat_le_rpow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KernelVariationTransport/Variant0309fedbc74b9246096b81a1fa8c1c5dd7e2d37939cf64e5d88cb5ae1813319a.lean/declarations/composedvariation-nat-le-rpow--41858696472eb66ca59adc0d.md) | 236 | `result-track:41858696472eb66ca59adc0d55b5636b4c8fcdd3a287a2b02d547d8e81cf3b8c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
