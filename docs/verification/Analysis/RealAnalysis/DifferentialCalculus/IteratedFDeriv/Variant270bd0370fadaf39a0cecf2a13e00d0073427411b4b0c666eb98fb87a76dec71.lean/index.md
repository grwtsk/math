# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.IteratedFDeriv.Variant270bd0370fadaf39a0cecf2a13e00d0073427411b4b0c666eb98fb87a76dec71

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4a672cb0645eb08694b53c6c2b240f57fb271d02",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/IteratedFDeriv/Variant270bd0370fadaf39a0cecf2a13e00d0073427411b4b0c666eb98fb87a76dec71.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IteratedFDeriv/Variant270bd0370fadaf39a0cecf2a13e00d0073427411b4b0c666eb98fb87a76dec71.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IteratedFDeriv/Variant270bd0370fadaf39a0cecf2a13e00d0073427411b4b0c666eb98fb87a76dec71.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4a672cb0645eb08694b53c6c2b240f57fb271d02`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/IteratedFDeriv/Variant270bd0370fadaf39a0cecf2a13e00d0073427411b4b0c666eb98fb87a76dec71.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/IteratedFDeriv/Variant270bd0370fadaf39a0cecf2a13e00d0073427411b4b0c666eb98fb87a76dec71.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.ContDiff.Operations` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ContDiff.CPolynomial` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Perm` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [FormalMultilinearSeries.iteratedFDerivSeries](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IteratedFDeriv/Variant270bd0370fadaf39a0cecf2a13e00d0073427411b4b0c666eb98fb87a76dec71.lean/declarations/formalmultilinearseries-iteratedfderivseries--dd57f9d7a03e0780ff8143e4.md) | 59 | `declaration-track:dd57f9d7a03e0780ff8143e4f4c4160b87ee8217b79438c3f31a1f6eec03cbb3` |
| 2 | `theorem` | [HasFPowerSeriesWithinOnBall.iteratedFDerivWithin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IteratedFDeriv/Variant270bd0370fadaf39a0cecf2a13e00d0073427411b4b0c666eb98fb87a76dec71.lean/declarations/hasfpowerserieswithinonball-iteratedfderivwithin--1b9371426587dfb560e51838.md) | 70 | `result-track:1b9371426587dfb560e518387e9a73655dfa84e4b5a0f026d2b3a4be05b21fe8` |
| 3 | `lemma` | [FormalMultilinearSeries.iteratedFDerivSeries_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IteratedFDeriv/Variant270bd0370fadaf39a0cecf2a13e00d0073427411b4b0c666eb98fb87a76dec71.lean/declarations/formalmultilinearseries-iteratedfderivseries-eq-zero--fa003ccd6d6ff745dba876d8.md) | 85 | `result-track:fa003ccd6d6ff745dba876d8b5ddc93826eb32cfc6e3e9583148eb44657e2406` |
| 4 | `lemma` | [HasFPowerSeriesWithinOnBall.iteratedFDerivWithin_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IteratedFDeriv/Variant270bd0370fadaf39a0cecf2a13e00d0073427411b4b0c666eb98fb87a76dec71.lean/declarations/hasfpowerserieswithinonball-iteratedfderivwithin-eq-zero--3a5b26808302ec668d3a1a0f.md) | 104 | `result-track:3a5b26808302ec668d3a1a0f49e8c9bcdeeede76f8ae14ccb48bf408c86cad14` |
| 5 | `lemma` | [ContinuousMultilinearMap.iteratedFDeriv_comp_diagonal](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IteratedFDeriv/Variant270bd0370fadaf39a0cecf2a13e00d0073427411b4b0c666eb98fb87a76dec71.lean/declarations/continuousmultilinearmap-iteratedfderiv-comp-diagonal--60bc69c4b1c57d7dee73654c.md) | 113 | `result-track:60bc69c4b1c57d7dee73654cd2ea75986e8141bd955715cdf801dcf7e80204f4` |
| 6 | `lemma` | [HasFPowerSeriesWithinOnBall.iteratedFDerivWithin_eq_sum_of_subset](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IteratedFDeriv/Variant270bd0370fadaf39a0cecf2a13e00d0073427411b4b0c666eb98fb87a76dec71.lean/declarations/hasfpowerserieswithinonball-iteratedfderivwithin-eq-sum-of-subset--5026e08a1d0d1c8a90570cae.md) | 138 | `result-track:5026e08a1d0d1c8a90570cae8311ce22c0cd71afeab00443cb6b0c003b8509b7` |
| 7 | `theorem` | [HasFPowerSeriesWithinOnBall.iteratedFDerivWithin_eq_sum](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IteratedFDeriv/Variant270bd0370fadaf39a0cecf2a13e00d0073427411b4b0c666eb98fb87a76dec71.lean/declarations/hasfpowerserieswithinonball-iteratedfderivwithin-eq-sum--8354da03b252937967e6539b.md) | 188 | `result-track:8354da03b252937967e6539b1c8f721db5bcc6df0781f26c4cad36d6de208803` |
| 8 | `theorem` | [HasFPowerSeriesOnBall.iteratedFDeriv_eq_sum](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IteratedFDeriv/Variant270bd0370fadaf39a0cecf2a13e00d0073427411b4b0c666eb98fb87a76dec71.lean/declarations/hasfpowerseriesonball-iteratedfderiv-eq-sum--235ea49d87ee5a9257ed9080.md) | 206 | `result-track:235ea49d87ee5a9257ed9080483b7178e40368046ff5748c2be70bc54917cb3c` |
| 9 | `theorem` | [HasFPowerSeriesWithinOnBall.iteratedFDerivWithin_eq_sum_of_completeSpace](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IteratedFDeriv/Variant270bd0370fadaf39a0cecf2a13e00d0073427411b4b0c666eb98fb87a76dec71.lean/declarations/hasfpowerserieswithinonball-iteratedfderivwithin-eq-sum-of-completespace--8f53d817802a24453d1ba5d3.md) | 215 | `result-track:8f53d817802a24453d1ba5d38fa6ba867431fa55ca11720e5f47d142795a195d` |
| 10 | `theorem` | [HasFPowerSeriesOnBall.iteratedFDeriv_eq_sum_of_completeSpace](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IteratedFDeriv/Variant270bd0370fadaf39a0cecf2a13e00d0073427411b4b0c666eb98fb87a76dec71.lean/declarations/hasfpowerseriesonball-iteratedfderiv-eq-sum-of-completespace--c72c43127ea886b8f3de1f1c.md) | 234 | `result-track:c72c43127ea886b8f3de1f1cbddcd6ea5fa66bd48448b76d9fd2750dfd6673db` |
| 11 | `theorem` | [AnalyticOn.iteratedFDerivWithin_comp_perm](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IteratedFDeriv/Variant270bd0370fadaf39a0cecf2a13e00d0073427411b4b0c666eb98fb87a76dec71.lean/declarations/analyticon-iteratedfderivwithin-comp-perm--de0a544d764c97cc08caaa37.md) | 241 | `result-track:de0a544d764c97cc08caaa374796bf9345ae4f423796468d6626ba02431690f3` |
| 12 | `theorem` | [ContDiffWithinAt.iteratedFDerivWithin_comp_perm](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IteratedFDeriv/Variant270bd0370fadaf39a0cecf2a13e00d0073427411b4b0c666eb98fb87a76dec71.lean/declarations/contdiffwithinat-iteratedfderivwithin-comp-perm--2073bf19eda8fad6b97dcc0b.md) | 251 | `result-track:2073bf19eda8fad6b97dcc0b523649da5db0e5e7a9c58dfe4adcb9f543a3778e` |
| 13 | `theorem` | [AnalyticOn.iteratedFDeriv_comp_perm](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IteratedFDeriv/Variant270bd0370fadaf39a0cecf2a13e00d0073427411b4b0c666eb98fb87a76dec71.lean/declarations/analyticon-iteratedfderiv-comp-perm--b490f5fc07758af3e1c5e29d.md) | 263 | `result-track:b490f5fc07758af3e1c5e29d69ac154fa23e3872a69a78064b07f522e53106bd` |
| 14 | `theorem` | [ContDiffAt.iteratedFDeriv_comp_perm](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IteratedFDeriv/Variant270bd0370fadaf39a0cecf2a13e00d0073427411b4b0c666eb98fb87a76dec71.lean/declarations/contdiffat-iteratedfderiv-comp-perm--eb8741ebb33510f0da547667.md) | 270 | `result-track:eb8741ebb33510f0da547667e5991c90f9bbb228fd48790987429176659efef4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
