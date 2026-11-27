# `GRWTSK.IntegerFactorization.QuantumReadout.exactCanonicalFamily`

Local attribution: grwtsk contributors. Upstream authorship: OpenAI, Apache-2.0.

Local source: [QuantumCanonicalFactoring.lean](../QuantumCanonicalFactoring.lean).

OpenAI's September 25, 2026 *Exact quantum factoring over a fixed finite gate set*, Theorem 1.1, supplies `OAI.ExactQuantumFactoring.exact_quantum_factoring`. Its source is [the pinned solution entrypoint](https://github.com/openai/math/blob/7ef5c0cc5ca4b0e072b7a050fca09ab24bc6fa3a/lean/OAI/Computability/QuantumFactoring/Main.lean), blob `005c5715bf5beb80baab3ee20bc4ffbb4bce6d4c`.

The local theorem applies `canonicalFamily_of_mainTheorem` to this family, retaining its length-only generator, worst-case quantum resources and exact Born probability for every binary integer at least two. A sorted-list and multiplicity proof identifies the output. Direct adapter elaboration stopped at the missing proof-producing object. The all-module source build was interrupted under resource contention. The original `Basic.lean` and local `QuantumFactorizationReadout.lean` bridge, including its five regressions, subsequently elaborated on the exact pins. New endpoint Comparator, independent replay, full transitive axiom audit and independent mathematical review are `NOT_RUN` here. See the [decoder proof, transitive source comparison and MathVet receipt scope](../QuantumFactorizationReadout.md).
