# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThetaPositiveLift.Variant215fb56f89dd8a606ddbfe31ac1fd3274188e9b794ad42211cf9343cb6814969

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "77d018cb2601e79dc0358f1f745b3422d1c14b7c",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant215fb56f89dd8a606ddbfe31ac1fd3274188e9b794ad42211cf9343cb6814969.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant215fb56f89dd8a606ddbfe31ac1fd3274188e9b794ad42211cf9343cb6814969.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant215fb56f89dd8a606ddbfe31ac1fd3274188e9b794ad42211cf9343cb6814969.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `77d018cb2601e79dc0358f1f745b3422d1c14b7c`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant215fb56f89dd8a606ddbfe31ac1fd3274188e9b794ad42211cf9343cb6814969.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant215fb56f89dd8a606ddbfe31ac1fd3274188e9b794ad42211cf9343cb6814969.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaPhiModeCriterionCounterexample` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.PositiveAtlas.Grassmannian.FiniteCauchyBinet` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [thetaPhiFiniteModeChoiceWeight](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant215fb56f89dd8a606ddbfe31ac1fd3274188e9b794ad42211cf9343cb6814969.lean/declarations/thetaphifinitemodechoiceweight--6e3d81690974d24ff93a1bc0.md) | 30 | `declaration-track:6e3d81690974d24ff93a1bc0eed53c88d79f575a76cecdb4604f65c5cc6a9853` |
| 2 | `def` | [thetaPhiFiniteModeChoiceSignedDet](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant215fb56f89dd8a606ddbfe31ac1fd3274188e9b794ad42211cf9343cb6814969.lean/declarations/thetaphifinitemodechoicesigneddet--2366177b97ded94a4a3bab9d.md) | 35 | `declaration-track:2366177b97ded94a4a3bab9d83377e77fdad355c7e51f46a820e27696f404201` |
| 3 | `theorem` | [thetaPhiFiniteModeChoiceWeight_perm](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant215fb56f89dd8a606ddbfe31ac1fd3274188e9b794ad42211cf9343cb6814969.lean/declarations/thetaphifinitemodechoiceweight-perm--bbb2f926c370d63fd5188ed8.md) | 41 | `result-track:bbb2f926c370d63fd5188ed84fdf4b1a050f375433a31b8745acf4fa2f80a4f3` |
| 4 | `theorem` | [signedJetDet_truncation_eq_finite_mode_sum](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant215fb56f89dd8a606ddbfe31ac1fd3274188e9b794ad42211cf9343cb6814969.lean/declarations/signedjetdet-truncation-eq-finite-mode-sum--042f3a3744dde8b07b7bf397.md) | 54 | `result-track:042f3a3744dde8b07b7bf397132e9cd58d7f3e59c497823e0c6e35f1c0221f6e` |
| 5 | `theorem` | [finite_mode_weighted_sum_perm_invariant](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant215fb56f89dd8a606ddbfe31ac1fd3274188e9b794ad42211cf9343cb6814969.lean/declarations/finite-mode-weighted-sum-perm-invariant--5598c45e10ecd9f5432676ed.md) | 67 | `result-track:5598c45e10ecd9f5432676edd5f0b5324d2a879ceb31a99019e02ed276de7dfb` |
| 6 | `def` | [thetaPhiFiniteModeOrbitSignedSum](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant215fb56f89dd8a606ddbfe31ac1fd3274188e9b794ad42211cf9343cb6814969.lean/declarations/thetaphifinitemodeorbitsignedsum--a41aa1619fb968664da0fd38.md) | 89 | `declaration-track:a41aa1619fb968664da0fd383f207fab7c10bf707a9d06120944ac8fdd0c9378` |
| 7 | `theorem` | [factorial_mul_signedJetDet_truncation_eq_orbit_sum](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant215fb56f89dd8a606ddbfe31ac1fd3274188e9b794ad42211cf9343cb6814969.lean/declarations/factorial-mul-signedjetdet-truncation-eq-orbit-sum--8bfe3f8e5ffd17decdfecaf2.md) | 97 | `result-track:8bfe3f8e5ffd17decdfecaf27a23216c89e539714aef4500481434ee57240e37` |
| 8 | `def` | [thetaPhiModePairSignedSum](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant215fb56f89dd8a606ddbfe31ac1fd3274188e9b794ad42211cf9343cb6814969.lean/declarations/thetaphimodepairsignedsum--073d2829abb6e5dd7f87d832.md) | 143 | `declaration-track:073d2829abb6e5dd7f87d832607015d4675d411437900818bb4f4093ad164ac4` |
| 9 | `theorem` | [thetaPhiModePairSignedSum_zero_01](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant215fb56f89dd8a606ddbfe31ac1fd3274188e9b794ad42211cf9343cb6814969.lean/declarations/thetaphimodepairsignedsum-zero-01--4527a7b0b034fbfbbb4794e0.md) | 151 | `result-track:4527a7b0b034fbfbbb4794e0b81c1158221029e9915fc7e33cf3288ab1bccc3e` |
| 10 | `theorem` | [thetaPhiModePair_zero_01_cubic_pos](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant215fb56f89dd8a606ddbfe31ac1fd3274188e9b794ad42211cf9343cb6814969.lean/declarations/thetaphimodepair-zero-01-cubic-pos--ae4d55fe772458a84e53ddd7.md) | 163 | `result-track:ae4d55fe772458a84e53ddd7420f574abdde7122af86aa93569c38e2b57e5cb0` |
| 11 | `theorem` | [thetaPhiModePairSignedSum_zero_01_neg](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant215fb56f89dd8a606ddbfe31ac1fd3274188e9b794ad42211cf9343cb6814969.lean/declarations/thetaphimodepairsignedsum-zero-01-neg--0608910327b0cefe2bfefff5.md) | 181 | `result-track:0608910327b0cefe2bfefff53605b47353a10c93bca67d0d13062df066140f9d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
