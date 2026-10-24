# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ActualArithmeticDecayAttempt05.Variant161c7c1ab3983eb8d299be18dbf6c6ba8d05f48f03faca1d25aa094535f6e8aa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9599121b7644712679f75f207afb5a6cfc5fd3ae",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualArithmeticDecayAttempt05/Variant161c7c1ab3983eb8d299be18dbf6c6ba8d05f48f03faca1d25aa094535f6e8aa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualArithmeticDecayAttempt05/Variant161c7c1ab3983eb8d299be18dbf6c6ba8d05f48f03faca1d25aa094535f6e8aa.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualArithmeticDecayAttempt05/Variant161c7c1ab3983eb8d299be18dbf6c6ba8d05f48f03faca1d25aa094535f6e8aa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9599121b7644712679f75f207afb5a6cfc5fd3ae`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ActualArithmeticDecayAttempt05/Variant161c7c1ab3983eb8d299be18dbf6c6ba8d05f48f03faca1d25aa094535f6e8aa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ActualArithmeticDecayAttempt05/Variant161c7c1ab3983eb8d299be18dbf6c6ba8d05f48f03faca1d25aa094535f6e8aa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `MangoldtLaplaceIntegrability` — import line 1; external provider; requires a separately pinned dependency.
- `ActualPrimeIntercept` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [RawMangoldtDecay](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualArithmeticDecayAttempt05/Variant161c7c1ab3983eb8d299be18dbf6c6ba8d05f48f03faca1d25aa094535f6e8aa.lean/declarations/rawmangoldtdecay--c8ac0f9902260a4825fb680c.md) | 19 | `declaration-track:c8ac0f9902260a4825fb680c45afc1c9143461316847e90aa515dccf3dbe2f00` |
| 2 | `def` | [RawPrimeDecay](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualArithmeticDecayAttempt05/Variant161c7c1ab3983eb8d299be18dbf6c6ba8d05f48f03faca1d25aa094535f6e8aa.lean/declarations/rawprimedecay--2710284de5cd7181f06bf4b2.md) | 23 | `declaration-track:2710284de5cd7181f06bf4b2e2517fe583089a67bfd6e7743ff719f0d65a191a` |
| 3 | `theorem` | [inverse_square_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualArithmeticDecayAttempt05/Variant161c7c1ab3983eb8d299be18dbf6c6ba8d05f48f03faca1d25aa094535f6e8aa.lean/declarations/inverse-square-integrable--0f25e3f3feb396c1071a0009.md) | 26 | `result-track:0f25e3f3feb396c1071a00094aba256ee199415456f7b12d571a41d145c9f2eb` |
| 4 | `theorem` | [inverse_square_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualArithmeticDecayAttempt05/Variant161c7c1ab3983eb8d299be18dbf6c6ba8d05f48f03faca1d25aa094535f6e8aa.lean/declarations/inverse-square-integral--0e56c9ddfe0a18349e63bae8.md) | 34 | `result-track:0e56c9ddfe0a18349e63bae82e3363c9618acc648351d27ba231167c6a0a5a58` |
| 5 | `theorem` | [actual_remainder_measurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualArithmeticDecayAttempt05/Variant161c7c1ab3983eb8d299be18dbf6c6ba8d05f48f03faca1d25aa094535f6e8aa.lean/declarations/actual-remainder-measurable--b8f4146fcd88f287bf255b1b.md) | 43 | `result-track:b8f4146fcd88f287bf255b1b1c62994ed66751e7f0d0f9dd114531d8f8f954ef` |
| 6 | `theorem` | [actual_remainder_integrable_near_origin](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualArithmeticDecayAttempt05/Variant161c7c1ab3983eb8d299be18dbf6c6ba8d05f48f03faca1d25aa094535f6e8aa.lean/declarations/actual-remainder-integrable-near-origin--50b5e90fa8672dde08daec69.md) | 47 | `result-track:50b5e90fa8672dde08daec699181f7f8271fbf3ef383a97f8e499adfa8438af3` |
| 7 | `theorem` | [actual_remainder_integrable_tail](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualArithmeticDecayAttempt05/Variant161c7c1ab3983eb8d299be18dbf6c6ba8d05f48f03faca1d25aa094535f6e8aa.lean/declarations/actual-remainder-integrable-tail--04455043d707c0f55e985719.md) | 57 | `result-track:04455043d707c0f55e9857190ad6c2c888aede2dc2e667232bd07826a6acb360` |
| 8 | `theorem` | [actual_remainder_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualArithmeticDecayAttempt05/Variant161c7c1ab3983eb8d299be18dbf6c6ba8d05f48f03faca1d25aa094535f6e8aa.lean/declarations/actual-remainder-integrable--6ea11fa306e4122ac262fd29.md) | 65 | `result-track:6ea11fa306e4122ac262fd29de2daf9a9e6d15387931e7037309b15077ead350` |
| 9 | `theorem` | [raw_prime_decay_of_mangoldt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualArithmeticDecayAttempt05/Variant161c7c1ab3983eb8d299be18dbf6c6ba8d05f48f03faca1d25aa094535f6e8aa.lean/declarations/raw-prime-decay-of-mangoldt--62937a72730a55c7a910c5ac.md) | 83 | `result-track:62937a72730a55c7a910c5accee082e97719de6ce0fd6e263c3a39738b110d17` |
| 10 | `theorem` | [actual_prime_remainder_integrable_of_decay](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualArithmeticDecayAttempt05/Variant161c7c1ab3983eb8d299be18dbf6c6ba8d05f48f03faca1d25aa094535f6e8aa.lean/declarations/actual-prime-remainder-integrable-of-decay--18f4ff1d9e5f08d2c6f1cbea.md) | 99 | `result-track:18f4ff1d9e5f08d2c6f1cbea867f8f1aada517adc85ff21d0b0a1a9af11ffa1f` |
| 11 | `theorem` | [tail_norm_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualArithmeticDecayAttempt05/Variant161c7c1ab3983eb8d299be18dbf6c6ba8d05f48f03faca1d25aa094535f6e8aa.lean/declarations/tail-norm-bound--0be8b43d9c44262f3d44f4c3.md) | 104 | `result-track:0be8b43d9c44262f3d44f4c3f7cb453f955e8a0833e768d5e9bf50f4c411a7cc` |
| 12 | `theorem` | [actual_remainder_tail_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualArithmeticDecayAttempt05/Variant161c7c1ab3983eb8d299be18dbf6c6ba8d05f48f03faca1d25aa094535f6e8aa.lean/declarations/actual-remainder-tail-bound--482f268474112a75dee6b383.md) | 118 | `result-track:482f268474112a75dee6b383b6b79fa60d0a30b707eb62bb536b11651e45afc7` |
| 13 | `theorem` | [actual_prime_remainder_tail_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualArithmeticDecayAttempt05/Variant161c7c1ab3983eb8d299be18dbf6c6ba8d05f48f03faca1d25aa094535f6e8aa.lean/declarations/actual-prime-remainder-tail-bound--dc9fc2446bc1d6a98760342c.md) | 123 | `result-track:dc9fc2446bc1d6a98760342c86d610b088ab95193965ff5d84dfa2abd24ec745` |
| 14 | `theorem` | [actual_prime_tail_bound_of_raw](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualArithmeticDecayAttempt05/Variant161c7c1ab3983eb8d299be18dbf6c6ba8d05f48f03faca1d25aa094535f6e8aa.lean/declarations/actual-prime-tail-bound-of-raw--8912d3ee565f60c2df30f7ef.md) | 130 | `result-track:8912d3ee565f60c2df30f7efbc30da513617c894573cdf0a7284a7b0183145ff` |
| 15 | `theorem` | [raw_mangoldt_decay_of_real_cutoff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualArithmeticDecayAttempt05/Variant161c7c1ab3983eb8d299be18dbf6c6ba8d05f48f03faca1d25aa094535f6e8aa.lean/declarations/raw-mangoldt-decay-of-real-cutoff--88570b273a6cfca21864849f.md) | 137 | `result-track:88570b273a6cfca21864849ff0b8634710010ac7c202a22500caeba57f615ec1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
