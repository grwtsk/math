# `GRWTSK.Polynomial.ConjugateInterpolation.exists_real_interpolate`

Local attribution: grwtsk contributors.

## Exact source correspondence

- Local source: [ConjugateInterpolation.lean](../ConjugateInterpolation.lean), line 50; Git blob `736d988a73a4dc785263da7a17e00b7254474e07`.
- [Pinned Lean source](https://github.com/grwtsk/math/blob/1c2dc6ce31834b5e3f37009defc5072c08aa712b/GRWTSK/GeneralAlgebraicSystems/AlgebraicStructures/ConjugateInterpolation.lean#L50).
- Paper: Melvyn B. Nathanson, *The Hermite-Sylvester criterion for real-rooted polynomials*, arXiv:1911.01745v2, 24 November 2019.
- [Exact paper edition](https://arxiv.org/abs/1911.01745v2); [PDF](https://arxiv.org/pdf/1911.01745v2).
- Downloaded versioned PDF digest: `sha256:2c81caf2f11552607afeaec7ca053fdd0ce086bebcd9714dfaad4fe870d5bdfe`. This digest identifies the bytes retrieved for this inspection, not a publisher-certified checksum.
- Locator: Lemma 2 proof, PDF page 2, using Lemma 1.
- Relation: `local_consequence`. This records correspondence to existing work; it does not infer historical use of this exact edition from an unversioned source citation.

## Local hypotheses and conclusion

```lean
theorem exists_real_interpolate
    (nodes : Finset ℂ) (closed : ∀ z ∈ nodes, conj z ∈ nodes)
    (values : ℂ → ℂ)
    (compatible : ∀ z ∈ nodes, values (conj z) = conj (values z)) :
    ∃ p : Polynomial ℝ, p.degree < (nodes.card : WithBot ℕ) ∧
      ∀ z ∈ nodes, p.eval₂ Complex.ofRealHom z = values z
```

## Argument, changes and consumer

Use Mathlib Lagrange interpolation for conjugation-compatible values on a finite conjugation-stable set, then the preceding coefficient-reality theorem to descend coefficients to real numbers.

The paper uses the particular values i, -i and zero. Lean proves the more general compatible-value interpolation statement and admits empty node sets. Node multiplicities impose no extra interpolation conditions.

Consumer: SignedRootTrace.exists_pair_test.

## Boundaries and evidence

Without conjugation-compatible data, real interpolation can fail. This generalization is not presented as a verbatim statement of Lemma 2.

The paper edition and locator and the existing local statement/proof were inspected. No new Lean build, fresh kernel replay, transitive axiom audit or independent mathematical review was performed: `NOT_RUN`. Source correspondence and this publication do not establish mathematical acceptance, novelty or independent proof. Existing Lean source bytes, authorship and licenses are unchanged.
