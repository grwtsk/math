# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ZeroSmoothingAudit.Variant4805d5ff35fe7f74f8ddc7b62d553b2df2765befc0dc3b470dab31221c1ea511

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e648b7f2c1c8918fecda6d9542fc2517ba5a570f",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ZeroSmoothingAudit/Variant4805d5ff35fe7f74f8ddc7b62d553b2df2765befc0dc3b470dab31221c1ea511.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingAudit/Variant4805d5ff35fe7f74f8ddc7b62d553b2df2765befc0dc3b470dab31221c1ea511.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingAudit/Variant4805d5ff35fe7f74f8ddc7b62d553b2df2765befc0dc3b470dab31221c1ea511.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e648b7f2c1c8918fecda6d9542fc2517ba5a570f`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ZeroSmoothingAudit/Variant4805d5ff35fe7f74f8ddc7b62d553b2df2765befc0dc3b470dab31221c1ea511.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ZeroSmoothingAudit/Variant4805d5ff35fe7f74f8ddc7b62d553b2df2765befc0dc3b470dab31221c1ea511.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroTestRegularity` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.BumpFunction.Convolution` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [smoothingBump](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingAudit/Variant4805d5ff35fe7f74f8ddc7b62d553b2df2765befc0dc3b470dab31221c1ea511.lean/declarations/smoothingbump--3ad4c882028980851bef0c97.md) | 31 | `declaration-track:3ad4c882028980851bef0c973e66165321ce1a861ec60383e76d5df6f9943574` |
| 2 | `def` | [mollifier](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingAudit/Variant4805d5ff35fe7f74f8ddc7b62d553b2df2765befc0dc3b470dab31221c1ea511.lean/declarations/mollifier--327580d0cf5c2d1e7c539bff.md) | 38 | `declaration-track:327580d0cf5c2d1e7c539bff69948bc9672d2f46cfdabcf42a3399191ae648ec` |
| 3 | `theorem` | [mollifier_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingAudit/Variant4805d5ff35fe7f74f8ddc7b62d553b2df2765befc0dc3b470dab31221c1ea511.lean/declarations/mollifier-nonneg--c13941381941a7aab90aac5e.md) | 42 | `result-track:c13941381941a7aab90aac5e33f8df3a3698886fa8641af09f8db319ba7c97f9` |
| 4 | `theorem` | [mollifier_even](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingAudit/Variant4805d5ff35fe7f74f8ddc7b62d553b2df2765befc0dc3b470dab31221c1ea511.lean/declarations/mollifier-even--c17e0a5f71b7fa30df0913b5.md) | 47 | `result-track:c17e0a5f71b7fa30df0913b509bbff0de82e28af597f3697e5c1acd684f7e806` |
| 5 | `theorem` | [mollifier_contDiff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingAudit/Variant4805d5ff35fe7f74f8ddc7b62d553b2df2765befc0dc3b470dab31221c1ea511.lean/declarations/mollifier-contdiff--a216e3ac52f5f5f276d10735.md) | 51 | `result-track:a216e3ac52f5f5f276d107350c51ed85eb81feae7146e46a42294f2177742e9e` |
| 6 | `theorem` | [mollifier_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingAudit/Variant4805d5ff35fe7f74f8ddc7b62d553b2df2765befc0dc3b470dab31221c1ea511.lean/declarations/mollifier-integrable--3af56081b279ef8cdcbaa383.md) | 56 | `result-track:3af56081b279ef8cdcbaa383c3e16ee1a4091c0142a5130de9d06d2233c827f0` |
| 7 | `theorem` | [mollifier_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingAudit/Variant4805d5ff35fe7f74f8ddc7b62d553b2df2765befc0dc3b470dab31221c1ea511.lean/declarations/mollifier-integral--89587d1804a41435cadf4a6b.md) | 61 | `result-track:89587d1804a41435cadf4a6b0c847a777e2d0296c1687e480ff7ebd397ccfb1e` |
| 8 | `theorem` | [mollifier_support](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingAudit/Variant4805d5ff35fe7f74f8ddc7b62d553b2df2765befc0dc3b470dab31221c1ea511.lean/declarations/mollifier-support--747f5e8615219d583597b356.md) | 66 | `result-track:747f5e8615219d583597b356c81347306e2990b7b79e8c3bb040c7ca96b660c2` |
| 9 | `theorem` | [mollifier_tsupport](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingAudit/Variant4805d5ff35fe7f74f8ddc7b62d553b2df2765befc0dc3b470dab31221c1ea511.lean/declarations/mollifier-tsupport--c7020931e71697f2b06a9a4d.md) | 72 | `result-track:c7020931e71697f2b06a9a4d73bbdcaab8480947edb5276409e4876b6d4be852` |
| 10 | `theorem` | [mollifier_hasCompactSupport](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingAudit/Variant4805d5ff35fe7f74f8ddc7b62d553b2df2765befc0dc3b470dab31221c1ea511.lean/declarations/mollifier-hascompactsupport--ac5bcfa130e33927bcba0c4e.md) | 78 | `result-track:ac5bcfa130e33927bcba0c4e5787a648451f0fd1cf9292fe193918fad49c01cc` |
| 11 | `def` | [smoothedTest](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingAudit/Variant4805d5ff35fe7f74f8ddc7b62d553b2df2765befc0dc3b470dab31221c1ea511.lean/declarations/smoothedtest--1f0bc34c50c86161a8b28b27.md) | 83 | `declaration-track:1f0bc34c50c86161a8b28b274729dde3aa01f50ec79e03405cc2158a1e35ed58` |
| 12 | `theorem` | [smoothedTest_eq_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingAudit/Variant4805d5ff35fe7f74f8ddc7b62d553b2df2765befc0dc3b470dab31221c1ea511.lean/declarations/smoothedtest-eq-integral--0279f264b1488c5e1d6737d0.md) | 87 | `result-track:0279f264b1488c5e1d6737d0dc3141bcb9bffadd2d554de5e5dd441a7bb4a32a` |
| 13 | `theorem` | [smoothing_integrand_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingAudit/Variant4805d5ff35fe7f74f8ddc7b62d553b2df2765befc0dc3b470dab31221c1ea511.lean/declarations/smoothing-integrand-integrable--45f1cf46197ed18679b2dfcf.md) | 92 | `result-track:45f1cf46197ed18679b2dfcfae3d8807daef15877c25dec98184fe13b144f4af` |
| 14 | `theorem` | [smoothedTest_contDiff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingAudit/Variant4805d5ff35fe7f74f8ddc7b62d553b2df2765befc0dc3b470dab31221c1ea511.lean/declarations/smoothedtest-contdiff--de22d5ef20e330f6fea8c487.md) | 99 | `result-track:de22d5ef20e330f6fea8c4871a998c5e1b61e9dc59021e3b3f4cf39db51790c0` |
| 15 | `theorem` | [smoothedTest_even](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingAudit/Variant4805d5ff35fe7f74f8ddc7b62d553b2df2765befc0dc3b470dab31221c1ea511.lean/declarations/smoothedtest-even--1e8c05a56b4225879d245603.md) | 106 | `result-track:1e8c05a56b4225879d2456031818e3e7d71c21b7a2d8d3eb940d90d00a57e2f1` |
| 16 | `theorem` | [smoothedTest_support_subset](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingAudit/Variant4805d5ff35fe7f74f8ddc7b62d553b2df2765befc0dc3b470dab31221c1ea511.lean/declarations/smoothedtest-support-subset--c04c7723f27089d88fb23761.md) | 115 | `result-track:c04c7723f27089d88fb23761c2aa4022e0c5dda41de5d2834008c2b4e80da0c7` |
| 17 | `theorem` | [smoothedTest_tsupport_subset](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingAudit/Variant4805d5ff35fe7f74f8ddc7b62d553b2df2765befc0dc3b470dab31221c1ea511.lean/declarations/smoothedtest-tsupport-subset--13b61fe38f338e8f62a3e9d7.md) | 125 | `result-track:13b61fe38f338e8f62a3e9d7eda5373fd2a138c0d52cb6cf5c3de1d15f5c86e7` |
| 18 | `theorem` | [smoothedTest_hasCompactSupport](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingAudit/Variant4805d5ff35fe7f74f8ddc7b62d553b2df2765befc0dc3b470dab31221c1ea511.lean/declarations/smoothedtest-hascompactsupport--9da8b6d88199f304da17e47a.md) | 130 | `result-track:9da8b6d88199f304da17e47a4af4591afeb2eec04e838fa044ff9cf6a3457562` |
| 19 | `theorem` | [smoothedTest_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingAudit/Variant4805d5ff35fe7f74f8ddc7b62d553b2df2765befc0dc3b470dab31221c1ea511.lean/declarations/smoothedtest-integrable--aa9df85bb5dfa0904fc0fa93.md) | 135 | `result-track:aa9df85bb5dfa0904fc0fa932e9ce802998b471e76a42e599a4981567a224272` |
| 20 | `theorem` | [smoothedTest_tsupport_subset_common](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingAudit/Variant4805d5ff35fe7f74f8ddc7b62d553b2df2765befc0dc3b470dab31221c1ea511.lean/declarations/smoothedtest-tsupport-subset-common--946aaa8d2a2b0f98f1b0501c.md) | 141 | `result-track:946aaa8d2a2b0f98f1b0501c9d2195982997dc52c86f512ecd95521281ac03fe` |
| 21 | `theorem` | [smoothedTest_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingAudit/Variant4805d5ff35fe7f74f8ddc7b62d553b2df2765befc0dc3b470dab31221c1ea511.lean/declarations/smoothedtest-tendsto--8f2f6bef3bcd5880da0c7f95.md) | 149 | `result-track:8f2f6bef3bcd5880da0c7f95ef81024bea07700e36780bd1c61c0a43233c31fb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
