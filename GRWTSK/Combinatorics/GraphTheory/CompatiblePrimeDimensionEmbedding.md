# Guidepost-preserving dimension embeddings

Lean source: [CompatiblePrimeDimensionEmbedding.lean](CompatiblePrimeDimensionEmbedding.lean).
Issue: [math #1842](https://github.com/grwtsk/math/issues/1842).

## Exact mathematical interface

`CompatibleEmbedding m n` carries actual injections of binary addresses
and coordinate ports. It additionally requires verified laws for
zero, negation, one-bit neighbor transport and syndrome transport.
These are mathematical proof fields. A bare cardinality inequality
or bits-to-bits serialization does **not** supply them.

The new theorems establish that any such embedding preserves frozen
zero-syndrome labels and commutes with the unique primary guidepost
decoder. The identity is a concrete compatible embedding, and
compatible embeddings compose.

This supplies an exact reusable *proof contract* for a proposed
16D→64D→256D expansion. It is not yet the concrete zero-extended
16D→64D embedding. Constructing that source-level map and proving
each field remains an explicit next theorem. The user should not
infer that physical memory page addresses are preserved under OS
allocation or paging.

## Source and verification

The type is the existing `Cell m` and `Port m`; no graph
zero is used as an arithmetic `L`-function zero.
The contract is distinct from the `FinitePrimeConceptAddress.lean`
numerical primorial representation and does not import its unverified
declarations.

SOURCE_PROOF_CANDIDATE, root Lean 4.34.1 / Mathlib
d13f23b723b8a846827a245b89c10fc7d3f11612.
Lean compilation, fresh kernel replay, transitive axiom audit and
independent mathematical review NOT_RUN.
