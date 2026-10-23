# Divisor sectors of additive moments

Let `N` be any natural number, let `d > 0`, let `R` be any ring, and let `W : ℕ → ℕ → ℕ → R` be an arbitrary joint weight. The exact common-divisor sector is

\[
T_{N,d}(W)=
\sum_{\substack{1\le a,b\le N\\a+b\le N\\d\mid a,\;d\mid b}}
W(a,b,a+b).
\]

The substitution `a = d*u`, `b = d*v` gives

\[
T_{N,d}(W)=
\sum_{\substack{1\le u,v\le\lfloor N/d\rfloor\\u+v\le\lfloor N/d\rfloor}}
W(du,dv,d(u+v)).
\]

Here `N / d` is natural-number division. The closed floor cutoff is exact: for positive `d`, `u + v ≤ N / d` is equivalent to `d * (u + v) ≤ N`. The third coordinate remains the sum of the first two. Divisibility supplies the inverse coordinates, and multiplication by positive `d` is injective on pairs. These facts give an actual finite-sum bijection. All three coordinates of the weight are scaled; no factorization or independence of `W` is assumed.

Combining this reindexing with the [finite signed Möbius identity](moments.md) gives, for the actual primitive positive triples `P_N` with `c ≤ N`,

\[
\sum_{t\in P_N}W(t.a,t.b,t.c)=
\sum_{d=1}^{N}\mu(d)
\sum_{\substack{1\le u,v\le\lfloor N/d\rfloor\\u+v\le\lfloor N/d\rfloor}}
W(du,dv,d(u+v)).
\]

Primitivity is imposed on the left by `Nat.Coprime a b` in the triple type. The inner quotient sector has no coprimality restriction: the signed outer Möbius sum performs that filtering. The canonical integer Möbius coefficient is cast into `R` and multiplies the sector on the left. Multiplication in `R` need not commute. Product weights specialize to `A(du) * B(dv) * C(d(u+v))` in that order.

## Finite controls and boundary cases

At `N = 5`, `d = 2`, the quotient cutoff is two and the constant-weight sector has one term. Replacing the floor by a ceiling gives three terms; removing the additive cutoff gives four. For the joint weight `W(a,b,c) = a*b*c`, the correct sector is 16, whereas leaving the third coordinate unscaled gives eight. At `N = 8`, `d = 2`, the quotient sector has six terms, including the non-coprime pair `(2,2)`; restricting it to primitive quotient pairs would give five.

The formulas include `N = 0` and positive `d > N`, when the quotient region is empty. The public sector theorem retains `d > 0`. The missing-positivity negative control checks that this hypothesis cannot be omitted when applying that interface; it does not assert that the degenerate zero-divisor sum identity is false. Zero scaling also fails the unrestricted pair-injectivity property used in the bijection proof.

## Open arithmetic implications

These are finite algebraic identities. The [complex additive-character formula](additive-character-moments.md) adds an exact normalized projector and finite frequency expansion under explicit no-wrap bounds. No radical-height estimate, bound uniform in `N`, infinite transform, or implication of integer abc is supplied. The [frozen abc target](abc-proof-frontier.md) keeps every positive real epsilon and its globally uniform constant. Product-weight transform factorization, analytic estimates, and the arithmetic implication remain separate obligations.

## Source and verification scope

[Divisor-sector reindexing source](../../../../../GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/DivisorSectorReindexing.lean). The source builds on the finite pair moments and typed-triple reindexing, using Mathlib finite sums and natural-number division. The pinned selected replay separately checks the complete local import closure, direct consumers, owned-declaration axioms and intended rejections with trust zero and fatal warnings. Cached dependency objects are reused; Mathlib sources are not rebuilt. Repository-wide layout and documentation admission remain separate conditions.

The selected receipt (artifact:gitblob:a0c06f91f9fb7afc0a0490edf95f7db5ec379d61) binds the exact source and control bytes. The status record (artifact:gitblob:395a1a3c4166069f66506c9bd74d16cf79f64b0e) retains the open arithmetic obligations, and the contribution record (artifact:gitblob:f51b7459e84127fb845abbaca44dc4d2aaced779) records the finite scope and credit.

Direction: grwtsk contributors. Formalization and verification assistance: OpenAI Codex. Original additions: MIT. Lean and Mathlib retain their upstream authorship and licenses.

<!-- BEGIN GENERATED MATHEMATICS TOTALS -->

## Totals

Scope: this object guide and the current bytes of its registered primary source [`GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/DivisorSectorReindexing.lean`](../../../../../GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/DivisorSectorReindexing.lean).

| Inventory | Total |
|---|---:|
| Object guide | 1 |
| Linked primary source file | 1 |
| Source declaration commands | 7 |
| Theorem/lemma commands | 7 |

Theorem/lemma commands are included in declaration commands. These are source syntax counts; compiler-generated declarations and proof acceptance are outside their scope.

[Count definitions](../../../../reference/library-pages.md#count-definitions) · [Structured inventory](../../../../reference/library-summary.json).

<!-- END GENERATED MATHEMATICS TOTALS -->
