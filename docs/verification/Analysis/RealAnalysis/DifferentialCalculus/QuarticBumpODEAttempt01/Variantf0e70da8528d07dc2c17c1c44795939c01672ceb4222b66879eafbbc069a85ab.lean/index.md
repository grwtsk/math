# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.QuarticBumpODEAttempt01.Variantf0e70da8528d07dc2c17c1c44795939c01672ceb4222b66879eafbbc069a85ab

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "997bc92706d98d72805128ad8f2f943c3c7bc3ae",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt01/Variantf0e70da8528d07dc2c17c1c44795939c01672ceb4222b66879eafbbc069a85ab.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt01/Variantf0e70da8528d07dc2c17c1c44795939c01672ceb4222b66879eafbbc069a85ab.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt01/Variantf0e70da8528d07dc2c17c1c44795939c01672ceb4222b66879eafbbc069a85ab.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `997bc92706d98d72805128ad8f2f943c3c7bc3ae`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt01/Variantf0e70da8528d07dc2c17c1c44795939c01672ceb4222b66879eafbbc069a85ab.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt01/Variantf0e70da8528d07dc2c17c1c44795939c01672ceb4222b66879eafbbc069a85ab.lean.json)

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
| 1 | `def` | [bumpMoment](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt01/Variantf0e70da8528d07dc2c17c1c44795939c01672ceb4222b66879eafbbc069a85ab.lean/declarations/bumpmoment--f9832a8bb02331ad2a755354.md) | 22 | `declaration-track:f9832a8bb02331ad2a75535446afdf9de5de9c89fd7d7a8f6c36db9e94ed88c6` |
| 2 | `def` | [fifthProfile](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt01/Variantf0e70da8528d07dc2c17c1c44795939c01672ceb4222b66879eafbbc069a85ab.lean/declarations/fifthprofile--3be7aa629d2bcf785ef4f752.md) | 25 | `declaration-track:3be7aa629d2bcf785ef4f75259d429c567602810414648388ffe5f0e9f3086b0` |
| 3 | `theorem` | [moment_profile_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt01/Variantf0e70da8528d07dc2c17c1c44795939c01672ceb4222b66879eafbbc069a85ab.lean/declarations/moment-profile-continuous--c303bfa8adb94a5032f66835.md) | 27 | `result-track:c303bfa8adb94a5032f66835d895319803f7653fd192d1d7586f9cd57473177d` |
| 4 | `theorem` | [moment_profile_hasCompactSupport](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt01/Variantf0e70da8528d07dc2c17c1c44795939c01672ceb4222b66879eafbbc069a85ab.lean/declarations/moment-profile-hascompactsupport--ed408260ded88b9e0655d960.md) | 31 | `result-track:ed408260ded88b9e0655d9607d686a32ff75b730655c35df8be12d591abb8e61` |
| 5 | `theorem` | [bumpMoment_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt01/Variantf0e70da8528d07dc2c17c1c44795939c01672ceb4222b66879eafbbc069a85ab.lean/declarations/bumpmoment-integrable--e2133de0cb78f290b1cb2225.md) | 35 | `result-track:e2133de0cb78f290b1cb222599b4073c8e5169bc4da8cf3c0d018d49686abca8` |
| 6 | `theorem` | [bumpMoment_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt01/Variantf0e70da8528d07dc2c17c1c44795939c01672ceb4222b66879eafbbc069a85ab.lean/declarations/bumpmoment-hasderivat--4cd13d98dbf9f724a0ef2876.md) | 39 | `result-track:4cd13d98dbf9f724a0ef287621e6957b9f1d196610120835ac620825f7c231ee` |
| 7 | `theorem` | [bumpMoment_zero_eq_quartic](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt01/Variantf0e70da8528d07dc2c17c1c44795939c01672ceb4222b66879eafbbc069a85ab.lean/declarations/bumpmoment-zero-eq-quartic--d22502247a1456b400832287.md) | 51 | `result-track:d22502247a1456b400832287b702e8004ddef94833963c9ce6b8adbf178960bd` |
| 8 | `theorem` | [quartic_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt01/Variantf0e70da8528d07dc2c17c1c44795939c01672ceb4222b66879eafbbc069a85ab.lean/declarations/quartic-hasderivat--90e667df497625b91eeb06ae.md) | 56 | `result-track:90e667df497625b91eeb06ae40a5fbf6baf3b8978e3e5eb2e9053d919c3144ff` |
| 9 | `theorem` | [quartic_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt01/Variantf0e70da8528d07dc2c17c1c44795939c01672ceb4222b66879eafbbc069a85ab.lean/declarations/quartic-deriv--0216e17df8f065f907b810ed.md) | 61 | `result-track:0216e17df8f065f907b810edf20cc56a277861164739b15ea4ec46094987d814` |
| 10 | `theorem` | [quartic_second_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt01/Variantf0e70da8528d07dc2c17c1c44795939c01672ceb4222b66879eafbbc069a85ab.lean/declarations/quartic-second-deriv--9735dd0a4dcc16665d0825ec.md) | 64 | `result-track:9735dd0a4dcc16665d0825ecbce2a6b187bd60e32eb7579d016126d5a9e9218d` |
| 11 | `theorem` | [fifthProfile_contDiff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt01/Variantf0e70da8528d07dc2c17c1c44795939c01672ceb4222b66879eafbbc069a85ab.lean/declarations/fifthprofile-contdiff--7beb569f7e939141d2cf198c.md) | 68 | `result-track:7beb569f7e939141d2cf198c23357c041006ee1952f4d20e572701bc6aaa5edd` |
| 12 | `theorem` | [fifthProfile_hasCompactSupport](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt01/Variantf0e70da8528d07dc2c17c1c44795939c01672ceb4222b66879eafbbc069a85ab.lean/declarations/fifthprofile-hascompactsupport--c9731f92383e07b0d50928ea.md) | 72 | `result-track:c9731f92383e07b0d50928ea9998afe0e36ad832aa61ef7514069f7ebb753b7b` |
| 13 | `theorem` | [fifthProfile_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt01/Variantf0e70da8528d07dc2c17c1c44795939c01672ceb4222b66879eafbbc069a85ab.lean/declarations/fifthprofile-hasderivat--580a6b15aae60d27eeba491f.md) | 75 | `result-track:580a6b15aae60d27eeba491f418877610196d335693b3db2607856633c709f57` |
| 14 | `theorem` | [fifthProfile_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt01/Variantf0e70da8528d07dc2c17c1c44795939c01672ceb4222b66879eafbbc069a85ab.lean/declarations/fifthprofile-deriv--fbd01e0fdd69f0a28957049f.md) | 88 | `result-track:fbd01e0fdd69f0a28957049feebd6d24e9c0222f4958a3512673d487b659f1de` |
| 15 | `theorem` | [fifthProfile_transform](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt01/Variantf0e70da8528d07dc2c17c1c44795939c01672ceb4222b66879eafbbc069a85ab.lean/declarations/fifthprofile-transform--1f527bc8c3123b3bd8ed45cd.md) | 91 | `result-track:1f527bc8c3123b3bd8ed45cd6b25fd800014a20bea8331634d34f9824b7d7d66` |
| 16 | `theorem` | [fifthProfile_deriv_transform](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt01/Variantf0e70da8528d07dc2c17c1c44795939c01672ceb4222b66879eafbbc069a85ab.lean/declarations/fifthprofile-deriv-transform--ee004e42e772c40e2ac7a113.md) | 106 | `result-track:ee004e42e772c40e2ac7a113f2794518d708fc4e531e555b48d0b0c0ab7b7be9` |
| 17 | `theorem` | [literal_quartic_ODE](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt01/Variantf0e70da8528d07dc2c17c1c44795939c01672ceb4222b66879eafbbc069a85ab.lean/declarations/literal-quartic-ode--8c60726f27fbe46bce62cf45.md) | 116 | `result-track:8c60726f27fbe46bce62cf4566fd47ef29a9dabaa6cc0a327bb7742f55ae1873` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
