# GRWTSK.NumberTheory.WeilNegativeWitness.exists_horizontal_LFunction_logDeriv_bound

Local attribution: grwtsk contributors. Date: 2026-11-11.
Source: [../DirichletHorizontalLogDerivative.lean](../DirichletHorizontalLogDerivative.lean).
Source Git blob: `df57cc0537745d34b8a6c5451eeb636d829d108d`.
Source SHA-256: `5c2760d2565271752cc814bc8437014c02bd389642e96e922ca2e87b1485efb0`.
Inspection main: `ae929ffb9eb87612e063c78f642d54279fe1e9df`.
Lean `leanprover/lean4:v4.34.1`; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
Status: SOURCE_PROOF_CANDIDATE. Novelty: UNASSESSED.

## Exact statement

```lean
theorem exists_horizontal_LFunction_logDeriv_bound
    (chi : DirichletCharacter ℂ N) (hprim : chi.IsPrimitive) :
    ∃ T : ℕ → ℝ,
      (∀ n, (n : ℝ) + 2 < T n ∧ T n < (n : ℝ) + 3) ∧
      (∀ n (sigma epsilon : ℝ), epsilon = -1 ∨ epsilon = 1 →
        DirichletCharacter.completedLFunction chi
          ((sigma : ℂ) + Complex.I * ((epsilon * T n : ℝ) : ℂ)) ≠ 0) ∧
      (∀ n (sigma epsilon : ℝ), -1 ≤ sigma → sigma ≤ 2 →
        epsilon = -1 ∨ epsilon = 1 →
        ‖logDeriv (DirichletCharacter.LFunction chi)
          ((sigma : ℂ) + Complex.I * ((epsilon * T n : ℝ) : ℂ))‖ ≤
            (horizontalLogDerivativeConstant chi + 1) * (1 + T n) ^ 4)
```

## Argument, provenance, and consumer

Derive one test-independent all-height sequence, both edge signs, completed-source nonvanishing, and an ORIGINAL LFunction logarithmic-derivative bound.

Exact reused declarations: exists_zero_avoiding_horizontal_heights, with the versioned two-line source API repair; norm_logDeriv_poleCleared_on_separated_height; LFunction_logDeriv_eq_poleCleared_sub.

The complete analytical derivation and primary-source authors, editions,
licenses, pinned paths and available digests are in [README.md](README.md).
Mathlib inputs retain Apache-2.0 and their upstream bylines. Canonical local
inputs are MIT, attributed to grwtsk contributors. This is a local consequence
and source application, not an asserted direct formalization of an unseen paper.
Shared imported candidates are not independent evidence.

Only positive level/primitivity are source premises. It is not yet the completed logarithmic-derivative magnitude theorem or full Lean explicit formula.

## Verification boundary

Elaboration/build, fresh kernel replay, transitive axiom audit,
repository-wide compatibility and independent review: NOT_RUN.
Direct-source text/hash checks and publication readback are recorded in #1801;
they are not theorem acceptance. The missing canonical execution skill is
recorded in README.md. No runner or workflow was dispatched.

Proposed exact-declaration query, NOT EXECUTED:

```lean
#print axioms GRWTSK.NumberTheory.WeilNegativeWitness.exists_horizontal_LFunction_logDeriv_bound
```
