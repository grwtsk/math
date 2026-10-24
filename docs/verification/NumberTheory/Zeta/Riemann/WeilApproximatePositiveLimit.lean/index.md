# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.WeilApproximatePositiveLimit

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1c9230d38722de6e14d840f4f9b29a058dfed570",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/WeilApproximatePositiveLimit.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/WeilApproximatePositiveLimit.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/WeilApproximatePositiveLimit.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1c9230d38722de6e14d840f4f9b29a058dfed570`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/WeilApproximatePositiveLimit.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/WeilApproximatePositiveLimit.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.WeilPositiveLimitCore`](../../../../../mathematics/NumberTheory/Zeta/Riemann/WeilPositiveLimitCore.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ApproximatePositiveApproximation](../../../../../mathematics/NumberTheory/Zeta/Riemann/WeilApproximatePositiveLimit.lean/declarations/approximatepositiveapproximation--fdce496612a74c9611103ed0.md) | 32 | `declaration-track:fdce496612a74c9611103ed06a65d5c3aca4117cf54fad39ac0874c2c44ac391` |
| 2 | `def` | [correctedApproximant](../../../../../mathematics/NumberTheory/Zeta/Riemann/WeilApproximatePositiveLimit.lean/declarations/correctedapproximant--556255ced685edd72787663a.md) | 46 | `declaration-track:556255ced685edd72787663a7df0365509a5bc4e32bcedb1c0d5df42181e6e6e` |
| 3 | `theorem` | [correctedApproximant_diagonal_nonnegative](../../../../../mathematics/NumberTheory/Zeta/Riemann/WeilApproximatePositiveLimit.lean/declarations/correctedapproximant-diagonal-nonnegative--c17d4e40a8478fe48a23b710.md) | 54 | `result-track:c17d4e40a8478fe48a23b7105280d31c025cfccc356584c378c970f0e5c3b00f` |
| 4 | `theorem` | [correctedComparison_vanishes](../../../../../mathematics/NumberTheory/Zeta/Riemann/WeilApproximatePositiveLimit.lean/declarations/correctedcomparison-vanishes--f315638c9a914bf854b429ee.md) | 66 | `result-track:f315638c9a914bf854b429ee75d0cc5d87f81faeaf92f5fc350fb9a88414bd37` |
| 5 | `def` | [toPositiveApproximation](../../../../../mathematics/NumberTheory/Zeta/Riemann/WeilApproximatePositiveLimit.lean/declarations/topositiveapproximation--f196c586899c633ad0117f6d.md) | 81 | `declaration-track:f196c586899c633ad0117f6da3bce284ce5e10dcb5d6f1d6901e9a8546ffcb71` |
| 6 | `theorem` | [target_diagonal_nonnegative](../../../../../mathematics/NumberTheory/Zeta/Riemann/WeilApproximatePositiveLimit.lean/declarations/target-diagonal-nonnegative--fb5799d7bd60c1733e63f617.md) | 93 | `result-track:fb5799d7bd60c1733e63f617b8f727a25e177ed17dc59a62819c5a9cea89516c` |
| 7 | `theorem` | [riemannHypothesis_of_approximatePositiveLimit](../../../../../mathematics/NumberTheory/Zeta/Riemann/WeilApproximatePositiveLimit.lean/declarations/riemannhypothesis-of-approximatepositivelimit--c96d8b2ff711d508824f2c21.md) | 103 | `result-track:c96d8b2ff711d508824f2c2172bc2ebbf36fb17c5a0fb2be7654105f2b7fc1f2` |
| 8 | `theorem` | [no_approximatePositiveApproximation_of_negativeWitness](../../../../../mathematics/NumberTheory/Zeta/Riemann/WeilApproximatePositiveLimit.lean/declarations/no-approximatepositiveapproximation-of-negativewitness--5786c5d41756db3d06b17ff7.md) | 113 | `result-track:5786c5d41756db3d06b17ff72a3940582cef2a42c40c5b4acacf8542b7d3cf9f` |
| 9 | `def` | [transientLowerDefect](../../../../../mathematics/NumberTheory/Zeta/Riemann/WeilApproximatePositiveLimit.lean/declarations/transientlowerdefect--c17c2ba6576e53e6978dd6b0.md) | 124 | `declaration-track:c17c2ba6576e53e6978dd6b083700f73e7ba6f212e4b871b4f275116647362ff` |
| 10 | `def` | [transientApproximant](../../../../../mathematics/NumberTheory/Zeta/Riemann/WeilApproximatePositiveLimit.lean/declarations/transientapproximant--d05727f4e5f0cce8733ce159.md) | 127 | `declaration-track:d05727f4e5f0cce8733ce15996876ecb71850e7bfa82b105b3749fe65d4dc251` |
| 11 | `theorem` | [transientLowerDefect_vanishes](../../../../../mathematics/NumberTheory/Zeta/Riemann/WeilApproximatePositiveLimit.lean/declarations/transientlowerdefect-vanishes--efb146c72f2f65dc6e9e700f.md) | 130 | `result-track:efb146c72f2f65dc6e9e700ffbd647a31131fd3bca788b46f803f6cbaac7c5ba` |
| 12 | `def` | [transientNegativeStageFixture](../../../../../mathematics/NumberTheory/Zeta/Riemann/WeilApproximatePositiveLimit.lean/declarations/transientnegativestagefixture--3f2cd61928f019f367981a81.md) | 140 | `declaration-track:3f2cd61928f019f367981a819f9e4c06fd8a1a87d4eb607917da5c2f7ab77ff8` |
| 13 | `theorem` | [transientNegativeStageFixture_stage_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/WeilApproximatePositiveLimit.lean/declarations/transientnegativestagefixture-stage-zero--0af488d6fe9397d78f956bda.md) | 159 | `result-track:0af488d6fe9397d78f956bda6275a17d7633117b694f1b2290487aa11dc6f43d` |
| 14 | `theorem` | [constantLowerDefect_not_vanishes](../../../../../mathematics/NumberTheory/Zeta/Riemann/WeilApproximatePositiveLimit.lean/declarations/constantlowerdefect-not-vanishes--8970c55e9e3d93afa3ddaf7c.md) | 166 | `result-track:8970c55e9e3d93afa3ddaf7c2466dc5a8b2604e0b7fc498f905e5c8d0e297038` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
