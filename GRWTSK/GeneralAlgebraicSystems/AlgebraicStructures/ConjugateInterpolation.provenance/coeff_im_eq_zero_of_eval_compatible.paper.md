# `GRWTSK.Polynomial.ConjugateInterpolation.coeff_im_eq_zero_of_eval_compatible`

Local attribution: grwtsk contributors.

## Exact source correspondence

- Local source: [ConjugateInterpolation.lean](../ConjugateInterpolation.lean), line 26; Git blob `736d988a73a4dc785263da7a17e00b7254474e07`.
- [Pinned Lean source](https://github.com/grwtsk/math/blob/1c2dc6ce31834b5e3f37009defc5072c08aa712b/GRWTSK/GeneralAlgebraicSystems/AlgebraicStructures/ConjugateInterpolation.lean#L26).
- Paper: Melvyn B. Nathanson, *The Hermite-Sylvester criterion for real-rooted polynomials*, arXiv:1911.01745v2, 24 November 2019.
- [Exact paper edition](https://arxiv.org/abs/1911.01745v2); [PDF](https://arxiv.org/pdf/1911.01745v2).
- Downloaded versioned PDF digest: `sha256:2c81caf2f11552607afeaec7ca053fdd0ce086bebcd9714dfaad4fe870d5bdfe`. This digest identifies the bytes retrieved for this inspection, not a publisher-certified checksum.
- Locator: Lemma 1, PDF page 2.
- Relation: `direct_formalization`. This records correspondence to existing work; it does not infer historical use of this exact edition from an unversioned source citation.

## Local hypotheses and conclusion

```lean
theorem coeff_im_eq_zero_of_eval_compatible
    (nodes : Finset ℂ) (closed : ∀ z ∈ nodes, conj z ∈ nodes)
    (q : Polynomial ℂ) (degree_lt : q.degree < (nodes.card : WithBot ℕ))
    (compatible : ∀ z ∈ nodes, q.eval (conj z) = conj (q.eval z))
    (n : ℕ) : (q.coeff n).im = 0
```

## Argument, changes and consumer

The finite node set is conjugation-stable, degree is strictly below its cardinality, and evaluations commute with conjugation. Compare the conjugated polynomial with the original on all nodes; bounded-degree uniqueness makes them equal, hence every coefficient is real.

Polynomial coefficient reality is encoded as zero imaginary part. The empty-node case is a Lean extension forced to the zero polynomial by the strict degree bound.

Consumer: ConjugateInterpolation.exists_real_interpolate.

## Boundaries and evidence

Without the degree bound, a polynomial vanishing at every node need not have real coefficients. No nonempty-root or analytic positivity conclusion follows.

The paper edition and locator and the existing local statement/proof were inspected. No new Lean build, fresh kernel replay, transitive axiom audit or independent mathematical review was performed: `NOT_RUN`. Source correspondence and this publication do not establish mathematical acceptance, novelty or independent proof. Existing Lean source bytes, authorship and licenses are unchanged.
