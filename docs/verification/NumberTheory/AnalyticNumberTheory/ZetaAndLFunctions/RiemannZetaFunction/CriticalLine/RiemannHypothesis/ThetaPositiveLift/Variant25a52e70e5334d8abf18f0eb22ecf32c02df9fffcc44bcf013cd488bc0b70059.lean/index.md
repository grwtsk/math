# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThetaPositiveLift.Variant25a52e70e5334d8abf18f0eb22ecf32c02df9fffcc44bcf013cd488bc0b70059

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e8fa81125dbec67823313327436e46a11c6a4970",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant25a52e70e5334d8abf18f0eb22ecf32c02df9fffcc44bcf013cd488bc0b70059.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant25a52e70e5334d8abf18f0eb22ecf32c02df9fffcc44bcf013cd488bc0b70059.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant25a52e70e5334d8abf18f0eb22ecf32c02df9fffcc44bcf013cd488bc0b70059.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e8fa81125dbec67823313327436e46a11c6a4970`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant25a52e70e5334d8abf18f0eb22ecf32c02df9fffcc44bcf013cd488bc0b70059.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant25a52e70e5334d8abf18f0eb22ecf32c02df9fffcc44bcf013cd488bc0b70059.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaPhiModeCriterionCounterexample` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.PositiveAtlas.Grassmannian.FiniteCauchyBinet` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [thetaPhiFiniteModeChoiceWeight](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant25a52e70e5334d8abf18f0eb22ecf32c02df9fffcc44bcf013cd488bc0b70059.lean/declarations/thetaphifinitemodechoiceweight--0aa3ddaf7731bbb3dac601b4.md) | 38 | `declaration-track:0aa3ddaf7731bbb3dac601b4980af7fd4afe87c3d8f42c26a7ec044ea4aa7fb9` |
| 2 | `def` | [thetaPhiFiniteModeChoiceSignedDet](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant25a52e70e5334d8abf18f0eb22ecf32c02df9fffcc44bcf013cd488bc0b70059.lean/declarations/thetaphifinitemodechoicesigneddet--337768435c4c2dbb0a3823a5.md) | 43 | `declaration-track:337768435c4c2dbb0a3823a5d5962e7bd5e13439ee72149ead2124f2db790b10` |
| 3 | `theorem` | [thetaPhiFiniteModeChoiceWeight_perm](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant25a52e70e5334d8abf18f0eb22ecf32c02df9fffcc44bcf013cd488bc0b70059.lean/declarations/thetaphifinitemodechoiceweight-perm--64339173ef4211ed3e4ea089.md) | 49 | `result-track:64339173ef4211ed3e4ea08942b3d1991f8f831827b6f70bc5b354a22727e48e` |
| 4 | `theorem` | [signedJetDet_truncation_eq_finite_mode_sum](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant25a52e70e5334d8abf18f0eb22ecf32c02df9fffcc44bcf013cd488bc0b70059.lean/declarations/signedjetdet-truncation-eq-finite-mode-sum--8deda46d0cdd112e845170e7.md) | 62 | `result-track:8deda46d0cdd112e845170e79d515dc61362d18b5f610d1a54823856aaade259` |
| 5 | `theorem` | [finite_mode_weighted_sum_perm_invariant](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant25a52e70e5334d8abf18f0eb22ecf32c02df9fffcc44bcf013cd488bc0b70059.lean/declarations/finite-mode-weighted-sum-perm-invariant--f8457e72c75a94bc204ee560.md) | 75 | `result-track:f8457e72c75a94bc204ee56012cf6a2e30a2771bb2e608b5d523f58beccacefe` |
| 6 | `def` | [thetaPhiFiniteModeOrbitSignedSum](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant25a52e70e5334d8abf18f0eb22ecf32c02df9fffcc44bcf013cd488bc0b70059.lean/declarations/thetaphifinitemodeorbitsignedsum--c9d3d14c379bc9408503e5da.md) | 97 | `declaration-track:c9d3d14c379bc9408503e5dac59959928a0dcbf5b6ba857a86bcaf7beb6f6861` |
| 7 | `theorem` | [factorial_mul_signedJetDet_truncation_eq_orbit_sum](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant25a52e70e5334d8abf18f0eb22ecf32c02df9fffcc44bcf013cd488bc0b70059.lean/declarations/factorial-mul-signedjetdet-truncation-eq-orbit-sum--57b85c2266f795b7f7033f75.md) | 105 | `result-track:57b85c2266f795b7f7033f75f2f1061c6de3fab0bea96086f6e13ef330cbf7e4` |
| 8 | `def` | [thetaPhiModePairSignedSum](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant25a52e70e5334d8abf18f0eb22ecf32c02df9fffcc44bcf013cd488bc0b70059.lean/declarations/thetaphimodepairsignedsum--ec34a42c5a3618ea5d927bb6.md) | 151 | `declaration-track:ec34a42c5a3618ea5d927bb69a97d53ecaa31b116ef84e9f190d377b3acd6fef` |
| 9 | `theorem` | [thetaPhiModePairSignedSum_zero_01](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant25a52e70e5334d8abf18f0eb22ecf32c02df9fffcc44bcf013cd488bc0b70059.lean/declarations/thetaphimodepairsignedsum-zero-01--77140828262d796b84d137cb.md) | 159 | `result-track:77140828262d796b84d137cb865f2fafd456b25679f9fc574dcdc033651daf36` |
| 10 | `theorem` | [thetaPhiModePair_zero_01_cubic_pos](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant25a52e70e5334d8abf18f0eb22ecf32c02df9fffcc44bcf013cd488bc0b70059.lean/declarations/thetaphimodepair-zero-01-cubic-pos--e688b0900555e65129fa365d.md) | 171 | `result-track:e688b0900555e65129fa365dac8c5e82633002436c2480f38d6da7ee054785d3` |
| 11 | `theorem` | [thetaPhiModePairSignedSum_zero_01_neg](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant25a52e70e5334d8abf18f0eb22ecf32c02df9fffcc44bcf013cd488bc0b70059.lean/declarations/thetaphimodepairsignedsum-zero-01-neg--c318ca5ea11585f1d6cc9aae.md) | 189 | `result-track:c318ca5ea11585f1d6cc9aaeb0b555b3f944c652d410f2086a394d4888e7db25` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
