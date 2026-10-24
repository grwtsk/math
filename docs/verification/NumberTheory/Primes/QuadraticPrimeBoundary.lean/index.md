# Verification target: GRWTSK.NumberTheory.Primes.QuadraticPrimeBoundary

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "adf6335fb82b24d5738099ea00cf39f815adac73",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Primes/QuadraticPrimeBoundary.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Primes/QuadraticPrimeBoundary.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Primes/QuadraticPrimeBoundary.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `adf6335fb82b24d5738099ea00cf39f815adac73`.

Source path: `GRWTSK/NumberTheory/Primes/QuadraticPrimeBoundary.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Primes/QuadraticPrimeBoundary.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Primes.QuadraticGaussianLine`](../../../../mathematics/NumberTheory/Primes/QuadraticGaussianLine.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [quadraticPrimeLogWeight](../../../../mathematics/NumberTheory/Primes/QuadraticPrimeBoundary.lean/declarations/quadraticprimelogweight--7f4bd61032b635679dced07b.md) | 33 | `declaration-track:7f4bd61032b635679dced07b85d44a53a78340ffb3b93563bc65148782848a59` |
| 2 | `def` | [quadraticPrimeLogMass](../../../../mathematics/NumberTheory/Primes/QuadraticPrimeBoundary.lean/declarations/quadraticprimelogmass--34e0fcb640ce5871704f33f4.md) | 39 | `declaration-track:34e0fcb640ce5871704f33f4e71eb21fc649f850bd17e0d933e6e72bb43832eb` |
| 3 | `theorem` | [quadraticPrimeLogWeight_nonneg](../../../../mathematics/NumberTheory/Primes/QuadraticPrimeBoundary.lean/declarations/quadraticprimelogweight-nonneg--dd4b4a65236e25f1bc2c4854.md) | 44 | `result-track:dd4b4a65236e25f1bc2c4854622642224159d9f3572f319d018eccc46d071183` |
| 4 | `theorem` | [quadraticPrimeLogWeight_pos](../../../../mathematics/NumberTheory/Primes/QuadraticPrimeBoundary.lean/declarations/quadraticprimelogweight-pos--724ba22007b0df9332c2043f.md) | 55 | `result-track:724ba22007b0df9332c2043f5f029a483f66e3d6299d9322b9661fbb84aae2b5` |
| 5 | `theorem` | [quadraticPrimeLogMass_pos_iff](../../../../mathematics/NumberTheory/Primes/QuadraticPrimeBoundary.lean/declarations/quadraticprimelogmass-pos-iff--4fda2ccb8965bb1722a9b6f6.md) | 64 | `result-track:4fda2ccb8965bb1722a9b6f6157678edd9a8ada3c2eb5067a0679c70aed95be2` |
| 6 | `def` | [quadraticGaussianPrimeLogMass](../../../../mathematics/NumberTheory/Primes/QuadraticPrimeBoundary.lean/declarations/quadraticgaussianprimelogmass--d1ae747dd8c6829aaf965887.md) | 105 | `declaration-track:d1ae747dd8c6829aaf96588743f3573482abdc133077725dac21b3600d7ed26d` |
| 7 | `theorem` | [quadraticGaussianPrimeLogMass_eq](../../../../mathematics/NumberTheory/Primes/QuadraticPrimeBoundary.lean/declarations/quadraticgaussianprimelogmass-eq--cab43cb6c2b0ae6df4518438.md) | 115 | `result-track:cab43cb6c2b0ae6df45184382243e6fcf7fdcc8d9d09a785a5e7f09db81ec890` |
| 8 | `theorem` | [quadraticCount_pos_of_source_correction_bounds](../../../../mathematics/NumberTheory/Primes/QuadraticPrimeBoundary.lean/declarations/quadraticcount-pos-of-source-correction-bounds--672257f22bfb84a1e1bb36e4.md) | 135 | `result-track:672257f22bfb84a1e1bb36e432444794cefe7aeae43271589f7c4a2cb97283c1` |
| 9 | `theorem` | [quadraticCount_pos_of_bilinear_residual_bounds](../../../../mathematics/NumberTheory/Primes/QuadraticPrimeBoundary.lean/declarations/quadraticcount-pos-of-bilinear-residual-bounds--2aa0e37952e32030f78088fa.md) | 152 | `result-track:2aa0e37952e32030f78088fa4e54698c5caa66e0becc92b4051620985afd99bf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
