# `GRWTSK.Polynomial.SignedRootTrace.squareTrace_nonneg_iff_real`

Local attribution: grwtsk contributors.

## Exact source correspondence

- Local source: [PolynomialSignedRootTrace.lean](../PolynomialSignedRootTrace.lean), line 125; Git blob `0df50119a93a4a57b7c7d37b0a2b1c076b44a8ff`.
- [Pinned Lean source](https://github.com/grwtsk/math/blob/1c2dc6ce31834b5e3f37009defc5072c08aa712b/GRWTSK/GeneralAlgebraicSystems/AlgebraicStructures/PolynomialSignedRootTrace.lean#L125).
- Paper: Melvyn B. Nathanson, *The Hermite-Sylvester criterion for real-rooted polynomials*, arXiv:1911.01745v2, 24 November 2019.
- [Exact paper edition](https://arxiv.org/abs/1911.01745v2); [PDF](https://arxiv.org/pdf/1911.01745v2).
- Downloaded versioned PDF digest: `sha256:2c81caf2f11552607afeaec7ca053fdd0ce086bebcd9714dfaad4fe870d5bdfe`. This digest identifies the bytes retrieved for this inspection, not a publisher-certified checksum.
- Locator: Theorem 1 and its interpolation proof, PDF pages 2-3.
- Relation: `local_consequence`. This records correspondence to existing work; it does not infer historical use of this exact edition from an unversioned source citation.

## Local hypotheses and conclusion

```lean
theorem squareTrace_nonneg_iff_real {nodes : Finset ℂ}
    (hclosed : ∀ z ∈ nodes, conj z ∈ nodes) {weight : ℂ → ℝ}
    (hweight : ∀ z ∈ nodes, 0 < weight z) :
    (∀ p : Polynomial ℝ, p.degree < (nodes.card : WithBot ℕ) →
      0 ≤ (squareTrace nodes weight p).re) ↔
    ∀ z ∈ nodes, z.im = 0
```

## Argument, changes and consumer

On a finite conjugation-stable set with strictly positive node weights, positivity of all bounded-degree signed-square tests is equivalent to every node being real. A nonreal pair gives a negative test; real nodes give a sum of nonnegative weighted squares.

This is the finite weighted-node core. It does not construct the paper’s Hermite matrix, identify its quadratic form with the trace, or enumerate roots of a given nonconstant polynomial. Those source-return bridges remain separate.

Consumer: Finite root-trace positivity tests.

## Boundaries and evidence

Allowing zero weights can hide nonreal nodes. The degree cutoff and conjugation closure are retained. No RH or unbounded analytic consequence is asserted.

The paper edition and locator and the existing local statement/proof were inspected. No new Lean build, fresh kernel replay, transitive axiom audit or independent mathematical review was performed: `NOT_RUN`. Source correspondence and this publication do not establish mathematical acceptance, novelty or independent proof. Existing Lean source bytes, authorship and licenses are unchanged.
