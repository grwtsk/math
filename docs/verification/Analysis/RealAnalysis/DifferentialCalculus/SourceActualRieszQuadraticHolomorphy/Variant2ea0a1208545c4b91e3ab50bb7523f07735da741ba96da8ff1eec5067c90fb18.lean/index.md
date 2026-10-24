# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourceActualRieszQuadraticHolomorphy.Variant2ea0a1208545c4b91e3ab50bb7523f07735da741ba96da8ff1eec5067c90fb18

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3582f7f97812e4c397e77bb0c6981c0453509bdc",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszQuadraticHolomorphy/Variant2ea0a1208545c4b91e3ab50bb7523f07735da741ba96da8ff1eec5067c90fb18.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszQuadraticHolomorphy/Variant2ea0a1208545c4b91e3ab50bb7523f07735da741ba96da8ff1eec5067c90fb18.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszQuadraticHolomorphy/Variant2ea0a1208545c4b91e3ab50bb7523f07735da741ba96da8ff1eec5067c90fb18.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3582f7f97812e4c397e77bb0c6981c0453509bdc`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszQuadraticHolomorphy/Variant2ea0a1208545c4b91e3ab50bb7523f07735da741ba96da8ff1eec5067c90fb18.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszQuadraticHolomorphy/Variant2ea0a1208545c4b91e3ab50bb7523f07735da741ba96da8ff1eec5067c90fb18.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualRieszQuadraticLaplace` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ParametricIntegral` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.CauchyIntegral` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [profile](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszQuadraticHolomorphy/Variant2ea0a1208545c4b91e3ab50bb7523f07735da741ba96da8ff1eec5067c90fb18.lean/declarations/profile--0bc4cf2d0b9426c4e9f696ae.md) | 22 | `declaration-track:0bc4cf2d0b9426c4e9f696ae01260a1407d83c2ed617d7f53f9d102fa6829aab` |
| 2 | `theorem` | [time_exp_bound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszQuadraticHolomorphy/Variant2ea0a1208545c4b91e3ab50bb7523f07735da741ba96da8ff1eec5067c90fb18.lean/declarations/time-exp-bound--dbedbed2d53365caa4d6d95d.md) | 26 | `result-track:dbedbed2d53365caa4d6d95dfc207c1f2f6a34cf41f3479721a544ad5408a687` |
| 3 | `theorem` | [derivative_norm_bound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszQuadraticHolomorphy/Variant2ea0a1208545c4b91e3ab50bb7523f07735da741ba96da8ff1eec5067c90fb18.lean/declarations/derivative-norm-bound--758e3fdf39030b2eefbe7c13.md) | 33 | `result-track:758e3fdf39030b2eefbe7c13a9f9b3d21878fc74f81ae9ad87d8ef941913e41b` |
| 4 | `theorem` | [kernel_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszQuadraticHolomorphy/Variant2ea0a1208545c4b91e3ab50bb7523f07735da741ba96da8ff1eec5067c90fb18.lean/declarations/kernel-hasderivat--47b3419f9d18b820f1531626.md) | 56 | `result-track:47b3419f9d18b820f153162607063202fa29ea56231c418db4c739a87162328a` |
| 5 | `theorem` | [actualFixedCenteredRieszLaplace_hasDerivAt_of_quadratic_area](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszQuadraticHolomorphy/Variant2ea0a1208545c4b91e3ab50bb7523f07735da741ba96da8ff1eec5067c90fb18.lean/declarations/actualfixedcenteredrieszlaplace-hasderivat-of-quadratic-area--7bad892558cbc4ffd20b0c7c.md) | 66 | `result-track:7bad892558cbc4ffd20b0c7c4ebc34820bbca43f9e6fe5d546a6e5f701683df2` |
| 6 | `theorem` | [actualFixedCenteredRieszLaplace_analyticOnNhd_of_quadratic_area](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszQuadraticHolomorphy/Variant2ea0a1208545c4b91e3ab50bb7523f07735da741ba96da8ff1eec5067c90fb18.lean/declarations/actualfixedcenteredrieszlaplace-analyticonnhd-of-quadratic-area--4308e5d0e7853e80165cc471.md) | 125 | `result-track:4308e5d0e7853e80165cc47113747414f94994ec1fa76e7eb339c3e8c11eabef` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
