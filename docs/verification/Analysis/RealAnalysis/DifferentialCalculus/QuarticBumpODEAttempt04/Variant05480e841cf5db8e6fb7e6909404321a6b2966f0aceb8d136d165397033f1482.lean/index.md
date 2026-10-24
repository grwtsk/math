# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.QuarticBumpODEAttempt04.Variant05480e841cf5db8e6fb7e6909404321a6b2966f0aceb8d136d165397033f1482

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e224b7d0cdd7a3fed6daa29ff64e3ccb3a4b0ffa",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt04/Variant05480e841cf5db8e6fb7e6909404321a6b2966f0aceb8d136d165397033f1482.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt04/Variant05480e841cf5db8e6fb7e6909404321a6b2966f0aceb8d136d165397033f1482.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt04/Variant05480e841cf5db8e6fb7e6909404321a6b2966f0aceb8d136d165397033f1482.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e224b7d0cdd7a3fed6daa29ff64e3ccb3a4b0ffa`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt04/Variant05480e841cf5db8e6fb7e6909404321a6b2966f0aceb8d136d165397033f1482.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt04/Variant05480e841cf5db8e6fb7e6909404321a6b2966f0aceb8d136d165397033f1482.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualMellinFilter` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [bumpMoment](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt04/Variant05480e841cf5db8e6fb7e6909404321a6b2966f0aceb8d136d165397033f1482.lean/declarations/bumpmoment--9051b425dd1d53f5c33e8958.md) | 15 | `declaration-track:9051b425dd1d53f5c33e8958288ab98c671aaf73bd063964b0f248ba25ff27e3` |
| 2 | `def` | [fifthProfile](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt04/Variant05480e841cf5db8e6fb7e6909404321a6b2966f0aceb8d136d165397033f1482.lean/declarations/fifthprofile--0a2b5115cf2a38e8fc0ae152.md) | 18 | `declaration-track:0a2b5115cf2a38e8fc0ae15234a4fee68de344af770650d83e8cd5589e47793f` |
| 3 | `theorem` | [moment_profile_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt04/Variant05480e841cf5db8e6fb7e6909404321a6b2966f0aceb8d136d165397033f1482.lean/declarations/moment-profile-continuous--e63b84fa0658f8fdf5975640.md) | 20 | `result-track:e63b84fa0658f8fdf5975640d4b5865e9bb1f90469ec63e4b62603eadf6ae409` |
| 4 | `theorem` | [moment_profile_hasCompactSupport](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt04/Variant05480e841cf5db8e6fb7e6909404321a6b2966f0aceb8d136d165397033f1482.lean/declarations/moment-profile-hascompactsupport--874d47fa81099afd6fd9e173.md) | 24 | `result-track:874d47fa81099afd6fd9e1735e4c285936b3342e3534abecc4a2d3b1f2c60435` |
| 5 | `theorem` | [bumpMoment_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt04/Variant05480e841cf5db8e6fb7e6909404321a6b2966f0aceb8d136d165397033f1482.lean/declarations/bumpmoment-integrable--7030c27e4c9f8136a7c07969.md) | 28 | `result-track:7030c27e4c9f8136a7c079692c0baa0b3da6202d397730191c8e79f54a2a8e2d` |
| 6 | `theorem` | [bumpMoment_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt04/Variant05480e841cf5db8e6fb7e6909404321a6b2966f0aceb8d136d165397033f1482.lean/declarations/bumpmoment-hasderivat--70a53ea995720f889300990b.md) | 32 | `result-track:70a53ea995720f889300990b895bb7b9d99fdcd7694ea0c1aba707abbd06a58f` |
| 7 | `theorem` | [bumpMoment_differentiable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt04/Variant05480e841cf5db8e6fb7e6909404321a6b2966f0aceb8d136d165397033f1482.lean/declarations/bumpmoment-differentiable--c9a11ca2cbb31983ccffe442.md) | 44 | `result-track:c9a11ca2cbb31983ccffe44212f30888ef64491e2ded79a8b1f000c3671a996d` |
| 8 | `theorem` | [bumpMoment_zero_eq_quartic](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt04/Variant05480e841cf5db8e6fb7e6909404321a6b2966f0aceb8d136d165397033f1482.lean/declarations/bumpmoment-zero-eq-quartic--723ebf6237d55b6c28c459b2.md) | 48 | `result-track:723ebf6237d55b6c28c459b2a52d2fc5aabb8b1b340a10b4561ca9944ee349c9` |
| 9 | `theorem` | [quartic_value_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt04/Variant05480e841cf5db8e6fb7e6909404321a6b2966f0aceb8d136d165397033f1482.lean/declarations/quartic-value-zero--5a8c9b7630b838ce0e85247e.md) | 53 | `result-track:5a8c9b7630b838ce0e85247efb58faf096806e46711f4913a618ae91033f15fa` |
| 10 | `theorem` | [quartic_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt04/Variant05480e841cf5db8e6fb7e6909404321a6b2966f0aceb8d136d165397033f1482.lean/declarations/quartic-hasderivat--64eda21df97f7aa3430e61d8.md) | 70 | `result-track:64eda21df97f7aa3430e61d80b7ad72b429a04e0bb27cb3993b9103fea90a5b2` |
| 11 | `theorem` | [quartic_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt04/Variant05480e841cf5db8e6fb7e6909404321a6b2966f0aceb8d136d165397033f1482.lean/declarations/quartic-deriv--f93b724c97144b18fd364de3.md) | 75 | `result-track:f93b724c97144b18fd364de38033a34c819dbc01627262684899b7768eb4fd19` |
| 12 | `theorem` | [quartic_second_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt04/Variant05480e841cf5db8e6fb7e6909404321a6b2966f0aceb8d136d165397033f1482.lean/declarations/quartic-second-deriv--03320dc6e0d233b71283ce58.md) | 78 | `result-track:03320dc6e0d233b71283ce5884a5e6417acd7f1f7aa404d2456a98832b3d9b4f` |
| 13 | `theorem` | [fifthProfile_contDiff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt04/Variant05480e841cf5db8e6fb7e6909404321a6b2966f0aceb8d136d165397033f1482.lean/declarations/fifthprofile-contdiff--594e74acb37c8090032753ad.md) | 82 | `result-track:594e74acb37c8090032753ad405fd3393b1fcdae73dc420da55cc20ee0648ebc` |
| 14 | `theorem` | [fifthProfile_hasCompactSupport](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt04/Variant05480e841cf5db8e6fb7e6909404321a6b2966f0aceb8d136d165397033f1482.lean/declarations/fifthprofile-hascompactsupport--03fb55d2db35be3ad5351d29.md) | 86 | `result-track:03fb55d2db35be3ad5351d294edcd698c7fecc6ee295345e1f83f9987cde08d4` |
| 15 | `theorem` | [fifthProfile_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt04/Variant05480e841cf5db8e6fb7e6909404321a6b2966f0aceb8d136d165397033f1482.lean/declarations/fifthprofile-hasderivat--c938d6033b0edd8cbad81613.md) | 89 | `result-track:c938d6033b0edd8cbad816137f13d9b93316d805aea9c377828722bfe48b8341` |
| 16 | `theorem` | [fifthProfile_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt04/Variant05480e841cf5db8e6fb7e6909404321a6b2966f0aceb8d136d165397033f1482.lean/declarations/fifthprofile-deriv--0f93824cf3ca023d65c35794.md) | 102 | `result-track:0f93824cf3ca023d65c3579484643bd5f1ff5dc4d9c8ae9a4059739e32f3a7d5` |
| 17 | `theorem` | [fifthProfile_transform](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt04/Variant05480e841cf5db8e6fb7e6909404321a6b2966f0aceb8d136d165397033f1482.lean/declarations/fifthprofile-transform--363cc2fb1751b2297e720901.md) | 105 | `result-track:363cc2fb1751b2297e7209019e39b5d3db5bc13e8e1ea82c0248d0fee9bf3835` |
| 18 | `theorem` | [fifthProfile_deriv_transform](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt04/Variant05480e841cf5db8e6fb7e6909404321a6b2966f0aceb8d136d165397033f1482.lean/declarations/fifthprofile-deriv-transform--8d0e7de5c9440ace6478ffaf.md) | 120 | `result-track:8d0e7de5c9440ace6478ffafea7fa4cb04c7ae67d40cd2da1b616d2e64444592` |
| 19 | `theorem` | [literal_quartic_ODE](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt04/Variant05480e841cf5db8e6fb7e6909404321a6b2966f0aceb8d136d165397033f1482.lean/declarations/literal-quartic-ode--40f9687d56a3155c64d61d01.md) | 130 | `result-track:40f9687d56a3155c64d61d016fff37ab32fe5111cf251743565f93377873ae52` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
