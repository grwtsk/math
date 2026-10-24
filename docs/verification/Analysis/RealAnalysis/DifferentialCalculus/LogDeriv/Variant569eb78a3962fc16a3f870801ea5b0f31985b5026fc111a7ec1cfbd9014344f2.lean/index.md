# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.LogDeriv.Variant569eb78a3962fc16a3f870801ea5b0f31985b5026fc111a7ec1cfbd9014344f2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1d7c6fbb9d6cdc7ea978c7e99d21166098cc27fe",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variant569eb78a3962fc16a3f870801ea5b0f31985b5026fc111a7ec1cfbd9014344f2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variant569eb78a3962fc16a3f870801ea5b0f31985b5026fc111a7ec1cfbd9014344f2.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variant569eb78a3962fc16a3f870801ea5b0f31985b5026fc111a7ec1cfbd9014344f2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1d7c6fbb9d6cdc7ea978c7e99d21166098cc27fe`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variant569eb78a3962fc16a3f870801ea5b0f31985b5026fc111a7ec1cfbd9014344f2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variant569eb78a3962fc16a3f870801ea5b0f31985b5026fc111a7ec1cfbd9014344f2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.InverseFunctionTheorem.Deriv` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.LogDeriv` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Complex.Log` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ExpDeriv` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isOpenMap_exp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variant569eb78a3962fc16a3f870801ea5b0f31985b5026fc111a7ec1cfbd9014344f2.lean/declarations/isopenmap-exp--88c2aceb84b9a50c2e9c42ce.md) | 24 | `result-track:88c2aceb84b9a50c2e9c42ce6d8be555850369f654b877c38b66ff643fab10b3` |
| 2 | `def` | [expPartialHomeomorph](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variant569eb78a3962fc16a3f870801ea5b0f31985b5026fc111a7ec1cfbd9014344f2.lean/declarations/exppartialhomeomorph--1af5fd6f75ccad82f0939281.md) | 30 | `declaration-track:1af5fd6f75ccad82f0939281b175b277f60a1682b2b1b9136f6d0fe4bdf07298` |
| 3 | `theorem` | [hasStrictDerivAt_log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variant569eb78a3962fc16a3f870801ea5b0f31985b5026fc111a7ec1cfbd9014344f2.lean/declarations/hasstrictderivat-log--78545f8c1c03d37f18baa7e4.md) | 51 | `result-track:78545f8c1c03d37f18baa7e481f02325ebc079db7125e088c4e9f19632915f8d` |
| 4 | `lemma` | [hasDerivAt_log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variant569eb78a3962fc16a3f870801ea5b0f31985b5026fc111a7ec1cfbd9014344f2.lean/declarations/hasderivat-log--5df2f8a764d5798efd17408d.md) | 56 | `result-track:5df2f8a764d5798efd17408df285bb89e14dbe06448ae553a7c0612d2d404c2a` |
| 5 | `lemma` | [differentiableAt_log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variant569eb78a3962fc16a3f870801ea5b0f31985b5026fc111a7ec1cfbd9014344f2.lean/declarations/differentiableat-log--0a0b803acf03f80179ef6722.md) | 60 | `result-track:0a0b803acf03f80179ef67222cffb03822b383b348e1a70e6dda6649f418da3e` |
| 6 | `theorem` | [hasStrictFDerivAt_log_real](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variant569eb78a3962fc16a3f870801ea5b0f31985b5026fc111a7ec1cfbd9014344f2.lean/declarations/hasstrictfderivat-log-real--337a0206d5fe8edb9b025491.md) | 64 | `result-track:337a0206d5fe8edb9b025491e9c903195effd3975a5030ba861e06a43f45cfe5` |
| 7 | `theorem` | [contDiffAt_log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variant569eb78a3962fc16a3f870801ea5b0f31985b5026fc111a7ec1cfbd9014344f2.lean/declarations/contdiffat-log--8ce9cab4898a49c606d1b44e.md) | 68 | `result-track:8ce9cab4898a49c606d1b44e5e4e2c4c30f815f084b801530948fedcc1944667` |
| 8 | `theorem` | [HasStrictFDerivAt.clog](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variant569eb78a3962fc16a3f870801ea5b0f31985b5026fc111a7ec1cfbd9014344f2.lean/declarations/hasstrictfderivat-clog--017e4804a135656803ef16eb.md) | 82 | `result-track:017e4804a135656803ef16eba5064f40d71c816380e971c46bbabb85c6ae3406` |
| 9 | `theorem` | [HasStrictDerivAt.clog](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variant569eb78a3962fc16a3f870801ea5b0f31985b5026fc111a7ec1cfbd9014344f2.lean/declarations/hasstrictderivat-clog--f8650342b394e6c49167785a.md) | 86 | `result-track:f8650342b394e6c49167785acea79850cbb325af4a5611bfd5bd2322e6f95791` |
| 10 | `theorem` | [HasStrictDerivAt.clog_real](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variant569eb78a3962fc16a3f870801ea5b0f31985b5026fc111a7ec1cfbd9014344f2.lean/declarations/hasstrictderivat-clog-real--904a3ae73c3e0f4b2136db18.md) | 90 | `result-track:904a3ae73c3e0f4b2136db182f0307be3f779c917e066ebb0b45c6b142e18cdc` |
| 11 | `theorem` | [HasFDerivAt.clog](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variant569eb78a3962fc16a3f870801ea5b0f31985b5026fc111a7ec1cfbd9014344f2.lean/declarations/hasfderivat-clog--a04d9bf3e2ed3822b5680333.md) | 94 | `result-track:a04d9bf3e2ed3822b5680333a6b5b0d414b1b27dd8921546c85554ce2d9615f0` |
| 12 | `theorem` | [HasDerivAt.clog](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variant569eb78a3962fc16a3f870801ea5b0f31985b5026fc111a7ec1cfbd9014344f2.lean/declarations/hasderivat-clog--1f5b340b43f87a136ddd7940.md) | 98 | `result-track:1f5b340b43f87a136ddd7940fa998e1bfd65094546b73eed08d07a3d1617bf7b` |
| 13 | `theorem` | [HasDerivAt.clog_real](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variant569eb78a3962fc16a3f870801ea5b0f31985b5026fc111a7ec1cfbd9014344f2.lean/declarations/hasderivat-clog-real--4125375d04c950169034899d.md) | 102 | `result-track:4125375d04c950169034899d1701a7d3f1be1736c404d54d7460bbc1c9df46f9` |
| 14 | `theorem` | [DifferentiableAt.clog](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variant569eb78a3962fc16a3f870801ea5b0f31985b5026fc111a7ec1cfbd9014344f2.lean/declarations/differentiableat-clog--16a42637cde627351b03c499.md) | 107 | `result-track:16a42637cde627351b03c499007d47356b7449f6f3b39cab0438ede1ae574c50` |
| 15 | `theorem` | [HasFDerivWithinAt.clog](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variant569eb78a3962fc16a3f870801ea5b0f31985b5026fc111a7ec1cfbd9014344f2.lean/declarations/hasfderivwithinat-clog--dab6f88043487fcd2c5e787b.md) | 111 | `result-track:dab6f88043487fcd2c5e787bf7980d8996cc13f405fdf9530a987dbb58503771` |
| 16 | `theorem` | [HasDerivWithinAt.clog](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variant569eb78a3962fc16a3f870801ea5b0f31985b5026fc111a7ec1cfbd9014344f2.lean/declarations/hasderivwithinat-clog--472d43bfe5934f24341b1338.md) | 116 | `result-track:472d43bfe5934f24341b13380660bb9ed91be949e327f8e2e84716f37df6caea` |
| 17 | `theorem` | [HasDerivWithinAt.clog_real](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variant569eb78a3962fc16a3f870801ea5b0f31985b5026fc111a7ec1cfbd9014344f2.lean/declarations/hasderivwithinat-clog-real--91c40a47bfb69ad695005890.md) | 121 | `result-track:91c40a47bfb69ad6950058900b9f46f381b2833e34126c769faba527db5c6cd1` |
| 18 | `theorem` | [DifferentiableWithinAt.clog](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variant569eb78a3962fc16a3f870801ea5b0f31985b5026fc111a7ec1cfbd9014344f2.lean/declarations/differentiablewithinat-clog--a632aedea64148a0af8fccad.md) | 127 | `result-track:a632aedea64148a0af8fccadf115fd3d10596abc4e60ad74e62c645edc3771d7` |
| 19 | `theorem` | [DifferentiableOn.clog](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variant569eb78a3962fc16a3f870801ea5b0f31985b5026fc111a7ec1cfbd9014344f2.lean/declarations/differentiableon-clog--aed072c19dc90a4f46f80efc.md) | 132 | `result-track:aed072c19dc90a4f46f80efcf8b907ca6b981c2e6e5ea57f4b657eae03f0f011` |
| 20 | `theorem` | [Differentiable.clog](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variant569eb78a3962fc16a3f870801ea5b0f31985b5026fc111a7ec1cfbd9014344f2.lean/declarations/differentiable-clog--b25993d896a2c022234c9302.md) | 136 | `result-track:b25993d896a2c022234c9302486cbe1d5403fa71e518bc90e6f8a603dc8d859a` |
| 21 | `lemma` | [Complex.deriv_log_comp_eq_logDeriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variant569eb78a3962fc16a3f870801ea5b0f31985b5026fc111a7ec1cfbd9014344f2.lean/declarations/complex-deriv-log-comp-eq-logderiv--30f57b1f64ba1e1c2d4c728f.md) | 142 | `result-track:30f57b1f64ba1e1c2d4c728f746b11bdbe4b065228a7f4a22140042f3f9cb727` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
