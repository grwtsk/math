# GRWTSK.NumberTheory.WeilNegativeWitness.poleClearedLFunction_norm_le_horizontal_disk

Local attribution: grwtsk contributors. Date: 2026-11-11.
Source: [../DirichletHorizontalLogDerivative.lean](../DirichletHorizontalLogDerivative.lean).
Source Git blob: `df57cc0537745d34b8a6c5451eeb636d829d108d`.
Source SHA-256: `5c2760d2565271752cc814bc8437014c02bd389642e96e922ca2e87b1485efb0`.
Inspection main: `ae929ffb9eb87612e063c78f642d54279fe1e9df`.
Lean `leanprover/lean4:v4.34.1`; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
Status: SOURCE_PROOF_CANDIDATE. Novelty: UNASSESSED.

## Exact statement

```lean
theorem poleClearedLFunction_norm_le_horizontal_disk
    (chi : DirichletCharacter ℂ N) (hprim : chi.IsPrimitive)
    (T epsilon : ℝ) (hT : 2 ≤ T) (he : epsilon = -1 ∨ epsilon = 1)
    {s : ℂ}
    (hs : s ∈ closedBall ((2 : ℂ) + Complex.I * ((epsilon * T : ℝ) : ℂ)) 8) :
    ‖poleClearedLFunction chi s‖ ≤ Real.exp
      (2 * (centralStripGrowthConstant N + farLeftGrowthConstant chi + 8) *
        (1 + T) ^ 2)
```

## Argument, provenance, and consumer

Derive a single radius-8 ceiling about each 2+i*epsilon*T, for every T>=2 and both signs. Consumed by the source logarithmic-derivative bound.

Exact reused declarations: poleClearedLFunction_norm_le_jensen_disk; Real.log_le_sub_one_of_pos; exact disk inclusion at U=(T+4)/2.

The complete analytical derivation and primary-source authors, editions,
licenses, pinned paths and available digests are in [README.md](README.md).
Mathlib inputs retain Apache-2.0 and their upstream bylines. Canonical local
inputs are MIT, attributed to grwtsk contributors. This is a local consequence
and source application, not an asserted direct formalization of an unseen paper.
Shared imported candidates are not independent evidence.

Constants retain actual level/source dependence; no conductor uniformity or numeric evaluation is claimed.

## Verification boundary

Elaboration/build, fresh kernel replay, transitive axiom audit,
repository-wide compatibility and independent review: NOT_RUN.
Direct-source text/hash checks and publication readback are recorded in #1801;
they are not theorem acceptance. The missing canonical execution skill is
recorded in README.md. No runner or workflow was dispatched.

Proposed exact-declaration query, NOT EXECUTED:

```lean
#print axioms GRWTSK.NumberTheory.WeilNegativeWitness.poleClearedLFunction_norm_le_horizontal_disk
```
