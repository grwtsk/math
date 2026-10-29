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

## Collection-wide coverage

[The collection guide](CATALOGUE.md) describes 419 opt-in comparator import
surfaces, including the nested Hodge challenge, across all upstream subjects.
The static [catalogue](catalogue.json) pins all 721 manuscripts in 373 families,
545 distinct theorem names, the upstream formalization records, and the OAI
module source trees. Import/re-export coverage is distinct from a mathematical
bridge or verification. Every new surface remains `NOT_RUN`.

The `GRWTSKOpenAICatalogue` library is opt-in and excluded from `defaultTargets`.
Select an individual subject module for external verification; do not build the
whole upstream collection merely to check one result.

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

## Canonical paper references and weighted-budget consumer

Use the [canonical paper ledger](../../documentation/mathematics/_support/reference/literature/reading-background/paper-to-formalization-references.md#openai-adapter-reconciliation)
for the two derived adapter papers, their signed-Abel neighborhood supplements,
and the source-exact weighted residual consumer. The local bridge is in
`GRWTSK/NumberTheory/Moebius/MertensSignedAbelCorrelationEnvelope.lean` at math `c60c5243f18ee2473a898f1afe37890abe37964d`; it charges the actual kernel-weighted
error budget while retaining the boundary cost and signed model. Its three new
theorems remain source proof candidates, with compilation, fresh independent
kernel checking and complete axiom auditing `NOT_RUN`. The static verification
target is [`openai-weighted-residual-budget-20261028.toml`](../../documentation/mathematics/_verification/targets/NumberTheory/Moebius/openai-weighted-residual-budget-20261028.toml).
Collection re-exports remain distinct from these mathematical bridge obligations.

## Consumer wave 2026-10-29

New subject-organized source candidates: `adapters/openai-math/GRWTSK/NumberTheory/MultiplicativeNumberTheory/LiouvilleNormalizedReadouts.lean`. See
[consumer provenance](../consumer-integrations.json) and the canonical paper ledger.
Exact declarations and hypotheses remain in the source; compilation, fresh replay
and transitive axiom audit are NOT_RUN.

## Patched PNT source boundary

The pinned upstream OAI Lake configuration applies dependency patches. In
particular PNT base `c39a751132c88b6e8080b74c74023fd95b3d8be0` lacks
PrimeNumberTheoremAnd.Erdos970.MertensClassical; OAI patch blob
`924c5f6ec6fe88ba7788b420af4e3c3c7ac00abc` adds it. Matching the base HEAD is insufficient to
supply the exact patched import closure. Qualify the base/patch/output mapping
through supported Noe tooling before fresh source replay; do not run upstream
hooks or silently substitute a newer PNT. The canonical ledger anchor
openai-patched-pnt-source-boundary-20261029 and static target
`documentation/mathematics/_verification/targets/NumberTheory/MultiplicativeNumberTheory/openai-liouville-patched-source-boundary-20261029.json` retain exact identities and acceptance obligations.
All native, comparator, axiom and expected-interface checks remain NOT_RUN.
