# Source-exact Dirichlet GRH challenge-to-local statement bridge

Lean file: [DirichletGRHSourceStatementBridge.lean](DirichletGRHSourceStatementBridge.lean).
Coordination: [math #1842](https://github.com/grwtsk/math/issues/1842),
[math #1828](https://github.com/grwtsk/math/issues/1828).

## Exact external challenge

- Canonical external repository:
  [leanprover-community/riemann-hypothesis](https://github.com/leanprover-community/riemann-hypothesis)
- Inspected external main:
  `2dea99006976a5104032e495d7513dee40fbb5ca`
- Source: `src/Challenge.lean`, Git blob
  `9677ace64b3a5e8b1a571d82d52ee13c53b08026`.
- `DirichletLZerosOnLine` is exactly
  `∀ N [NeZero N] χ s, 0<s.re → s.re<1 →
  DirichletCharacter.LFunction χ s=0 → s.re=1/2`.
- Companion theorem name in that challenge:
  `LFunction_eq_zero_re`, whose proof is a `sorry`
  placeholder in the *independent specification*, not a verified
  proof import.

## Local statement comparison

`ChallengeDirichletLZerosOnLine` copies only the quantified
mathematical statement. The file proves that this reduces to
`GRWTSK.NumberTheory.Conditional.DirichletGRH`, which quantifies
over every positive modulus and every character using the actual
Mathlib `DirichletCharacter.LFunction`.

The exact forward and reverse transfer theorems consume an explicit
theorem witness. They do not manufacture the witness, introduce an
axiom, or import the published external library.

## Independent source and trust frontier

External proof environment: Lean 4.33.1,
Mathlib `0df444a360eaa60ab8c11dca51a86af692955474`.
Local environment: Lean 4.34.1,
Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.

The external proof needs a separately compiled or exported theorem
transport into local Mathlib, with independent type equality,
dependency integrity, kernel/axiom checks and the precise unmodified
zero predicate. The local statement equivalence alone is not such a
transport and is not GRH itself.

A broader automorphic/motivic (L)-object still needs analyticity,
its own source-identified zero predicate, normalization and dual
reflection, with the universal critical-line claim separately open.

## Verification

SOURCE_PROOF_CANDIDATE; Lean, kernel replay, axiom audit and independent
review of this local adapter NOT_RUN in this assistant session.
The user's preceding 40-declaration scoped audit is not inherited as
proof of this new source.
