# GRWTSK.NumberTheory.WeilNegativeWitness.LFunction_logDeriv_eq_poleCleared_sub

Local attribution: grwtsk contributors. Date: 2026-11-11.
Source: [../DirichletHorizontalLogDerivative.lean](../DirichletHorizontalLogDerivative.lean).
Source Git blob: `df57cc0537745d34b8a6c5451eeb636d829d108d`.
Source SHA-256: `5c2760d2565271752cc814bc8437014c02bd389642e96e922ca2e87b1485efb0`.
Inspection main: `ae929ffb9eb87612e063c78f642d54279fe1e9df`.
Lean `leanprover/lean4:v4.34.1`; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
Status: SOURCE_PROOF_CANDIDATE. Novelty: UNASSESSED.

## Exact statement

```lean
theorem LFunction_logDeriv_eq_poleCleared_sub
    (chi : DirichletCharacter ℂ N) {s : ℂ} (hs : s ≠ 1)
    (hn : poleClearedLFunction chi s ≠ 0) :
    logDeriv (DirichletCharacter.LFunction chi) s =
      logDeriv (poleClearedLFunction chi) s - 1 / (s - 1)
```

## Argument, provenance, and consumer

Prove the exact local source return L'/L=F'/F-1/(s-1). Consumed by exists_horizontal_LFunction_logDeriv_bound.

Exact reused declarations: poleClearedLFunction_of_ne; logDeriv_congr_nhds; logDeriv_fun_mul; actual LFunction differentiability away from 1.

The complete analytical derivation and primary-source authors, editions,
licenses, pinned paths and available digests are in [README.md](README.md).
Mathlib inputs retain Apache-2.0 and their upstream bylines. Canonical local
inputs are MIT, attributed to grwtsk contributors. This is a local consequence
and source application, not an asserted direct formalization of an unseen paper.
Shared imported candidates are not independent evidence.

Nonzero repaired value and exclusion s=1 establish all denominators before cancellation. No global product is asserted at the repaired point.

## Verification boundary

Elaboration/build, fresh kernel replay, transitive axiom audit,
repository-wide compatibility and independent review: NOT_RUN.
Direct-source text/hash checks and publication readback are recorded in #1801;
they are not theorem acceptance. The missing canonical execution skill is
recorded in README.md. No runner or workflow was dispatched.

Proposed exact-declaration query, NOT EXECUTED:

```lean
#print axioms GRWTSK.NumberTheory.WeilNegativeWitness.LFunction_logDeriv_eq_poleCleared_sub
```
