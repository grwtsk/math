# Reversible frozen-prime atlas rules and finite leaf partition

Source: [FrozenPrimeAtlasRules.lean](FrozenPrimeAtlasRules.lean).
Consumer: [math #1842](https://github.com/grwtsk/math/issues/1842).
Depends on: [FrozenPrimeHypercube.lean](FrozenPrimeHypercube.lean), source
commit 6c9276c24b66c3ccc9beb080c99df18c266ec797 (uncompiled candidate).

## Mathematical objects

A `Rule m Pinned` comprises a bijection of the binary address set, a
proof that it fixes every member of the **source-specified** `Pinned`
set pointwise, and a proof that it preserves the computed primary
`guidepost` of every address. Permuting the pinned addresses among
themselves is prohibited. Identity, composition and inverse operations
are defined and accompanied by local proofs.

`AllPrimaryPinned` explicitly states that every zero-syndrome beacon
belongs to the pinned set. Only under this hypothesis is the primary
beacon preservation theorem invoked. Secondary prime-labeled addresses
must also be included explicitly if they are to remain frozen.

`leaf c` is the set of addresses whose `guidepost` is `c`.
Every address lies in its unique owner leaf, and rules preserve its
membership in that leaf. These are **finite, discrete fibers**, not
15-dimensional PL leaves or smooth integral manifolds.

## Independent mathematical comparison

- A reversible permutation of cell *contents* can change geometric
  adjacency between mutable addresses; no cubical-chain-map or
  simplicial-automorphism theorem follows.
- A pinned prime identity is distinct from a natural number with a
  `Nat.Prime` certificate; numerical labeling is a separate map.
- A graph cover does not supply a prismatic crystal or automorphic
  realization. Source-identification edges remain open.
- Composition and inversion close the stated invariant-preserving
  transformation family by explicit proofs, without requiring a
  separately declared `Group` instance.
- No implicit reindexing or version migration is applied on dimension
  increase. Compatible embeddings need their own theorem.

## Proof and verification evidence

Source state: SOURCE_PROOF_CANDIDATE.
The module uses the exact root Lean 4.34.1 and pinned Mathlib revision
d13f23b723b8a846827a245b89c10fc7d3f11612, without pin changes.
Direct dependency: FrozenPrimeHypercube, whose own build is NOT_RUN.

Compilation, fresh full-dependency kernel replay, transitive axiom audit
and independent review: **NOT_RUN**. Source publication, direct formulas
and mathematical consistency checks are not substitutes for kernel
verification. Record the eventual exact-commit checks in issue #1842.

Next: a genuine finite cubical boundary operator, and a PL leaf system
with explicitly compatible source and target charts.
