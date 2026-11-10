# `GRWTSK.Polynomial.SignedRootTrace.exists_pair_test`

Local attribution: grwtsk contributors.

## Exact source correspondence

- Local source: [PolynomialSignedRootTrace.lean](../PolynomialSignedRootTrace.lean), line 76; Git blob `0df50119a93a4a57b7c7d37b0a2b1c076b44a8ff`.
- [Pinned Lean source](https://github.com/grwtsk/math/blob/1c2dc6ce31834b5e3f37009defc5072c08aa712b/GRWTSK/GeneralAlgebraicSystems/AlgebraicStructures/PolynomialSignedRootTrace.lean#L76).
- Paper: Melvyn B. Nathanson, *The Hermite-Sylvester criterion for real-rooted polynomials*, arXiv:1911.01745v2, 24 November 2019.
- [Exact paper edition](https://arxiv.org/abs/1911.01745v2); [PDF](https://arxiv.org/pdf/1911.01745v2).
- Downloaded versioned PDF digest: `sha256:2c81caf2f11552607afeaec7ca053fdd0ce086bebcd9714dfaad4fe870d5bdfe`. This digest identifies the bytes retrieved for this inspection, not a publisher-certified checksum.
- Locator: Lemma 2 and Theorem 1 necessity proof, PDF pages 2-3.
- Relation: `local_consequence`. This records correspondence to existing work; it does not infer historical use of this exact edition from an unversioned source citation.

## Local hypotheses and conclusion

```lean
theorem exists_pair_test {nodes : Finset ℂ}
    (hclosed : ∀ z ∈ nodes, conj z ∈ nodes) (weight : ℂ → ℝ)
    {z : ℂ} (hz : z ∈ nodes) (him : z.im ≠ 0) :
    ∃ p : Polynomial ℝ, p.degree < (nodes.card : WithBot ℕ) ∧
      squareTrace nodes weight p = -((weight z + weight (conj z) : ℝ) : ℂ)
```

## Argument, changes and consumer

Choose i and -i on a selected nonreal conjugate pair and zero elsewhere. Real interpolation produces a bounded-degree test whose weighted squared evaluations sum to minus the two selected weights.

Lean uses arbitrary real weights and distinct nodes. The paper later specializes weights to root multiplicities. The signed square has no complex conjugation.

Consumer: SignedRootTrace.squareTrace_nonneg_iff_real.

## Boundaries and evidence

This test needs a selected nonreal node and conjugation closure. It is finite algebra and supplies no positivity theorem for an analytic or arithmetic source.

The paper edition and locator and the existing local statement/proof were inspected. No new Lean build, fresh kernel replay, transitive axiom audit or independent mathematical review was performed: `NOT_RUN`. Source correspondence and this publication do not establish mathematical acceptance, novelty or independent proof. Existing Lean source bytes, authorship and licenses are unchanged.
