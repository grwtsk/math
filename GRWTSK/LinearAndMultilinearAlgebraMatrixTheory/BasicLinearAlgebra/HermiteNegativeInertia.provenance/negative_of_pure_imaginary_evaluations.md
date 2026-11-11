# `GRWTSK.LinearAlgebra.HermiteNegativeInertia.negative_of_pure_imaginary_evaluations`

Local mathematical attribution: grwtsk contributors.

Canonical source: [../HermiteNegativeInertia.lean](../HermiteNegativeInertia.lean); source SHA-256 `50bfc7e8e7d70baa47ef1492db497d80f8f28a96d3fa405480fa0de66103026f`; Git blob `94aa4411b6714d3879de83e98a4deb39028a30c3`. Source comparison pin: `grwtsk/math@8d7c8b8084caa6ff3cf6b254da449042617519f8`. [Shared source comparison, boundaries and reproduction](context.md).

## Exact authored statement

```lean
theorem negative_of_pure_imaginary_evaluations
    (S : Finset ℂ) (weight : ℂ → ℝ) (n : ℕ)
    (hweight : ∀ z ∈ S, 0 < weight z) (v : Fin n → ℝ)
    (hreal : ∀ z ∈ S, realEvaluation z v = 0)
    (hobs : imaginaryObserver S n v ≠ 0) :
    quadraticValue (supportMatrix S weight n) v < 0
```

## Primary argument and mathematical consumer

The exact full support sum becomes a sum of nonpositive terms -weight(z)*imagEvaluation(z,v)^2. A nonzero observed coordinate supplies one strictly negative term because that node has strictly positive weight. Finite sum comparison gives strict negativity, with all mixed terms already included in the exact Hermite identity.

Consumer: RP-OC-03 finite negative-index accounting, composed with RP-OC-06's original weighted Hermite matrix and exact finite-source return. The required hypotheses in the statement are retained; none is an added axiom or an implicitly supplied arithmetic construction.

Evidence: FORMAL_SOURCE_CANDIDATE. Lean elaboration/build, fresh kernel replay, transitive axiom audit, independent analytical review and arithmetic certification: NOT_RUN. No independent proof or novelty claim. Publication alone does not establish proof acceptance. Coordination: grwtsk/math#1808 and #1806.
