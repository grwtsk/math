# Verification target: GRWTSK.NumberTheory.Chebyshev.PrimeIntervalWitness

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "91d560478f09103eeb1a7ec76767c8ce407727ce",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Chebyshev/PrimeIntervalWitness.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Chebyshev/PrimeIntervalWitness.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Chebyshev/PrimeIntervalWitness.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `91d560478f09103eeb1a7ec76767c8ce407727ce`.

Source path: `GRWTSK/NumberTheory/Chebyshev/PrimeIntervalWitness.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Chebyshev/PrimeIntervalWitness.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Primes.ConfigurationCounts`](../../../../mathematics/NumberTheory/Primes/ConfigurationCounts.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.NumberTheory.Chebyshev` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Intervals` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 9; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.Omega` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [prime_log_sum_pos_iff](../../../../mathematics/NumberTheory/Chebyshev/PrimeIntervalWitness.lean/declarations/prime-log-sum-pos-iff--88e4638a9e22d774d993cdf2.md) | 32 | `result-track:88e4638a9e22d774d993cdf21052b0805b297a8eed637a17141f421ae312425b` |
| 2 | `theorem` | [theta_sub_nat_eq_prime_sum](../../../../mathematics/NumberTheory/Chebyshev/PrimeIntervalWitness.lean/declarations/theta-sub-nat-eq-prime-sum--47355a2a123be6f69643b8fe.md) | 49 | `result-track:47355a2a123be6f69643b8fed441eeba0501adaf63c1bd6fc39abe775274b849` |
| 3 | `theorem` | [theta_sub_pos_iff_intervalCount](../../../../mathematics/NumberTheory/Chebyshev/PrimeIntervalWitness.lean/declarations/theta-sub-pos-iff-intervalcount--c2e8169a99cbc55cfb42f8e9.md) | 60 | `result-track:c2e8169a99cbc55cfb42f8e995eca771827f03bc93391edd6b909bf146901a3a` |
| 4 | `theorem` | [square_not_prime](../../../../mathematics/NumberTheory/Chebyshev/PrimeIntervalWitness.lean/declarations/square-not-prime--0840a0b8a6a2c8d4571d6600.md) | 77 | `result-track:0840a0b8a6a2c8d4571d66006212ddb683295e2878f8977c96d50ea3c7762da4` |
| 5 | `theorem` | [theta_square_sub_pos_iff](../../../../mathematics/NumberTheory/Chebyshev/PrimeIntervalWitness.lean/declarations/theta-square-sub-pos-iff--dcb238039897b023f4f10a96.md) | 83 | `result-track:dcb238039897b023f4f10a96b6f6bfd4cfb8c0f46ba786767ffb2905faf52682` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
