# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThetaPositiveLift.Variant8fc0ed52ba03d9e63c22d692b73b36b24a1a5afd787cc9e27278be3cf119ca20

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8a8539100392c55527b93faee4403a811fe6b475",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant8fc0ed52ba03d9e63c22d692b73b36b24a1a5afd787cc9e27278be3cf119ca20.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant8fc0ed52ba03d9e63c22d692b73b36b24a1a5afd787cc9e27278be3cf119ca20.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant8fc0ed52ba03d9e63c22d692b73b36b24a1a5afd787cc9e27278be3cf119ca20.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8a8539100392c55527b93faee4403a811fe6b475`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant8fc0ed52ba03d9e63c22d692b73b36b24a1a5afd787cc9e27278be3cf119ca20.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant8fc0ed52ba03d9e63c22d692b73b36b24a1a5afd787cc9e27278be3cf119ca20.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaPhiSignedMomentParityCriterion` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Real.Pi.Bounds` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [thetaPhiShiftedCharlier](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant8fc0ed52ba03d9e63c22d692b73b36b24a1a5afd787cc9e27278be3cf119ca20.lean/declarations/thetaphishiftedcharlier--99fd1e6626d93e71736f1a77.md) | 43 | `declaration-track:99fd1e6626d93e71736f1a7732abad6d17c01e92d0e4fd3af340508ad95c919a` |
| 2 | `theorem` | [thetaPhiShiftedCharlier_seven](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant8fc0ed52ba03d9e63c22d692b73b36b24a1a5afd787cc9e27278be3cf119ca20.lean/declarations/thetaphishiftedcharlier-seven--4817a9b1766bfac03afce346.md) | 53 | `result-track:4817a9b1766bfac03afce3468b2a8b76b3968cd585c725cf2776cb7df6417a79` |
| 3 | `theorem` | [thetaPhiShiftedCharlier_seven_shift](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant8fc0ed52ba03d9e63c22d692b73b36b24a1a5afd787cc9e27278be3cf119ca20.lean/declarations/thetaphishiftedcharlier-seven-shift--97bcd9ea5003014e5474e231.md) | 63 | `result-track:97bcd9ea5003014e5474e231fbd224135ec6ac7886d8f5a597773dc2a507c78b` |
| 4 | `theorem` | [thetaPhiShiftedCharlier_seven_pi_neg](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant8fc0ed52ba03d9e63c22d692b73b36b24a1a5afd787cc9e27278be3cf119ca20.lean/declarations/thetaphishiftedcharlier-seven-pi-neg--c7f24a59a41e76164aa75ea3.md) | 74 | `result-track:c7f24a59a41e76164aa75ea3f9b9f2cbfccfec0675c6c9f2239246e83126b0f0` |
| 5 | `theorem` | [signedJetDet_const_mul](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant8fc0ed52ba03d9e63c22d692b73b36b24a1a5afd787cc9e27278be3cf119ca20.lean/declarations/signedjetdet-const-mul--12501908bad0467e3ebe8c26.md) | 115 | `result-track:12501908bad0467e3ebe8c263fb72b3b19838ab7f2af03508d293394620e31af` |
| 6 | `def` | [thetaPhiFirstModeScale](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant8fc0ed52ba03d9e63c22d692b73b36b24a1a5afd787cc9e27278be3cf119ca20.lean/declarations/thetaphifirstmodescale--881d287224fa76b255d3a465.md) | 134 | `declaration-track:881d287224fa76b255d3a465764589a811e8dd13410af629f6393ca1e8b8593d` |
| 7 | `theorem` | [thetaPhiFirstModeScale_pos](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant8fc0ed52ba03d9e63c22d692b73b36b24a1a5afd787cc9e27278be3cf119ca20.lean/declarations/thetaphifirstmodescale-pos--4c4a24858f0879de04695a83.md) | 137 | `result-track:4c4a24858f0879de04695a834a902b2acaf0e6eca1e637d2921bea03144019c1` |
| 8 | `theorem` | [thetaPhiDerivativeTapeTruncation_one_zero](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant8fc0ed52ba03d9e63c22d692b73b36b24a1a5afd787cc9e27278be3cf119ca20.lean/declarations/thetaphiderivativetapetruncation-one-zero--9d383c87fa74bcef574835c4.md) | 143 | `result-track:9d383c87fa74bcef574835c421bb289f8fd7269978f6ff2b68367866b3e26a48` |
| 9 | `def` | [ThetaPhiOneModeRankSevenCharlierBridge](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant8fc0ed52ba03d9e63c22d692b73b36b24a1a5afd787cc9e27278be3cf119ca20.lean/declarations/thetaphionemoderanksevencharlierbridge--f2176da6dd8d788ff5765432.md) | 159 | `declaration-track:f2176da6dd8d788ff5765432f786204bc109d0c23b08b718ed8ae1c0df921fe0` |
| 10 | `theorem` | [thetaPhiOneModeRankSevenPolynomialJet_neg](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant8fc0ed52ba03d9e63c22d692b73b36b24a1a5afd787cc9e27278be3cf119ca20.lean/declarations/thetaphionemoderanksevenpolynomialjet-neg--0740efa4a52f70f21a1d6a45.md) | 169 | `result-track:0740efa4a52f70f21a1d6a4521172187ccb9df8df1642ece40b73fc75388aca8` |
| 11 | `theorem` | [thetaPhiOneModeRankSevenTruncation_neg](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant8fc0ed52ba03d9e63c22d692b73b36b24a1a5afd787cc9e27278be3cf119ca20.lean/declarations/thetaphionemoderankseventruncation-neg--b012b2f267de43392af98fd4.md) | 185 | `result-track:b012b2f267de43392af98fd4c4f51a24b757636dbbeb368bb714ec816fefae9d` |
| 12 | `theorem` | [not_thetaPhiSignedMomentParityCriterion_of_rankSevenBridge](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant8fc0ed52ba03d9e63c22d692b73b36b24a1a5afd787cc9e27278be3cf119ca20.lean/declarations/not-thetaphisignedmomentparitycriterion-of-ranksevenbridge--3f7cd5502930282eac59911d.md) | 206 | `result-track:3f7cd5502930282eac59911dc8f8b339b375a2459ea04b09b0ec3a79818f7a67` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
