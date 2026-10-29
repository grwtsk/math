# OpenAI mathematics adapters

Local attribution: grwtsk contributors. OpenAI retains genuine upstream authorship
and Apache-2.0 licensing; see [the upstream license](../../LICENSES/OpenAI-Apache-2.0.txt).

This standalone Lake package imports `OAI` from `openai/math` at
`7ef5c0cc5ca4b0e072b7a050fca09ab24bc6fa3a`, subdirectory `lean`.
Its toolchain is `leanprover/lean4:v4.34.1` and its upstream Mathlib revision is
`d13f23b723b8a846827a245b89c10fc7d3f11612`. The main project uses this same
Lean/Mathlib baseline, but does not depend on OAI or import these adapters.
The provider manifest preserves the upstream dependency pins; do not refresh
transitive inputs silently.

## Sources and scope

- `OpenAITwoPointFiniteFamily.lean`: the common upstream Liouville exponent with
  all affine-form-dependent constants retained, and fixed-prime-change Elliott
  consequences. Multiplicativity is a separate premise; the prime set, modulus,
  and shifts are fixed before the limit.
- `OpenAISevenEighthsGap.lean`: contrapositive zero-location bounds and the
  explicit `log(3)/8` real-zero gap for nonprincipal characters and `q ≥ 3`.
  The principal-pole exclusion is explicit.
- `AxiomAudit.lean`: transitive axiom queries for all six exported theorems.
- `sources.toml`: immutable upstream blobs, theorem inventory, and acceptance
  boundaries. [Paper/source references](references.md) distinguish imported
  mathematics from local source candidates and unresolved bridges.

No growing-family uniform constants, Möbius substitution, local analytic
admission, or unconditional RH conclusion follow from these adapters.

## External verification

Materialize this directory from a pinned math commit in a verification workspace
outside the math repository. From that directory, with the committed toolchain
and manifest, the package targets are:

```sh
lake build GRWTSKOpenAIAdapters
lake env lean AxiomAudit.lean
```

For upstream comparators, use `lean/` of the exact upstream checkout:

```sh
lake env comparator ComparatorChallenges/OrdinaryTwoPointCorrelations.json
lake env comparator ComparatorChallenges/QuasiRiemannHypothesis.json
```

Build and query commands are targets, not receipts. Compilation, fresh independent
kernel checking, comparator execution, and transitive axiom auditing remain
`NOT_RUN` until source-bound evidence is recorded externally. Reject `sorryAx`,
unapproved axioms, and unapproved trust mechanisms. Ordinary allowed axioms are
`propext`, `Quot.sound`, and `Classical.choice`; successful compilation alone is
not independent replay or mathematical admission.

Verification request: [grwtsk/math#1392](https://github.com/grwtsk/math/issues/1392).
No workflow dispatch is implied by the package or this document.
