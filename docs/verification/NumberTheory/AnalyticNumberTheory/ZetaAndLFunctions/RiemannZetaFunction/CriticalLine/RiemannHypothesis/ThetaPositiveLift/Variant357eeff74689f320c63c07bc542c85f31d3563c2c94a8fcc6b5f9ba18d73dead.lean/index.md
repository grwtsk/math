# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThetaPositiveLift.Variant357eeff74689f320c63c07bc542c85f31d3563c2c94a8fcc6b5f9ba18d73dead

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "492426ccd9ec94cf2ec19f1f52ffc7088f039d9c",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant357eeff74689f320c63c07bc542c85f31d3563c2c94a8fcc6b5f9ba18d73dead.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant357eeff74689f320c63c07bc542c85f31d3563c2c94a8fcc6b5f9ba18d73dead.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant357eeff74689f320c63c07bc542c85f31d3563c2c94a8fcc6b5f9ba18d73dead.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `492426ccd9ec94cf2ec19f1f52ffc7088f039d9c`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant357eeff74689f320c63c07bc542c85f31d3563c2c94a8fcc6b5f9ba18d73dead.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant357eeff74689f320c63c07bc542c85f31d3563c2c94a8fcc6b5f9ba18d73dead.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaPhiSingleModeCharlierObstruction` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Block` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [thetaPhiAffinePascalSeven](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant357eeff74689f320c63c07bc542c85f31d3563c2c94a8fcc6b5f9ba18d73dead.lean/declarations/thetaphiaffinepascalseven--ee102a6f499c4b35ce0868a5.md) | 50 | `declaration-track:ee102a6f499c4b35ce0868a52f4a711d0431262cbcb35ced6bbaf136607dd8d3` |
| 2 | `theorem` | [thetaPhiAffinePascalSeven_lower](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant357eeff74689f320c63c07bc542c85f31d3563c2c94a8fcc6b5f9ba18d73dead.lean/declarations/thetaphiaffinepascalseven-lower--af318724921372651eeaef74.md) | 58 | `result-track:af318724921372651eeaef7435d0054a3300b271434d12685384c717e9373ec1` |
| 3 | `theorem` | [thetaPhiAffinePascalSeven_det](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant357eeff74689f320c63c07bc542c85f31d3563c2c94a8fcc6b5f9ba18d73dead.lean/declarations/thetaphiaffinepascalseven-det--2d01f14c05eae38c7c0842fd.md) | 67 | `result-track:2d01f14c05eae38c7c0842fd84cc329a3ca19ac1f4d0a00502e7100dd8477dc9` |
| 4 | `def` | [thetaPhiSignedTouchardChristoffelMoment](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant357eeff74689f320c63c07bc542c85f31d3563c2c94a8fcc6b5f9ba18d73dead.lean/declarations/thetaphisignedtouchardchristoffelmoment--2937eb98a426578911a92e4e.md) | 78 | `declaration-track:2937eb98a426578911a92e4e1808f6f3695fcfd442e3408fc46ffce9673248b8` |
| 5 | `def` | [thetaPhiSignedTouchardChristoffelHankelSeven](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant357eeff74689f320c63c07bc542c85f31d3563c2c94a8fcc6b5f9ba18d73dead.lean/declarations/thetaphisignedtouchardchristoffelhankelseven--bc50794a71f38dfa8519a07f.md) | 84 | `declaration-track:bc50794a71f38dfa8519a07f8a1ea0b9b090bb6ea3272b7aea3d93eb6115e796` |
| 6 | `theorem` | [thetaPhiGeneralizedTouchardChristoffelSeven_eq_affine](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant357eeff74689f320c63c07bc542c85f31d3563c2c94a8fcc6b5f9ba18d73dead.lean/declarations/thetaphigeneralizedtouchardchristoffelseven-eq-affine--87a7752ec9dc1c41882f0abd.md) | 94 | `result-track:87a7752ec9dc1c41882f0abd6872628f250a263b55b7a5d3c18b05f124e6b6b4` |
| 7 | `theorem` | [thetaPhiDerivativePolynomialHankelSeven_eq_christoffel](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant357eeff74689f320c63c07bc542c85f31d3563c2c94a8fcc6b5f9ba18d73dead.lean/declarations/thetaphiderivativepolynomialhankelseven-eq-christoffel--b5418edd06c1612f199837ad.md) | 116 | `result-track:b5418edd06c1612f199837ad06d1de78fac99f5b8f8c91e562b6dd1f51ade969` |
| 8 | `theorem` | [thetaPhiRankSevenSignedJet_eq_touchardChristoffel](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant357eeff74689f320c63c07bc542c85f31d3563c2c94a8fcc6b5f9ba18d73dead.lean/declarations/thetaphiranksevensignedjet-eq-touchardchristoffel--c974d3481f96437cc6d70ff2.md) | 134 | `result-track:c974d3481f96437cc6d70ff231cef7fc06ee36702aa347757b4bcd55d438ce71` |
| 9 | `theorem` | [thetaPhiRankSeven_factorial_product](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant357eeff74689f320c63c07bc542c85f31d3563c2c94a8fcc6b5f9ba18d73dead.lean/declarations/thetaphirankseven-factorial-product--15f812f2555378324678a946.md) | 153 | `result-track:15f812f2555378324678a9464cddb62ca54803c8fab32548ae4ebec8cd6b8bef` |
| 10 | `def` | [ThetaPhiOneModeRankSevenTouchardChristoffelBridge](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant357eeff74689f320c63c07bc542c85f31d3563c2c94a8fcc6b5f9ba18d73dead.lean/declarations/thetaphionemoderankseventouchardchristoffelbridge--48a3dc75ef4d55afe0ec5ba6.md) | 159 | `declaration-track:48a3dc75ef4d55afe0ec5ba69742e8588f32c263e204916cbe21de1e14c43007` |
| 11 | `theorem` | [thetaPhiOneModeRankSevenCharlierBridge_of_touchardChristoffel](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant357eeff74689f320c63c07bc542c85f31d3563c2c94a8fcc6b5f9ba18d73dead.lean/declarations/thetaphionemoderanksevencharlierbridge-of-touchardchristoffel--29073b01f657f6a0f30d8300.md) | 168 | `result-track:29073b01f657f6a0f30d8300b5dd1c7bc6566dec49b81a9a90dc94bb7509f52f` |
| 12 | `theorem` | [not_thetaPhiSignedMomentParityCriterion_of_touchardChristoffel](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant357eeff74689f320c63c07bc542c85f31d3563c2c94a8fcc6b5f9ba18d73dead.lean/declarations/not-thetaphisignedmomentparitycriterion-of-touchardchristoffel--67bf45772482ab063fd040a8.md) | 181 | `result-track:67bf45772482ab063fd040a8ebc911b4baf279f025e7c70bbfa75e7e2a279920` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
