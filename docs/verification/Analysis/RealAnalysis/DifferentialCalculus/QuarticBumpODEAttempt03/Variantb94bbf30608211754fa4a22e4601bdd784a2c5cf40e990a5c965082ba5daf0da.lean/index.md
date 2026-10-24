# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.QuarticBumpODEAttempt03.Variantb94bbf30608211754fa4a22e4601bdd784a2c5cf40e990a5c965082ba5daf0da

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "26661d9275c4e31f3cfce738d64b66c4af5191d0",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt03/Variantb94bbf30608211754fa4a22e4601bdd784a2c5cf40e990a5c965082ba5daf0da.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt03/Variantb94bbf30608211754fa4a22e4601bdd784a2c5cf40e990a5c965082ba5daf0da.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt03/Variantb94bbf30608211754fa4a22e4601bdd784a2c5cf40e990a5c965082ba5daf0da.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `26661d9275c4e31f3cfce738d64b66c4af5191d0`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt03/Variantb94bbf30608211754fa4a22e4601bdd784a2c5cf40e990a5c965082ba5daf0da.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt03/Variantb94bbf30608211754fa4a22e4601bdd784a2c5cf40e990a5c965082ba5daf0da.lean.json)

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
| 1 | `def` | [bumpMoment](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt03/Variantb94bbf30608211754fa4a22e4601bdd784a2c5cf40e990a5c965082ba5daf0da.lean/declarations/bumpmoment--8283cc207bdf7b02a66fe6f1.md) | 15 | `declaration-track:8283cc207bdf7b02a66fe6f1460430362fb2ec48a004d2aee2a4187c5511d330` |
| 2 | `def` | [fifthProfile](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt03/Variantb94bbf30608211754fa4a22e4601bdd784a2c5cf40e990a5c965082ba5daf0da.lean/declarations/fifthprofile--e62aac3c52decc425d30b9d8.md) | 18 | `declaration-track:e62aac3c52decc425d30b9d8239552244d8114e9324d9e9cfd33ed9abe68a564` |
| 3 | `theorem` | [moment_profile_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt03/Variantb94bbf30608211754fa4a22e4601bdd784a2c5cf40e990a5c965082ba5daf0da.lean/declarations/moment-profile-continuous--2a0213d670a354e46d3f2336.md) | 20 | `result-track:2a0213d670a354e46d3f23360f4419d4981c129ced6dd429d864bc0dfe10afab` |
| 4 | `theorem` | [moment_profile_hasCompactSupport](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt03/Variantb94bbf30608211754fa4a22e4601bdd784a2c5cf40e990a5c965082ba5daf0da.lean/declarations/moment-profile-hascompactsupport--9b86de4212636c5e18b0ebf6.md) | 24 | `result-track:9b86de4212636c5e18b0ebf673f2ee8cd185882655822b45bdec3c5fae61711b` |
| 5 | `theorem` | [bumpMoment_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt03/Variantb94bbf30608211754fa4a22e4601bdd784a2c5cf40e990a5c965082ba5daf0da.lean/declarations/bumpmoment-integrable--b361b34bb9f822c076bac931.md) | 28 | `result-track:b361b34bb9f822c076bac9310f8e41c920842a1807d80bf4a6a6ec05aff5abe7` |
| 6 | `theorem` | [bumpMoment_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt03/Variantb94bbf30608211754fa4a22e4601bdd784a2c5cf40e990a5c965082ba5daf0da.lean/declarations/bumpmoment-hasderivat--6763c6fd35d3b89944f9cc5f.md) | 32 | `result-track:6763c6fd35d3b89944f9cc5f2632b9a7b64755dfe0779d29509ec13a01e7ac6e` |
| 7 | `theorem` | [bumpMoment_zero_eq_quartic](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt03/Variantb94bbf30608211754fa4a22e4601bdd784a2c5cf40e990a5c965082ba5daf0da.lean/declarations/bumpmoment-zero-eq-quartic--f79442ed8058a3b6d8e171c2.md) | 44 | `result-track:f79442ed8058a3b6d8e171c2b5deeeec72ec796cec3f32cadbe9d05ec3c1f7d2` |
| 8 | `theorem` | [quartic_value_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt03/Variantb94bbf30608211754fa4a22e4601bdd784a2c5cf40e990a5c965082ba5daf0da.lean/declarations/quartic-value-zero--de261523fd6481262fe6f06b.md) | 49 | `result-track:de261523fd6481262fe6f06b40c06eaaff492f1fed8fe336738c49fb3c73067e` |
| 9 | `theorem` | [quartic_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt03/Variantb94bbf30608211754fa4a22e4601bdd784a2c5cf40e990a5c965082ba5daf0da.lean/declarations/quartic-hasderivat--32c3c96359f1f4a412077b52.md) | 66 | `result-track:32c3c96359f1f4a412077b52cfba9920b00f7d53c4e658b4eff337d97fc5dab7` |
| 10 | `theorem` | [quartic_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt03/Variantb94bbf30608211754fa4a22e4601bdd784a2c5cf40e990a5c965082ba5daf0da.lean/declarations/quartic-deriv--8ba4539ea91f7fda69986874.md) | 71 | `result-track:8ba4539ea91f7fda699868740f6a000bf580bbaeee7fe2385ad298be9201f94c` |
| 11 | `theorem` | [quartic_second_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt03/Variantb94bbf30608211754fa4a22e4601bdd784a2c5cf40e990a5c965082ba5daf0da.lean/declarations/quartic-second-deriv--433a10074b147e0666cf715e.md) | 74 | `result-track:433a10074b147e0666cf715ea843c569858982a7d4eb603be287252df276f924` |
| 12 | `theorem` | [fifthProfile_contDiff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt03/Variantb94bbf30608211754fa4a22e4601bdd784a2c5cf40e990a5c965082ba5daf0da.lean/declarations/fifthprofile-contdiff--bc830a856446de256387a01b.md) | 78 | `result-track:bc830a856446de256387a01b1c2226a607f916e9d4794c1d9e090980b02daf1f` |
| 13 | `theorem` | [fifthProfile_hasCompactSupport](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt03/Variantb94bbf30608211754fa4a22e4601bdd784a2c5cf40e990a5c965082ba5daf0da.lean/declarations/fifthprofile-hascompactsupport--7447b35a7f4e3a877f6b99f3.md) | 82 | `result-track:7447b35a7f4e3a877f6b99f3982763a1f017f0183d806c2e33d62c5b4f90ea2a` |
| 14 | `theorem` | [fifthProfile_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt03/Variantb94bbf30608211754fa4a22e4601bdd784a2c5cf40e990a5c965082ba5daf0da.lean/declarations/fifthprofile-hasderivat--32ad8abe337bd6568129051f.md) | 85 | `result-track:32ad8abe337bd6568129051f90bc88af5a2fa4f2a90adb4e9e7f64eeedd89bf7` |
| 15 | `theorem` | [fifthProfile_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt03/Variantb94bbf30608211754fa4a22e4601bdd784a2c5cf40e990a5c965082ba5daf0da.lean/declarations/fifthprofile-deriv--96cc8f3a335d8b24c1368a38.md) | 98 | `result-track:96cc8f3a335d8b24c1368a38362d00ffb601514e22d013ea0f1b62f552e4eb27` |
| 16 | `theorem` | [fifthProfile_transform](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt03/Variantb94bbf30608211754fa4a22e4601bdd784a2c5cf40e990a5c965082ba5daf0da.lean/declarations/fifthprofile-transform--4115a6b22559bbe572c9197b.md) | 101 | `result-track:4115a6b22559bbe572c9197b37d12eb784497ebd8ba1b159fb1761582ea28897` |
| 17 | `theorem` | [fifthProfile_deriv_transform](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt03/Variantb94bbf30608211754fa4a22e4601bdd784a2c5cf40e990a5c965082ba5daf0da.lean/declarations/fifthprofile-deriv-transform--357eb27f84722e7ff82474bc.md) | 116 | `result-track:357eb27f84722e7ff82474bc249b13412d547cbcfef17c95dfd7f18183caf314` |
| 18 | `theorem` | [literal_quartic_ODE](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt03/Variantb94bbf30608211754fa4a22e4601bdd784a2c5cf40e990a5c965082ba5daf0da.lean/declarations/literal-quartic-ode--25865868957442c05ce1b104.md) | 126 | `result-track:25865868957442c05ce1b104906bf8dc1904bd21b31a876cc412307ce0f51e11` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
