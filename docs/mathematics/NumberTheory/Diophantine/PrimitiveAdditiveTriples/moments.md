# Finite primitive additive moments

Let `N` be any natural number, let `R` be any ring, and let `W : ℕ → ℕ → ℕ → R` be an arbitrary joint weight. Write `P_N` for the primitive positive additive triples with `c ≤ N`. Then

\[
\sum_{t\in P_N} W(t.a,t.b,t.c)
=\sum_{d=1}^{N}\mu(d)
  \sum_{\substack{1\le a,b\le N\\a+b\le N\\d\mid a,\;d\mid b}}
       W(a,b,a+b).
\]

On the left, every triple has `a > 0`, `b > 0`, `a + b = c` and `Nat.Coprime a b`. On the right, the same additive cutoff remains explicit, while the signed divisor sum enforces coprimality. The integer-valued canonical Möbius function is cast into `R`. The identity includes `N = 0` and `N = 1`, when both sides vanish. Multiplication in `R` need not commute: the Möbius coefficient stays on the left.

The product-weight identity specializes `W(a,b,c)` to `A(a) * B(b) * C(c)`, with the multiplication order retained. The joint-weight theorem makes no independence or factorization assumption and therefore retains mixed terms.

## Proof and finite controls

Mathlib's Möbius divisor cancellation gives `∑_{d ∣ gcd(a,b)} μ(d) = 1` when `a` and `b` are coprime, and zero otherwise. Positive `a` and `b` ensure every common divisor lies in `[1,N]` when `min(a,b) ≤ N`. Multiplication by the weight, finite distributivity, and interchange of the two finite sums give the identity. An explicit bijection between bounded primitive triples and coprime positive pairs preserves the exact third coordinate and its cutoff.

At `N = 4`, constant integer weights give five primitive triples. Dropping coprimality gives six positive additive triples; replacing `μ` by its absolute value gives seven; removing `a+b ≤ N` gives eleven coprime pairs in the square. With `A(n) = B(n) = C(n) = n`, the primitive weighted sum is 38 and the common-divisor sector `d = 2` has weight 16. Separate accepted consumers check these values, the two empty cutoffs, and the generic joint-weight theorem. Four negative controls reject the missing coprimality, missing cutoff, unsigned coefficient, and finite-identity-to-abc substitutions.

## Open arithmetic implications

The identity supplies no radical-height estimate, bound uniform in `N`, infinite Euler product, or implication of integer abc. The separate [complex additive-character formula](additive-character-moments.md) is checked with explicit no-wrap bounds and all three joint-weight coordinates retained. The [positive-divisor sector reindexing](divisor-sectors.md) is checked with the exact floor cutoff and all three weight coordinates scaled. A literal radical-weighted estimate and the arithmetic implication remain open. The [abc target](abc-proof-frontier.md) retains its original quantifiers and source identity.

## Source and verification scope

[Typed triple reindexing and identity](../../../../../GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/MomentReindexing.lean), [finite pair moments](../../../../../GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/Moments.lean), and [reusable coprimality filter](../../../../../GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/CoprimeDivisorFilter.lean). The canonical Möbius function and divisor cancellation are from the pinned Mathlib `NumberTheory/ArithmeticFunction/Moebius.lean`, by Aaron Anderson, Apache-2.0. This is a finite algebraic use of that theorem, with no originality claim for Möbius inversion.

The selected replay binds exact sources and their local dependency closure, the pinned Lean compiler, native owned-declaration axiom audit, direct consumers and intended rejection controls. Cached dependency objects are reused; Mathlib sources are not rebuilt. Repository-wide layout and documentation checks are separate admission conditions, and historical failed receipts remain preserved.

Direction: grwtsk contributors. Formalization and verification assistance: OpenAI Codex. Original additions: MIT. Upstream Mathlib credits and licensing remain unchanged.

<!-- BEGIN GENERATED MATHEMATICS TOTALS -->

## Totals

Scope: this object guide and the current bytes of its registered primary source [`GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/MomentReindexing.lean`](../../../../../GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/MomentReindexing.lean).

| Inventory | Total |
|---|---:|
| Object guide | 1 |
| Linked primary source file | 1 |
| Source declaration commands | 8 |
| Theorem/lemma commands | 5 |

Theorem/lemma commands are included in declaration commands. These are source syntax counts; compiler-generated declarations and proof acceptance are outside their scope.

[Count definitions](../../../../reference/library-pages.md#count-definitions) · [Structured inventory](../../../../reference/library-summary.json).

<!-- END GENERATED MATHEMATICS TOTALS -->
