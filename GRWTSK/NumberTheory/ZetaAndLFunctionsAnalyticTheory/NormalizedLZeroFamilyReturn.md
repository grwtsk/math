# Exact conditional critical-line return for normalized L-object families

Canonical source: [NormalizedLZeroFamilyReturn.lean](NormalizedLZeroFamilyReturn.lean).
Research program: [math #1828](https://github.com/grwtsk/math/issues/1828).
Architectural consumer: [math #1842](https://github.com/grwtsk/math/issues/1842).

## Precise endpoint and proof argument

The family is indexed by a user-defined `Object` type. It supplies
`zeros M s`, the original **nontrivial** zero predicate for a fixed
unitary normalization, `dual M`, and a *proved* source-reflection
`zeros M s → zeros (dual M) (1-s)`.

The conditional right-bound predicate states `Re(s) ≤ 1/2` for every
relevant zero in every object. Applying the same predicate to the
reflected zero gives `1-Re(s) ≤ 1/2`. Together the inequalities yield
`Re(s)=1/2`. The converse is immediate; the file records a genuine
iff theorem and strict-side exclusion consequences.

The reflection is deliberately directed at the **dual object**, not
necessarily the same Dirichlet character or automorphic representation.
No spontaneous self-duality or unproved functional equation is inferred.

## Verified GRH source and limits of the transfer

The newly community-certified Alpöge development (2026-11-20/21) has
independently checked RH and Dirichlet L-function results in Lean 4.33.1
and Mathlib v4.33.1. The GRWTSK root is Lean 4.34.1 with pinned
Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612.

This module does **not** import the externally checked proof. Before
specializing its schema to actual Dirichlet L-functions, a separate
adaptation must establish that:
1. the actual `DirichletCharacter.LFunction` and zero predicates
   have precisely the required normalizations and pole exclusions;
2. the selected dual is correct for the functional equation;
3. the external proved theorem has the exact protected target and
   dependencies accepted by the local toolchain;
4. the whole import closure passes compiled and kernel-level checks.

The theorem schema does not establish the existence, analytic
continuation, Euler product, functional equation, or RH/GRH of any
new automorphic or motivic L-function. Broad claims require a defined
admissible source family, not "every conceivable L-function" by fiat.

## Review controls

A zero of a finite graph operator is not admitted as `zeros M s`.
Trivial zeros and poles are filtered by the original, typed source.
Reflection may swap a character with its inverse/contragredient and
must not accidentally identify different families. Relative shifts
under a different motivic normalization require separate transforms.

## Verification status

SOURCE_PROOF_CANDIDATE, root Lean 4.34.1 / Mathlib d13f23b.
Lean elaboration, fresh kernel checking, transitive axiom audit, and
independent mathematical review: **NOT_RUN** for this increment.
No new theorem about actual arithmetic zero sets is asserted.
