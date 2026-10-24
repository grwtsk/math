# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.EndpointDerivativesAttempt04.Variantbec8afd462f15c08848f2b6941ce57ca0a78e1b6312ea0c6088bd196b3513eb5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8d79f4504fecc54e2b2e18a0047d5eb059948fd3",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt04/Variantbec8afd462f15c08848f2b6941ce57ca0a78e1b6312ea0c6088bd196b3513eb5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt04/Variantbec8afd462f15c08848f2b6941ce57ca0a78e1b6312ea0c6088bd196b3513eb5.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt04/Variantbec8afd462f15c08848f2b6941ce57ca0a78e1b6312ea0c6088bd196b3513eb5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8d79f4504fecc54e2b2e18a0047d5eb059948fd3`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt04/Variantbec8afd462f15c08848f2b6941ce57ca0a78e1b6312ea0c6088bd196b3513eb5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt04/Variantbec8afd462f15c08848f2b6941ce57ca0a78e1b6312ea0c6088bd196b3513eb5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `EndpointExpansion` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [endpointFirstPolynomial](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt04/Variantbec8afd462f15c08848f2b6941ce57ca0a78e1b6312ea0c6088bd196b3513eb5.lean/declarations/endpointfirstpolynomial--92a2436365685b2e163dd315.md) | 26 | `declaration-track:92a2436365685b2e163dd315eb0f09f61a56f227eb57b09bef12a4f3865561a6` |
| 2 | `def` | [endpointSecondPolynomial](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt04/Variantbec8afd462f15c08848f2b6941ce57ca0a78e1b6312ea0c6088bd196b3513eb5.lean/declarations/endpointsecondpolynomial--5e3a0be84abfa4bab55e3594.md) | 55 | `declaration-track:5e3a0be84abfa4bab55e3594bb10200998b2c4c8d127f96e4cb8781c05d110b3` |
| 3 | `def` | [endpointFullSlope](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt04/Variantbec8afd462f15c08848f2b6941ce57ca0a78e1b6312ea0c6088bd196b3513eb5.lean/declarations/endpointfullslope--79d8c00b7c7aff7be98d994d.md) | 84 | `declaration-track:79d8c00b7c7aff7be98d994dd9d36a603fff8ea7701be54632abad09a757c786` |
| 4 | `def` | [endpointFullCurvature](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt04/Variantbec8afd462f15c08848f2b6941ce57ca0a78e1b6312ea0c6088bd196b3513eb5.lean/declarations/endpointfullcurvature--029cc0be9889770db901bf41.md) | 87 | `declaration-track:029cc0be9889770db901bf41fb4b97ff370fc7aeef87facb179e807a09170b95` |
| 5 | `theorem` | [endpointFullPolynomial_contDiff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt04/Variantbec8afd462f15c08848f2b6941ce57ca0a78e1b6312ea0c6088bd196b3513eb5.lean/declarations/endpointfullpolynomial-contdiff--5caa447935dea75679539f98.md) | 90 | `result-track:5caa447935dea75679539f9893c3314d88a5695c8c7b7cef34a5ac928223b047` |
| 6 | `theorem` | [endpointFirstPolynomial_contDiff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt04/Variantbec8afd462f15c08848f2b6941ce57ca0a78e1b6312ea0c6088bd196b3513eb5.lean/declarations/endpointfirstpolynomial-contdiff--7ea7eca214c33492b9991c00.md) | 94 | `result-track:7ea7eca214c33492b9991c00f66fd00f86ced1fa31c3c838060e1f4eae2fffd9` |
| 7 | `theorem` | [endpoint_full_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt04/Variantbec8afd462f15c08848f2b6941ce57ca0a78e1b6312ea0c6088bd196b3513eb5.lean/declarations/endpoint-full-deriv--ab72a3076420e3366b1b7a11.md) | 98 | `result-track:ab72a3076420e3366b1b7a118988cd14e157b73714b0466849a0622ab92a66c9` |
| 8 | `theorem` | [endpoint_first_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt04/Variantbec8afd462f15c08848f2b6941ce57ca0a78e1b6312ea0c6088bd196b3513eb5.lean/declarations/endpoint-first-deriv--84598f2e727c6071219d8be1.md) | 104 | `result-track:84598f2e727c6071219d8be1bc3ab7878636addd556395cb4dd461e63c5f65b5` |
| 9 | `theorem` | [endpoint_full_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt04/Variantbec8afd462f15c08848f2b6941ce57ca0a78e1b6312ea0c6088bd196b3513eb5.lean/declarations/endpoint-full-hasderivat--29528264cd123a2125741dce.md) | 110 | `result-track:29528264cd123a2125741dcefb86552407a68c034a9a21162db283df810902d8` |
| 10 | `theorem` | [endpoint_first_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt04/Variantbec8afd462f15c08848f2b6941ce57ca0a78e1b6312ea0c6088bd196b3513eb5.lean/declarations/endpoint-first-hasderivat--8812d7363f2bcf5a6737e798.md) | 115 | `result-track:8812d7363f2bcf5a6737e798ef371d1585e1226fe0f43069873fa6d361634c89` |
| 11 | `theorem` | [endpoint_slope_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt04/Variantbec8afd462f15c08848f2b6941ce57ca0a78e1b6312ea0c6088bd196b3513eb5.lean/declarations/endpoint-slope-zero--d5f1c2766b3fa25e9d09af14.md) | 120 | `result-track:d5f1c2766b3fa25e9d09af14522dae0f95d0358f8fc697769d3d6522b7187fe1` |
| 12 | `theorem` | [endpoint_curvature_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt04/Variantbec8afd462f15c08848f2b6941ce57ca0a78e1b6312ea0c6088bd196b3513eb5.lean/declarations/endpoint-curvature-zero--befe691029ab0473083ba263.md) | 124 | `result-track:befe691029ab0473083ba2635ab573a5ef0b52a1bbe497e318af269d1ce35696` |
| 13 | `theorem` | [endpoint_slope_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt04/Variantbec8afd462f15c08848f2b6941ce57ca0a78e1b6312ea0c6088bd196b3513eb5.lean/declarations/endpoint-slope-continuous--097ae32a0a120584163e2c21.md) | 130 | `result-track:097ae32a0a120584163e2c216a173cee05f92424e2d28eafade3175aed6af735` |
| 14 | `theorem` | [endpoint_curvature_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt04/Variantbec8afd462f15c08848f2b6941ce57ca0a78e1b6312ea0c6088bd196b3513eb5.lean/declarations/endpoint-curvature-continuous--001095c2a7ef0142c24f3b7c.md) | 134 | `result-track:001095c2a7ef0142c24f3b7c6f3490b75e75be25805e204453845fac771ed83c` |
| 15 | `theorem` | [endpoint_slope_uniform_remainder](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt04/Variantbec8afd462f15c08848f2b6941ce57ca0a78e1b6312ea0c6088bd196b3513eb5.lean/declarations/endpoint-slope-uniform-remainder--bc08bc670800cde8caa32cf9.md) | 140 | `result-track:bc08bc670800cde8caa32cf926591ba09c2c28a07ece5a6ce61a113ab25bb1da` |
| 16 | `theorem` | [endpoint_curvature_uniform_remainder](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt04/Variantbec8afd462f15c08848f2b6941ce57ca0a78e1b6312ea0c6088bd196b3513eb5.lean/declarations/endpoint-curvature-uniform-remainder--7265e4fb72afeab556730a3f.md) | 153 | `result-track:7265e4fb72afeab556730a3f58e2e4676c6efdd8cdb2bd04f518e4c2aac248e0` |
| 17 | `theorem` | [actual_endpoint_model_eventuallyEq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt04/Variantbec8afd462f15c08848f2b6941ce57ca0a78e1b6312ea0c6088bd196b3513eb5.lean/declarations/actual-endpoint-model-eventuallyeq--bd4865299c83ce240a9b35aa.md) | 168 | `result-track:bd4865299c83ce240a9b35aa4a1f4af94fc60dad3be6522dbb88a4471e71ec90` |
| 18 | `theorem` | [actual_endpoint_first_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt04/Variantbec8afd462f15c08848f2b6941ce57ca0a78e1b6312ea0c6088bd196b3513eb5.lean/declarations/actual-endpoint-first-hasderivat--7d6eda265ef8f2786bd92f33.md) | 184 | `result-track:7d6eda265ef8f2786bd92f33f7f73aa11914c4255272965b73fd56f6965b9f8a` |
| 19 | `theorem` | [actual_endpoint_second_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt04/Variantbec8afd462f15c08848f2b6941ce57ca0a78e1b6312ea0c6088bd196b3513eb5.lean/declarations/actual-endpoint-second-hasderivat--fdcfdde966402a5da21d7922.md) | 199 | `result-track:fdcfdde966402a5da21d79223f8f21a51adcbe921a106490cdd85f43e8501390` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
