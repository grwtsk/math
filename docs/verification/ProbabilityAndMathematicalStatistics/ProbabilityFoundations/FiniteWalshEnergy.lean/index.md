# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.FiniteWalshEnergy

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "be67e54070eb916bb7ac9871351fe8e8032a6811",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshEnergy.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshEnergy.lean/index.md) · [Full source](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshEnergy.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `be67e54070eb916bb7ac9871351fe8e8032a6811`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshEnergy.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshEnergy.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.CyclicWindowSeam`](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/CyclicWindowSeam.lean/index.md) — import line 9; pinned internal source present.
- `Mathlib` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [walshCharacter](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshEnergy.lean/declarations/walshcharacter--96cd58c7083e3e831cad59a8.md) | 45 | `declaration-track:96cd58c7083e3e831cad59a8b68b2994e0d3c817b6909bddf4d6f28e2f1fa48f` |
| 2 | `theorem` | [walshCharacter_empty](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshEnergy.lean/declarations/walshcharacter-empty--4d514b240d8a39a76433c26b.md) | 48 | `result-track:4d514b240d8a39a76433c26bbbccec974e952a0eb81ab0db148110fc944229a8` |
| 3 | `def` | [characterPairFactor](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshEnergy.lean/declarations/characterpairfactor--43c24248964f3b5983412e85.md) | 53 | `declaration-track:43c24248964f3b5983412e85612874905f2a677ac2632c9e04c2f77af25786ed` |
| 4 | `theorem` | [walshCharacter_mul](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshEnergy.lean/declarations/walshcharacter-mul--5ac3136947259b0ac4494c3c.md) | 58 | `result-track:5ac3136947259b0ac4494c3c9ad1ce1c98feed2ce1cf2d71034f38f2516a1925` |
| 5 | `theorem` | [characterPairFactor_sum_bool](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshEnergy.lean/declarations/characterpairfactor-sum-bool--45867e022775d3c823e55e0b.md) | 72 | `result-track:45867e022775d3c823e55e0bf29bb245459a52dc32b4e79c71fc043eb429a4b0` |
| 6 | `theorem` | [characterPair_factorization](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshEnergy.lean/declarations/characterpair-factorization--cf717c90fda39adbf4033e2a.md) | 81 | `result-track:cf717c90fda39adbf4033e2adcf9aa83e519b5a4fcb94634f3956ca19cf592b9` |
| 7 | `theorem` | [walshCharacter_orthogonality](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshEnergy.lean/declarations/walshcharacter-orthogonality--c55784dde5d163979468122e.md) | 103 | `result-track:c55784dde5d163979468122ea1c0a92751e594fe1457c1c602bf8e87b515f6fd` |
| 8 | `def` | [walshPolynomial](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshEnergy.lean/declarations/walshpolynomial--cb98a67ca29bfd7f12b269af.md) | 122 | `declaration-track:cb98a67ca29bfd7f12b269af17acc2af0327155f70898b1506170d5ccbbfcf60` |
| 9 | `theorem` | [walshPolynomial_square_energy](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshEnergy.lean/declarations/walshpolynomial-square-energy--7394898b7d812612d0d754a6.md) | 127 | `result-track:7394898b7d812612d0d754a6108d01ffa6f123e41a90190f12397f6153814fc6` |
| 10 | `def` | [normalizedSourceMoment](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshEnergy.lean/declarations/normalizedsourcemoment--8d01fe76a904e3146f35b4c9.md) | 177 | `declaration-track:8d01fe76a904e3146f35b4c98dd5f72ba565fb000fddbae76c0b89a6a8cf4b5b` |
| 11 | `theorem` | [normalizedSourceMoment_empty](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshEnergy.lean/declarations/normalizedsourcemoment-empty--1c904895541de1cb036898bd.md) | 181 | `result-track:1c904895541de1cb036898bdff1bfeb2f0e0d9b9a090d852ef15c0b10a268e81` |
| 12 | `theorem` | [empiricalMoment_factor](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshEnergy.lean/declarations/empiricalmoment-factor--d2e010ef4b859cfde2084252.md) | 191 | `result-track:d2e010ef4b859cfde2084252403e487f355506c6529ac3c3fd9c11e2978a1362` |
| 13 | `theorem` | [empiricalPattern_fullWalsh](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshEnergy.lean/declarations/empiricalpattern-fullwalsh--8170de3bca96aaf17b225d8c.md) | 203 | `result-track:8170de3bca96aaf17b225d8c523a7be1890795e4a8f6664b52bf285c32f751ea` |
| 14 | `def` | [centeredWalshPolynomial](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshEnergy.lean/declarations/centeredwalshpolynomial--b129b7d012574f090f90e350.md) | 223 | `declaration-track:b129b7d012574f090f90e3506d94038c18983b4d2cf40e5c3a90bdbca46a43d6` |
| 15 | `def` | [nonemptyMomentEnergy](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshEnergy.lean/declarations/nonemptymomentenergy--c2497e0758612d63abfa767a.md) | 229 | `declaration-track:c2497e0758612d63abfa767a55ab221ec841c1a97a9b5c02264f2e01467ae386` |
| 16 | `theorem` | [centeredWalshPolynomial_square_energy](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshEnergy.lean/declarations/centeredwalshpolynomial-square-energy--3f486d9eecebfe4d88a93563.md) | 235 | `result-track:3f486d9eecebfe4d88a93563f295ea5c3c1a7ca5ccc4a126dbd02f3353d046dd` |
| 17 | `theorem` | [centeredWalshPolynomial_eq_empirical_defect](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshEnergy.lean/declarations/centeredwalshpolynomial-eq-empirical-defect--8fb2955c741bc8a61970af2b.md) | 250 | `result-track:8fb2955c741bc8a61970af2bf63e32d03874db6bd969daa075a8108238091aa4` |
| 18 | `theorem` | [empiricalPattern_scaled_defect_energy](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshEnergy.lean/declarations/empiricalpattern-scaled-defect-energy--df465037616520505168a834.md) | 294 | `result-track:df465037616520505168a834a5e61f6dc9e80ef01ae7555b8b5087137eaaccbc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
