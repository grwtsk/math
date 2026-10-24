# Verification target: GRWTSK.NumberTheory.Primes.GoldbachLocalFactors

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4d745b1f5ccd40bc24a917de4b604ab4626481be",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Primes/GoldbachLocalFactors.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Primes/GoldbachLocalFactors.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Primes/GoldbachLocalFactors.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4d745b1f5ccd40bc24a917de4b604ab4626481be`.

Source path: `GRWTSK/NumberTheory/Primes/GoldbachLocalFactors.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Primes/GoldbachLocalFactors.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Primes.GoldbachCircleIntegral`](../../../../mathematics/NumberTheory/Primes/GoldbachCircleIntegral.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [goldbachPrimeResidues](../../../../mathematics/NumberTheory/Primes/GoldbachLocalFactors.lean/declarations/goldbachprimeresidues--fc4dec65717eab4710fa2ab2.md) | 38 | `declaration-track:fc4dec65717eab4710fa2ab2c487d203b8895891f082bc2ce4909a4be89477de` |
| 2 | `def` | [goldbachPrimeResidueCount](../../../../mathematics/NumberTheory/Primes/GoldbachLocalFactors.lean/declarations/goldbachprimeresiduecount--03c197ffb2cf46d30236a9e7.md) | 42 | `declaration-track:03c197ffb2cf46d30236a9e77f45fc71daccc6710659923edf1927f70e069b2f` |
| 3 | `theorem` | [mem_goldbachPrimeResidues](../../../../mathematics/NumberTheory/Primes/GoldbachLocalFactors.lean/declarations/mem-goldbachprimeresidues--ccb5fbd694751470c494527f.md) | 46 | `result-track:ccb5fbd694751470c494527f3b6640d91cfa0c11091a446fc2545adcebc73cb3` |
| 4 | `theorem` | [goldbachPrimeResidueCount_eq_sub_one](../../../../mathematics/NumberTheory/Primes/GoldbachLocalFactors.lean/declarations/goldbachprimeresiduecount-eq-sub-one--26409afd7c6e49e39acdaaa0.md) | 54 | `result-track:26409afd7c6e49e39acdaaa064bf8ee4b97ab8e658f093d6ef6dd9979d2b5a8f` |
| 5 | `theorem` | [goldbachPrimeResidueCount_eq_sub_two](../../../../mathematics/NumberTheory/Primes/GoldbachLocalFactors.lean/declarations/goldbachprimeresiduecount-eq-sub-two--1beccd93082a535e1113ed05.md) | 64 | `result-track:1beccd93082a535e1113ed0560697e5df28d2ae52df60df10583ef0adeb833df` |
| 6 | `theorem` | [goldbachPrimeResidueCount_formula](../../../../mathematics/NumberTheory/Primes/GoldbachLocalFactors.lean/declarations/goldbachprimeresiduecount-formula--3282314fbfa35df8e4aad7df.md) | 78 | `result-track:3282314fbfa35df8e4aad7df544fd8d7ed1b75b444793f4612220c1392ab352f` |
| 7 | `theorem` | [goldbachPrimeResidueCount_two](../../../../mathematics/NumberTheory/Primes/GoldbachLocalFactors.lean/declarations/goldbachprimeresiduecount-two--9b1db07fa37cf9baffffb941.md) | 87 | `result-track:9b1db07fa37cf9baffffb94138158efab921c4b577827cc005f82b2d24a113dd` |
| 8 | `theorem` | [goldbachPrimeResidueCount_pos_iff](../../../../mathematics/NumberTheory/Primes/GoldbachLocalFactors.lean/declarations/goldbachprimeresiduecount-pos-iff--a1e3fcd6b769589bfeaaf78a.md) | 94 | `result-track:a1e3fcd6b769589bfeaaf78a5392d6f6eff8f6ee70319d082831d1799e8e8b42` |
| 9 | `def` | [goldbachPrimeLocalFactor](../../../../mathematics/NumberTheory/Primes/GoldbachLocalFactors.lean/declarations/goldbachprimelocalfactor--7072742c44a9ae37e0c92366.md) | 106 | `declaration-track:7072742c44a9ae37e0c92366ad138094ce2ddbae62237708d22216eb4a99b8fb` |
| 10 | `def` | [goldbachUniversalOddFactor](../../../../mathematics/NumberTheory/Primes/GoldbachLocalFactors.lean/declarations/goldbachuniversaloddfactor--d1c0da0655dddcf16cc17ca9.md) | 111 | `declaration-track:d1c0da0655dddcf16cc17ca9e08903b14dd65254865e898f38910fa5ce15fec2` |
| 11 | `def` | [goldbachDivisorCorrection](../../../../mathematics/NumberTheory/Primes/GoldbachLocalFactors.lean/declarations/goldbachdivisorcorrection--f8a86a2d49811ff23d96f246.md) | 115 | `declaration-track:f8a86a2d49811ff23d96f2469354a3cba512f7ccc69231431524217e647ee1aa` |
| 12 | `theorem` | [goldbachPrimeLocalFactor_formula](../../../../mathematics/NumberTheory/Primes/GoldbachLocalFactors.lean/declarations/goldbachprimelocalfactor-formula--c267624351ea96257667fef2.md) | 122 | `result-track:c267624351ea96257667fef227140f4b69a154618f8474d1ed5b4dc0bc7c72e5` |
| 13 | `theorem` | [goldbachPrimeLocalFactor_two](../../../../mathematics/NumberTheory/Primes/GoldbachLocalFactors.lean/declarations/goldbachprimelocalfactor-two--cfc8cc87ca0b455dfa7281d3.md) | 144 | `result-track:cfc8cc87ca0b455dfa7281d311fa5cdcff96344f622a37cf084332709943acac` |
| 14 | `theorem` | [goldbachPrimeLocalFactor_pos_iff](../../../../mathematics/NumberTheory/Primes/GoldbachLocalFactors.lean/declarations/goldbachprimelocalfactor-pos-iff--652627882a4ac01b9203abcc.md) | 151 | `result-track:652627882a4ac01b9203abccbd3c4a653666922944689b6ee1daec93f80c4251` |
| 15 | `theorem` | [goldbachPrimeLocalFactor_eq_universal_mul_correction](../../../../mathematics/NumberTheory/Primes/GoldbachLocalFactors.lean/declarations/goldbachprimelocalfactor-eq-universal-mul-correction--e821abc39be312ca1e0681b8.md) | 165 | `result-track:e821abc39be312ca1e0681b8b3e526240b778593f6c9a385dd48f8eed20a6549` |
| 16 | `def` | [finiteGoldbachLocalProduct](../../../../mathematics/NumberTheory/Primes/GoldbachLocalFactors.lean/declarations/finitegoldbachlocalproduct--d20998c1041513cf24260a9a.md) | 183 | `declaration-track:d20998c1041513cf24260a9a19c455fa4388abe9abe8716c0800c05d2898b543` |
| 17 | `theorem` | [finiteGoldbachLocalProduct_pos](../../../../mathematics/NumberTheory/Primes/GoldbachLocalFactors.lean/declarations/finitegoldbachlocalproduct-pos--0256b76ffdb81b4aa88a2c79.md) | 188 | `result-track:0256b76ffdb81b4aa88a2c79f4942da11d85955fb8e52c654177c7da32e4b6c8` |
| 18 | `theorem` | [finiteGoldbachLocalProduct_eq_zero_of_two_mem](../../../../mathematics/NumberTheory/Primes/GoldbachLocalFactors.lean/declarations/finitegoldbachlocalproduct-eq-zero-of-two-mem--513425f0111b4f7d28b2c368.md) | 197 | `result-track:513425f0111b4f7d28b2c36898d0715e34603176b3f747c6438e376d9b33dd82` |
| 19 | `theorem` | [finiteGoldbachLocalProduct_factorization](../../../../mathematics/NumberTheory/Primes/GoldbachLocalFactors.lean/declarations/finitegoldbachlocalproduct-factorization--cf2e499cf6cb927f1daf056f.md) | 205 | `result-track:cf2e499cf6cb927f1daf056ff6747bc363f65b87d26f8ea6d750b116f10cfdf3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
