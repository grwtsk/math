# `GRWTSK.LinearAlgebra.HermiteNegativeInertia.negativeIndex_independent_of_positive_weights`

Local mathematical attribution: grwtsk contributors.

Canonical source: [../HermiteNegativeInertia.lean](../HermiteNegativeInertia.lean); source SHA-256 `50bfc7e8e7d70baa47ef1492db497d80f8f28a96d3fa405480fa0de66103026f`; Git blob `94aa4411b6714d3879de83e98a4deb39028a30c3`. Source comparison pin: `grwtsk/math@8d7c8b8084caa6ff3cf6b254da449042617519f8`. [Shared source comparison, boundaries and reproduction](context.md).

## Exact authored statement

```lean
theorem negativeIndex_independent_of_positive_weights
    (S : Finset ℂ) (w₁ w₂ : ℂ → ℝ) (n₁ n₂ : ℕ)
    (hn₁ : S.card ≤ n₁) (hn₂ : S.card ≤ n₂)
    (hconj : ∀ z ∈ S, conj z ∈ S)
    (hw₁ : ∀ z ∈ S, 0 < w₁ z) (hw₂ : ∀ z ∈ S, 0 < w₂ z) :
    negativeIndex (𝕜 := ℝ) (quadraticValue (supportMatrix S w₁ n₁)) =
      negativeIndex (𝕜 := ℝ) (quadraticValue (supportMatrix S w₂ n₂))
```

## Primary argument and mathematical consumer

Apply negativeIndex_supportMatrix_eq to both strictly positive weight functions and both sufficient coefficient lengths. Both indices equal the same distinct upper-support cardinality. Extra coefficient dimensions can be radical directions; index equality does not assert nonsingularity.

Consumer: RP-OC-03 finite negative-index accounting, composed with RP-OC-06's original weighted Hermite matrix and exact finite-source return. The required hypotheses in the statement are retained; none is an added axiom or an implicitly supplied arithmetic construction.

Evidence: FORMAL_SOURCE_CANDIDATE. Lean elaboration/build, fresh kernel replay, transitive axiom audit, independent analytical review and arithmetic certification: NOT_RUN. No independent proof or novelty claim. Publication alone does not establish proof acceptance. Coordination: grwtsk/math#1808 and #1806.
