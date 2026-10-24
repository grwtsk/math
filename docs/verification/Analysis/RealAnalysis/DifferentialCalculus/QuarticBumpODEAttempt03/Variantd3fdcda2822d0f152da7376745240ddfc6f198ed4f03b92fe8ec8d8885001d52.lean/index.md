# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.QuarticBumpODEAttempt03.Variantd3fdcda2822d0f152da7376745240ddfc6f198ed4f03b92fe8ec8d8885001d52

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6deba7a31bf126b2433984b628c42556e5f71248",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt03/Variantd3fdcda2822d0f152da7376745240ddfc6f198ed4f03b92fe8ec8d8885001d52.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt03/Variantd3fdcda2822d0f152da7376745240ddfc6f198ed4f03b92fe8ec8d8885001d52.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt03/Variantd3fdcda2822d0f152da7376745240ddfc6f198ed4f03b92fe8ec8d8885001d52.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6deba7a31bf126b2433984b628c42556e5f71248`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt03/Variantd3fdcda2822d0f152da7376745240ddfc6f198ed4f03b92fe8ec8d8885001d52.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt03/Variantd3fdcda2822d0f152da7376745240ddfc6f198ed4f03b92fe8ec8d8885001d52.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualMellinFilter` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [bumpMoment](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt03/Variantd3fdcda2822d0f152da7376745240ddfc6f198ed4f03b92fe8ec8d8885001d52.lean/declarations/bumpmoment--617fcf495c5dc88294c87f0e.md) | 23 | `declaration-track:617fcf495c5dc88294c87f0e60fbef800b90f8553e3002da8230d460404b9b0b` |
| 2 | `def` | [fifthProfile](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt03/Variantd3fdcda2822d0f152da7376745240ddfc6f198ed4f03b92fe8ec8d8885001d52.lean/declarations/fifthprofile--79503dfedc17768099931563.md) | 26 | `declaration-track:79503dfedc17768099931563b8a4fdf9bb8353d5db79599c4bfbffb9bb914888` |
| 3 | `theorem` | [moment_profile_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt03/Variantd3fdcda2822d0f152da7376745240ddfc6f198ed4f03b92fe8ec8d8885001d52.lean/declarations/moment-profile-continuous--5a96428399771bee62188b01.md) | 28 | `result-track:5a96428399771bee62188b010a9d1d9f47125a5cf5faaffb97174497d26f3597` |
| 4 | `theorem` | [moment_profile_hasCompactSupport](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt03/Variantd3fdcda2822d0f152da7376745240ddfc6f198ed4f03b92fe8ec8d8885001d52.lean/declarations/moment-profile-hascompactsupport--d16cc8ba2c4b0c4c3cf71657.md) | 32 | `result-track:d16cc8ba2c4b0c4c3cf71657c70643544309f2ef94b3ced0dcad693d9479fa76` |
| 5 | `theorem` | [bumpMoment_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt03/Variantd3fdcda2822d0f152da7376745240ddfc6f198ed4f03b92fe8ec8d8885001d52.lean/declarations/bumpmoment-integrable--16925bddc83aed15a387a8a6.md) | 36 | `result-track:16925bddc83aed15a387a8a674cc014e3e956b960473c11be011419bb7705035` |
| 6 | `theorem` | [bumpMoment_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt03/Variantd3fdcda2822d0f152da7376745240ddfc6f198ed4f03b92fe8ec8d8885001d52.lean/declarations/bumpmoment-hasderivat--580ad840e42f53c5be6263ad.md) | 40 | `result-track:580ad840e42f53c5be6263ad1136916b7e3ca2fa43efe448a8fb9a0f61a13886` |
| 7 | `theorem` | [bumpMoment_zero_eq_quartic](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt03/Variantd3fdcda2822d0f152da7376745240ddfc6f198ed4f03b92fe8ec8d8885001d52.lean/declarations/bumpmoment-zero-eq-quartic--0b1ec501d1636dd5bda9fd51.md) | 52 | `result-track:0b1ec501d1636dd5bda9fd51390f6ed45067877c477de092a593d781f7adf634` |
| 8 | `theorem` | [quartic_value_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt03/Variantd3fdcda2822d0f152da7376745240ddfc6f198ed4f03b92fe8ec8d8885001d52.lean/declarations/quartic-value-zero--130b3de0d10dda4ea75a7bba.md) | 57 | `result-track:130b3de0d10dda4ea75a7bba13dd0cd493763c266cc98cfaf045a1ea1d02d902` |
| 9 | `theorem` | [quartic_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt03/Variantd3fdcda2822d0f152da7376745240ddfc6f198ed4f03b92fe8ec8d8885001d52.lean/declarations/quartic-hasderivat--c1cc8b033b61add9e289e6b4.md) | 74 | `result-track:c1cc8b033b61add9e289e6b45a752b585e7f97a9cceeb281c511e074455dd2d0` |
| 10 | `theorem` | [quartic_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt03/Variantd3fdcda2822d0f152da7376745240ddfc6f198ed4f03b92fe8ec8d8885001d52.lean/declarations/quartic-deriv--4651f0758a1ab8fc20eae88f.md) | 79 | `result-track:4651f0758a1ab8fc20eae88f3183c4f350ebb5cafb714690508f408bcb5bc9de` |
| 11 | `theorem` | [quartic_second_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt03/Variantd3fdcda2822d0f152da7376745240ddfc6f198ed4f03b92fe8ec8d8885001d52.lean/declarations/quartic-second-deriv--27c071a5fce8aee35acd37bf.md) | 82 | `result-track:27c071a5fce8aee35acd37bf651b3cd701234cf48abecad050cb0164973fcac3` |
| 12 | `theorem` | [fifthProfile_contDiff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt03/Variantd3fdcda2822d0f152da7376745240ddfc6f198ed4f03b92fe8ec8d8885001d52.lean/declarations/fifthprofile-contdiff--938bd360041cef52976c5bde.md) | 86 | `result-track:938bd360041cef52976c5bdedaf7a3cb8cca1291f630309af01442c986524ec2` |
| 13 | `theorem` | [fifthProfile_hasCompactSupport](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt03/Variantd3fdcda2822d0f152da7376745240ddfc6f198ed4f03b92fe8ec8d8885001d52.lean/declarations/fifthprofile-hascompactsupport--41746c0bd536385ea3290e10.md) | 90 | `result-track:41746c0bd536385ea3290e10a898bbebbac4ec2150a94ae2a13eff6e5fd8b5a1` |
| 14 | `theorem` | [fifthProfile_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt03/Variantd3fdcda2822d0f152da7376745240ddfc6f198ed4f03b92fe8ec8d8885001d52.lean/declarations/fifthprofile-hasderivat--112e5313ce493dfbd23eef6c.md) | 93 | `result-track:112e5313ce493dfbd23eef6cb08ab1caf063fc3901ab7650ca186fb202f618e3` |
| 15 | `theorem` | [fifthProfile_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt03/Variantd3fdcda2822d0f152da7376745240ddfc6f198ed4f03b92fe8ec8d8885001d52.lean/declarations/fifthprofile-deriv--e5ff6a64ebc720c60ff57f09.md) | 106 | `result-track:e5ff6a64ebc720c60ff57f09d0bf9536390f48f50648d8f84cec43a4d3c0c234` |
| 16 | `theorem` | [fifthProfile_transform](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt03/Variantd3fdcda2822d0f152da7376745240ddfc6f198ed4f03b92fe8ec8d8885001d52.lean/declarations/fifthprofile-transform--5523f361d6614d0640477155.md) | 109 | `result-track:5523f361d6614d06404771558cabcb47cb26148d3d68ea1810b5bdbeae243ac8` |
| 17 | `theorem` | [fifthProfile_deriv_transform](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt03/Variantd3fdcda2822d0f152da7376745240ddfc6f198ed4f03b92fe8ec8d8885001d52.lean/declarations/fifthprofile-deriv-transform--3e60e2d9cdd4cce4a05b3230.md) | 124 | `result-track:3e60e2d9cdd4cce4a05b3230b986530981a61d682c337641435434f96a0f5f6c` |
| 18 | `theorem` | [literal_quartic_ODE](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt03/Variantd3fdcda2822d0f152da7376745240ddfc6f198ed4f03b92fe8ec8d8885001d52.lean/declarations/literal-quartic-ode--2d071cc0180d6b3fd7cb806a.md) | 134 | `result-track:2d071cc0180d6b3fd7cb806a6bd1ca4155348514038e3cc0d187179bedf1f3ae` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
