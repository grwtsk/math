# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.DominatedConvergence.Variant99b2083f2f9fcffd40caa9dfdce333487ec6b8a1428efd67621fed38e93c64d6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2fdb626dcfd6a29fc42271275f776c0e0af4969d",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant99b2083f2f9fcffd40caa9dfdce333487ec6b8a1428efd67621fed38e93c64d6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant99b2083f2f9fcffd40caa9dfdce333487ec6b8a1428efd67621fed38e93c64d6.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant99b2083f2f9fcffd40caa9dfdce333487ec6b8a1428efd67621fed38e93c64d6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2fdb626dcfd6a29fc42271275f776c0e0af4969d`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant99b2083f2f9fcffd40caa9dfdce333487ec6b8a1428efd67621fed38e93c64d6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant99b2083f2f9fcffd40caa9dfdce333487ec6b8a1428efd67621fed38e93c64d6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.IntervalIntegral.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Real` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.IndicatorFunction` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [tendsto_integral_of_dominated_convergence](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant99b2083f2f9fcffd40caa9dfdce333487ec6b8a1428efd67621fed38e93c64d6.lean/declarations/tendsto-integral-of-dominated-convergence--77e8c62e3face4b937c2691c.md) | 62 | `result-track:77e8c62e3face4b937c2691c1eee7243ba69c6beacf7b5e34f65fc067b459de6` |
| 2 | `theorem` | [tendsto_integral_filter_of_dominated_convergence](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant99b2083f2f9fcffd40caa9dfdce333487ec6b8a1428efd67621fed38e93c64d6.lean/declarations/tendsto-integral-filter-of-dominated-convergence--7869f212719c8cc04b457fe0.md) | 74 | `result-track:7869f212719c8cc04b457fe039fd6738c878b755d7dc25754459686f7d6fb71e` |
| 3 | `theorem` | [hasSum_integral_of_dominated_convergence](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant99b2083f2f9fcffd40caa9dfdce333487ec6b8a1428efd67621fed38e93c64d6.lean/declarations/hassum-integral-of-dominated-convergence--22cbbe55cf2a654ee0e1ae64.md) | 86 | `result-track:22cbbe55cf2a654ee0e1ae64ba48260fab40374344e58e5ec5d49c63bd7d62ed` |
| 4 | `theorem` | [integral_tsum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant99b2083f2f9fcffd40caa9dfdce333487ec6b8a1428efd67621fed38e93c64d6.lean/declarations/integral-tsum--17b50ee55f3593f592a087e4.md) | 113 | `result-track:17b50ee55f3593f592a087e4f0e58aaaadf80e485e80df7852629e5683cc3c4d` |
| 5 | `lemma` | [hasSum_integral_of_summable_integral_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant99b2083f2f9fcffd40caa9dfdce333487ec6b8a1428efd67621fed38e93c64d6.lean/declarations/hassum-integral-of-summable-integral-norm--d5fe967ba239ac0c96d9b978.md) | 145 | `result-track:d5fe967ba239ac0c96d9b978e1955220aff6762e5fb20ca9d0a76106f0e15c60` |
| 6 | `lemma` | [integral_tsum_of_summable_integral_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant99b2083f2f9fcffd40caa9dfdce333487ec6b8a1428efd67621fed38e93c64d6.lean/declarations/integral-tsum-of-summable-integral-norm--549eaf905c903ae3c305f342.md) | 160 | `result-track:549eaf905c903ae3c305f342fc4da4ed084a5f17e5d2aa3f4e6b680b54c3783f` |
| 7 | `theorem` | [tendsto_integral_filter_of_norm_le_const](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant99b2083f2f9fcffd40caa9dfdce333487ec6b8a1428efd67621fed38e93c64d6.lean/declarations/tendsto-integral-filter-of-norm-le-const--ee73b524b0f300f6d41ed2c3.md) | 169 | `result-track:ee73b524b0f300f6d41ed2c3173283f3f1edfd7dd4aa19c011fef9df25cb4070` |
| 8 | `theorem` | [_root_.GRWTSK.Analysis.RealAnalysis.Integration.TendstoIntegralOfDominatedConvergence.Variant25af4a27887a4f241ac133fa2dc89ae69ba344c4752a9a4005605588f8956fe9.Antitone.tendsto_setIntegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant99b2083f2f9fcffd40caa9dfdce333487ec6b8a1428efd67621fed38e93c64d6.lean/declarations/root-grwtsk-analysis-realanalysis-integration-tendstointegralofdominated--1e449544a5db1b8ae8f43de8.md) | 188 | `result-track:1e449544a5db1b8ae8f43de84416a8674863b8a3278b20ced93528f4fed404b1` |
| 9 | `theorem` | [tendsto_integral_filter_of_dominated_convergence](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant99b2083f2f9fcffd40caa9dfdce333487ec6b8a1428efd67621fed38e93c64d6.lean/declarations/tendsto-integral-filter-of-dominated-convergence--b315b9117ec2e26adc3e98b0.md) | 221 | `result-track:b315b9117ec2e26adc3e98b0a16da0861ca57198ef8c301b14600b4b945b16a1` |
| 10 | `theorem` | [hasSum_integral_of_dominated_convergence](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant99b2083f2f9fcffd40caa9dfdce333487ec6b8a1428efd67621fed38e93c64d6.lean/declarations/hassum-integral-of-dominated-convergence--57eee8d3af125577f4ac5ff9.md) | 234 | `result-track:57eee8d3af125577f4ac5ff95bcab4d80dadfbd000da750a07a750d667105235` |
| 11 | `theorem` | [hasSum_intervalIntegral_of_summable_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant99b2083f2f9fcffd40caa9dfdce333487ec6b8a1428efd67621fed38e93c64d6.lean/declarations/hassum-intervalintegral-of-summable-norm--cbda9058b57845e3067e294e.md) | 250 | `result-track:cbda9058b57845e3067e294e59c4b516e9a0d7a7cca792e008ef7c44c8af24aa` |
| 12 | `theorem` | [tsum_intervalIntegral_eq_of_summable_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant99b2083f2f9fcffd40caa9dfdce333487ec6b8a1428efd67621fed38e93c64d6.lean/declarations/tsum-intervalintegral-eq-of-summable-norm--1ae79dc3b062f3a48698091d.md) | 269 | `result-track:1ae79dc3b062f3a48698091d3869cfed7cf5eb185517a35cf9560ab64bfea2f5` |
| 13 | `theorem` | [continuousWithinAt_of_dominated_interval](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant99b2083f2f9fcffd40caa9dfdce333487ec6b8a1428efd67621fed38e93c64d6.lean/declarations/continuouswithinat-of-dominated-interval--bf51726287bde4b4fbfa8345.md) | 282 | `result-track:bf51726287bde4b4fbfa8345e77c3b5b891a6035ae248673a39a76d8f0c5619c` |
| 14 | `theorem` | [continuousAt_of_dominated_interval](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant99b2083f2f9fcffd40caa9dfdce333487ec6b8a1428efd67621fed38e93c64d6.lean/declarations/continuousat-of-dominated-interval--27514d2da17d38dd8aae32cd.md) | 296 | `result-track:27514d2da17d38dd8aae32cd543e335de7fdc0fab3f66b215f9b6de37ac1f930` |
| 15 | `theorem` | [continuous_of_dominated_interval](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant99b2083f2f9fcffd40caa9dfdce333487ec6b8a1428efd67621fed38e93c64d6.lean/declarations/continuous-of-dominated-interval--910c62d9db49edafe611dd02.md) | 309 | `result-track:910c62d9db49edafe611dd021af42da351ac2184c05f9666c9bcd50428575937` |
| 16 | `theorem` | [continuousWithinAt_primitive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant99b2083f2f9fcffd40caa9dfdce333487ec6b8a1428efd67621fed38e93c64d6.lean/declarations/continuouswithinat-primitive--64f8c725d689557d42dedb36.md) | 329 | `result-track:64f8c725d689557d42dedb36a9a8a1b220cabdc526702aeba1900364ef79dbb6` |
| 17 | `theorem` | [continuousAt_parametric_primitive_of_dominated](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant99b2083f2f9fcffd40caa9dfdce333487ec6b8a1428efd67621fed38e93c64d6.lean/declarations/continuousat-parametric-primitive-of-dominated--07051967f45cb07e741c16b3.md) | 395 | `result-track:07051967f45cb07e741c16b3b643416e5d121e8b3b67837282f5e1d201c0d4c9` |
| 18 | `theorem` | [continuousOn_primitive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant99b2083f2f9fcffd40caa9dfdce333487ec6b8a1428efd67621fed38e93c64d6.lean/declarations/continuouson-primitive--8691e8cce9b619e7078c2551.md) | 470 | `result-track:8691e8cce9b619e7078c25517c2c563b9e58724e55d5fcf6241ad12fbbc74608` |
| 19 | `theorem` | [continuousOn_primitive_Icc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant99b2083f2f9fcffd40caa9dfdce333487ec6b8a1428efd67621fed38e93c64d6.lean/declarations/continuouson-primitive-icc--5845d2024ef8bc4a7d628867.md) | 485 | `result-track:5845d2024ef8bc4a7d628867e6c5ca55b631609a8705c360bc4fa202d2c43d76` |
| 20 | `theorem` | [continuousOn_primitive_interval'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant99b2083f2f9fcffd40caa9dfdce333487ec6b8a1428efd67621fed38e93c64d6.lean/declarations/continuouson-primitive-interval--beb8c4869d3a57c70e948991.md) | 494 | `result-track:beb8c4869d3a57c70e948991c3f4b908b6ec51e95261f4c70ef651300ea80dd6` |
| 21 | `theorem` | [continuousOn_primitive_interval](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant99b2083f2f9fcffd40caa9dfdce333487ec6b8a1428efd67621fed38e93c64d6.lean/declarations/continuouson-primitive-interval--be4f4ca34cfbdf72a0d0af46.md) | 500 | `result-track:be4f4ca34cfbdf72a0d0af466f776ecd42277173f915b1b47e1d32360d43e004` |
| 22 | `theorem` | [continuousOn_primitive_interval_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant99b2083f2f9fcffd40caa9dfdce333487ec6b8a1428efd67621fed38e93c64d6.lean/declarations/continuouson-primitive-interval-left--00d7de6894e95e6d76445e23.md) | 504 | `result-track:00d7de6894e95e6d76445e238a954b61e059ee251218625052377cd135efc6e9` |
| 23 | `theorem` | [continuous_primitive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant99b2083f2f9fcffd40caa9dfdce333487ec6b8a1428efd67621fed38e93c64d6.lean/declarations/continuous-primitive--cffc9a0c0e859236894b398e.md) | 510 | `result-track:cffc9a0c0e859236894b398e871a0c2f519d57de92045008ef435874110ff48f` |
| 24 | `theorem` | [_root_.GRWTSK.Analysis.RealAnalysis.Integration.TendstoIntegralOfDominatedConvergence.Variant25af4a27887a4f241ac133fa2dc89ae69ba344c4752a9a4005605588f8956fe9.MeasureTheory.Integrable.continuous_primitive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant99b2083f2f9fcffd40caa9dfdce333487ec6b8a1428efd67621fed38e93c64d6.lean/declarations/root-grwtsk-analysis-realanalysis-integration-tendstointegralofdominated--ce01208c2d850be4ae5ea3ba.md) | 519 | `result-track:ce01208c2d850be4ae5ea3ba74733a04ef17b701fc2a1edf9579e8be3973f44e` |
| 25 | `theorem` | [continuous_parametric_primitive_of_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant99b2083f2f9fcffd40caa9dfdce333487ec6b8a1428efd67621fed38e93c64d6.lean/declarations/continuous-parametric-primitive-of-continuous--ba1deaabba742da712512c7b.md) | 525 | `result-track:ba1deaabba742da712512c7bb27eb70de0565d8b89f777a2b10f553246c4b6fd` |
| 26 | `theorem` | [continuous_parametric_intervalIntegral_of_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant99b2083f2f9fcffd40caa9dfdce333487ec6b8a1428efd67621fed38e93c64d6.lean/declarations/continuous-parametric-intervalintegral-of-continuous--4a7188aed96089032ee2a7aa.md) | 640 | `result-track:4a7188aed96089032ee2a7aa3ec1f82b133e0bd28ce6578207ba630666801d96` |
| 27 | `theorem` | [continuous_parametric_intervalIntegral_of_continuous'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant99b2083f2f9fcffd40caa9dfdce333487ec6b8a1428efd67621fed38e93c64d6.lean/declarations/continuous-parametric-intervalintegral-of-continuous--ba9ffcad0561ca39f95ea071.md) | 646 | `result-track:ba9ffcad0561ca39f95ea07179c6776658b8fff9c0a85237c2ac0ed6983d45dc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
