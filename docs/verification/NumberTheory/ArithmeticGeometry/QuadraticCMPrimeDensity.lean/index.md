# Verification target: GRWTSK.NumberTheory.ArithmeticGeometry.QuadraticCMPrimeDensity

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "702e1e2fa85a7fa7eaef64751610250bdf583c5e",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ArithmeticGeometry/QuadraticCMPrimeDensity.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/ArithmeticGeometry/QuadraticCMPrimeDensity.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/ArithmeticGeometry/QuadraticCMPrimeDensity.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `702e1e2fa85a7fa7eaef64751610250bdf583c5e`.

Source path: `GRWTSK/NumberTheory/ArithmeticGeometry/QuadraticCMPrimeDensity.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ArithmeticGeometry/QuadraticCMPrimeDensity.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Farey.CyclicResidueHodge`](../../../../mathematics/NumberTheory/Farey/CyclicResidueHodge.lean/index.md) — import line 7; pinned internal source present.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [oddPrimeWindow](../../../../mathematics/NumberTheory/ArithmeticGeometry/QuadraticCMPrimeDensity.lean/declarations/oddprimewindow--4599b35c7f82cb69d242343a.md) | 34 | `declaration-track:4599b35c7f82cb69d242343a74599928d2804abbb5fd84bd162aad7b9adea762` |
| 2 | `def` | [oddPrimeCount](../../../../mathematics/NumberTheory/ArithmeticGeometry/QuadraticCMPrimeDensity.lean/declarations/oddprimecount--099d94b872c5c515d15b0b97.md) | 38 | `declaration-track:099d94b872c5c515d15b0b974abd852bb9fe1ead0d6aefe22815b9b9b6fb94c3` |
| 3 | `def` | [splitPrimeCount](../../../../mathematics/NumberTheory/ArithmeticGeometry/QuadraticCMPrimeDensity.lean/declarations/splitprimecount--56bd9a9b27970b9012b86027.md) | 40 | `declaration-track:56bd9a9b27970b9012b86027bafe64c486d2a7cd37317fd450230aea9c2e14cb` |
| 4 | `def` | [inertPrimeCount](../../../../mathematics/NumberTheory/ArithmeticGeometry/QuadraticCMPrimeDensity.lean/declarations/inertprimecount--9fe692a340b23748c9c640bc.md) | 43 | `declaration-track:9fe692a340b23748c9c640bc893c7ebb61c624a8434c80efa5b54cd317408f19` |
| 5 | `def` | [HasRelativePrimeDensityHalf](../../../../mathematics/NumberTheory/ArithmeticGeometry/QuadraticCMPrimeDensity.lean/declarations/hasrelativeprimedensityhalf--6c3406bc5c02aec80b94bf33.md) | 47 | `declaration-track:6c3406bc5c02aec80b94bf338375a0aad32536e7b340068943ff20410b020862` |
| 6 | `structure` | [QuadraticPrimeDensitySupplier](../../../../mathematics/NumberTheory/ArithmeticGeometry/QuadraticCMPrimeDensity.lean/declarations/quadraticprimedensitysupplier--4c0fe97214ee35d07d236435.md) | 52 | `declaration-track:4c0fe97214ee35d07d2364353fc7d139b70efb0c970b0995647c170e378ff2cf` |
| 7 | `structure` | [QuadraticCMReductionProfile](../../../../mathematics/NumberTheory/ArithmeticGeometry/QuadraticCMPrimeDensity.lean/declarations/quadraticcmreductionprofile--7fe4cf982720504daff599e5.md) | 60 | `declaration-track:7fe4cf982720504daff599e5866d371366aca030aa20102b2bfe47f0f6b61fba` |
| 8 | `def` | [ordinaryPrimeCount](../../../../mathematics/NumberTheory/ArithmeticGeometry/QuadraticCMPrimeDensity.lean/declarations/ordinaryprimecount--cf6cbbdbe7b91fe201437dd9.md) | 69 | `declaration-track:cf6cbbdbe7b91fe201437dd9f79d1559d8a945697b76c68da59161db4cb5fabf` |
| 9 | `def` | [supersingularPrimeCount](../../../../mathematics/NumberTheory/ArithmeticGeometry/QuadraticCMPrimeDensity.lean/declarations/supersingularprimecount--f7e4670d3f9433728db4dc85.md) | 73 | `declaration-track:f7e4670d3f9433728db4dc85aa08118aab07ff00eb4960050c1d9b07e8c0c48c` |
| 10 | `theorem` | [ordinaryPrimeCount_eq_splitPrimeCount](../../../../mathematics/NumberTheory/ArithmeticGeometry/QuadraticCMPrimeDensity.lean/declarations/ordinaryprimecount-eq-splitprimecount--042855bd57025d810ee7b208.md) | 78 | `result-track:042855bd57025d810ee7b208c59b4b3245106ddcf719bc33c0332999d7587763` |
| 11 | `theorem` | [supersingularPrimeCount_eq_inertPrimeCount](../../../../mathematics/NumberTheory/ArithmeticGeometry/QuadraticCMPrimeDensity.lean/declarations/supersingularprimecount-eq-inertprimecount--8cbf0de92773a773242a1ffd.md) | 97 | `result-track:8cbf0de92773a773242a1ffdc2a69b75a27b5f0efa7f8f50b9564a15fb6d5ff4` |
| 12 | `theorem` | [ordinaryPrimeDensity_half](../../../../mathematics/NumberTheory/ArithmeticGeometry/QuadraticCMPrimeDensity.lean/declarations/ordinaryprimedensity-half--d4604e76a7644b7d7a9e9e06.md) | 117 | `result-track:d4604e76a7644b7d7a9e9e06106f31f026efa84870fc666f562269ed8681fdad` |
| 13 | `theorem` | [supersingularPrimeDensity_half](../../../../mathematics/NumberTheory/ArithmeticGeometry/QuadraticCMPrimeDensity.lean/declarations/supersingularprimedensity-half--4c85ad5f38c9fa04003ec3c1.md) | 125 | `result-track:4c85ad5f38c9fa04003ec3c14816026c42645543fd6436a18a5965e92b520431` |
| 14 | `theorem` | [ordinary_and_supersingular_density_half](../../../../mathematics/NumberTheory/ArithmeticGeometry/QuadraticCMPrimeDensity.lean/declarations/ordinary-and-supersingular-density-half--5de2c3baa32ff661dd023505.md) | 134 | `result-track:5de2c3baa32ff661dd023505f2e13be5c24cb8361b2c3f6566cecf33abf76b8b` |
| 15 | `theorem` | [ramified_two_excluded](../../../../mathematics/NumberTheory/ArithmeticGeometry/QuadraticCMPrimeDensity.lean/declarations/ramified-two-excluded--654da33510edeb1ce9a2f4db.md) | 143 | `result-track:654da33510edeb1ce9a2f4dba9811b5a6aa49d11afb3838e1cae3c2d714c5398` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
