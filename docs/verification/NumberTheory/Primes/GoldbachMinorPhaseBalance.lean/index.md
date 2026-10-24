# Verification target: GRWTSK.NumberTheory.Primes.GoldbachMinorPhaseBalance

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f6fb20622491a7ff2f1391e8bbd6ca514c7db7bb",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Primes/GoldbachMinorPhaseBalance.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Primes/GoldbachMinorPhaseBalance.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Primes/GoldbachMinorPhaseBalance.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f6fb20622491a7ff2f1391e8bbd6ca514c7db7bb`.

Source path: `GRWTSK/NumberTheory/Primes/GoldbachMinorPhaseBalance.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Primes/GoldbachMinorPhaseBalance.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Primes.GoldbachMinorAbsoluteEnergy`](../../../../mathematics/NumberTheory/Primes/GoldbachMinorAbsoluteEnergy.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [goldbachCenteredHalfTargetSum](../../../../mathematics/NumberTheory/Primes/GoldbachMinorPhaseBalance.lean/declarations/goldbachcenteredhalftargetsum--ce8c00cdecc935fc8434d5ee.md) | 33 | `declaration-track:ce8c00cdecc935fc8434d5ee23b55ea7d2d1fab61d70185bfb15fdccae58cdec` |
| 2 | `def` | [goldbachMinorRealPhaseEnergy](../../../../mathematics/NumberTheory/Primes/GoldbachMinorPhaseBalance.lean/declarations/goldbachminorrealphaseenergy--2565d48d8445a7835df72eaf.md) | 36 | `declaration-track:2565d48d8445a7835df72eafc2e5ee30b5d3c2f657350c09d16c563d52e1da80` |
| 3 | `def` | [goldbachMinorImagPhaseEnergy](../../../../mathematics/NumberTheory/Primes/GoldbachMinorPhaseBalance.lean/declarations/goldbachminorimagphaseenergy--1c2d78318475659801aafb30.md) | 40 | `declaration-track:1c2d78318475659801aafb30d42dba70cb948975749b975aba6874aad948a604` |
| 4 | `theorem` | [continuous_goldbachCenteredHalfTargetSum](../../../../mathematics/NumberTheory/Primes/GoldbachMinorPhaseBalance.lean/declarations/continuous-goldbachcenteredhalftargetsum--e9148b842ce6e1727e975d45.md) | 45 | `result-track:e9148b842ce6e1727e975d45100ef92d551b0f0871ce117d875063d2d94dfcec` |
| 5 | `theorem` | [goldbachCenteredHalfTargetSum_sq](../../../../mathematics/NumberTheory/Primes/GoldbachMinorPhaseBalance.lean/declarations/goldbachcenteredhalftargetsum-sq--cff2d738382cd60bb9cbc774.md) | 50 | `result-track:cff2d738382cd60bb9cbc774057cccd7ec3fa30dd4939f929a3cfcda2f52d240` |
| 6 | `theorem` | [goldbachCircleIntegrand_re_eq_phase_difference](../../../../mathematics/NumberTheory/Primes/GoldbachMinorPhaseBalance.lean/declarations/goldbachcircleintegrand-re-eq-phase-difference--f07e65a7d2782d44f6ba539a.md) | 65 | `result-track:f07e65a7d2782d44f6ba539add71116bd356c872ac8b59b7cb0369429c085812` |
| 7 | `theorem` | [goldbachEnergy_eq_phase_sum](../../../../mathematics/NumberTheory/Primes/GoldbachMinorPhaseBalance.lean/declarations/goldbachenergy-eq-phase-sum--62edd88fdb5628ade6756ad3.md) | 72 | `result-track:62edd88fdb5628ade6756ad35f96c35ed1f1568f59df2f4cdd662a7653e38340` |
| 8 | `theorem` | [goldbachMinorArcSet_subset_unit](../../../../mathematics/NumberTheory/Primes/GoldbachMinorPhaseBalance.lean/declarations/goldbachminorarcset-subset-unit--70055fa8f53a12616fc190f3.md) | 81 | `result-track:70055fa8f53a12616fc190f3b636226d0ceb520fe715b05718f8efe8af436ac5` |
| 9 | `theorem` | [integrableOn_goldbachRealPhaseEnergy_minor](../../../../mathematics/NumberTheory/Primes/GoldbachMinorPhaseBalance.lean/declarations/integrableon-goldbachrealphaseenergy-minor--39204856da87a2fa8e6b66d1.md) | 85 | `result-track:39204856da87a2fa8e6b66d1a033a5c3c386f7e6a1202a021e2af64a58685936` |
| 10 | `theorem` | [integrableOn_goldbachImagPhaseEnergy_minor](../../../../mathematics/NumberTheory/Primes/GoldbachMinorPhaseBalance.lean/declarations/integrableon-goldbachimagphaseenergy-minor--09d46d97030185ecd8557d2b.md) | 92 | `result-track:09d46d97030185ecd8557d2b979da0bc9fceeabf6b751d97be55259f2e4fc7bd` |
| 11 | `theorem` | [goldbachMinor_re_eq_phase_difference](../../../../mathematics/NumberTheory/Primes/GoldbachMinorPhaseBalance.lean/declarations/goldbachminor-re-eq-phase-difference--b7399f5ab9e3612327f87463.md) | 100 | `result-track:b7399f5ab9e3612327f87463f9a3edcc2621dc3cc7110ac546c44a87174b0ed5` |
| 12 | `theorem` | [goldbachMinorAbsolute_eq_phase_sum](../../../../mathematics/NumberTheory/Primes/GoldbachMinorPhaseBalance.lean/declarations/goldbachminorabsolute-eq-phase-sum--03d383e9ed177ed2d38fa3ce.md) | 118 | `result-track:03d383e9ed177ed2d38fa3cedc6c0fbee7479b904d304a429a6379a56b8020c8` |
| 13 | `theorem` | [goldbachMinor_lower_iff_phase_balance](../../../../mathematics/NumberTheory/Primes/GoldbachMinorPhaseBalance.lean/declarations/goldbachminor-lower-iff-phase-balance--21fb92d6c115f42465a8edfa.md) | 128 | `result-track:21fb92d6c115f42465a8edfa9c70d20e19bb9e59b7dfd3623e627581ab165408` |
| 14 | `theorem` | [goldbachMinor_lower_iff_imag_energy_half](../../../../mathematics/NumberTheory/Primes/GoldbachMinorPhaseBalance.lean/declarations/goldbachminor-lower-iff-imag-energy-half--644644bad9020c44c2f01d06.md) | 136 | `result-track:644644bad9020c44c2f01d06f9939754cfdbad83b3d22eb5d5a7e70f524b484a` |
| 15 | `theorem` | [goldbachTwoArcSignedMinorSupplier_iff_phase_balance](../../../../mathematics/NumberTheory/Primes/GoldbachMinorPhaseBalance.lean/declarations/goldbachtwoarcsignedminorsupplier-iff-phase-balance--a55b7065a6a7bb7305546bad.md) | 145 | `result-track:a55b7065a6a7bb7305546badef606a59996e307eff2bf12e76a18b66ca65aff6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
