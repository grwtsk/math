# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.IteratedFDeriv.Variant42c4ca3abd2d1bdae295cd685c074af3634884b3615c3e8400dd2f759b4d5fa7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eb37bddbbfcff564f7d8563ceeb960bb91e9fbe7",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/IteratedFDeriv/Variant42c4ca3abd2d1bdae295cd685c074af3634884b3615c3e8400dd2f759b4d5fa7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IteratedFDeriv/Variant42c4ca3abd2d1bdae295cd685c074af3634884b3615c3e8400dd2f759b4d5fa7.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IteratedFDeriv/Variant42c4ca3abd2d1bdae295cd685c074af3634884b3615c3e8400dd2f759b4d5fa7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eb37bddbbfcff564f7d8563ceeb960bb91e9fbe7`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/IteratedFDeriv/Variant42c4ca3abd2d1bdae295cd685c074af3634884b3615c3e8400dd2f759b4d5fa7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/IteratedFDeriv/Variant42c4ca3abd2d1bdae295cd685c074af3634884b3615c3e8400dd2f759b4d5fa7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.ContDiff.Operations` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ContDiff.CPolynomial` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Perm` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [FormalMultilinearSeries.iteratedFDerivSeries](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IteratedFDeriv/Variant42c4ca3abd2d1bdae295cd685c074af3634884b3615c3e8400dd2f759b4d5fa7.lean/declarations/formalmultilinearseries-iteratedfderivseries--2fecf728782e9254980dafd0.md) | 67 | `declaration-track:2fecf728782e9254980dafd0e672cc54c5f5b9cb2832c762559a433a7122a7d3` |
| 2 | `theorem` | [HasFPowerSeriesWithinOnBall.iteratedFDerivWithin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IteratedFDeriv/Variant42c4ca3abd2d1bdae295cd685c074af3634884b3615c3e8400dd2f759b4d5fa7.lean/declarations/hasfpowerserieswithinonball-iteratedfderivwithin--317bc936948be35c80fa6543.md) | 78 | `result-track:317bc936948be35c80fa65435a091ed500d410479a293f871c97239d6e821dbd` |
| 3 | `lemma` | [FormalMultilinearSeries.iteratedFDerivSeries_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IteratedFDeriv/Variant42c4ca3abd2d1bdae295cd685c074af3634884b3615c3e8400dd2f759b4d5fa7.lean/declarations/formalmultilinearseries-iteratedfderivseries-eq-zero--aff2f7c152af6ecf13ef7130.md) | 93 | `result-track:aff2f7c152af6ecf13ef7130d50ea44e7c9209826f29ec1f89e88e58e0bce434` |
| 4 | `lemma` | [HasFPowerSeriesWithinOnBall.iteratedFDerivWithin_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IteratedFDeriv/Variant42c4ca3abd2d1bdae295cd685c074af3634884b3615c3e8400dd2f759b4d5fa7.lean/declarations/hasfpowerserieswithinonball-iteratedfderivwithin-eq-zero--e1d67237eddcbd1601cc1080.md) | 112 | `result-track:e1d67237eddcbd1601cc1080c89fca422020da28dccb8922c38c7bc71cad6ce9` |
| 5 | `lemma` | [ContinuousMultilinearMap.iteratedFDeriv_comp_diagonal](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IteratedFDeriv/Variant42c4ca3abd2d1bdae295cd685c074af3634884b3615c3e8400dd2f759b4d5fa7.lean/declarations/continuousmultilinearmap-iteratedfderiv-comp-diagonal--2ca3b67d0262e102fdccb9e1.md) | 121 | `result-track:2ca3b67d0262e102fdccb9e1b7967c4d2c68d4235de2816d51334ebc9a6b2939` |
| 6 | `lemma` | [HasFPowerSeriesWithinOnBall.iteratedFDerivWithin_eq_sum_of_subset](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IteratedFDeriv/Variant42c4ca3abd2d1bdae295cd685c074af3634884b3615c3e8400dd2f759b4d5fa7.lean/declarations/hasfpowerserieswithinonball-iteratedfderivwithin-eq-sum-of-subset--5878722c6a0aa39b7b6a90cd.md) | 146 | `result-track:5878722c6a0aa39b7b6a90cdc4162d08faf81ad615b077148f0b1f60023819bc` |
| 7 | `theorem` | [HasFPowerSeriesWithinOnBall.iteratedFDerivWithin_eq_sum](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IteratedFDeriv/Variant42c4ca3abd2d1bdae295cd685c074af3634884b3615c3e8400dd2f759b4d5fa7.lean/declarations/hasfpowerserieswithinonball-iteratedfderivwithin-eq-sum--158e368fce27ead0938130e6.md) | 196 | `result-track:158e368fce27ead0938130e68c294184fe0457eccd71f4ccfbfcd97d4315b4d2` |
| 8 | `theorem` | [HasFPowerSeriesOnBall.iteratedFDeriv_eq_sum](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IteratedFDeriv/Variant42c4ca3abd2d1bdae295cd685c074af3634884b3615c3e8400dd2f759b4d5fa7.lean/declarations/hasfpowerseriesonball-iteratedfderiv-eq-sum--1ab78af794db2f9e5fb77357.md) | 214 | `result-track:1ab78af794db2f9e5fb773575e1505276490fc7d31ec7f486ff98315ba162ede` |
| 9 | `theorem` | [HasFPowerSeriesWithinOnBall.iteratedFDerivWithin_eq_sum_of_completeSpace](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IteratedFDeriv/Variant42c4ca3abd2d1bdae295cd685c074af3634884b3615c3e8400dd2f759b4d5fa7.lean/declarations/hasfpowerserieswithinonball-iteratedfderivwithin-eq-sum-of-completespace--0d53325b3f45b9dd4e647502.md) | 223 | `result-track:0d53325b3f45b9dd4e6475023aa88b200822a8ab6adc467dfd7b6deca6006d2d` |
| 10 | `theorem` | [HasFPowerSeriesOnBall.iteratedFDeriv_eq_sum_of_completeSpace](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IteratedFDeriv/Variant42c4ca3abd2d1bdae295cd685c074af3634884b3615c3e8400dd2f759b4d5fa7.lean/declarations/hasfpowerseriesonball-iteratedfderiv-eq-sum-of-completespace--afbf6e00c2ff2a54c4d3e5da.md) | 242 | `result-track:afbf6e00c2ff2a54c4d3e5da9f8fec5bbe7bc91c3dcfcf6e4703b11438323a35` |
| 11 | `theorem` | [AnalyticOn.iteratedFDerivWithin_comp_perm](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IteratedFDeriv/Variant42c4ca3abd2d1bdae295cd685c074af3634884b3615c3e8400dd2f759b4d5fa7.lean/declarations/analyticon-iteratedfderivwithin-comp-perm--3d1efbec45fb71d94cd70e5d.md) | 249 | `result-track:3d1efbec45fb71d94cd70e5d93480b7d59087d6ef4a7cfd4f2064a19f27346f6` |
| 12 | `theorem` | [ContDiffWithinAt.iteratedFDerivWithin_comp_perm](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IteratedFDeriv/Variant42c4ca3abd2d1bdae295cd685c074af3634884b3615c3e8400dd2f759b4d5fa7.lean/declarations/contdiffwithinat-iteratedfderivwithin-comp-perm--de9f1b9504854460abcb9da7.md) | 259 | `result-track:de9f1b9504854460abcb9da76b9601c728cd71699e5f467ce76db739033b4780` |
| 13 | `theorem` | [AnalyticOn.iteratedFDeriv_comp_perm](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IteratedFDeriv/Variant42c4ca3abd2d1bdae295cd685c074af3634884b3615c3e8400dd2f759b4d5fa7.lean/declarations/analyticon-iteratedfderiv-comp-perm--dc40ae3ba54b67e0ca9cfa09.md) | 271 | `result-track:dc40ae3ba54b67e0ca9cfa09ab98ab4a41244f5e94cfdfa3ecf1b3621fc1a1b3` |
| 14 | `theorem` | [ContDiffAt.iteratedFDeriv_comp_perm](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IteratedFDeriv/Variant42c4ca3abd2d1bdae295cd685c074af3634884b3615c3e8400dd2f759b4d5fa7.lean/declarations/contdiffat-iteratedfderiv-comp-perm--ccdc169eb093c67cb1f5b1c7.md) | 278 | `result-track:ccdc169eb093c67cb1f5b1c7d40b357d20394c36c60b0ed07905a59296b0217d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
