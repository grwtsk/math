# Verification target: GRWTSK.NumberTheory.Primes.Checks.LandauCountControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b87da144cab1b7dbd108dbf82e6e5727eb8f8d29",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Primes/Checks/LandauCountControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Primes/Checks/LandauCountControls.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Primes/Checks/LandauCountControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b87da144cab1b7dbd108dbf82e6e5727eb8f8d29`.

Source path: `GRWTSK/NumberTheory/Primes/Checks/LandauCountControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Primes/Checks/LandauCountControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Primes.LandauStatements`](../../../../../mathematics/NumberTheory/Primes/LandauStatements.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [goldbach_ten](../../../../../mathematics/NumberTheory/Primes/Checks/LandauCountControls.lean/declarations/goldbach-ten--d7e5445fb1ec67aca78ad61b.md) | 23 | `result-track:d7e5445fb1ec67aca78ad61b3ca812c8b4ae3ef7e6a02afa5c7f00358026c2f3` |
| 2 | `theorem` | [twins_ten](../../../../../mathematics/NumberTheory/Primes/Checks/LandauCountControls.lean/declarations/twins-ten--1b51ef315143b276df4453ae.md) | 26 | `result-track:1b51ef315143b276df4453aef02fbc8917060ac45b09622c7e5b85c1198cee43` |
| 3 | `theorem` | [first_square](../../../../../mathematics/NumberTheory/Primes/Checks/LandauCountControls.lean/declarations/first-square--d5b83c4a25a10181c5523292.md) | 29 | `result-track:d5b83c4a25a10181c55232928163eaecdca9f4ec6a9e6dc8ff21f28aa90fc093` |
| 4 | `theorem` | [second_square](../../../../../mathematics/NumberTheory/Primes/Checks/LandauCountControls.lean/declarations/second-square--f8a778be8e9474db5dde7312.md) | 32 | `result-track:f8a778be8e9474db5dde7312df2c5197d1005e3be1fef4c2e3e3479a7df0f6ab` |
| 5 | `theorem` | [quadratics_ten](../../../../../mathematics/NumberTheory/Primes/Checks/LandauCountControls.lean/declarations/quadratics-ten--19db02512dd43714d977b2a1.md) | 35 | `result-track:19db02512dd43714d977b2a17ece2fc30ff81502cee60492bde4278b918806f0` |
| 6 | `theorem` | [strict_upper_endpoint](../../../../../mathematics/NumberTheory/Primes/Checks/LandauCountControls.lean/declarations/strict-upper-endpoint--7c61f3595eb6ce5ac6c86312.md) | 38 | `result-track:7c61f3595eb6ce5ac6c86312aa1bd21e4a0f74438ae3f7c3d72285bde8f4b058` |
| 7 | `theorem` | [empty_interval](../../../../../mathematics/NumberTheory/Primes/Checks/LandauCountControls.lean/declarations/empty-interval--60ef085b3e317e286f90bdd3.md) | 41 | `result-track:60ef085b3e317e286f90bdd3247056628e5b219e9dc44abb80453602a4114472` |
| 8 | `theorem` | [reversed_interval](../../../../../mathematics/NumberTheory/Primes/Checks/LandauCountControls.lean/declarations/reversed-interval--be312f421857f2de085abab6.md) | 44 | `result-track:be312f421857f2de085abab6493d4b34b9c4b3497a077653b83593aa07caa085` |
| 9 | `theorem` | [prime_power_is_not_prime](../../../../../mathematics/NumberTheory/Primes/Checks/LandauCountControls.lean/declarations/prime-power-is-not-prime--4593d5b37c5985ff8c651fdd.md) | 47 | `result-track:4593d5b37c5985ff8c651fdda72425adfaf7b591983451fa55e496c7fea033a1` |
| 10 | `theorem` | [upper_sieve_is_not_lower](../../../../../mathematics/NumberTheory/Primes/Checks/LandauCountControls.lean/declarations/upper-sieve-is-not-lower--48e0aaee6f3a59bb8531ada4.md) | 52 | `result-track:48e0aaee6f3a59bb8531ada43414b43f1e3f4e1c2826ee6e416ebad56b9e3088` |
| 11 | `theorem` | [fixed_shift_control](../../../../../mathematics/NumberTheory/Primes/Checks/LandauCountControls.lean/declarations/fixed-shift-control--ad7383edcd0d7d6c874f445e.md) | 57 | `result-track:ad7383edcd0d7d6c874f445e6ac7914d4eff6a427addb8c96f95ba36d5decd17` |
| 12 | `theorem` | [finite_agreement](../../../../../mathematics/NumberTheory/Primes/Checks/LandauCountControls.lean/declarations/finite-agreement--a02c1675a241c4ed7fe89c4d.md) | 61 | `result-track:a02c1675a241c4ed7fe89c4d153adfd4566337ae4f0e5ac32f3ce7a2df9dc08b` |
| 13 | `theorem` | [bounded_predicate_not_unbounded](../../../../../mathematics/NumberTheory/Primes/Checks/LandauCountControls.lean/declarations/bounded-predicate-not-unbounded--5873a37202a836de1823a3c6.md) | 68 | `result-track:5873a37202a836de1823a3c6d5c81e6451515ce8a69083428111fdbe27639c1e` |
| 14 | `theorem` | [true_predicate_unbounded](../../../../../mathematics/NumberTheory/Primes/Checks/LandauCountControls.lean/declarations/true-predicate-unbounded--8f018f3e0a28391821c8d842.md) | 75 | `result-track:8f018f3e0a28391821c8d84237f711877a9ab48ae0116c57d5a7052a7c61c32b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
