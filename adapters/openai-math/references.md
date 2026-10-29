# OpenAI paper-to-adapter references

Local attribution: grwtsk contributors. Upstream author: OpenAI.

The original source integration is `grwtsk/math@129468cf1c7e78e601feec06beaedfd6cae2e22e`.
Current adapter Git blobs and upstream source identities are in [sources.toml](sources.toml).
Provider relocation preserves the mathematical namespaces and statements. Source
identities below describe exact bytes, independently of publication or acceptance.

## Ordinary two-point correlations of multiplicative functions

OpenAI, September 24, 2026. [Pinned paper/source](https://github.com/openai/math/blob/7ef5c0cc5ca4b0e072b7a050fca09ab24bc6fa3a/preprints/Ordinary-two-point-correlations-of-multiplicative-functions-September-24-2026/README.md),
README blob `965a26b87458fb541e5a0a36d40804ab86cadad7`.

Imported mathematics: `OAI.OrdinaryTwoPointCorrelations.liouville_log_saving`,
`OAI.OrdinaryTwoPointCorrelations.binary_corrected_elliott`, and
`OAI.TwoPointCorrelations.UniformlyNonpretentious.finite_prime_change`.
The last is the manuscript's finite-prime-stability method.

Local source candidates, all prefixed
`GRWTSK.NumberTheory.Moebius.OpenAITwoPointFiniteFamily.`:

- `liouville_finite_family_bound`: finite support, positive affine slopes,
  nonzero determinant `a₁*b₂ ≠ a₂*b₁`, and `X ≥ 3`; common positive exponent,
  with a separate positive constant for each affine form and arbitrary complex
  readouts. Constants are chosen before `X` and the readout.
- `elliott_after_fixed_prime_change`: one-bounded original, modified, and second
  functions; modified and second functions separately multiplicative; original
  function uniformly nonpretentious; agreement on primes outside one fixed
  finite set; distinct fixed shifts.
- `elliott_after_fixed_prime_divisor_change`: the preceding statement with the
  fixed finite set `q.primeFactors`. The modulus is fixed before the limit.

Missing bridges: growing-family constant control, transfer from Liouville to
Möbius, and an estimate for the actual local arithmetic residual. None is
supplied. No arithmetic counterexample or historical influence is inferred.

## The Quasi-Riemann Hypothesis: A Zero-Free Half-Plane Re(s)>7/8

OpenAI, September 30, 2026. [Pinned paper/source](https://github.com/openai/math/blob/7ef5c0cc5ca4b0e072b7a050fca09ab24bc6fa3a/preprints/The-Quasi-Riemann-Hypothesis-September-30-2026/README.md),
README blob `05daa0838d60781c338ac22a9b06e6990f970981`.

Imported mathematics: `OAI.riemannZeta_ne_zero_of_seven_eighths_lt_re` and
`OAI.DirichletCharacter.LFunction_ne_zero_of_seven_eighths_lt_re`.

Local source candidates, all prefixed
`GRWTSK.NumberTheory.DirichletL.OpenAISevenEighthsGap.`:

- `zeta_zero_re_le`: an actual complex zeta zero has real part at most `7/8`,
  by contrapositive of the imported statement.
- `dirichlet_zero_re_le`: positive/nonzero modulus via `[NeZero q]`, the exact
  character and L-function, and explicit exclusion of the principal pole.
- `explicit_real_zero_log_gap`: `q ≥ 3`, nonprincipal character, and an actual
  real L-function zero `β` imply `log(3)/8 ≤ (1-β)*log(q)`.

Missing bridges: independent acceptance of the upstream analytic theorem,
zero-density/Möbius estimates, and any RH conclusion.

## Evidence roles

Imported mathematics is distinguished above from the six local source proof
candidates. Kernel-verified bridges: none claimed. Conditional local RH
interfaces are outside this package. Finite evidence and analogies: none offered
as verification of these adapters. Unresolved premises are listed separately for
each source.

Compilation, fresh independent kernel replay, transitive axiom audit, and
comparator execution: `NOT_RUN`. The exact verification targets are documented
in [README.md](README.md); actual operational receipts belong outside math.
The canonical [paper-to-formalization ledger](../../documentation/mathematics/_support/reference/literature/reading-background/paper-to-formalization-references.md#openai-adapter-reconciliation)
now reconciles these adapter references and the two signed-Abel neighborhood
supplements. This provider map supplements that current ledger. Historical source
pins and verification statuses remain unchanged; the earlier removed-ledger
workaround is retired.

## Collection-wide upstream source references

The static [catalogue](catalogue.json) records the title, OpenAI byline, pinned
2026 version, stable source URL and exact PDF blob for all 721 manuscripts in
373 result families. It also preserves the 176 upstream formalization source
references and 208 main-result records without inventing a paper-to-theorem
pairing. Each comparator import surface records its exact upstream declaration
names, import blobs, comparator configuration, permitted axioms and pending
verification scopes. These are explicit upstream dependency/re-export surfaces,
not additional local paper-derived theorems. Their original types retain every
hypothesis; a consumer-specific mathematical bridge and exact paper theorem
mapping remain separate obligations. No historical influence is inferred.
