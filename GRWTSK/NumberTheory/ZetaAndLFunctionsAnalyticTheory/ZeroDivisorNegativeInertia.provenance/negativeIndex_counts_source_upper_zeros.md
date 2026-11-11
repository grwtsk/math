# `GRWTSK.ZeroCountCertificates.FiniteDivisor.negativeIndex_counts_source_upper_zeros`

Local mathematical attribution: grwtsk contributors.

Canonical source: [../ZeroDivisorNegativeInertia.lean](../ZeroDivisorNegativeInertia.lean); source SHA-256 `f82b8c20cf4563fe7f84c572ebbb6b9f063a52ec811bdc1774ffbfdc24273ac6`; Git blob `d35946b47da0ce3e92274048f30445cfc1f7a86d`. Source comparison pin: `grwtsk/math@8d7c8b8084caa6ff3cf6b254da449042617519f8`. [Shared source comparison, boundaries and reproduction](context.md).

## Exact authored statement

```lean
theorem negativeIndex_counts_source_upper_zeros (d : FiniteDivisor)
    (f : ℂ → ℂ) (D : Set ℂ) (hsource : d.IdentifiesZeros f D)
    (hconj : ∀ z ∈ d.support, conj z ∈ d.support) :
    ∃ upperZeros : Finset ℂ,
      (∀ z, z ∈ upperZeros ↔ z ∈ D ∧ f z = 0 ∧ 0 < z.im) ∧
      negativeIndex (𝕜 := ℝ) (quadraticValue d.divisorMatrix) =
        (upperZeros.card : ℕ∞)
```

## Primary argument and mathematical consumer

Choose upperSupport d.support as the returned finite set. Supply its exact membership equivalence from mem_upperSupport_iff_source_zero and its cardinal-index equality from divisorMatrix_negativeIndex. The source/domain identification and conjugation closure remain hypotheses.

Consumer: RP-OC-03 finite negative-index accounting, composed with RP-OC-06's original weighted Hermite matrix and exact finite-source return. The required hypotheses in the statement are retained; none is an added axiom or an implicitly supplied arithmetic construction.

Evidence: FORMAL_SOURCE_CANDIDATE. Lean elaboration/build, fresh kernel replay, transitive axiom audit, independent analytical review and arithmetic certification: NOT_RUN. No independent proof or novelty claim. Publication alone does not establish proof acceptance. Coordination: grwtsk/math#1808 and #1806.
