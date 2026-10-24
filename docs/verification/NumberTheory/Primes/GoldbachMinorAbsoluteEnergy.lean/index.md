# Verification target: GRWTSK.NumberTheory.Primes.GoldbachMinorAbsoluteEnergy

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "63ad20000c9aacc51529181c6be51b56eeac7b17",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Primes/GoldbachMinorAbsoluteEnergy.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Primes/GoldbachMinorAbsoluteEnergy.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Primes/GoldbachMinorAbsoluteEnergy.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `63ad20000c9aacc51529181c6be51b56eeac7b17`.

Source path: `GRWTSK/NumberTheory/Primes/GoldbachMinorAbsoluteEnergy.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Primes/GoldbachMinorAbsoluteEnergy.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Primes.GoldbachTwoArcMinorCalibration`](../../../../mathematics/NumberTheory/Primes/GoldbachTwoArcMinorCalibration.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.MeasureTheory.Integral.Bochner.ContinuousLinearMap` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [goldbachPrimeLogSquareTotal](../../../../mathematics/NumberTheory/Primes/GoldbachMinorAbsoluteEnergy.lean/declarations/goldbachprimelogsquaretotal--afc9e8f935321994e8f4b971.md) | 32 | `declaration-track:afc9e8f935321994e8f4b9713bc76f2410fdfe8d072f46b099d7bdc0ed23e2a6` |
| 2 | `def` | [goldbachExponentialEnergy](../../../../mathematics/NumberTheory/Primes/GoldbachMinorAbsoluteEnergy.lean/declarations/goldbachexponentialenergy--c4060ce6a0126f29093ff63b.md) | 35 | `declaration-track:c4060ce6a0126f29093ff63be3a0b9f28fe7bfbbbd19d204f17bd1e965ebf436` |
| 3 | `def` | [goldbachMajorEnergy](../../../../mathematics/NumberTheory/Primes/GoldbachMinorAbsoluteEnergy.lean/declarations/goldbachmajorenergy--596e90fbdeea26621674864f.md) | 38 | `declaration-track:596e90fbdeea26621674864f976ec1746c9441d691ed99508ef7bb9d9c956ec6` |
| 4 | `def` | [goldbachMinorAbsoluteIntegral](../../../../mathematics/NumberTheory/Primes/GoldbachMinorAbsoluteEnergy.lean/declarations/goldbachminorabsoluteintegral--e58973a8977cfeba4241a976.md) | 43 | `declaration-track:e58973a8977cfeba4241a97692d378b6d0dfd9384661cff300b9bc52863b6a32` |
| 5 | `theorem` | [continuous_goldbachExponentialEnergy](../../../../mathematics/NumberTheory/Primes/GoldbachMinorAbsoluteEnergy.lean/declarations/continuous-goldbachexponentialenergy--782eb5c7b06a7e91f60effa2.md) | 47 | `result-track:782eb5c7b06a7e91f60effa2308e00cc8479303e05801a8053b33a58a6906875` |
| 6 | `theorem` | [goldbachExponentialEnergy_nonneg](../../../../mathematics/NumberTheory/Primes/GoldbachMinorAbsoluteEnergy.lean/declarations/goldbachexponentialenergy-nonneg--5f81a34d6d3e93c87da5a004.md) | 52 | `result-track:5f81a34d6d3e93c87da5a0046dc1788c9a997a945d66366a3c0c33ca91aa7aca` |
| 7 | `theorem` | [norm_goldbachCircleIntegrand_eq_energy](../../../../mathematics/NumberTheory/Primes/GoldbachMinorAbsoluteEnergy.lean/declarations/norm-goldbachcircleintegrand-eq-energy--9ffc0ba174383bb32127a255.md) | 57 | `result-track:9ffc0ba174383bb32127a25530a08b794d428cc7fd8db45fc5a7c3b0ccac0454` |
| 8 | `theorem` | [unitCharacter_neg_eq_conj](../../../../mathematics/NumberTheory/Primes/GoldbachMinorAbsoluteEnergy.lean/declarations/unitcharacter-neg-eq-conj--bcb4ac68c63dceb2defef8d5.md) | 62 | `result-track:bcb4ac68c63dceb2defef8d55a5e6611bbc3f4383b94b95a6a86b7082bedb07e` |
| 9 | `theorem` | [goldbachEnergy_eq_difference_sum](../../../../mathematics/NumberTheory/Primes/GoldbachMinorAbsoluteEnergy.lean/declarations/goldbachenergy-eq-difference-sum--fac98c5cea09a28a8d763c54.md) | 71 | `result-track:fac98c5cea09a28a8d763c542cb688ab44629112d51a554677f5566203843cfa` |
| 10 | `theorem` | [integral_goldbachDifferenceTerm](../../../../mathematics/NumberTheory/Primes/GoldbachMinorAbsoluteEnergy.lean/declarations/integral-goldbachdifferenceterm--100c0d7e675c229ba59400f9.md) | 88 | `result-track:100c0d7e675c229ba59400f98a3e46b5710e9d65ce657179a4c92643c2eed5cd` |
| 11 | `theorem` | [integral_goldbachEnergy_eq_squareTotal](../../../../mathematics/NumberTheory/Primes/GoldbachMinorAbsoluteEnergy.lean/declarations/integral-goldbachenergy-eq-squaretotal--0ebd8b1c355b436bbef3b20b.md) | 100 | `result-track:0ebd8b1c355b436bbef3b20b47262d67a33321c4ce1a05a1ba8c3514b8991474` |
| 12 | `theorem` | [integrableOn_goldbachEnergy_unit](../../../../mathematics/NumberTheory/Primes/GoldbachMinorAbsoluteEnergy.lean/declarations/integrableon-goldbachenergy-unit--73991b044303a0c41e1bebf0.md) | 141 | `result-track:73991b044303a0c41e1bebf04116c994d344550008a2dc7fb69e357a6635ef22` |
| 13 | `theorem` | [goldbachMinorAbsoluteIntegral_eq_energy](../../../../mathematics/NumberTheory/Primes/GoldbachMinorAbsoluteEnergy.lean/declarations/goldbachminorabsoluteintegral-eq-energy--f81c803483edb963dfa14c5d.md) | 145 | `result-track:f81c803483edb963dfa14c5d9e8e600aaaf1a52c6520a6529ebe32202a96f9ce` |
| 14 | `theorem` | [goldbachMajorEnergy_nonneg](../../../../mathematics/NumberTheory/Primes/GoldbachMinorAbsoluteEnergy.lean/declarations/goldbachmajorenergy-nonneg--15c3cff0516260e8652b1db0.md) | 150 | `result-track:15c3cff0516260e8652b1db04fc08a32499c3cb485858f0b265f562d9ab8c1e8` |
| 15 | `theorem` | [goldbachMinorAbsoluteIntegral_nonneg](../../../../mathematics/NumberTheory/Primes/GoldbachMinorAbsoluteEnergy.lean/declarations/goldbachminorabsoluteintegral-nonneg--b586e4dbea0e9a880b8a4b03.md) | 153 | `result-track:b586e4dbea0e9a880b8a4b0368e419672b7696972abbc5109d02ffef0a1e661e` |
| 16 | `theorem` | [goldbachMajorEnergy_add_minorAbsolute](../../../../mathematics/NumberTheory/Primes/GoldbachMinorAbsoluteEnergy.lean/declarations/goldbachmajorenergy-add-minorabsolute--25927e5ec50faa9b2d560bda.md) | 158 | `result-track:25927e5ec50faa9b2d560bda3ad880ea50ff73af9de88fae4da730bd5bbe6819` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
