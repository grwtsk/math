# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceContinuousHalfEnergy.Variante642e890f6e34642c5eb42d2bc28f8337b0ecb84bbae8369f9ceeb20c9819f3e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1882ecf6755e0f8fbd42e48a4c4d2fb75705848c",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceContinuousHalfEnergy/Variante642e890f6e34642c5eb42d2bc28f8337b0ecb84bbae8369f9ceeb20c9819f3e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceContinuousHalfEnergy/Variante642e890f6e34642c5eb42d2bc28f8337b0ecb84bbae8369f9ceeb20c9819f3e.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceContinuousHalfEnergy/Variante642e890f6e34642c5eb42d2bc28f8337b0ecb84bbae8369f9ceeb20c9819f3e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1882ecf6755e0f8fbd42e48a4c4d2fb75705848c`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceContinuousHalfEnergy/Variante642e890f6e34642c5eb42d2bc28f8337b0ecb84bbae8369f9ceeb20c9819f3e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceContinuousHalfEnergy/Variante642e890f6e34642c5eb42d2bc28f8337b0ecb84bbae8369f9ceeb20c9819f3e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceMangoldtAbel` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceCausalEnergy` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Prod` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [forwardHalfKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceContinuousHalfEnergy/Variante642e890f6e34642c5eb42d2bc28f8337b0ecb84bbae8369f9ceeb20c9819f3e.lean/declarations/forwardhalfkernel--abadf398377d6352632af1e5.md) | 38 | `declaration-track:abadf398377d6352632af1e53f21e1338598d21f8e4a4a5dfacc6566b292cb65` |
| 2 | `theorem` | [forwardHalfKernel_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceContinuousHalfEnergy/Variante642e890f6e34642c5eb42d2bc28f8337b0ecb84bbae8369f9ceeb20c9819f3e.lean/declarations/forwardhalfkernel-continuous--a200cdc9f91619f092641464.md) | 43 | `result-track:a200cdc9f91619f0926414644a66cd47714bbcffa03026faf03620330286c3c5` |
| 3 | `theorem` | [forwardHalfKernel_hasCompactSupport](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceContinuousHalfEnergy/Variante642e890f6e34642c5eb42d2bc28f8337b0ecb84bbae8369f9ceeb20c9819f3e.lean/declarations/forwardhalfkernel-hascompactsupport--628efc3edb113ae282e9d501.md) | 51 | `result-track:628efc3edb113ae282e9d50137329265c023b9e97f4f047f3cd15d869428cee8` |
| 4 | `theorem` | [forwardHalfKernel_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceContinuousHalfEnergy/Variante642e890f6e34642c5eb42d2bc28f8337b0ecb84bbae8369f9ceeb20c9819f3e.lean/declarations/forwardhalfkernel-integrable--49bf7a02269ba8f829be7ed1.md) | 73 | `result-track:49bf7a02269ba8f829be7ed18809ea8c4d78c81b96670659812232c044c11fea` |
| 5 | `theorem` | [sourceCorrelation_eq_plus_shift](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceContinuousHalfEnergy/Variante642e890f6e34642c5eb42d2bc28f8337b0ecb84bbae8369f9ceeb20c9819f3e.lean/declarations/sourcecorrelation-eq-plus-shift--3dcc95810bf0639b94567185.md) | 79 | `result-track:3dcc95810bf0639b945671850e7e05c9cf7c58bedb10f86afc355d32a173d24f` |
| 6 | `theorem` | [negativeSmoothMoment_eq_forward_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceContinuousHalfEnergy/Variante642e890f6e34642c5eb42d2bc28f8337b0ecb84bbae8369f9ceeb20c9819f3e.lean/declarations/negativesmoothmoment-eq-forward-integral--65b160eec433f8610a7b6925.md) | 87 | `result-track:65b160eec433f8610a7b6925554dd976a4406c2ed22ff55c2afcbad1649a227f` |
| 7 | `theorem` | [forwardHalfKernel_interval_eq_tail_pairing](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceContinuousHalfEnergy/Variante642e890f6e34642c5eb42d2bc28f8337b0ecb84bbae8369f9ceeb20c9819f3e.lean/declarations/forwardhalfkernel-interval-eq-tail-pairing--8e212d55c4fc85af393a630f.md) | 99 | `result-track:8e212d55c4fc85af393a630f8fb61c22dd2f62c9dd61ea7434f3d6af1d6040f1` |
| 8 | `theorem` | [negativeSmoothMoment_eq_tail_pairing](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceContinuousHalfEnergy/Variante642e890f6e34642c5eb42d2bc28f8337b0ecb84bbae8369f9ceeb20c9819f3e.lean/declarations/negativesmoothmoment-eq-tail-pairing--34851c9bd66f0e79b2bff400.md) | 137 | `result-track:34851c9bd66f0e79b2bff4007cdc912a19f15d058a2768a74fdbebcf25656362` |
| 9 | `theorem` | [negativeSmoothMoment_eq_half_causal_energy](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceContinuousHalfEnergy/Variante642e890f6e34642c5eb42d2bc28f8337b0ecb84bbae8369f9ceeb20c9819f3e.lean/declarations/negativesmoothmoment-eq-half-causal-energy--a72822b831a43746e59d2168.md) | 147 | `result-track:a72822b831a43746e59d216874a7e510b1720ef0091edb901c3bb94094f59d87` |
| 10 | `theorem` | [negativeSmoothMoment_eq_normalized_energy](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceContinuousHalfEnergy/Variante642e890f6e34642c5eb42d2bc28f8337b0ecb84bbae8369f9ceeb20c9819f3e.lean/declarations/negativesmoothmoment-eq-normalized-energy--1142108b6fd7acc945a87084.md) | 153 | `result-track:1142108b6fd7acc945a8708404ea21f38cca04334d70e204088b81a32a2c1a7f` |
| 11 | `theorem` | [negativeSmoothMoment_eq_rational](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceContinuousHalfEnergy/Variante642e890f6e34642c5eb42d2bc28f8337b0ecb84bbae8369f9ceeb20c9819f3e.lean/declarations/negativesmoothmoment-eq-rational--11ac8a9bfb2d1bb394c7854c.md) | 161 | `result-track:11ac8a9bfb2d1bb394c7854cd60bc4e575deb7260ba1f06a636c62fe13938a1e` |
| 12 | `theorem` | [criticalContinuousMoment_eq_neg_half_causal_energy](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceContinuousHalfEnergy/Variante642e890f6e34642c5eb42d2bc28f8337b0ecb84bbae8369f9ceeb20c9819f3e.lean/declarations/criticalcontinuousmoment-eq-neg-half-causal-energy--bcafd7e5aaa8fb72f391efb8.md) | 170 | `result-track:bcafd7e5aaa8fb72f391efb82ba585b97d66aeecde75e2132cd20fcd1ad945fe` |
| 13 | `theorem` | [criticalContinuousMoment_eq_rational](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceContinuousHalfEnergy/Variante642e890f6e34642c5eb42d2bc28f8337b0ecb84bbae8369f9ceeb20c9819f3e.lean/declarations/criticalcontinuousmoment-eq-rational--d2eef56e54c2610945cc3c64.md) | 177 | `result-track:d2eef56e54c2610945cc3c6495e6db94cc6a5fe71d23fdb95e130eceb36ee140` |
| 14 | `theorem` | [negativeSmoothMoment_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceContinuousHalfEnergy/Variante642e890f6e34642c5eb42d2bc28f8337b0ecb84bbae8369f9ceeb20c9819f3e.lean/declarations/negativesmoothmoment-pos--20887932657a9610337a702e.md) | 185 | `result-track:20887932657a9610337a702ecf4dff47cf56ec4d59bba76ebc65804453138b12` |
| 15 | `theorem` | [criticalContinuousMoment_lt_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceContinuousHalfEnergy/Variante642e890f6e34642c5eb42d2bc28f8337b0ecb84bbae8369f9ceeb20c9819f3e.lean/declarations/criticalcontinuousmoment-lt-zero--b2be2dd3a498fb96efd7bb36.md) | 191 | `result-track:b2be2dd3a498fb96efd7bb36ad9c2a066bc9d66f63cf51e576b75e978f25e95e` |
| 16 | `theorem` | [criticalContinuousMoment_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceContinuousHalfEnergy/Variante642e890f6e34642c5eb42d2bc28f8337b0ecb84bbae8369f9ceeb20c9819f3e.lean/declarations/criticalcontinuousmoment-ne-zero--d84cd3141622e0d174285ca1.md) | 197 | `result-track:d84cd3141622e0d174285ca1204ddd024c620f84fc0fd8d068ec20be24a13649` |
| 17 | `theorem` | [criticalContinuousMoment_strict_bounds](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceContinuousHalfEnergy/Variante642e890f6e34642c5eb42d2bc28f8337b0ecb84bbae8369f9ceeb20c9819f3e.lean/declarations/criticalcontinuousmoment-strict-bounds--1b5b3a07ac519dcb5d2eb12c.md) | 201 | `result-track:1b5b3a07ac519dcb5d2eb12ca9bfe627a8a7730c188fac81803b69c739cabccf` |
| 18 | `theorem` | [mertensResidual_eq_neg_causal_energy_sub_work](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceContinuousHalfEnergy/Variante642e890f6e34642c5eb42d2bc28f8337b0ecb84bbae8369f9ceeb20c9819f3e.lean/declarations/mertensresidual-eq-neg-causal-energy-sub-work--eda5b7d94f4ce259a91121cd.md) | 210 | `result-track:eda5b7d94f4ce259a91121cd8bfbcb50c3dedf011016f2d7eba75d1775a27040` |
| 19 | `theorem` | [mertensResidual_eq_rational_sub_work](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceContinuousHalfEnergy/Variante642e890f6e34642c5eb42d2bc28f8337b0ecb84bbae8369f9ceeb20c9819f3e.lean/declarations/mertensresidual-eq-rational-sub-work--862c78f860a8ae01875acb3c.md) | 217 | `result-track:862c78f860a8ae01875acb3cd4036ff282885e8aab09d05b99b04caa02ac74cf` |
| 20 | `theorem` | [mertensResidual_lt_neg_work](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceContinuousHalfEnergy/Variante642e890f6e34642c5eb42d2bc28f8337b0ecb84bbae8369f9ceeb20c9819f3e.lean/declarations/mertensresidual-lt-neg-work--7e1c2c065dbfb69b7ba1bbf0.md) | 224 | `result-track:7e1c2c065dbfb69b7ba1bbf08f9e9d506434e3a570b3c3d47d029bcb9035f921` |
| 21 | `theorem` | [residual_tail_of_Mangoldt_work_tail](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceContinuousHalfEnergy/Variante642e890f6e34642c5eb42d2bc28f8337b0ecb84bbae8369f9ceeb20c9819f3e.lean/declarations/residual-tail-of-mangoldt-work-tail--0db254a97d83a1f579072c43.md) | 231 | `result-track:0db254a97d83a1f579072c434be220de3c8d9e07b12be3e38d5940da34cf9092` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
