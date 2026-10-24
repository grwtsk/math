# Verification target: GRWTSK.NumberTheory.Primes.QuadraticMangoldtBoundary

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0a5afbdd1849db36b31d7a3b8589bb1fbf01e4c6",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Primes/QuadraticMangoldtBoundary.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Primes/QuadraticMangoldtBoundary.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Primes/QuadraticMangoldtBoundary.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0a5afbdd1849db36b31d7a3b8589bb1fbf01e4c6`.

Source path: `GRWTSK/NumberTheory/Primes/QuadraticMangoldtBoundary.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Primes/QuadraticMangoldtBoundary.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Primes.QuadraticPrimeBoundary`](../../../../mathematics/NumberTheory/Primes/QuadraticPrimeBoundary.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.NumberTheory.ArithmeticFunction.VonMangoldt` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [quadraticMangoldtMass](../../../../mathematics/NumberTheory/Primes/QuadraticMangoldtBoundary.lean/declarations/quadraticmangoldtmass--b8c580674cf327b273b3dc60.md) | 29 | `declaration-track:b8c580674cf327b273b3dc607c7210fd0013f78ad161f5e1608d635bbb2ee46f` |
| 2 | `def` | [quadraticPrimePowerCorrection](../../../../mathematics/NumberTheory/Primes/QuadraticMangoldtBoundary.lean/declarations/quadraticprimepowercorrection--91b497dfd72521ecc635af0c.md) | 33 | `declaration-track:91b497dfd72521ecc635af0c91e6eb2afcb1263abee8a823cbecb861aa6af032` |
| 3 | `theorem` | [quadraticPrimeLogWeight_le_mangoldt](../../../../mathematics/NumberTheory/Primes/QuadraticMangoldtBoundary.lean/declarations/quadraticprimelogweight-le-mangoldt--628ff0894aeb1a587109bf33.md) | 38 | `result-track:628ff0894aeb1a587109bf336b0925e1e29e332c988ed3474bf2804690ca837b` |
| 4 | `theorem` | [quadraticPrimePowerCorrection_nonneg](../../../../mathematics/NumberTheory/Primes/QuadraticMangoldtBoundary.lean/declarations/quadraticprimepowercorrection-nonneg--074863d922da9fd1c2b5dd6c.md) | 47 | `result-track:074863d922da9fd1c2b5dd6ca117b1ca38d4a54e56233c4d6c23e05400f3eaab` |
| 5 | `theorem` | [quadraticMangoldtMass_eq_prime_add_correction](../../../../mathematics/NumberTheory/Primes/QuadraticMangoldtBoundary.lean/declarations/quadraticmangoldtmass-eq-prime-add-correction--b6250b22cdf3eadf9064c898.md) | 55 | `result-track:b6250b22cdf3eadf9064c898bc206e952c7a271bfadf510fb47b3dc84a4965bf` |
| 6 | `theorem` | [quadraticCount_pos_of_mangoldt_bounds](../../../../mathematics/NumberTheory/Primes/QuadraticMangoldtBoundary.lean/declarations/quadraticcount-pos-of-mangoldt-bounds--eb04d2ff8b4fdba0bdbc4ee5.md) | 63 | `result-track:eb04d2ff8b4fdba0bdbc4ee5915acbc303ac5b4ef0be72d9e233ac10581bc61b` |
| 7 | `theorem` | [exists_fresh_quadraticPrime_of_mass_lt](../../../../mathematics/NumberTheory/Primes/QuadraticMangoldtBoundary.lean/declarations/exists-fresh-quadraticprime-of-mass-lt--06b19350185262260a08a982.md) | 71 | `result-track:06b19350185262260a08a98201258c11f094347a52f9009c5d78f1ca9271037a` |
| 8 | `theorem` | [exists_fresh_quadraticPrime_of_mangoldt_bounds](../../../../mathematics/NumberTheory/Primes/QuadraticMangoldtBoundary.lean/declarations/exists-fresh-quadraticprime-of-mangoldt-bounds--2b18e41d0c4d2e4b8436208d.md) | 96 | `result-track:2b18e41d0c4d2e4b8436208d8b80727d6f4af1ba351369d75fb45fe92ff91f80` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
