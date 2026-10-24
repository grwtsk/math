# Verification target: GRWTSK.NumberTheory.Primes.GoldbachTruncatedSeries

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "87056e78110786da510cb9f4b2d8ad1d10efeaf4",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Primes/GoldbachTruncatedSeries.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Primes/GoldbachTruncatedSeries.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Primes/GoldbachTruncatedSeries.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `87056e78110786da510cb9f4b2d8ad1d10efeaf4`.

Source path: `GRWTSK/NumberTheory/Primes/GoldbachTruncatedSeries.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Primes/GoldbachTruncatedSeries.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Primes.GoldbachLocalFactors`](../../../../mathematics/NumberTheory/Primes/GoldbachLocalFactors.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [goldbachPrimeCutoff](../../../../mathematics/NumberTheory/Primes/GoldbachTruncatedSeries.lean/declarations/goldbachprimecutoff--861d99d4f34e499536d2fbeb.md) | 29 | `declaration-track:861d99d4f34e499536d2fbebe90e34c61a48834c4182d19a8f18a2f83eded049` |
| 2 | `def` | [goldbachOddPrimeCutoff](../../../../mathematics/NumberTheory/Primes/GoldbachTruncatedSeries.lean/declarations/goldbachoddprimecutoff--48fe2e07650053a18f9c7188.md) | 33 | `declaration-track:48fe2e07650053a18f9c7188c000db33e7531da7c60ff011236b4ded0f9f9f3d` |
| 3 | `theorem` | [mem_goldbachPrimeCutoff](../../../../mathematics/NumberTheory/Primes/GoldbachTruncatedSeries.lean/declarations/mem-goldbachprimecutoff--d66d0ea25036c3d8bcba9879.md) | 37 | `result-track:d66d0ea25036c3d8bcba9879d91a75b2c431f1691302096a8d8466090f0663ff` |
| 4 | `theorem` | [mem_goldbachOddPrimeCutoff](../../../../mathematics/NumberTheory/Primes/GoldbachTruncatedSeries.lean/declarations/mem-goldbachoddprimecutoff--87c6a665ba57e8056f41b790.md) | 47 | `result-track:87c6a665ba57e8056f41b79064e1cb980689657acb8bcfc1c3f2b353c317ca83` |
| 5 | `theorem` | [two_mem_goldbachPrimeCutoff](../../../../mathematics/NumberTheory/Primes/GoldbachTruncatedSeries.lean/declarations/two-mem-goldbachprimecutoff--5e576aab82fd61dc30a71e6e.md) | 54 | `result-track:5e576aab82fd61dc30a71e6e00a59c69437e4296875d9bcf399a4f317fccb5a1` |
| 6 | `theorem` | [prime_of_mem_goldbachOddPrimeCutoff](../../../../mathematics/NumberTheory/Primes/GoldbachTruncatedSeries.lean/declarations/prime-of-mem-goldbachoddprimecutoff--5bb801acc80ae6cfbddb658b.md) | 59 | `result-track:5bb801acc80ae6cfbddb658b1df19e3549d9639a4f22ab390a17b161e75bba40` |
| 7 | `theorem` | [ne_two_of_mem_goldbachOddPrimeCutoff](../../../../mathematics/NumberTheory/Primes/GoldbachTruncatedSeries.lean/declarations/ne-two-of-mem-goldbachoddprimecutoff--000df9567a0be0eb64adc2b7.md) | 64 | `result-track:000df9567a0be0eb64adc2b732d928339e59a362423c57ab14884052dc8d6b7f` |
| 8 | `def` | [goldbachTruncatedUniversalCore](../../../../mathematics/NumberTheory/Primes/GoldbachTruncatedSeries.lean/declarations/goldbachtruncateduniversalcore--35d03fbbf0f3b3dad66967cd.md) | 69 | `declaration-track:35d03fbbf0f3b3dad66967cdd491ad7209c421047ca4fb802c0eab3d8c9a3b93` |
| 9 | `def` | [goldbachTruncatedDivisorCorrection](../../../../mathematics/NumberTheory/Primes/GoldbachTruncatedSeries.lean/declarations/goldbachtruncateddivisorcorrection--00a0721ac064eb398c614331.md) | 73 | `declaration-track:00a0721ac064eb398c6143311c3745326ac03e97e8f54f9ea9d1069b4eb52619` |
| 10 | `def` | [goldbachTruncatedSeries](../../../../mathematics/NumberTheory/Primes/GoldbachTruncatedSeries.lean/declarations/goldbachtruncatedseries--5970da239dec4143b9021c57.md) | 78 | `declaration-track:5970da239dec4143b9021c57c7489829e4808d14d837cbec258935202990c0c5` |
| 11 | `theorem` | [goldbachTruncatedSeries_eq_cutoffProduct](../../../../mathematics/NumberTheory/Primes/GoldbachTruncatedSeries.lean/declarations/goldbachtruncatedseries-eq-cutoffproduct--1fd9cf0f39880b247c46a223.md) | 84 | `result-track:1fd9cf0f39880b247c46a22338c65294655e60acc8fbf34698d0c917b29dc0e7` |
| 12 | `theorem` | [goldbachTruncatedSeries_factorization](../../../../mathematics/NumberTheory/Primes/GoldbachTruncatedSeries.lean/declarations/goldbachtruncatedseries-factorization--7025a2541c7f0dc95a1b51b6.md) | 97 | `result-track:7025a2541c7f0dc95a1b51b6551db3952df9e6232e54389e9b370e924607040a` |
| 13 | `theorem` | [goldbachTruncatedSeries_eq_two_mul](../../../../mathematics/NumberTheory/Primes/GoldbachTruncatedSeries.lean/declarations/goldbachtruncatedseries-eq-two-mul--fe6a15670a51cdda869cdd69.md) | 113 | `result-track:fe6a15670a51cdda869cdd69883ebad9cc294ec584504688c03f5ea2c928bd1c` |
| 14 | `theorem` | [goldbachTruncatedSeries_pos](../../../../mathematics/NumberTheory/Primes/GoldbachTruncatedSeries.lean/declarations/goldbachtruncatedseries-pos--bf297508c7091b28ee21eb87.md) | 123 | `result-track:bf297508c7091b28ee21eb876d4921063b7d40ed0bd65b6d3b044212eadc8033` |
| 15 | `theorem` | [goldbachTruncatedSeries_eq_zero_of_not_even](../../../../mathematics/NumberTheory/Primes/GoldbachTruncatedSeries.lean/declarations/goldbachtruncatedseries-eq-zero-of-not-even--b2db083e20937e5db04ee504.md) | 135 | `result-track:b2db083e20937e5db04ee5048b984183cda5659f895bc53119a3ae539c28d54f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
