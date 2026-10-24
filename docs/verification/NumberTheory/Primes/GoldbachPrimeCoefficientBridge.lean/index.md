# Verification target: GRWTSK.NumberTheory.Primes.GoldbachPrimeCoefficientBridge

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fb0de743dd7ece259f138dac992ed6e13588d308",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Primes/GoldbachPrimeCoefficientBridge.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Primes/GoldbachPrimeCoefficientBridge.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Primes/GoldbachPrimeCoefficientBridge.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fb0de743dd7ece259f138dac992ed6e13588d308`.

Source path: `GRWTSK/NumberTheory/Primes/GoldbachPrimeCoefficientBridge.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Primes/GoldbachPrimeCoefficientBridge.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Fourier.FiniteAdditiveProjector`](../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteAdditiveProjector.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Primes.GoldbachProgressionCoefficientFactorization`](../../../../mathematics/NumberTheory/Primes/GoldbachProgressionCoefficientFactorization.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.NumberTheory.Primes.GoldbachTruncatedSeries`](../../../../mathematics/NumberTheory/Primes/GoldbachTruncatedSeries.lean/index.md) — import line 6; pinned internal source present.
- `Mathlib.Algebra.CharP.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Complex.CircleAddChar` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [goldbachFullIntegerPhaseSum](../../../../mathematics/NumberTheory/Primes/GoldbachPrimeCoefficientBridge.lean/declarations/goldbachfullintegerphasesum--aad5ff69e9c8a7ef3e901304.md) | 53 | `declaration-track:aad5ff69e9c8a7ef3e901304622a2149b0f059e3028501943237eb74f31c3d04` |
| 2 | `def` | [goldbachReducedIntegerPhaseSum](../../../../mathematics/NumberTheory/Primes/GoldbachPrimeCoefficientBridge.lean/declarations/goldbachreducedintegerphasesum--e9626c07f70069db940b9574.md) | 58 | `declaration-track:e9626c07f70069db940b95742728d23e2038a8545504b75a7353886ba5f21311` |
| 3 | `theorem` | [unitCharacter_integer_rational_eq_stdAddChar](../../../../mathematics/NumberTheory/Primes/GoldbachPrimeCoefficientBridge.lean/declarations/unitcharacter-integer-rational-eq-stdaddchar--9965a7d6f80148ed71b855c2.md) | 64 | `result-track:9965a7d6f80148ed71b855c2100d34b3463512793f60690784e1d2d6c5e766cb` |
| 4 | `theorem` | [goldbachFullIntegerPhaseSum_eq_zmod](../../../../mathematics/NumberTheory/Primes/GoldbachPrimeCoefficientBridge.lean/declarations/goldbachfullintegerphasesum-eq-zmod--f4d5cbb88f3df7a732e7f8d0.md) | 83 | `result-track:f4d5cbb88f3df7a732e7f8d03192cc24bb60d729f3adf125b36e05285d593b16` |
| 5 | `theorem` | [goldbachFullIntegerPhaseSum_formula](../../../../mathematics/NumberTheory/Primes/GoldbachPrimeCoefficientBridge.lean/declarations/goldbachfullintegerphasesum-formula--474c83673765e37373fb9852.md) | 116 | `result-track:474c83673765e37373fb98524938b739b7d4b029315315fa97eb2d58af97f115` |
| 6 | `theorem` | [goldbachCoprimeResidues_eq_erase_zero](../../../../mathematics/NumberTheory/Primes/GoldbachPrimeCoefficientBridge.lean/declarations/goldbachcoprimeresidues-eq-erase-zero--73a86a7f6f5d8ba7d33cf117.md) | 128 | `result-track:73a86a7f6f5d8ba7d33cf11787ac09dd4675f2f0c6b4f7e37cb1ed7b4955303a` |
| 7 | `theorem` | [unitCharacter_integer_zero_center](../../../../mathematics/NumberTheory/Primes/GoldbachPrimeCoefficientBridge.lean/declarations/unitcharacter-integer-zero-center--9273ad086ba6a619f90dca6e.md) | 149 | `result-track:9273ad086ba6a619f90dca6e16f8a44215aa91213bbcc077a7d5f5d3529285fc` |
| 8 | `theorem` | [goldbachReducedIntegerPhaseSum_prime](../../../../mathematics/NumberTheory/Primes/GoldbachPrimeCoefficientBridge.lean/declarations/goldbachreducedintegerphasesum-prime--c4918f43c2c6c5d51de98693.md) | 157 | `result-track:c4918f43c2c6c5d51de9869377ca4c3ee4ceda04611e8cf83065faa2d9249648` |
| 9 | `theorem` | [goldbachReducedIntegerPhaseSum_prime_target](../../../../mathematics/NumberTheory/Primes/GoldbachPrimeCoefficientBridge.lean/declarations/goldbachreducedintegerphasesum-prime-target--11c7eda5bccca139025ccbae.md) | 183 | `result-track:11c7eda5bccca139025ccbae5ffc7ca53371e49e3a6c24002461108fc6193adf` |
| 10 | `theorem` | [unitCharacter_rational_mul_comm](../../../../mathematics/NumberTheory/Primes/GoldbachPrimeCoefficientBridge.lean/declarations/unitcharacter-rational-mul-comm--39562aa30bb2fdfca088b4a8.md) | 201 | `result-track:39562aa30bb2fdfca088b4a839e7e4ec881cdbca8658ec32d07325f39dc1b173` |
| 11 | `theorem` | [goldbachCoprimePhaseSum_eq_reducedIntegerPhaseSum](../../../../mathematics/NumberTheory/Primes/GoldbachPrimeCoefficientBridge.lean/declarations/goldbachcoprimephasesum-eq-reducedintegerphasesum--124e8797975ad2414252d25c.md) | 215 | `result-track:124e8797975ad2414252d25cd9ab63ff5d0112ac548885352361a9e5079bd9aa` |
| 12 | `theorem` | [goldbachNormalizedRamanujanCoefficient_prime](../../../../mathematics/NumberTheory/Primes/GoldbachPrimeCoefficientBridge.lean/declarations/goldbachnormalizedramanujancoefficient-prime--1e1674221f61e1056d55fe38.md) | 228 | `result-track:1e1674221f61e1056d55fe3888334ef23ecbb74c218d11080c9a4afde74e8567` |
| 13 | `def` | [goldbachProgressionDenominatorCoefficient](../../../../mathematics/NumberTheory/Primes/GoldbachPrimeCoefficientBridge.lean/declarations/goldbachprogressiondenominatorcoefficient--713084893d43081ef72a4ce5.md) | 248 | `declaration-track:713084893d43081ef72a4ce59e85b7585e44f7efeeed1f5dccbd15c4fcd4d368` |
| 14 | `theorem` | [goldbachProgressionDenominatorCoefficient_prime_factor](../../../../mathematics/NumberTheory/Primes/GoldbachPrimeCoefficientBridge.lean/declarations/goldbachprogressiondenominatorcoefficient-prime-factor--4addefc0536714a793b30d06.md) | 255 | `result-track:4addefc0536714a793b30d06bc0d41e74681c75589dcaefd3f0c48988b882ac9` |
| 15 | `theorem` | [goldbachProgressionDenominatorCoefficient_prime_formula](../../../../mathematics/NumberTheory/Primes/GoldbachPrimeCoefficientBridge.lean/declarations/goldbachprogressiondenominatorcoefficient-prime-formula--a624c0e02641aaaf71ace1af.md) | 286 | `result-track:a624c0e02641aaaf71ace1af96a7ffa82122d15061ba6f616362393dfd15fd22` |
| 16 | `theorem` | [one_add_goldbachProgressionDenominatorCoefficient_eq_localFactor](../../../../mathematics/NumberTheory/Primes/GoldbachPrimeCoefficientBridge.lean/declarations/one-add-goldbachprogressiondenominatorcoefficient-eq-localfactor--1618d17b31243acaac9dab7c.md) | 305 | `result-track:1618d17b31243acaac9dab7c868bda7d368949b63c82b5f948b4ba43d607de22` |
| 17 | `def` | [goldbachPrimeCoefficientEulerFactor](../../../../mathematics/NumberTheory/Primes/GoldbachPrimeCoefficientBridge.lean/declarations/goldbachprimecoefficienteulerfactor--eb7505a435674f0b3c714769.md) | 326 | `declaration-track:eb7505a435674f0b3c7147690c141fd404ebb4fac7f2cab3a9c6703b97785b26` |
| 18 | `def` | [goldbachFiniteCoefficientEulerProduct](../../../../mathematics/NumberTheory/Primes/GoldbachPrimeCoefficientBridge.lean/declarations/goldbachfinitecoefficienteulerproduct--76f8c0bf470b1e290d354615.md) | 331 | `declaration-track:76f8c0bf470b1e290d354615a34f033b049e1e6df70ba7fa4f87b6f53dd39997` |
| 19 | `theorem` | [goldbachPrimeCoefficientEulerFactor_eq_localFactor](../../../../mathematics/NumberTheory/Primes/GoldbachPrimeCoefficientBridge.lean/declarations/goldbachprimecoefficienteulerfactor-eq-localfactor--fe007827744f1725fd6f0549.md) | 337 | `result-track:fe007827744f1725fd6f0549aacd20b87724f32bfa5f618d9c0bd89ce94630ca` |
| 20 | `theorem` | [goldbachFiniteCoefficientEulerProduct_eq_localProduct](../../../../mathematics/NumberTheory/Primes/GoldbachPrimeCoefficientBridge.lean/declarations/goldbachfinitecoefficienteulerproduct-eq-localproduct--94eb3b0f152734f21dbfad54.md) | 346 | `result-track:94eb3b0f152734f21dbfad5409b9e5152f148a514768f5ea4b70704dabb9a5f9` |
| 21 | `theorem` | [goldbachFiniteCoefficientEulerProduct_eq_truncatedSeries](../../../../mathematics/NumberTheory/Primes/GoldbachPrimeCoefficientBridge.lean/declarations/goldbachfinitecoefficienteulerproduct-eq-truncatedseries--7d2744bfaf30148467af2740.md) | 361 | `result-track:7d2744bfaf30148467af27408a4219dfe05bfddace63eda5ededf222f7b43c9f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
