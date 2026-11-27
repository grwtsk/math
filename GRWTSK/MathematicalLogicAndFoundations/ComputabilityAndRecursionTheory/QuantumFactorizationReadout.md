# Exact quantum factoring and canonical prime powers

Local attribution: grwtsk contributors. Upstream authorship: OpenAI. Upstream code is Apache-2.0.

## Correspondence

All local names below are in `GRWTSK.IntegerFactorization.QuantumReadout`. The arithmetic specification is `GRWTSK.IntegerFactorization.CompleteFactorization`. The isolated package is `docs/adaptations/environments/openai-math`.

| Local declaration | Immediate supplier | Derivation and use |
| --- | --- | --- |
| `correctEncoding_iff` | Upstream `OAI.ExactQuantumFactoring.CorrectEncoding`, Mathlib `Nat.primeFactorsList_unique` and `expand_canonical` | For every $N \ge 2$, slot capacity and slot list, sorted prime leaves with the required product give the unique increasing prime-power certificate. Conversely its expansion supplies exactly those sorted leaves. Equality includes the entire zero suffix. |
| `decodeSlots_of_correct` | The same list uniqueness and `compressRuns_primeFactorsList` | On an accepted measurement, every prime survives removal of zeros and all the padding disappears. Coalescing each run of equal primes preserves its multiplicity and takes one head update per input occurrence. A zero between primes is a counterexample to accepting arbitrary slots by filtering alone. |
| `probability_eq` | `correctEncoding_iff` and the literal upstream `Circuit.correctProbability` | The two indicators agree for each basis vector. Summing the same squared output amplitudes yields identical Born mass for the complete canonical answer. |
| `canonicalFamily_of_mainTheorem` | `probability_eq` and an explicitly supplied `MainTheorem` | Retains the same family, length-only generator, polynomial gate and qubit bounds, and measurement capacity. |
| `exactCanonicalFamily` in `QuantumCanonicalFactoring.lean` | OpenAI solution `OAI.ExactQuantumFactoring.exact_quantum_factoring`, Theorem 1.1, and the preceding implication | The source supplies the family for every input with $2 \le N$ and `N.size = ℓ`. The decoder uses measured slots. No classical generator is fed $N$. |

The source loads input wire $i < \ell$ with bit $i$ of $N$, least significant first. Every other input wire starts at zero. With $n=\max(128,\ell)$, slot $a$ is the $n$-bit little-endian integer beginning at wire $\ell+an$. The local probability uses the unchanged `inputBasis`, `outputState`, and `outputList` via the original circuit. Postprocessing introduces no alteration to a gate or amplitude. The postprocessor's classical tape implementation and bit cost are separate from the quantum resource statement.

## Source identity and evidence

The maintained adapter uses [OpenAI's September 25, 2026 paper and scope](https://github.com/openai/math/blob/7ef5c0cc5ca4b0e072b7a050fca09ab24bc6fa3a/lean/docs/279.md), [solution entrypoint](https://github.com/openai/math/blob/7ef5c0cc5ca4b0e072b7a050fca09ab24bc6fa3a/lean/OAI/Computability/QuantumFactoring/Main.lean), and [wire definitions](https://github.com/openai/math/blob/7ef5c0cc5ca4b0e072b7a050fca09ab24bc6fa3a/lean/OAI/Computability/QuantumFactoring/Basic.lean).

| Git object | Blob or tree shared by pins `7ef5c0c` and `3344da5` |
| --- | --- |
| QuantumFactoring source tree | `dcb37d070c56f6f34705e43fc707c424ab9cfcb6` |
| Basic definitions | `ef0e98a236705b9d8e6d63b417c8978270c15225` |
| Solution entrypoint | `005c5715bf5beb80baab3ee20bc4ffbb4bce6d4c` |
| Comparator statement | `2072f20cb47134ae2fd8eb213a9c2146e1c02ae4` |
| Comparator JSON | `6bd87d1506dbeec72589c9bd7e4ee7b2e792b4a6` |
| Scope | `2217dfc3bb1e3cd8455177e3c0fbdf1e9446a20f` |

Walking imports from the solution reached 546 OAI modules inside the identical 552-file directory, plus the `Mathlib` import. Both upstream manifests pin Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612` and Lean 4.34.1. Their complete Lake manifests differ (`67d01d2717d0aaff59fb8814bb53581b961f42b4` and `96a8aea368379c8c445bd622c6b98fde7659f45e`). The Comparator allows `propext`, `Quot.sound`, and `Classical.choice`. The [MathVet receipt](https://github.com/mathvet/mathvet/blob/14c7f918cd336d0da03a02aae5a0eed4a429d4db/reviews/openai-math/challenge-status.csv) records a Comparator pass and those three axioms at `fd4aeeb2ee4fc729c18d98444fed42fd0529eeeb`.

The direct old-pin adapter elaboration attempt stopped at its import because `OAI.Computability.QuantumFactoring.Main.olean` was unavailable. A fresh, one-module-at-a-time upstream build (546 reachable OAI modules, 2,420,616 source bytes) started at `ExactnessFurther.lean` and was interrupted under host memory contention before the first OAI object completed, exit 130. A subsequent single-worker compile of the unchanged upstream `Basic.lean` succeeded with `autoImplicit=false`, consuming 194 seconds with peak RSS 4,644,864 KiB. The complete maintained readout module (Git blob `a7c27cf1ce9cee8d347e5783ef95bc095163d0ea`) and all five regressions then elaborated successfully against that original object and the local arithmetic on Lean 4.34.1 and the pinned Mathlib, exit 0, 186 seconds, peak RSS 4,167,232 KiB. A prior diagnostic using a narrower Mathlib import list also passed. Fresh full kernel replay, full-closure axiom audit, new Comparator run, and independent mathematical review are `NOT_RUN` at the adapter pin. See [issue #1857](https://github.com/grwtsk/math/issues/1857) for revision-bound execution observations.
