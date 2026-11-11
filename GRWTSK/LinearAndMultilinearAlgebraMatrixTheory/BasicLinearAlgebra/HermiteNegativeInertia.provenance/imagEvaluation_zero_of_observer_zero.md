# `GRWTSK.LinearAlgebra.HermiteNegativeInertia.imagEvaluation_zero_of_observer_zero`

Local mathematical attribution: grwtsk contributors.

Canonical source: [../HermiteNegativeInertia.lean](../HermiteNegativeInertia.lean); source SHA-256 `50bfc7e8e7d70baa47ef1492db497d80f8f28a96d3fa405480fa0de66103026f`; Git blob `94aa4411b6714d3879de83e98a4deb39028a30c3`. Source comparison pin: `grwtsk/math@8d7c8b8084caa6ff3cf6b254da449042617519f8`. [Shared source comparison, boundaries and reproduction](context.md).

## Exact authored statement

```lean
theorem imagEvaluation_zero_of_observer_zero
    (S : Finset ℂ) (n : ℕ) (hconj : ∀ z ∈ S, conj z ∈ S)
    (v : Fin n → ℝ) (hv : imaginaryObserver S n v = 0)
    (z : ℂ) (hz : z ∈ S) : imagEvaluation z v = 0
```

## Primary argument and mathematical consumer

An upper point is an observed coordinate. A real point has real polynomial evaluation. For a lower point, conjugation closure supplies its upper partner and imagEvaluation_conj transfers zero back with the correct sign.

Consumer: RP-OC-03 finite negative-index accounting, composed with RP-OC-06's original weighted Hermite matrix and exact finite-source return. The required hypotheses in the statement are retained; none is an added axiom or an implicitly supplied arithmetic construction.

Evidence: FORMAL_SOURCE_CANDIDATE. Lean elaboration/build, fresh kernel replay, transitive axiom audit, independent analytical review and arithmetic certification: NOT_RUN. No independent proof or novelty claim. Publication alone does not establish proof acceptance. Coordination: grwtsk/math#1808 and #1806.
