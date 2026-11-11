# `GRWTSK.LinearAlgebra.HermiteNegativeInertia.exists_imaginary_section`

Local mathematical attribution: grwtsk contributors.

Canonical source: [../HermiteNegativeInertia.lean](../HermiteNegativeInertia.lean); source SHA-256 `50bfc7e8e7d70baa47ef1492db497d80f8f28a96d3fa405480fa0de66103026f`; Git blob `94aa4411b6714d3879de83e98a4deb39028a30c3`. Source comparison pin: `grwtsk/math@8d7c8b8084caa6ff3cf6b254da449042617519f8`. [Shared source comparison, boundaries and reproduction](context.md).

## Exact authored statement

```lean
theorem exists_imaginary_section (S : Finset ℂ) (n : ℕ)
    (hn : S.card ≤ n) (hconj : ∀ z ∈ S, conj z ∈ S) :
    ∃ F : (upperSupport S → ℝ) →ₗ[ℝ] (Fin n → ℝ),
      (∀ x z, z ∈ S → realEvaluation z (F x) = 0) ∧
      (∀ x, imaginaryObserver S n (F x) = x)
```

## Primary argument and mathematical consumer

Choose a separator vector once for each upper node. Define F(x) as the finite sum of x(a) times that fixed vector and prove both linear-map laws. Linear real evaluation vanishes on all support nodes. Linear imaginary evaluation on upper nodes recovers x by the Kronecker delta property. Arbitrary pointwise interpolation choices are not asserted to form a linear map.

Consumer: RP-OC-03 finite negative-index accounting, composed with RP-OC-06's original weighted Hermite matrix and exact finite-source return. The required hypotheses in the statement are retained; none is an added axiom or an implicitly supplied arithmetic construction.

Evidence: FORMAL_SOURCE_CANDIDATE. Lean elaboration/build, fresh kernel replay, transitive axiom audit, independent analytical review and arithmetic certification: NOT_RUN. No independent proof or novelty claim. Publication alone does not establish proof acceptance. Coordination: grwtsk/math#1808 and #1806.
