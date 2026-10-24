# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.QuarticBumpODEAttempt01.Variant5f3fe76da12673f2551f1f65c9846feb8abedac1484465e0dc3f17e56695232a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f5b05dc0eb8d501ffc12f6976ba46f7bdd653929",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt01/Variant5f3fe76da12673f2551f1f65c9846feb8abedac1484465e0dc3f17e56695232a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt01/Variant5f3fe76da12673f2551f1f65c9846feb8abedac1484465e0dc3f17e56695232a.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt01/Variant5f3fe76da12673f2551f1f65c9846feb8abedac1484465e0dc3f17e56695232a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f5b05dc0eb8d501ffc12f6976ba46f7bdd653929`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt01/Variant5f3fe76da12673f2551f1f65c9846feb8abedac1484465e0dc3f17e56695232a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt01/Variant5f3fe76da12673f2551f1f65c9846feb8abedac1484465e0dc3f17e56695232a.lean.json)

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
| 1 | `def` | [bumpMoment](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt01/Variant5f3fe76da12673f2551f1f65c9846feb8abedac1484465e0dc3f17e56695232a.lean/declarations/bumpmoment--b6ad6ce99b6a37e62106189e.md) | 14 | `declaration-track:b6ad6ce99b6a37e62106189ea53c38dde15c9eb373b7dadb070f87c6a97f46da` |
| 2 | `def` | [fifthProfile](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt01/Variant5f3fe76da12673f2551f1f65c9846feb8abedac1484465e0dc3f17e56695232a.lean/declarations/fifthprofile--600d2d509e8e2dd6f49f9714.md) | 17 | `declaration-track:600d2d509e8e2dd6f49f971486ae6eb7db49dd253509d8d790fb495b2cf8524a` |
| 3 | `theorem` | [moment_profile_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt01/Variant5f3fe76da12673f2551f1f65c9846feb8abedac1484465e0dc3f17e56695232a.lean/declarations/moment-profile-continuous--1f246bfe3cb8fa62a76c87a1.md) | 19 | `result-track:1f246bfe3cb8fa62a76c87a141e574913e80cecd7c3ccf0b279ccf53b4f17f5d` |
| 4 | `theorem` | [moment_profile_hasCompactSupport](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt01/Variant5f3fe76da12673f2551f1f65c9846feb8abedac1484465e0dc3f17e56695232a.lean/declarations/moment-profile-hascompactsupport--e50c956bfd4fdb788d7ac93e.md) | 23 | `result-track:e50c956bfd4fdb788d7ac93e90a7a7dfcf9be90498d447a937baacdb107957f3` |
| 5 | `theorem` | [bumpMoment_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt01/Variant5f3fe76da12673f2551f1f65c9846feb8abedac1484465e0dc3f17e56695232a.lean/declarations/bumpmoment-integrable--26612e7f421bd42b0f65eb10.md) | 27 | `result-track:26612e7f421bd42b0f65eb100e897db1012e45aafc8c59d5f9edde52aea20b54` |
| 6 | `theorem` | [bumpMoment_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt01/Variant5f3fe76da12673f2551f1f65c9846feb8abedac1484465e0dc3f17e56695232a.lean/declarations/bumpmoment-hasderivat--755b3d4eba2b66dffec2da1f.md) | 31 | `result-track:755b3d4eba2b66dffec2da1f218269e3789255578959dac45feb38de1fb02850` |
| 7 | `theorem` | [bumpMoment_zero_eq_quartic](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt01/Variant5f3fe76da12673f2551f1f65c9846feb8abedac1484465e0dc3f17e56695232a.lean/declarations/bumpmoment-zero-eq-quartic--6e686e8f008a89a6cb301493.md) | 43 | `result-track:6e686e8f008a89a6cb3014935516b402529cf57b2a1a798e0fb9d68e6ef953a3` |
| 8 | `theorem` | [quartic_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt01/Variant5f3fe76da12673f2551f1f65c9846feb8abedac1484465e0dc3f17e56695232a.lean/declarations/quartic-hasderivat--d734e056b308cb5c24056a53.md) | 48 | `result-track:d734e056b308cb5c24056a536c7864d76ac7c357b6f14415e500f0a403831a02` |
| 9 | `theorem` | [quartic_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt01/Variant5f3fe76da12673f2551f1f65c9846feb8abedac1484465e0dc3f17e56695232a.lean/declarations/quartic-deriv--0c07d2b27ed346b41c837b05.md) | 53 | `result-track:0c07d2b27ed346b41c837b0586d92e120ef4ef4f29f71f8e7ec5a1b2f02c05e2` |
| 10 | `theorem` | [quartic_second_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt01/Variant5f3fe76da12673f2551f1f65c9846feb8abedac1484465e0dc3f17e56695232a.lean/declarations/quartic-second-deriv--782fcde1fcf39becb9b58dd2.md) | 56 | `result-track:782fcde1fcf39becb9b58dd26ca7a050baadb5873334111f483c923af15f1446` |
| 11 | `theorem` | [fifthProfile_contDiff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt01/Variant5f3fe76da12673f2551f1f65c9846feb8abedac1484465e0dc3f17e56695232a.lean/declarations/fifthprofile-contdiff--3143e62ba9838105c5d1355d.md) | 60 | `result-track:3143e62ba9838105c5d1355dbffed7c061ecd51049c76d01d35c1713ff676cf2` |
| 12 | `theorem` | [fifthProfile_hasCompactSupport](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt01/Variant5f3fe76da12673f2551f1f65c9846feb8abedac1484465e0dc3f17e56695232a.lean/declarations/fifthprofile-hascompactsupport--4addab4e6fb2e61fd4473d11.md) | 64 | `result-track:4addab4e6fb2e61fd4473d115287e5c0a3683b22a28ee6c9e179e6527218db7a` |
| 13 | `theorem` | [fifthProfile_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt01/Variant5f3fe76da12673f2551f1f65c9846feb8abedac1484465e0dc3f17e56695232a.lean/declarations/fifthprofile-hasderivat--1f6c068cb5b6331cf1135323.md) | 67 | `result-track:1f6c068cb5b6331cf1135323e7bfc4ccf3a7456c4487e49a5d98284bb050b761` |
| 14 | `theorem` | [fifthProfile_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt01/Variant5f3fe76da12673f2551f1f65c9846feb8abedac1484465e0dc3f17e56695232a.lean/declarations/fifthprofile-deriv--561945bb77a55349f6fd66f9.md) | 80 | `result-track:561945bb77a55349f6fd66f9ee27be2257c83395b4e75782f01e6c6069f2ed74` |
| 15 | `theorem` | [fifthProfile_transform](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt01/Variant5f3fe76da12673f2551f1f65c9846feb8abedac1484465e0dc3f17e56695232a.lean/declarations/fifthprofile-transform--d1944840c799788b5b34c5ff.md) | 83 | `result-track:d1944840c799788b5b34c5ff167d7746b53090529ced4b2d10eec10098ef2448` |
| 16 | `theorem` | [fifthProfile_deriv_transform](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt01/Variant5f3fe76da12673f2551f1f65c9846feb8abedac1484465e0dc3f17e56695232a.lean/declarations/fifthprofile-deriv-transform--e7e0e21ad6905d64a0448a7b.md) | 98 | `result-track:e7e0e21ad6905d64a0448a7bb8f912bd0043bdb018e125616491f5adc987afc6` |
| 17 | `theorem` | [literal_quartic_ODE](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt01/Variant5f3fe76da12673f2551f1f65c9846feb8abedac1484465e0dc3f17e56695232a.lean/declarations/literal-quartic-ode--e6693d573bcce43da9f43cf3.md) | 108 | `result-track:e6693d573bcce43da9f43cf3d056aa670c345b25b0b55e84dba1609678039af9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
