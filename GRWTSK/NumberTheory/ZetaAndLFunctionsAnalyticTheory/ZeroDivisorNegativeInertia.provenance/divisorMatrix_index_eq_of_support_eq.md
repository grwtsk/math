# `GRWTSK.ZeroCountCertificates.FiniteDivisor.divisorMatrix_index_eq_of_support_eq`

Local mathematical attribution: grwtsk contributors.

Canonical source: [../ZeroDivisorNegativeInertia.lean](../ZeroDivisorNegativeInertia.lean); source SHA-256 `f82b8c20cf4563fe7f84c572ebbb6b9f063a52ec811bdc1774ffbfdc24273ac6`; Git blob `d35946b47da0ce3e92274048f30445cfc1f7a86d`. Source comparison pin: `grwtsk/math@8d7c8b8084caa6ff3cf6b254da449042617519f8`. [Shared source comparison, boundaries and reproduction](context.md).

## Exact authored statement

```lean
theorem divisorMatrix_index_eq_of_support_eq (d e : FiniteDivisor)
    (hsupport : d.support = e.support)
    (hconj : ∀ z ∈ d.support, conj z ∈ d.support) :
    negativeIndex (𝕜 := ℝ) (quadraticValue d.divisorMatrix) =
      negativeIndex (𝕜 := ℝ) (quadraticValue e.divisorMatrix)
```

## Primary argument and mathematical consumer

Transport conjugation closure through the given equality of supports. Evaluate both indices with divisorMatrix_negativeIndex. Their positive multiplicities and matrix dimensions may differ, but the distinct upper-support set is identical.

Consumer: RP-OC-03 finite negative-index accounting, composed with RP-OC-06's original weighted Hermite matrix and exact finite-source return. The required hypotheses in the statement are retained; none is an added axiom or an implicitly supplied arithmetic construction.

Evidence: FORMAL_SOURCE_CANDIDATE. Lean elaboration/build, fresh kernel replay, transitive axiom audit, independent analytical review and arithmetic certification: NOT_RUN. No independent proof or novelty claim. Publication alone does not establish proof acceptance. Coordination: grwtsk/math#1808 and #1806.
