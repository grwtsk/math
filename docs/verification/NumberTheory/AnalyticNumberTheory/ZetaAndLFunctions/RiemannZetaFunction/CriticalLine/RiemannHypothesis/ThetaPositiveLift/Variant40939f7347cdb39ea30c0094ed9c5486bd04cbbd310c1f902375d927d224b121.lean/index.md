# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThetaPositiveLift.Variant40939f7347cdb39ea30c0094ed9c5486bd04cbbd310c1f902375d927d224b121

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2c15fd99f5fd87392ea876afdbc065cba83ab20d",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant40939f7347cdb39ea30c0094ed9c5486bd04cbbd310c1f902375d927d224b121.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant40939f7347cdb39ea30c0094ed9c5486bd04cbbd310c1f902375d927d224b121.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant40939f7347cdb39ea30c0094ed9c5486bd04cbbd310c1f902375d927d224b121.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2c15fd99f5fd87392ea876afdbc065cba83ab20d`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant40939f7347cdb39ea30c0094ed9c5486bd04cbbd310c1f902375d927d224b121.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant40939f7347cdb39ea30c0094ed9c5486bd04cbbd310c1f902375d927d224b121.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaTailRankThreePropagation` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Intervals` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Monotone.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [strictLogSlope_cross_positive](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant40939f7347cdb39ea30c0094ed9c5486bd04cbbd310c1f902375d927d224b121.lean/declarations/strictlogslope-cross-positive--a720714c6569ed25d9ae7d79.md) | 38 | `result-track:a720714c6569ed25d9ae7d797c898f5bd2476bd9bb4f9c77bb038360b6b38c2a` |
| 2 | `theorem` | [strictLogSlope_integrand_integrable](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant40939f7347cdb39ea30c0094ed9c5486bd04cbbd310c1f902375d927d224b121.lean/declarations/strictlogslope-integrand-integrable--f505bf667adb96fb606c74a4.md) | 47 | `result-track:f505bf667adb96fb606c74a4178ead9d0b6f5d9b9f4c349388b7aa90295e40f2` |
| 3 | `theorem` | [integralTail_logSlope_positive](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant40939f7347cdb39ea30c0094ed9c5486bd04cbbd310c1f902375d927d224b121.lean/declarations/integraltail-logslope-positive--fbce9076dd4f6e58df1ba809.md) | 56 | `result-track:fbce9076dd4f6e58df1ba809f4e326e9106408c6cc263265a4a5703c499a4e09` |
| 4 | `theorem` | [integralTail_ratio_strictAnti](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant40939f7347cdb39ea30c0094ed9c5486bd04cbbd310c1f902375d927d224b121.lean/declarations/integraltail-ratio-strictanti--ebaf24de4a65934049b8410e.md) | 77 | `result-track:ebaf24de4a65934049b8410ea9c51c7541d7bbd2758039fb8fc31177b0eb98b4` |
| 5 | `theorem` | [integralTail_logSlope_strictAnti](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant40939f7347cdb39ea30c0094ed9c5486bd04cbbd310c1f902375d927d224b121.lean/declarations/integraltail-logslope-strictanti--ff24687daa14a160774d0b51.md) | 97 | `result-track:ff24687daa14a160774d0b519e524be1496f8ee06a9817b6936f4f1ca4066c2c` |
| 6 | `theorem` | [thetaTail_logSlope_strictAnti](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant40939f7347cdb39ea30c0094ed9c5486bd04cbbd310c1f902375d927d224b121.lean/declarations/thetatail-logslope-strictanti--c74bed8243ae0d3a00ed4ca2.md) | 117 | `result-track:c74bed8243ae0d3a00ed4ca201074bd5a5d9ef9a96a5dc4e51103fd287f166d4` |
| 7 | `theorem` | [thetaTail_succ_div_strictAnti](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant40939f7347cdb39ea30c0094ed9c5486bd04cbbd310c1f902375d927d224b121.lean/declarations/thetatail-succ-div-strictanti--38b7b5639bfd088d5d330bcf.md) | 139 | `result-track:38b7b5639bfd088d5d330bcff6d66752297783bfe6bbe50936ebad7b1d7a24a6` |
| 8 | `theorem` | [thetaTail_add_two_div_strictAnti](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant40939f7347cdb39ea30c0094ed9c5486bd04cbbd310c1f902375d927d224b121.lean/declarations/thetatail-add-two-div-strictanti--378ede415adbd100e3ac36d3.md) | 152 | `result-track:378ede415adbd100e3ac36d389cd645c0d99d9942a56f67e7a09f4fa729d7b56` |
| 9 | `theorem` | [thetaTail_even_nodeRatio_step](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant40939f7347cdb39ea30c0094ed9c5486bd04cbbd310c1f902375d927d224b121.lean/declarations/thetatail-even-noderatio-step--a9108b323937d0501137b497.md) | 176 | `result-track:a9108b323937d0501137b497ca8ee185d76c6edf7217697726fa0cdec32f2a4f` |
| 10 | `def` | [discreteDrop](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant40939f7347cdb39ea30c0094ed9c5486bd04cbbd310c1f902375d927d224b121.lean/declarations/discretedrop--983c6e3ff6e4a98a807c4c0e.md) | 190 | `declaration-track:983c6e3ff6e4a98a807c4c0ef4b559565a7a8b70e23ef2adb99b58b8b53dd293` |
| 11 | `def` | [discreteSlope](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant40939f7347cdb39ea30c0094ed9c5486bd04cbbd310c1f902375d927d224b121.lean/declarations/discreteslope--fd87c4c5e1d0b1d481bfd73e.md) | 193 | `declaration-track:fd87c4c5e1d0b1d481bfd73ee5ec5588e23ad52d1e3620479ecebef41f356fcc` |
| 12 | `theorem` | [sum_Ico_discreteDrop](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant40939f7347cdb39ea30c0094ed9c5486bd04cbbd310c1f902375d927d224b121.lean/declarations/sum-ico-discretedrop--b1b6c05e89dcf3fb5a548acd.md) | 196 | `result-track:b1b6c05e89dcf3fb5a548acdc0043de2f1c814caaaa9f3264b436265a9fa556d` |
| 13 | `theorem` | [sum_Ico_slope_mul_drop](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant40939f7347cdb39ea30c0094ed9c5486bd04cbbd310c1f902375d927d224b121.lean/declarations/sum-ico-slope-mul-drop--d2e37dffe881529d009699fe.md) | 205 | `result-track:d2e37dffe881529d009699fe78395c4f9b07967b50fd9690f0ac272a96f6f97f` |
| 14 | `theorem` | [discreteSlope_antitone_of_consecutive_det](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant40939f7347cdb39ea30c0094ed9c5486bd04cbbd310c1f902375d927d224b121.lean/declarations/discreteslope-antitone-of-consecutive-det--141b4616fb9de098fb4fd83d.md) | 219 | `result-track:141b4616fb9de098fb4fd83d6b5feb4f3605aba8820e33a7a79e099a49f597ac` |
| 15 | `theorem` | [normalized_det_nonpos_of_consecutive](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant40939f7347cdb39ea30c0094ed9c5486bd04cbbd310c1f902375d927d224b121.lean/declarations/normalized-det-nonpos-of-consecutive--dde7c64276ccf6bc4daf7599.md) | 240 | `result-track:dde7c64276ccf6bc4daf7599dda8e96aa5051a2824d851ff844f9791ef0a6e5f` |
| 16 | `theorem` | [det_fin_three_normalize_first_column](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant40939f7347cdb39ea30c0094ed9c5486bd04cbbd310c1f902375d927d224b121.lean/declarations/det-fin-three-normalize-first-column--e2501b569d035d3260944696.md) | 290 | `result-track:e2501b569d035d3260944696db37978bd130adc687ec6c15d6abb312120e0b8e` |
| 17 | `theorem` | [thetaTailSignRegular_three](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant40939f7347cdb39ea30c0094ed9c5486bd04cbbd310c1f902375d927d224b121.lean/declarations/thetatailsignregular-three--e607181472cba92c45626f67.md) | 302 | `result-track:e607181472cba92c45626f674cb7d9e7cb66b66fad8ae01fb8f3435cc0e9f6a1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
