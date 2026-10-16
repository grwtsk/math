# Polynomial derivative and radical degree bounds

Over any field, let nonzero polynomials `a`, `b`, `c` satisfy `a + b + c = 0`, with `IsCoprime a b` and `derivative a ≠ 0`. Then each of their degrees plus one is at most the degree of the radical of `a * b * c`.

This is a direct consumer of the pinned Mathlib theorem `Polynomial.abc`, with explicit decidable equality on the coefficient field for Mathlib's normalization operations. The nonzero derivative excludes the theorem's alternative that all three derivatives vanish. No characteristic-zero hypothesis is silently substituted, and no conclusion about natural-number height is drawn from polynomial degree.

## Source and verification scope

[Consumer source](../../../../GRWTSK/NumberTheory/Polynomial/DerivativeRadicalBound.lean). Mathlib's Mason–Stothers proof is by Jineon Baek and Seewoo Lee, with Apache-2.0 licensing. The original proof credits Noah Snyder's alternative argument. This repository adds the derivative-hypothesis consumer and separate positive and negative fixtures. The integer abc target is [defined independently](../Diophantine/PrimitiveAdditiveTriples/abc-proof-frontier.md).

Direction: grwtsk contributors. Consumer formalization assistance: OpenAI Codex. Original additions: MIT. Dependency objects are checked at the pinned Lean scope; no cold Mathlib source rebuild, new originality claim, or function-field-to-integer transfer is asserted.

<!-- BEGIN GENERATED MATHEMATICS TOTALS -->

## Totals

Scope: this object guide and the current bytes of its registered primary source [`GRWTSK/NumberTheory/Polynomial/DerivativeRadicalBound.lean`](../../../../GRWTSK/NumberTheory/Polynomial/DerivativeRadicalBound.lean).

| Inventory | Total |
|---|---:|
| Object guide | 1 |
| Linked primary source file | 1 |
| Source declaration commands | 1 |
| Theorem/lemma commands | 1 |

Theorem/lemma commands are included in declaration commands. These are source syntax counts; compiler-generated declarations and proof acceptance are outside their scope.

[Count definitions](../../../reference/library-pages.md#count-definitions) · [Structured inventory](../../../reference/library-summary.json).

<!-- END GENERATED MATHEMATICS TOTALS -->
