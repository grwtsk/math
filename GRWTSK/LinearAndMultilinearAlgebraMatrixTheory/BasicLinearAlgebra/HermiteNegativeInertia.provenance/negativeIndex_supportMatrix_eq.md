# `GRWTSK.LinearAlgebra.HermiteNegativeInertia.negativeIndex_supportMatrix_eq`

Local mathematical attribution: grwtsk contributors.

Canonical source: [../HermiteNegativeInertia.lean](../HermiteNegativeInertia.lean); source SHA-256 `50bfc7e8e7d70baa47ef1492db497d80f8f28a96d3fa405480fa0de66103026f`; Git blob `94aa4411b6714d3879de83e98a4deb39028a30c3`. Source comparison pin: `grwtsk/math@8d7c8b8084caa6ff3cf6b254da449042617519f8`. [Shared source comparison, boundaries and reproduction](context.md).

## Exact authored statement

```lean
theorem negativeIndex_supportMatrix_eq
    (S : Finset ℂ) (weight : ℂ → ℝ) (n : ℕ)
    (hn : S.card ≤ n) (hconj : ∀ z ∈ S, conj z ∈ S)
    (hweight : ∀ z ∈ S, 0 < weight z) :
    negativeIndex (𝕜 := ℝ) (quadraticValue (supportMatrix S weight n)) =
      ((upperSupport S).card : ℕ∞)
```

## Primary argument and mathematical consumer

Use exists_imaginary_section and finite-basis coordinates to construct a negative frame of dimension finrank_R(upperSupport S -> R). Strict negativity implies injectivity through the existing negative-frame API. The same imaginaryObserver has nonnegative full kernel, so the existing matching-frame/observer theorem proves equality. This proves the full finite NEGATIVE-index formula, not a positive-index/nullity triple or a spectral-flow statement.

Consumer: RP-OC-03 finite negative-index accounting, composed with RP-OC-06's original weighted Hermite matrix and exact finite-source return. The required hypotheses in the statement are retained; none is an added axiom or an implicitly supplied arithmetic construction.

Evidence: FORMAL_SOURCE_CANDIDATE. Lean elaboration/build, fresh kernel replay, transitive axiom audit, independent analytical review and arithmetic certification: NOT_RUN. No independent proof or novelty claim. Publication alone does not establish proof acceptance. Coordination: grwtsk/math#1808 and #1806.
