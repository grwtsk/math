# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThetaPositiveLift.Variantf4c881eb8bb799b277d20bb8704250a305c8f7495b876e9f8a4cf26c002d1c43

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "33344b7a94a578a5b27e03f9e0eccd5f6e641f53",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantf4c881eb8bb799b277d20bb8704250a305c8f7495b876e9f8a4cf26c002d1c43.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantf4c881eb8bb799b277d20bb8704250a305c8f7495b876e9f8a4cf26c002d1c43.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantf4c881eb8bb799b277d20bb8704250a305c8f7495b876e9f8a4cf26c002d1c43.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `33344b7a94a578a5b27e03f9e0eccd5f6e641f53`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantf4c881eb8bb799b277d20bb8704250a305c8f7495b876e9f8a4cf26c002d1c43.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantf4c881eb8bb799b277d20bb8704250a305c8f7495b876e9f8a4cf26c002d1c43.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaTailRankThreePropagation` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Intervals` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Monotone.Basic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [strictLogSlope_cross_positive](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantf4c881eb8bb799b277d20bb8704250a305c8f7495b876e9f8a4cf26c002d1c43.lean/declarations/strictlogslope-cross-positive--8b7bc3ec2927834b9fa44411.md) | 30 | `result-track:8b7bc3ec2927834b9fa44411935046edeb38fc61690ee54bc6f3f310dc86ce5e` |
| 2 | `theorem` | [strictLogSlope_integrand_integrable](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantf4c881eb8bb799b277d20bb8704250a305c8f7495b876e9f8a4cf26c002d1c43.lean/declarations/strictlogslope-integrand-integrable--8c9f4dc7cfc4b33a43d1bbf0.md) | 39 | `result-track:8c9f4dc7cfc4b33a43d1bbf0a1b06352481b55ffcb07414d8bf0d8015455cf5d` |
| 3 | `theorem` | [integralTail_logSlope_positive](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantf4c881eb8bb799b277d20bb8704250a305c8f7495b876e9f8a4cf26c002d1c43.lean/declarations/integraltail-logslope-positive--16b73434f4844d2a09a5ada2.md) | 48 | `result-track:16b73434f4844d2a09a5ada24fa6a2e8026659bebc71e46850caa01b22469cce` |
| 4 | `theorem` | [integralTail_ratio_strictAnti](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantf4c881eb8bb799b277d20bb8704250a305c8f7495b876e9f8a4cf26c002d1c43.lean/declarations/integraltail-ratio-strictanti--ee5356fa308d47d54055c937.md) | 69 | `result-track:ee5356fa308d47d54055c9374602ec9e80e7f281b9173c224c57ef46020e599d` |
| 5 | `theorem` | [integralTail_logSlope_strictAnti](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantf4c881eb8bb799b277d20bb8704250a305c8f7495b876e9f8a4cf26c002d1c43.lean/declarations/integraltail-logslope-strictanti--74da3ea9a64fcbb55c419190.md) | 89 | `result-track:74da3ea9a64fcbb55c419190f4f23132095fab8bbf58a9c4438168fec17e7e0f` |
| 6 | `theorem` | [thetaTail_logSlope_strictAnti](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantf4c881eb8bb799b277d20bb8704250a305c8f7495b876e9f8a4cf26c002d1c43.lean/declarations/thetatail-logslope-strictanti--35f154767f4244cba9967782.md) | 109 | `result-track:35f154767f4244cba9967782fde6777544dd5631d88cedd3e6865ffa6a282693` |
| 7 | `theorem` | [thetaTail_succ_div_strictAnti](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantf4c881eb8bb799b277d20bb8704250a305c8f7495b876e9f8a4cf26c002d1c43.lean/declarations/thetatail-succ-div-strictanti--71f3de719a360d83be57d91f.md) | 131 | `result-track:71f3de719a360d83be57d91f72090ab693b56c54479e6740fca29ed2cdde9571` |
| 8 | `theorem` | [thetaTail_add_two_div_strictAnti](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantf4c881eb8bb799b277d20bb8704250a305c8f7495b876e9f8a4cf26c002d1c43.lean/declarations/thetatail-add-two-div-strictanti--9f5a7f628d6f7e53ff247b5c.md) | 144 | `result-track:9f5a7f628d6f7e53ff247b5c065c460da0492bb66c14c1fdc494bd97583b9d62` |
| 9 | `theorem` | [thetaTail_even_nodeRatio_step](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantf4c881eb8bb799b277d20bb8704250a305c8f7495b876e9f8a4cf26c002d1c43.lean/declarations/thetatail-even-noderatio-step--6400120353590586b69d1cb3.md) | 168 | `result-track:6400120353590586b69d1cb3f26b281e9810775363aa41d649f823f4050bf4b0` |
| 10 | `def` | [discreteDrop](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantf4c881eb8bb799b277d20bb8704250a305c8f7495b876e9f8a4cf26c002d1c43.lean/declarations/discretedrop--acdce643cf6b72d1b638858b.md) | 182 | `declaration-track:acdce643cf6b72d1b638858b97927754c0dfa12c03a049995cab64998b4d6032` |
| 11 | `def` | [discreteSlope](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantf4c881eb8bb799b277d20bb8704250a305c8f7495b876e9f8a4cf26c002d1c43.lean/declarations/discreteslope--1961d53e2388bf76d09d8e6e.md) | 185 | `declaration-track:1961d53e2388bf76d09d8e6e9e3c90b4d7de4d4c1a8cfbf4f4264869731ce54f` |
| 12 | `theorem` | [sum_Ico_discreteDrop](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantf4c881eb8bb799b277d20bb8704250a305c8f7495b876e9f8a4cf26c002d1c43.lean/declarations/sum-ico-discretedrop--fbac0c52a6790a2d05f3a239.md) | 188 | `result-track:fbac0c52a6790a2d05f3a239916a23e7a5b47639efd2312ff4589271c4e2f0b7` |
| 13 | `theorem` | [sum_Ico_slope_mul_drop](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantf4c881eb8bb799b277d20bb8704250a305c8f7495b876e9f8a4cf26c002d1c43.lean/declarations/sum-ico-slope-mul-drop--a902f64180bd774a8e78cf66.md) | 197 | `result-track:a902f64180bd774a8e78cf66bfba4fa5cf094118159496fe6ea07a69c0d31163` |
| 14 | `theorem` | [discreteSlope_antitone_of_consecutive_det](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantf4c881eb8bb799b277d20bb8704250a305c8f7495b876e9f8a4cf26c002d1c43.lean/declarations/discreteslope-antitone-of-consecutive-det--ded204c3729e4a1a415a29a5.md) | 211 | `result-track:ded204c3729e4a1a415a29a509ab9d909cfe328f52b5ebec39ebe932392c780d` |
| 15 | `theorem` | [normalized_det_nonpos_of_consecutive](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantf4c881eb8bb799b277d20bb8704250a305c8f7495b876e9f8a4cf26c002d1c43.lean/declarations/normalized-det-nonpos-of-consecutive--c3fb943de5c231d750e541d6.md) | 232 | `result-track:c3fb943de5c231d750e541d6da722e4623ca7e48327fd4d4d4e2f1cb00652227` |
| 16 | `theorem` | [det_fin_three_normalize_first_column](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantf4c881eb8bb799b277d20bb8704250a305c8f7495b876e9f8a4cf26c002d1c43.lean/declarations/det-fin-three-normalize-first-column--1c2310b4ce66bd9fa847576c.md) | 282 | `result-track:1c2310b4ce66bd9fa847576cdae935d9c7fa482bd6df970ed0deaa6af6ea3ac6` |
| 17 | `theorem` | [thetaTailSignRegular_three](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantf4c881eb8bb799b277d20bb8704250a305c8f7495b876e9f8a4cf26c002d1c43.lean/declarations/thetatailsignregular-three--1e2d30449b1f67b0f518887a.md) | 294 | `result-track:1e2d30449b1f67b0f518887a14ec06ccfecc62a69d6d1d71d57fe956592719f7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
