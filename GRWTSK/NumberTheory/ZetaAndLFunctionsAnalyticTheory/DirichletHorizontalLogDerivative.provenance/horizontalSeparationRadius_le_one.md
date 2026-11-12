# GRWTSK.NumberTheory.WeilNegativeWitness.horizontalSeparationRadius_le_one

Local attribution: grwtsk contributors. Date: 2026-11-11.
Source: [../DirichletHorizontalLogDerivative.lean](../DirichletHorizontalLogDerivative.lean).
Source Git blob: `df57cc0537745d34b8a6c5451eeb636d829d108d`.
Source SHA-256: `5c2760d2565271752cc814bc8437014c02bd389642e96e922ca2e87b1485efb0`.
Inspection main: `ae929ffb9eb87612e063c78f642d54279fe1e9df`.
Lean `leanprover/lean4:v4.34.1`; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
Status: SOURCE_PROOF_CANDIDATE. Novelty: UNASSESSED.

## Exact statement

```lean
theorem horizontalSeparationRadius_le_one (chi : DirichletCharacter ℂ N) (n : ℕ) :
    horizontalSeparationRadius chi n ≤ 1
```

## Argument, provenance, and consumer

Compare the selected radius to the distance from the nonreal horizontal point to EVERY real zero of the repaired source.

Exact reused declarations: horizontalSeparationRadius; sourceCountConstant_nonneg; positivity and scalar order arithmetic.

The complete analytical derivation and primary-source authors, editions,
licenses, pinned paths and available digests are in [README.md](README.md).
Mathlib inputs retain Apache-2.0 and their upstream bylines. Canonical local
inputs are MIT, attributed to grwtsk contributors. This is a local consequence
and source application, not an asserted direct formalization of an unseen paper.
Shared imported candidates are not independent evidence.

Does not assert a uniform positive lower bound for the radii, which decay with n.

## Verification boundary

Elaboration/build, fresh kernel replay, transitive axiom audit,
repository-wide compatibility and independent review: NOT_RUN.
Direct-source text/hash checks and publication readback are recorded in #1801;
they are not theorem acceptance. The missing canonical execution skill is
recorded in README.md. No runner or workflow was dispatched.

Proposed exact-declaration query, NOT EXECUTED:

```lean
#print axioms GRWTSK.NumberTheory.WeilNegativeWitness.horizontalSeparationRadius_le_one
```
